#include "CellSize.h" /* For CellSize, ahead of the unit's own constants in .rdata */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>

#include "Landscape.h"

#include "HalfLifeConstants.h"

#include <d3dtypes.h> /* For RGB_GETRED, RGB_GETGREEN, RGB_GETBLUE */
#include <math.h>     /* For exp, floor, log, sqrt */
#include <string.h>   /* For memcpy */

#include <map>
#include <string>

#include <Lionhead/LH3DLib/development/LH3DMaterial.h>
#include <Lionhead/LH3DLib/development/LH3DMem.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DPrimitive.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>
#include <Lionhead/LH3DLib/development/LH3DTexture.h>
#include <Lionhead/LH3DLib/development/LH3DTriangle.h>
#include <Lionhead/LH3DLib/development/LH3DVertex.h>
#include <Lionhead/LH3DLib/development/LHMatrix.h>
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>
#include <Lionhead/LHLib/ver5.0/LHFastPointer.h>

#include "GJBitmap.h"
#include "GJPrimitive.h"
#include "GJUtils.h"
#include "TSphere.h"

// BW1W120 0057c9d0 BW1M119 null
long FloorToLong(float value);

long FloorToLong(float value)
{
	return floor(value);
}

bool32_t GJUtils::PointIsInSphere(const TSphere& sphere, const LHPoint& point, float radius)
{
	LHPoint delta = point - sphere.Center;
	float   total = radius + sphere.Radius;
	return delta.x * delta.x + delta.y * delta.y + delta.z * delta.z < total * total;
}

GJBitmap::~GJBitmap()
{
	FreeBuffers();
}

void GJBitmap::FreeBuffers()
{
	if (OrigData)
	{
		LH3DMem::Free(OrigData);
		OrigData = NULL;
	}
	if (Data)
	{
		LH3DMem::Free(Data);
		Data = NULL;
	}
}

void GJBitmap::LoadBitmapFromFile(char* path, long width, uint8_t depth, long file_frames, long frames)
{
	FreeBuffers();
	uint32_t length;
	LHFileLength(path, &length);
	if (length > 0 && length == depth * width * width * file_frames)
	{
		if (frames > file_frames)
		{
			frames = file_frames;
		}
		FileFrames = file_frames;
		OrigData = (uint8_t*)LH3DMem::Alloc(length);
		LHLoadData(path, OrigData, length, NULL);
		PixelCount = width * width * frames;
		Width = width;
		Frames = frames;
		Data = (uint8_t*)LH3DMem::Alloc(PixelCount * depth);
		Depth = depth;
		CopyFromOrigData();
	}
}

void GJBitmap::CopyFromOrigData()
{
	uint8_t* destination = Data;
	uint8_t* source = OrigData;
	uint32_t gridSize = (int)sqrt((float)FileFrames);
	for (uint16_t frame = 0; frame < Frames; frame++)
	{
		for (uint16_t y = 0; y < Width; y++)
		{
			for (uint16_t x = 0; x < Width; x++)
			{
				uint32_t row = frame / gridSize;
				uint32_t column = frame % gridSize;
				memcpy(destination, source + (((row * Width + y) * gridSize + column) * Width + x) * Depth, Depth);
				destination += Depth;
			}
		}
	}
}

void GJBitmap::SetColour(uint32_t colour)
{
	if (Colour != colour)
	{
		Colour = colour;
		CopyFromOrigData();
		if (Depth == GJ_BITMAP_RGB_DEPTH)
		{
			uint32_t red = RGB_GETRED(colour);
			uint32_t green = RGB_GETGREEN(colour);
			uint32_t blue = RGB_GETBLUE(colour);
			uint8_t* pixel = Data;
			for (int i = 0; i < PixelCount; i++)
			{
				*pixel = (*pixel * red) >> 8;
				pixel++;
				*pixel = (*pixel * green) >> 8;
				pixel++;
				*pixel = (*pixel * blue) >> 8;
				pixel++;
			}
		}
	}
}

bool GJUtils::FindIntersect(const TSphere& sphere, const LHPoint& from, const LHPoint& to, float radius,
                            LHPoint* intersect)
{
	*intersect = to;
	LHPoint        direction = to - from;
	const LHPoint& centre = sphere.Center;
	float          length = direction.Normalise();
	LHPoint        offset = from - centre;
	float          a = direction * direction;
	float          b = 2.0f * (offset * direction);
	float          radiusSum = radius + sphere.Radius;
	float          c = offset * offset - radiusSum * radiusSum;
	float          discriminant = b * b - 4.0f * a * c;
	if (discriminant < 0.0f)
	{
		return false;
	}
	float root = sqrt(discriminant);
	float enterDistance = (-b - root) * a / 2.0f;
	float leaveDistance = (-b + root) * a / 2.0f;
	if (leaveDistance < 0.0f || length < enterDistance)
	{
		return false;
	}
	if (enterDistance < 0.0f && length < leaveDistance)
	{
		*intersect = from;
		return true;
	}
	if (0.0f < enterDistance && leaveDistance < length)
	{
		*intersect = from + direction * enterDistance;
		return true;
	}
	if (0.0f < enterDistance && length < leaveDistance)
	{
		*intersect = from + direction * enterDistance;
		return true;
	}
	if (enterDistance < 0.0f && leaveDistance < length)
	{
		*intersect = from;
	}
	return true;
}

