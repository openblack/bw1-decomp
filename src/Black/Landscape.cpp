#include "Landscape.h"

#include "ColourConstants.h" /* For White */

#include "Camera.h"
#include "ControlHand.h"
#include "Game.h"
#include "Game3DObject.h"
#include "Interface.h"
#include "JCGameBlock.h"
#include "LandAlignement.h"
#include "LandscapeConstants.h"
#include "LH3DZSorter.h"
#include "Object.h"
#include "RoutePlan.h"
#include "SoundMap.h"
#include "Water.h"

#include <string.h>
#include <math.h>

#include <Lionhead/LH3DLib/development/DynamicLightAndShadow.h>
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h>
#include <Lionhead/LH3DLib/development/LH3DLandscape.h>
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>
#include <Lionhead/LH3DLib/development/LH3DMem.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DSprite.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LH3DLib/development/LH3DTexture.h>
#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHMatrix.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>
#include <Lionhead/LHLib/ver5.0/LHText.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>

void __fastcall fn_005E2A90(int block_x, int block_z);
LH3DObject*     fn_005E2C30();
void __fastcall fn_00822F90(int size, float x, float z);
void            fn_00823780();

uint32_t GLandscape::DrawObjectActive[3000];
Object*  GLandscape::DrawObjects[3000];
int      GLandscape::DrawObjectCount;
int      GLandscape::DrawListRebuildCount = 1;

LHPoint          GLandscape::Centre;
LHPoint          GLandscape::HandLightPosition;
float            GLandscape::HandLightIntensity;
uint8_t*         GLandscape::HandLightMap;
bool32_t         GLandscape::IsOpen;
LandscapeEffect* GLandscape::Effects;
int              GLandscape::EffectCount;

uint32_t GLandscape::PreDraw()
{
	LH3DIsland::PreDraw();
	return 1;
}

void DrawLandscapeWaterLight(LHPoint point, uint32_t colour)
{
	// Descriptive name; draws the hand-light quad at water level only when the
	// covered cells include missing terrain or altitude bytes below 5.
	if (!LH3DAtmos::IsOpen || LH3DAtmos::AdditiveMaterial == NULL)
	{
		return;
	}

	int minX = (int)(point.x - 60.0f - 10.0f) / 10;
	int minZ = (int)(point.z - 60.0f - 10.0f) / 10;
	int maxX = (int)(point.x + 60.0f + 10.0f) / 10;
	int maxZ = (int)(point.z + 70.0f) / 10;
	if (minX <= 0)
	{
		minX = 0;
	}
	else
	{
		minX = MIN(minX, 511);
	}
	if (minZ <= 0)
	{
		minZ = 0;
	}
	else
	{
		minZ = MIN(minZ, 511);
	}

	bool       touchesWater = false;
	int        lastBlockX = -1;
	int        lastBlockZ = -1;
	LandBlock* block = NULL;
	for (int z = minZ; z <= maxZ; ++z)
	{
		for (int x = minX; x <= maxX; ++x)
		{
			int blockX = x / 16;
			int blockZ = z / 16;
			if (blockX != lastBlockX || blockZ != lastBlockZ)
			{
				lastBlockX = blockX;
				lastBlockZ = blockZ;
				block = NULL;
				if (blockX >= 0 && blockX < 32 && blockZ >= 0 && blockZ < 32)
				{
					unsigned int index = LH3DIsland::g_index_block[blockX][blockZ];
					if (index != 0)
					{
						block = LH3DIsland::g_ptr_blocks[index];
					}
				}
			}
			if (block == NULL)
			{
				touchesWater = true;
				break;
			}
			LandCell* cell = LH3DIsland::GetCell(x, z);
			if (cell == NULL || cell->altitude < 5)
			{
				touchesWater = true;
				break;
			}
		}
	}
	if (!touchesWater)
	{
		return;
	}

	LH3DColor colours[4];
	LHPoint   points[4];
	for (int i = 0; i < 4; ++i)
	{
		colours[i] = LH3DColor(colour);
		points[i].y = 0.0f;
	}
	points[0].x = points[3].x = point.x - 60.0f;
	points[1].x = points[2].x = point.x + 60.0f;
	points[0].z = points[1].z = point.z - 60.0f;
	points[2].z = points[3].z = point.z + 60.0f;
	static long  indices[6] = {0, 1, 2, 2, 3, 0};
	static float uvs[8] = {0.75f, 0.375f, 0.796875f, 0.375f, 0.796875f, 0.421875f, 0.75f, 0.421875f};

	uint32_t oldZFunc;
	LH3DRender::GetRenderState(D3DRENDERSTATE_ZFUNC, &oldZFunc);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	LH3DTech::Draw3DWorldTriangle(4, points, colours, uvs, 2, indices, LH3DAtmos::AdditiveMaterial, 0);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, oldZFunc);
}

void GLandscape::Close()
{
	IsOpen = false;
	GLandAlignement::Close();
	LH3DLandscape::Release();
	LH3DIsland::Release();
	delete material;
	texture->Release();
	texture = NULL;
	fn_007DEE00();
	GameBlock::Release();
}

void GLandscape::Open(char* path)
{
	fn_007DEE00();
	HandLightIntensity = 0.0f;
	IsOpen = true;
	strcpy(Filename, path);
	LH3DLandscape::Release();
	LH3DIsland::Release();
	LH3DIsland::SetFileToLoad(path);
	LH3DIsland::Create();

	float minX = 5120.0f;
	float maxX = 0.0f;
	float minZ = 5120.0f;
	float maxZ = 0.0f;
	for (int blockX = 0; blockX < 32; ++blockX)
	{
		for (int blockZ = 0; blockZ < 32; ++blockZ)
		{
			unsigned int index = LH3DIsland::g_index_block[blockX][blockZ];
			if (index != 0 && LH3DIsland::g_ptr_blocks[index] != NULL)
			{
				float x = (float)(blockX * 160);
				float z = (float)(blockZ * 160);
				if (x < minX)
				{
					minX = x;
				}
				if (x > maxX)
				{
					maxX = x;
				}
				if (z < minZ)
				{
					minZ = z;
				}
				if (z > maxZ)
				{
					maxZ = z;
				}
			}
		}
	}
	Centre.x = (maxX + minX) * 0.5f;
	Centre.y = 0.0f;
	Centre.z = (maxZ + minZ) * 0.5f;

	texture = LH3DTexture::Create(".\\Data\\Textures\\sky.raw", 0x41, 0, NULL);
	material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_0x5, texture);
	material->cull_mode |= 4;
	LH3DLandscape::TextureUpdateCallback = LandscapeTextureUpdated;
	uint32_t length;
	LHFileLength(".\\Data\\Textures\\light_hand.raw", &length);
	HandLightMap = (uint8_t*)LH3DMem::Alloc(length);
	LHLoadData(".\\Data\\Textures\\light_hand.raw", HandLightMap, length, NULL);
	for (int i = 0; i < HandLightMapSize * HandLightMapSize; ++i)
	{
		float light = HandLightMap[i] * (48.0f / 255.0f) + 0.5f;
		if (light >= 48.0f)
		{
			light = 47.0f;
		}
		HandLightMap[i] = (uint8_t)(int)light;
	}
	GLandAlignement::Open(0);
	// Enumerate game objects for terrain texture shadows; original callback names are unknown.
	LH3DLandscape::InitEnumCallback = fn_005E2A90;
	LH3DLandscape::GetNextEnumCallback = fn_005E2C30;
	fn_007DEE00();
	GameBlock::Init();
	fn_007DEE00();
	LandAvoidValid = 0;
	ValidateLandAvoid();
	fn_007DEE00();
	GGame::g_game->terrain_map.Init();
	GSoundMap* soundMap = GGame::g_game->SoundMap;
	soundMap->CalculateRadiusPointAndDistance();
	soundMap->UpdateFromMap(MapCoords(soundMap->GetReceiverPos()));
	fn_007DEE00();
}

GLandscape::~GLandscape()
{
	fn_007DEE00();
}

void __fastcall LandscapeTextureUpdated(void* pixels, int size, int block_x, int block_z)
{
	// The original installed callback consists solely of RET 8.
}

void ClearLight()
{
	if (GLandscape::HandLightIntensity > 0.0f)
	{
		if (GGame::g_game->MyInterface()->hand.Get()->DynamicShadow->field_0xac == 0)
		{
			float halfWidth = (float)((GLandscape::HandLightMapSize * 10 - 10) / 2);
			// Restore terrain colours in the square light-map footprint.
			fn_00822F90(GLandscape::HandLightMapSize, GLandscape::HandLightPosition.x - halfWidth,
			            GLandscape::HandLightPosition.z - halfWidth);
		}
		// Restore the other queued terrain light footprints.
		fn_00823780();
	}
	// Clear the dynamic lights and reset their count.
	DynamicLightAndShadow::Clear();
}

uint32_t IntersectLandscapeWaterPlane(const LHPoint& from, const LHPoint& to, LHPoint& point)
{
	// Descriptive name; intersects a downward ray with y=0 without constraining it to the segment.
	if (to.y >= from.y)
	{
		return 0;
	}

	float fraction = -(from.y / (to.y - from.y));
	float z = (to.z - from.z) * fraction + from.z;
	float x = (to.x - from.x) * fraction + from.x;
	point.y = 0.0f;
	point.x = x;
	point.z = z;
	return 1;
}