void GJUtils::DeflectOffSphere(const TSphere& sphere, const LHPoint& point, LHPoint* velocity)
{
	LHPoint normal = point - sphere.Center;
	normal.Normalise();
	*velocity -= normal * 2.0f * (normal * *velocity);
}

void GJUtils::QuaternionToMatrix(const Quaternion* quaternion, LHMatrix* matrix)
{
	float s = 2.0f / (quaternion->W * quaternion->W + quaternion->X * quaternion->X + quaternion->Y * quaternion->Y +
	                  quaternion->Z * quaternion->Z);
	float xs = quaternion->X * s;
	float ys = quaternion->Y * s;
	float zs = quaternion->Z * s;
	float wx = quaternion->W * xs;
	float wy = quaternion->W * ys;
	float wz = quaternion->W * zs;
	float xx = quaternion->X * xs;
	float xy = quaternion->X * ys;
	float xz = quaternion->X * zs;
	float yy = quaternion->Y * ys;
	float yz = quaternion->Y * zs;
	float zz = quaternion->Z * zs;
	matrix->_11 = 1.0f - (yy + zz);
	matrix->_12 = xy + wz;
	matrix->_13 = xz - wy;
	matrix->_21 = xy - wz;
	matrix->_22 = 1.0f - (xx + zz);
	matrix->_23 = yz + wx;
	matrix->_31 = xz + wy;
	matrix->_32 = yz - wx;
	matrix->_33 = 1.0f - (xx + yy);
	matrix->_43 = 0.0f;
	matrix->_42 = 0.0f;
	matrix->_41 = 0.0f;
}

void GJUtils::SetRotateByQuaternion(float angle, const LHPoint* axis, LHMatrix* matrix)
{
	Quaternion quaternion;
	LHPoint    normal = *axis;
	normal.FastNormalizeInline();
	float halfAngle = 0.5f * angle;
	normal *= sin(halfAngle);
	quaternion.W = cos(halfAngle);
	quaternion.X = normal.x;
	quaternion.Y = normal.y;
	quaternion.Z = normal.z;
	QuaternionToMatrix(&quaternion, matrix);
}

void GJUtils::PostRotateByQuaternion(float angle, const LHPoint* axis, LHMatrix* matrix)
{
	LHMatrix rotation;
	SetRotateByQuaternion(angle, axis, &rotation);
	matrix->PostMultiply(rotation);
}

const float FalloffDistance = 10.0f;

// BW1W120 0057d2e0 BW1M119 null
float GetFalloff(float distance);

float GetFalloff(float distance)
{
	float logHalf = log(0.5);
	return exp(-(distance * distance / (FalloffDistance * FalloffDistance / -logHalf)));
}

const float FadeStartDistance = 50.0f;
const float FadeEndDistance = 100.0f;
const float FadeMidDistance = 20.0f;
const float FadeMidScale = 0.2f;

// BW1W120 0057d330 BW1M119 null
float GetFade(float distance);

float GetFade(float distance)
{
	if (distance < FadeStartDistance)
	{
		return 1.0f;
	}
	if (distance < FadeMidDistance)
	{
		return (distance - FadeStartDistance) * (FadeMidScale - 1.0f) / (FadeMidDistance - FadeStartDistance) + 1.0f;
	}
	if (distance < FadeEndDistance)
	{
		return (distance - FadeMidDistance) * (0.0f - FadeMidScale) / (FadeEndDistance - FadeMidDistance) +
		       FadeMidDistance;
	}
	return 0.0f;
}

LH3DMesh* GJUtils::LoadMeshFile(const char* path)
{
	uint32_t length;
	if (LHFileLength(path, &length) == LH_FILE_RESULT_OK)
	{
		void* buffer = LH3DMem::Alloc(length);
		LHLoadData((char*)path, buffer, length, NULL);
		LH3DMesh* mesh = LH3DMesh::Create(buffer, false);
		LH3DMem::Free(buffer);
		return mesh;
	}
	return NULL;
}

LH3DMesh* GJUtils::LoadMeshFile(const char* path, const MaterialProperties& props)
{
	LH3DMesh* mesh = LoadMeshFile(path);
	SetMaterialProperties(mesh, props);
	return mesh;
}