uint32_t __fastcall GLandscape::PickPoint(const LHCoord& screen, LHPoint& point, float* depth)
{
	// Provisional name/ownership: ECX=this (unused), EDX=screen, two stack outputs, RET 8.
	LHPoint rayEnd;
	LH3DTech::Get3DPointFromScreen(screen, rayEnd, 0.0f);
	LHPoint rayStart = LH3DTech::g_camera;
	float   x, z;
	if (LH3DIsland::RayCast(rayStart, rayEnd, &x, &z))
	{
		point.x = x;
		point.y = 0.0f;
		point.z = z;
	}
	else if (!IntersectLandscapeWaterPlane(rayStart, rayEnd, point))
	{
		return 0;
	}

	MapCoords coords;
	coords.x = (int)(point.x * 65536.0f * 0.1f);
	coords.z = (int)(point.z * 65536.0f * 0.1f);
	coords.altitude = 0.0f;
	point.y = LH3DIsland::GetAltitude((const LH3DMapCoords&)coords);
	if (depth != NULL)
	{
		const LHMatrix& matrix = LH3DTech::g_world_to_clipping;
		*depth = matrix.m[8] * point.z + matrix.m[2] * point.x + matrix.m[5] * point.y + matrix.m[11];
	}
	GGame::g_game->GetCamera()->ConstrainPoint(point);
	return 1;
}

uint32_t __fastcall GLandscape::PickMapCoords(const LHCoord& screen, MapCoords& coords, float* depth)
{
	LHPoint point;
	if (!PickPoint(screen, point, depth))
	{
		return 0;
	}
	coords.x = (int)(point.x * (65536.0f / 10.0f));
	coords.z = (int)(point.z * (65536.0f / 10.0f));
	coords.altitude = 0.0f;
	return 1;
}

uint32_t __fastcall GLandscape::PickPoint(const Point2D& screen, LHPoint& point, float* depth)
{
	LHCoord integerScreen;
	integerScreen.x = (int)screen.x;
	integerScreen.y = (int)screen.y;
	return PickPoint(integerScreen, point, depth);
}

void GLandscape::ConvertCellToLandscapePoint(const JustMapXZ& cell, LHPoint& point)
{
	point.x = (float)((int)cell.x * 65536) * CellSize * (1.0f / 65536.0f);
	point.z = (float)((int)cell.z * 65536) * CellSize * (1.0f / 65536.0f);
	LandCell* landCell = LH3DIsland::GetCell(cell.x, cell.z);
	if (landCell != NULL)
	{
		point.y = landCell->altitude * LH3DIsland::g_height_unit;
	}
	else
	{
		point.y = 0.0f;
	}
}

LHPoint GLandscape::GetCentre()
{
	return Centre;
}

float __fastcall LandscapeDistanceToCameraSquared(const LHPoint& point)
{
	// Same calculation as LH3DTech::GetValueForZSorter; original out-of-line owner/name is unknown.
	// ECX carries the point address.
	float z = point.z - LH3DTech::g_camera.z;
	float y = point.y - LH3DTech::g_camera.y;
	float x = point.x - LH3DTech::g_camera.x;
	return x * x + y * y + z * z;
}

void SetLandscapeDebugColour(LHColor& colour)
{
	colour.b = 0;
	colour.g = 0;
	colour.r = 255;
	colour.a = 255;
}

LandscapeEffect::~LandscapeEffect()
{
	if (GLandscape::Effects == this)
	{
		GLandscape::Effects = Next;
	}
	else
	{
		LandscapeEffect* previous = GLandscape::Effects;
		while (previous->Next != this)
		{
			previous = previous->Next;
		}
		previous->Next = Next;
	}

	if (Object3D != NULL)
	{
		Object3D->Release();
		Object3D = NULL;
	}
}

void LandscapeEffect::Draw()
{
	// Two passes: animated UV material, then depth-equal override.
	LH3DMaterial* material = g_cool_effect_mat;
	material->field_0x4 = 255 - (int)(TimeRemaining * 255.0f / GLandscape::EffectDuration);
	if (LH3DRender::g_b_do_update_material)
	{
		LH3DRender::CurrentMaterial = material;
		if (material != NULL)
		{
			// This is a render-mode dispatch table, not a virtual object interface.
			struct RenderModeSetup
			{
				void(__fastcall* Setup)(LH3DMaterial*, int);
				uint32_t Transparent;
			};
			RenderModeSetup* modes = (RenderModeSetup*)LH3DRender::g_set_render_mode_data;
			modes[material->render_mode].Setup(material, 0);
			if (LH3DRender::g_b_need_tilling || (material->cull_mode & 4))
			{
				LH3DRender::SetD3DTillingOn(0);
			}
			else
			{
				LH3DRender::SetD3DTillingOff(0);
			}
			LH3DRender::SetRenderState(D3DRENDERSTATE_CULLMODE, ((~material->cull_mode & 1) << 1) | 1);
		}
	}
	LH3DRender::g_b_do_update_material = 0;
	Object3D->SetNeedClipping(1);
	float fraction = (float)TimeRemaining / GLandscape::EffectDuration;
	Object3D->SetAnimatedUV((float)(cos(fraction) * 2.0f), (float)(sin(fraction * 0.7) * 1.7f));
	Object3D->Draw();
	Object3D->SetAnimatedUV(0.0f, 0.0f);
	LH3DRender::g_b_do_update_material = 1;
	Object3D->SetNeedClipping(1);
	LH3DRender::OverrideRenderMode = 10;
	LH3DRender::OverrideMaterial = 1;
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
	Object3D->Draw();
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	LH3DRender::OverrideMaterial = 0;
	TimeRemaining -= LH3DTech::g_game_time_inc;
	if (TimeRemaining < 0)
	{
		TimeRemaining = 0;
	}
}