LH3DMaterial* GlobalTextures::GetLightSheetMaterial()
{
	static LH3DTexture*  texture;
	static LH3DMaterial* material;
	if (!material)
	{
		texture = GJUtils::CreateSharedTexture(".\\data\\textures\\S_LightSheetStars.raw");
		material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ,
		                                      texture);
		material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
		material->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	}
	return material;
}

LH3DMaterial* GlobalTextures::GetAdditiveSmokeMaterial()
{
	static LH3DTexture*  texture;
	static LH3DMaterial* material;
	if (!material)
	{
		texture = GJUtils::CreateSharedTexture(".\\data\\textures\\S_SpriteSheet3.raw");
		material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ,
		                                      texture);
		material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
		material->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	}
	return material;
}

LH3DMaterial* GlobalTextures::GetFrozMaterial(FROZ_MAT_TYPE type)
{
	static const char* textureNames[FROZ_MAT_TYPE_COUNT] = {
		".\\data\\textures\\S_IceEnvMap.raw",
		".\\data\\textures\\S_IceEnvMapGrey.raw",
		".\\data\\textures\\S_IceEnvMapColor.raw",
	};
	static LH3DMaterial* materials[FROZ_MAT_TYPE_COUNT];
	if (!materials[type])
	{
		LH3DTexture* texture = GJUtils::CreateSharedTexture(textureNames[type]);
		materials[type] = LH3DRender::CreateMaterial(
			LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ, texture);
		materials[type]->Flags |= LH3DMaterial::FLAG_NO_ANIM_UV;
	}
	return materials[type];
}

LH3DMaterial* GlobalTextures::GetFizzMaterial()
{
	static LH3DTexture*  texture;
	static LH3DMaterial* material;
	if (!material)
	{
		texture = GJUtils::CreateSharedTexture(".\\data\\textures\\S_Static.raw");
		material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_CHROMA_JUST_Z, texture);
		material->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	}
	return material;
}

LH3DMaterial* GlobalTextures::GetAnimVolFXMaterial(VOL_FX_MAT_TYPE type)
{
	static const char* textureNames[VOL_FX_MAT_TYPE_COUNT] = {
		".\\data\\textures\\S_VolLight.raw",        ".\\data\\textures\\S_VolLight2.raw",
		".\\data\\textures\\S_VolLight3.raw",       ".\\data\\textures\\S_VolLight4.raw",
		".\\data\\textures\\S_LightSheetStars.raw", ".\\data\\textures\\S_Teleport_stars.raw",
		".\\data\\textures\\S_TileLandscape.raw",
	};
	static LH3DMaterial* materials[VOL_FX_MAT_TYPE_COUNT];
	if (!materials[type])
	{
		LH3DTexture* texture = GJUtils::CreateSharedTexture(textureNames[type]);
		materials[type] = LH3DRender::CreateMaterial(
			LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ, texture);
		materials[type]->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
		materials[type]->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	}
	return materials[type];
}

LH3DMaterial* GlobalTextures::GetHighlightMaterial()
{
	static LH3DTexture*  texture;
	static LH3DMaterial* material;
	if (!material)
	{
		texture = GJUtils::CreateSharedTexture(".\\data\\textures\\S_SpriteSheet3.raw");
		material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ,
		                                      texture);
		material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	}
	return material;
}

LH3DMaterial* GlobalTextures::GetGestureMaterialAndOffset(GESTURE_TYPE type, long* offset)
{
	static const char* textureNames[GLOBAL_TEXTURES_GESTURE_SHEETS] = {
		".\\data\\textures\\S_Gesture0.raw",
		".\\data\\textures\\S_Gesture1.raw",
	};
	static LH3DMaterial* materials[GLOBAL_TEXTURES_GESTURE_SHEETS];
	int                  sheet = type / GLOBAL_TEXTURES_GESTURES_PER_SHEET;
	*offset = type % GLOBAL_TEXTURES_GESTURES_PER_SHEET;
	if (!materials[sheet])
	{
		LH3DTexture* texture = GJUtils::CreateSharedTexture(textureNames[sheet]);
		materials[sheet] =
			LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, texture);
		materials[sheet]->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
		materials[sheet]->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	}
	return materials[sheet];
}

void GJPrimitive::AddPoly(LH3DPrimitive* primitive, long triangle)
{
	long          baseIndex = Positions.GetSize();
	LH3DTriangle* corners = &primitive->Triangles[triangle];
	LH3DVertex*   vertices = primitive->Vertices;
	Positions.PushBack(vertices[corners->A].position);
	Positions.PushBack(vertices[corners->B].position);
	Positions.PushBack(vertices[corners->C].position);
	Normals.PushBack(vertices[corners->A].normal);
	Normals.PushBack(vertices[corners->B].normal);
	Normals.PushBack(vertices[corners->C].normal);
	UVCoord uv;
	uv.U = vertices[corners->A].uv.x;
	uv.V = vertices[corners->A].uv.y;
	UVs.PushBack(uv);
	uv.U = vertices[corners->B].uv.x;
	uv.V = vertices[corners->B].uv.y;
	UVs.PushBack(uv);
	uv.U = vertices[corners->C].uv.x;
	uv.V = vertices[corners->C].uv.y;
	UVs.PushBack(uv);
	SLONGTriangle face;
	face.A = baseIndex;
	face.B = baseIndex + 1;
	face.C = baseIndex + 2;
	Triangles.PushBack(face);
}

static std::map<std::string, LHFastPointer<LH3DTexture> > SharedTextures;

// BW1W120 0057db10 BW1M119 012c3310
LH3DTexture* PCreateSharedTexture(const std::string& name);

LH3DTexture* PCreateSharedTexture(const std::string& name)
{
	LH3DTexture* texture = SharedTextures[name].Get();
	if (!texture)
	{
		texture = LH3DTexture::Create((void*)name.data(), LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA,
		                              LH3D_TEXTURE_ID_NONE, NULL);
		SharedTextures[name] = texture;
	}
	return texture;
}

LH3DTexture* GJUtils::CreateSharedTexture(const char* path)
{
	return PCreateSharedTexture(path);
}

struct FileNameAndMaterialProps
{
	FileNameAndMaterialProps(const std::string& file_name, const MaterialProperties& props)
		: Props(props), FileName(file_name)
	{
	}

	bool operator<(const FileNameAndMaterialProps& other) const
	{
		if (FileName < other.FileName)
		{
			return true;
		}
		if (other.FileName < FileName)
		{
			return false;
		}
		return Props.Additive < other.Props.Additive && Props.AlphaBlend < other.Props.AlphaBlend &&
		       Props.cull < other.Props.cull && Props.ApplyToMesh < other.Props.ApplyToMesh &&
		       Props.Transparent < other.Props.Transparent;
	}

	MaterialProperties Props;
	std::string        FileName;
};

static std::map<FileNameAndMaterialProps, LHFastPointer<LH3DMesh> > SharedMeshes;

// BW1W120 0057de70 BW1M119 012c2e50
LH3DMesh* PGetSharedMesh(const std::string& path, const MaterialProperties& props);

LH3DMesh* PGetSharedMesh(const std::string& path, const MaterialProperties& props)
{
	FileNameAndMaterialProps key(path, props);
	LH3DMesh*                mesh = SharedMeshes[key].Get();
	if (!mesh)
	{
		mesh = GJUtils::LoadMeshFile(path.data());
		if (props.ApplyToMesh == true)
		{
			GJUtils::SetMaterialProperties(mesh, props);
		}
		SharedMeshes[key] = mesh;
	}
	return mesh;
}

LH3DMesh* GJUtils::GetSharedMesh(const char* path, const MaterialProperties& props)
{
	return PGetSharedMesh(path, props);
}

LH3DMesh* GJUtils::GetSharedMesh(const char* path)
{
	MaterialProperties props;
	props.Additive = false;
	props.AlphaBlend = false;
	props.cull = true;
	props.Transparent = true;
	props.ApplyToMesh = false;
	return PGetSharedMesh(path, props);
}

void GJUtils::SetMaterialProperties(LH3DMaterial* material, const MaterialProperties& props)
{
	LH3DMaterial::RenderMode mode = material->render_mode;
	if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED)
	{
		mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ;
	}
	if (!props.Transparent)
	{
		mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA;
	}
	if (props.Additive == true)
	{
		mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ;
	}
	if (props.AlphaBlend == true)
	{
		if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ)
		{
			mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA;
		}
		else if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ)
		{
			mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF;
		}
		else if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA_NZ)
		{
			mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA;
		}
		else if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA_NZ)
		{
			mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA;
		}
	}
	else
	{
		if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA)
		{
			mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ;
		}
		else if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF)
		{
			mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ;
		}
		else if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA)
		{
			mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA_NZ;
		}
		else if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA)
		{
			mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA_NZ;
		}
		else if (mode == LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED)
		{
			mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA_NZ;
		}
	}
	material->render_mode = mode;
	if (props.cull)
	{
		material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	}
	else
	{
		material->Flags &= ~LH3DMaterial::FLAG_DOUBLE_SIDED;
	}
}

void GJUtils::SetMaterialProperties(LH3DMesh* mesh, const MaterialProperties& props)
{
	if (mesh)
	{
		for (int i = 0; i < mesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = mesh->submeshes[i];
			for (int j = 0; j < submesh->NumPrimitives; j++)
			{
				SetMaterialProperties(&submesh->primitives_[j]->Material, props);
			}
		}
	}
}