void GoolooGooloo(Object* object)
{
	if (object == NULL || object->Game3dObject == NULL)
	{
		return;
	}
	LH3DObject* source = object->Game3dObject;
	++GLandscape::EffectCount;
	LandscapeEffect* effect =
		(LandscapeEffect*)::operator new(sizeof(LandscapeEffect), "C:\\dev\\MP\\Black\\Landscape.cpp", 0x5d0);
	if (effect == NULL)
	{
		return;
	}

	effect->Next = GLandscape::Effects;
	GLandscape::Effects = effect;
	effect->Object3D = LH3DObject::Create(source->IsAnimated() ? LH3DObject::ANIMATED : LH3DObject::STATIC);
	effect->Object3D->SetMesh(source->GetMesh(), NULL, NULL);
	effect->Object3D->matrix = source->matrix;
	effect->Object3D->scale = source->scale;
	effect->Object3D->y_angle = source->y_angle;
	effect->Object3D->color = source->color;
	effect->Object3D->specular = source->specular;
	if (!source->IsShadowOnTextureChroma())
	{
		effect->Object3D->SetDynamicLighting(1);
	}
	effect->TimeRemaining = GLandscape::EffectDuration;
}

void LandscapeDebugText::Draw()
{
	LHColor colour;
	colour.b = colour.g = colour.r = 255;
	if (DisplayAll)
	{
		for (int i = 0; i < 20; ++i)
		{
			LHSys::GetText().DrawSimple(0, i * 20, Lines[i], &colour, 0);
		}
	}
	else
	{
		LHSys::GetText().DrawSimple(0, 0, Lines[0], &colour, 0);
	}
}

void LandscapeDebugText::AddDrawing()
{
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&LandscapeDebugText::Draw, 0.0f, 0);
	TimeRemaining -= 1.0f;
	if (TimeRemaining < 0.0f)
	{
		Active = 0;
		for (int i = 0; i < 20; ++i)
		{
			Lines[i][0] = '\0';
		}
	}
}

void LandscapeWaterCircle::Draw()
{
	if (MoveWithWind)
	{
		Position.x += LH3DTech::g_ambient_wind_direction.x * GWater::CircleWindStep;
		Position.z += LH3DTech::g_ambient_wind_direction.z * GWater::CircleWindStep;
	}
	GWater::g_sprite_circle->pos = Position;
	Age += (int)((int)LH3DTech::g_game_time_inc * Speed);
	if (Age >= 700)
	{
		Age = 0;
		Angle = 0.0f;
		Flags &= ~1;
		--GWater::g_count_activated_circle;
		return;
	}

	GWater::g_sprite_circle->field_0xc = Width;
	GWater::g_sprite_circle->field_0x10 = Height;
	float radius = Age * Growth * (1.0f / 700.0f);
	if (radius < 0.0001f)
	{
		radius = 0.0001f;
	}
	GWater::g_sprite_circle->field_0xc = radius;
	int      alpha = (int)((255.0f - (Age % 700) * (255.0f / 700.0f)) * (int)(Colour >> 24)) >> 8;
	uint32_t colour = (Colour & 0x00ffffff) | (alpha << 24);
	GWater::g_sprite_circle->DiffuseColour = colour;
	GWater::g_sprite_circle->angle = Angle;
	GWater::g_sprite_circle->field_0x28 = (GWater::g_sprite_circle->field_0x28 & ~0x3f) | (SpriteFlags & 0x3f);
	GWater::g_sprite_circle->Draw();
}

// TODO: GLandscape::Draw (005e42e0) and 005e5cd0 require the hand/creature render
// interfaces, sorted block traversal, cached visibility, transient effects and audio.
// Keep these absent until the complete call sequence can be represented faithfully.
// TODO: 005e5830 updates the hand light and sun direction, including brightness from
// the mean sky RGB, the hidden-hand guard, and the evening camera-relative light.
// Its sky/light interfaces and shared globals still need declarations and ownership.
