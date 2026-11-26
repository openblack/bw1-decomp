#include <string>

#include "ParticleDrawConstants.h"
#include "GameTimeConstants.h"
#include "ParticleConstants.h"
#include "HalfLifeConstants.h"

#include "PSysRenderParticle.h"

#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::g_game_time_inc */

#include "ColourConstants.h" /* For White */
#include "Chain.h"
#include "ControlHand.h" /* For CHand::GetPos */
#include "GJBitmap.h"
#include "GJUtils.h"   /* For boundf */
#include "Game.h"      /* For GGame::g_game */
#include "Interface.h" /* For GInterface::hand */
#include "PSysModifiers.h"
#include "PSysPCreator.h"
#include "Particle3DObj.h"
#include "Particle3DAnim.h"
#include "ParticleLightMap.h"
#include "Particle3DObjAnimTextured.h"
#include "Particle3DAnimWithCamera.h"
#include "PSysLightMaps.h"
#include "GoldenShower.h"
#include "Creature3D.h"
#include "Creature.h"
#include "PSysManager.h"
#include "GJPrimitive.h"
#include "PSysAtomCore.h"
#include <Lionhead/LH3DLib/development/LH3DAnim.h>
#include "Camera.h"
#include "ParticleChainJoint.h"
#include <Lionhead/LH3DLib/development/LH3DBoundingBox.h> /* For struct LH3DBoundingBox */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>        /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DPrimitive.h>   /* For struct LH3DPrimitive */
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>     /* For struct LH3DSubMesh */
#include "GJMesh.h"
#include "ParticlePlayerSymbol.h"
#include "PlayerSymbolSprite.h"
#include "Particle3DSprite.h"
#include "SpriteBank.h"
#include <Lionhead/LH3DLib/development/LH3DMist.h>
#include <Lionhead/LH3DLib/development/DynamicLightAndShadow.h>
#include <Lionhead/LH3DLib/development/LH3DDynamicShadow.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DSprite.h>  /* For struct LH3DSprite */
#include <Lionhead/LH3DLib/development/LH3DZSorter.h> /* For LH3DZSorter::NewZObject */
#include "Rand.h"                                     /* For GRand::LocalRand */
#include "GameInfo.h"

void DrawOffset::SetRefPos(const LHPoint& pos, float amount) {}

DrawOffset::~DrawOffset() {}

uint32_t DrawOffset::GetSaveType()
{
	return GAME_THING_TYPE_UNUSED_000;
}

char* DrawOffset::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

void DrawOffset::AddReference()
{
	ReferenceCount++;
}

void DrawOffset::DecReference()
{
	if (--ReferenceCount == 0)
	{
		delete this;
	}
}

DrawOffsetLT::DrawOffsetLT() : Amount(0.0f) {}

uint32_t DrawOffsetLT::GetSaveType()
{
	return GAME_THING_TYPE_DRAW_OFFSET_LT;
}

char* DrawOffsetLT::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

void DrawOffsetLT::SetRefPos(const LHPoint& pos, float amount)
{
	Amount = amount;
	RefPos = pos;
	if (amount < 0.0f || amount > 1.0f)
	{
		Amount = boundf(0.0f, Amount, 1.0f);
	}
}

void DrawOffsetLT::GetOffset(LHPoint* offset)
{
	*offset = (GGame::g_game->MyInterface()->GetRenderHand()->GetPos() - RefPos) * Amount;
}

GJDoubleLinkList<DrawOffsetDecay> DrawOffsetDecay::List;

void DrawOffsetDecay::Init()
{
	CurrentOffset = LHPoint(0.0f, 0.0f, 0.0f);
	DecayRate = DRAW_OFFSET_DECAY_DEFAULT_RATE;
	Age = 0.0f;
	List.InsertIntoList(this);
}

DrawOffsetDecay::DrawOffsetDecay() : Previous(NULL), Next(NULL)
{
	Init();
}

uint32_t DrawOffsetDecay::GetSaveType()
{
	return GAME_THING_TYPE_DRAW_OFFSET_DECAY;
}

char* DrawOffsetDecay::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

DrawOffsetDecay::DrawOffsetDecay(const LHPoint& offset) : Previous(NULL), Next(NULL)
{
	Init();
	CurrentOffset = offset;
	StartOffset = offset;
}

DrawOffsetDecay::~DrawOffsetDecay()
{
	List.RemoveFromList(this);
}

void DrawOffsetDecay::Update()
{
	Age += LH3DTech::GetGameTimeInc() * DRAW_OFFSET_DECAY_SECONDS_PER_MILLISECOND;
	CurrentOffset = StartOffset * boundf(0.0f, 1.0f - Age * DecayRate, 1.0f);
}

void DrawOffsetDecay::GetOffset(LHPoint* offset)
{
	*offset = CurrentOffset;
}

void DrawOffsetDecay::OnClearMap() {}

void DrawOffsetDecay::ProcessList()
{
	for (DrawOffsetDecay* it = List.First; it; it = it->Next)
	{
		it->Update();
	}
}

float RenderParticle::GetLowestPoint(const LHMatrix& matrix)
{
	return matrix.GetPos().y;
}

float RenderParticle::GetRadius(float radius) const
{
	return radius;
}

void RenderParticle::GetRandomSurfacePos(const LHMatrix& matrix, LHPoint* pos)
{
	*pos = LHPoint(matrix._41, matrix._42, matrix._43);
}

Particle3DObj::Particle3DObj()
{
	Creator = NULL;
	Object3D = NULL;
	Shadow = NULL;
	UseGlobalAlpha = false;
	DrawWithLandscapeColor = false;
	DrawCutByPlane = false;
}

uint32_t Particle3DObj::GetSaveType()
{
	return GAME_THING_TYPE_PARTICLE_3D_OBJ;
}

char* Particle3DObj::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

Particle3DObj::~Particle3DObj()
{
	if (Object3D)
	{
		Object3D->Release();
		Object3D = NULL;
	}
	if (Shadow)
	{
		delete Shadow;
		Shadow = NULL;
	}
}

LH3DObject* Particle3DObj::GetObject3D()
{
	return Object3D;
}

float Particle3DObj::GetLowestPoint(const LHMatrix& matrix)
{
	return 0.0f;
}

void Particle3DObj::GetRandomSurfacePos(const LHMatrix& matrix, LHPoint* pos) {}

Particle3DObjAnimTextured::Particle3DObjAnimTextured()
{
	TextureHeight = PARTICLE_ANIM_DEFAULT_FRAME_SIZE;
	TextureWidth = PARTICLE_ANIM_DEFAULT_FRAME_SIZE;
	SlideV = false;
	SlideU = false;
	DrawMelted = false;
	NumFrames = 1;
}

uint32_t Particle3DObjAnimTextured::GetSaveType()
{
	return GAME_THING_TYPE_PARTICLE_3D_OBJ_ANIM_TEXTURED;
}

char* Particle3DObjAnimTextured::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

Particle3DObjAnimTextured::~Particle3DObjAnimTextured() {}

RenderParticleCreatureRef::RenderParticleCreatureRef(Creature* creature) : TargetCreature(creature) {}

uint32_t RenderParticleCreatureRef::GetSaveType()
{
	return GAME_THING_TYPE_RENDER_PARTICLE_CREATURE_REF;
}

char* RenderParticleCreatureRef::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

void RenderParticleCreatureRef::DrawAt(const DrawData& data) {}

RenderParticleCreatureRef::RenderParticleCreatureRef() {}

void RenderParticleCreatureRef::GetRandomSurfacePos(const LHMatrix& matrix, LHPoint* pos)
{
	if (TargetCreature.Pointer)
	{
		TargetCreature.IsValid();
	}
	if (TargetCreature.Pointer == NULL)
	{
		*pos = LHPoint(matrix.GetPos().x, matrix.GetPos().y, matrix.GetPos().z);
	}
	else
	{
		LH3DCreature* creature3D = TargetCreature.Get()->GetCreature3D();
		float         radius = RENDER_PARTICLE_CREATURE_SURFACE_SCALE * creature3D->Size1;
		LHMatrix&     bone = creature3D->GetSafeBuffer()[PSysManager::PSysRand(creature3D->NumBoneMatrices)];
		*pos = LHPoint(bone.GetPos().x, bone.GetPos().y, bone.GetPos().z);
		LHPoint offset;
		PSysManager::PSysRandR3(&offset);
		*pos += offset * radius;
	}
}

void RenderParticleCreatureRef::GameUpdate(AtomCore* core)
{
	if (TargetCreature.Pointer)
	{
		TargetCreature.IsValid();
	}
	Creature* creature = TargetCreature.Get();
	if (creature)
	{
		core->SetLocalPos(creature->GetCreature3D()->position);
	}
}

RenderParticleGoldenShower::~RenderParticleGoldenShower()
{
	if (Shower)
	{
		Shower->Release();
		Shower = NULL;
	}
}

RenderParticleGameObjectRef::RenderParticleGameObjectRef() {}

uint32_t RenderParticleGameObjectRef::GetSaveType()
{
	return GAME_THING_TYPE_RENDER_PARTICLE_GAME_OBJECT_REF;
}

char* RenderParticleGameObjectRef::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

RenderParticleGameObjectRef::RenderParticleGameObjectRef(Object* object) : GameObject(object) {}

RenderParticleGameObjectRef::~RenderParticleGameObjectRef() {}

Object* RenderParticleGameObjectRef::GetGameObject()
{
	return GameObject.Get();
}

void RenderParticleGameObjectRef::DrawAt(const DrawData& data) {}

void RenderParticleGameObjectRef::GetRandomSurfacePosInit() {}

void RenderParticleGameObjectRef::GetRandomSurfacePos(const LHMatrix& matrix, LHPoint* pos) {}

void RenderParticleGameObjectRef::GameUpdate(AtomCore* core)
{
	if (GameObject.Pointer)
	{
		GameObject.IsValid();
	}
}

Particle3DAnim::Particle3DAnim()
{
	Object3D = NULL;
	Creator = NULL;
	UseGlobalAlpha = false;
	FrameToStartBlend = 0.0f;
	CycleTime = 0;
	FrameToEndBlend = PARTICLE_3D_ANIM_DEFAULT_FRAME_TO_END_BLEND;
}

uint32_t Particle3DAnim::GetSaveType()
{
	return GAME_THING_TYPE_PARTICLE_3D_ANIM;
}

char* Particle3DAnim::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

Particle3DAnim* Particle3DAnim::AsParticle3DAnim()
{
	return this;
}

Particle3DAnim::~Particle3DAnim()
{
	if (Object3D)
	{
		Object3D->Release();
		Object3D = NULL;
	}
}

long Particle3DAnim::GetCycleTimeFromFrame(long frame)
{
	return GetObject3D()->GetCurrentAnim()->Duration * frame / PARTICLE_3D_ANIM_FRAMES_PER_CYCLE;
}

LH3DObject* Particle3DAnim::GetObject3D()
{
	return Object3D;
}

Particle3DAnimWithCamera::Particle3DAnimWithCamera()
{
	CameraActive = false;
	CameraPositioned = false;
	PauseFinished = false;
	CameraEnabled = true;
	PauseBeforePlay = PARTICLE_3D_ANIM_WITH_CAMERA_DEFAULT_PAUSE;
}

uint32_t Particle3DAnimWithCamera::GetSaveType()
{
	return GAME_THING_TYPE_PARTICLE_3D_ANIM_WITH_CAMERA;
}

char* Particle3DAnimWithCamera::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

Particle3DAnimWithCamera::~Particle3DAnimWithCamera()
{
	if (CameraActive)
	{
		StopCamera();
	}
}

void Particle3DAnimWithCamera::StopCamera()
{
	if (CameraEnabled)
	{
		GGame::g_game->GetCamera()->InvalidatePathMode(this);
		CameraEnabled = false;
	}
}

void Particle3DAnimWithCamera::GameUpdate(AtomCore* core) {}

Chain::Chain()
{
	Creator = NULL;
}

uint32_t Chain::GetSaveType()
{
	return GAME_THING_TYPE_CHAIN;
}

char* Chain::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

Chain::Chain(unsigned long num_joints)
{
	Creator = NULL;
	NumTexturesForWholeChain = 1;
	FrameOfHead = 0;
	FrameOfTail = 0;
	FrameHeight = CHAIN_DEFAULT_FRAME_HEIGHT;
	FrameWidth = CHAIN_DEFAULT_FRAME_WIDTH;
	Reserved2 = 4;
	UseDynamicLighting = false;
	JointsUpdated = false;
	ScrollOffset = 0.0f;
	ScrollSpeed = 0.0f;
	Joints.SetSize(num_joints);
}

Chain::~Chain() {}

void Chain::GetUVs(long segment, long frame, UVCoord* top_left, UVCoord* top_right, UVCoord* bottom_left,
                   UVCoord* bottom_right) const
{
	long  numSegments = Joints.Size - 1;
	long  texture = ((segment + 1) * NumTexturesForWholeChain - 1) / numSegments;
	long  firstSegment = texture * numSegments / NumTexturesForWholeChain;
	long  lastSegment = (texture + 1) * numSegments / NumTexturesForWholeChain;
	float top = (float)(segment - firstSegment) / (float)(lastSegment - firstSegment);
	float bottom = (float)(segment - firstSegment + 1) / (float)(lastSegment - firstSegment);
	if (texture == NumTexturesForWholeChain - 1)
	{
		frame = FrameOfHead;
	}
	else if (texture == 0)
	{
		frame = FrameOfTail;
	}
	top_left->U = bottom_left->U = (float)(frame + FileOffset) * FrameWidth;
	top_left->V = top_right->V = FrameHeight * top;
	bottom_right->U = top_right->U = FrameWidth + top_left->U;
	bottom_left->V = bottom_right->V = bottom * FrameHeight;
	top_left->U *= OneOverTextureSize;
	top_left->V *= OneOverTextureSize;
	top_right->U *= OneOverTextureSize;
	top_right->V *= OneOverTextureSize;
	bottom_left->U *= OneOverTextureSize;
	bottom_left->V *= OneOverTextureSize;
	bottom_right->U *= OneOverTextureSize;
	bottom_right->V *= OneOverTextureSize;
	top_left->V += ScrollOffset;
	top_right->V += ScrollOffset;
	bottom_left->V += ScrollOffset;
	bottom_right->V += ScrollOffset;
}

ChainJoint* Chain::GetJoint(long index)
{
	return &Joints.Data[index];
}

void ParticleChainJoint::SetRandJitter(float jitter)
{
	RandJitter = jitter;
}

RenderParticleGJMesh::RenderParticleGJMesh()
{
	ModulateColour = true;
	FollowLandscape = false;
	UseLandscapeColour = false;
}

RenderParticleGJMesh::~RenderParticleGJMesh() {}

RenderParticleGJMeshRotatingUV::RenderParticleGJMeshRotatingUV()
{
	NextU = 0.0f;
	NextV = 0.0f;
	WrapV = 1.0f;
	WrapU = 1.0f;
}

RenderParticleGJMeshRotatingUV::~RenderParticleGJMeshRotatingUV() {}

void RenderParticleGJMeshRotatingUV::GameUpdate(AtomCore* core)
{
	float maxU = WrapU * 2;
	float maxV = WrapV * 2;
	while (NextU < -maxU && U < -maxU)
	{
		NextU += WrapU;
		U += WrapU;
	}
	while (NextV < -maxV && V < -maxV)
	{
		NextV += WrapV;
		V += WrapV;
	}
	while (NextU > maxU && U > maxU)
	{
		NextU -= WrapU;
		U -= WrapU;
	}
	while (NextV > maxV && V > maxV)
	{
		NextV -= WrapV;
		V -= WrapV;
	}
	LastU = U;
	LastV = V;
	U = NextU;
	V = NextV;
}

void GJMesh::CopyGJMesh(const GJMesh& source, GJMesh* dest)
{
	if (&source != dest)
	{
		dest->SubMeshes.SetSize(source.SubMeshes.Size);
		for (long i = 0; i < source.SubMeshes.Size; i++)
		{
			GJSubMesh& sourceSubMesh = source.SubMeshes.Entry(i);
			GJSubMesh& destSubMesh = dest->SubMeshes.Entry(i);
			destSubMesh.Primitives.SetSize(sourceSubMesh.Primitives.Size);
			for (long j = 0; j < sourceSubMesh.Primitives.Size; j++)
			{
				GJPrimitive& sourcePrimitive = sourceSubMesh.Primitives.Entry(j);
				GJPrimitive& destPrimitive = destSubMesh.Primitives.Entry(j);
				destPrimitive.Material = sourcePrimitive.Material;
				destPrimitive.Positions = sourcePrimitive.Positions;
				destPrimitive.Colours = sourcePrimitive.Colours;
				destPrimitive.UVs = sourcePrimitive.UVs;
				destPrimitive.Triangles = sourcePrimitive.Triangles;
				destPrimitive.Normals = sourcePrimitive.Normals;
			}
		}
	}
}

void GJPrimitive::ComputeNormalsFromTriangles()
{
	static GJVector<long> vertexCounts;
	vertexCounts.SetSize(Positions.GetSize());
	vertexCounts.FillWith(0);
	Normals.SetSize(Positions.GetSize());
	Normals.FillWith(LHPoint(0.0f, 0.0f, 0.0f));
	for (long i = 0; i < Triangles.GetSize(); i++)
	{
		SLONGTriangle& triangle = Triangles[i];
		LHPoint        normal =
			(Positions[triangle.B] - Positions[triangle.A]) ^ (Positions[triangle.C] - Positions[triangle.B]);
		normal.Normalise();
		long* corners = &triangle.A;
		for (long j = 0; j < 3; j++)
		{
			Normals[corners[j]] += normal;
			vertexCounts[corners[j]]++;
		}
	}
	for (long k = 0; k < Normals.GetSize(); k++)
	{
		if (vertexCounts[k] > 1)
		{
			Normals[k].Normalise();
		}
	}
}

void GJSubMesh::ComputeNormalsFromTriangles()
{
	for (long i = 0; i < Primitives.Size; i++)
	{
		Primitives.Entry(i).ComputeNormalsFromTriangles();
	}
}

void GJMesh::ComputeNormalsFromTriangles()
{
	for (long i = 0; i < SubMeshes.Size; i++)
	{
		SubMeshes.Entry(i).ComputeNormalsFromTriangles();
	}
}

void GJMesh::GetCentre(LHPoint* centre)
{
	*centre = LHPoint(0.0f, 0.0f, 0.0f);
	for (long i = 0; i < SubMeshes.Size; i++)
	{
		GJSubMesh& subMesh = SubMeshes.Entry(i);
		for (long j = 0; j < subMesh.Primitives.Size; j++)
		{
			GJVector<LHPoint>& positions = subMesh.Primitives.Entry(j).Positions;
			for (long k = 0; k < positions.GetSize(); k++)
			{
				*centre += positions[k];
			}
		}
	}
	*centre *= 1.0f / GetNumVertices();
}

long GJMesh::GetNumVertices()
{
	long count = 0;
	for (long i = 0; i < SubMeshes.Size; i++)
	{
		count += SubMeshes.Entry(i).GetNumVertices();
	}
	return count;
}

long GJPrimitive::GetNumVertices()
{
	return Positions.GetSize();
}

long GJSubMesh::GetNumVertices()
{
	long count = 0;
	for (long i = 0; i < Primitives.Size; i++)
	{
		count += Primitives.Entry(i).GetNumVertices();
	}
	return count;
}

void GJMesh::CopyFromLH3DMesh(LH3DMesh* mesh, bool copy_normals, bool copy_colours)
{
	long numSubMeshes = 0;
	for (long i = 0; i < mesh->GetSubmeshCount(); i++)
	{
		LH3DSubMesh* lhSubMesh = mesh->GetListPtrSubmesh()[i];
		if ((lhSubMesh->GetLod() & LH3D_MESH_LOD_NEAR) && lhSubMesh->GetStatus() == 0)
		{
			numSubMeshes++;
		}
	}
	SubMeshes.SetSize(numSubMeshes);
	long subMeshIndex = 0;
	for (long n = 0; n < mesh->GetSubmeshCount(); n++)
	{
		LH3DSubMesh* lhSubMesh = mesh->GetListPtrSubmesh()[n];
		if ((lhSubMesh->GetLod() & LH3D_MESH_LOD_NEAR) && lhSubMesh->GetStatus() == 0)
		{
			SubMeshes.Entry(subMeshIndex).Primitives.SetSize(lhSubMesh->GetPrimitiveCount());
			for (long j = 0; j < lhSubMesh->GetPrimitiveCount(); j++)
			{
				LH3DPrimitive* lhPrimitive = lhSubMesh->GetListPtrPrimitive()[j];
				GJPrimitive&   primitive = SubMeshes.Entry(subMeshIndex).Primitives.Entry(j);
				primitive.Material = lhPrimitive->GetMaterial();
				primitive.Triangles.SetSize(lhPrimitive->GetTriangleCount());
				primitive.Positions.SetSize(lhPrimitive->GetVerticesCount());
				primitive.UVs.SetSize(lhPrimitive->GetVerticesCount());
				if (copy_normals)
				{
					primitive.Normals.SetSize(lhPrimitive->GetVerticesCount());
				}
				if (copy_colours)
				{
					primitive.Colours.SetSize(lhPrimitive->GetVerticesCount());
				}
				LH3DVertex* vertices = lhPrimitive->GetListVertex();
				for (long k = 0; k < primitive.Positions.GetSize(); k++)
				{
					primitive.Positions[k] = vertices[k].position;
					primitive.UVs[k].U = vertices[k].uv.x;
					primitive.UVs[k].V = vertices[k].uv.y;
					if (copy_normals)
					{
						primitive.Normals[k] = vertices[k].normal;
					}
					if (copy_colours)
					{
						primitive.Colours[k] = LH3DColor(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX,
						                                 LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_OPAQUE);
					}
				}
				LH3DTriangle* lhTriangles = lhPrimitive->Triangles;
				for (long t = 0; t < primitive.Triangles.GetSize(); t++)
				{
					LH3DTriangle&  lhTriangle = lhTriangles[t];
					SLONGTriangle& triangle = primitive.Triangles[t];
					triangle.A = lhTriangle.A;
					triangle.B = lhTriangle.B;
					triangle.C = lhTriangle.C;
				}
			}
			subMeshIndex++;
		}
	}
}

void GJPrimitive::SetLightMap(uint32_t light_map)
{
	SecondUVs = UVs;
	LightMap = light_map;
}

void GJPrimitive::GetBoundingBox(LHPoint* minima, LHPoint* maxima)
{
	for (long i = 0; i < Positions.GetSize(); i++)
	{
		LHPoint& position = Positions[i];
		minima->x = min(minima->x, position.x);
		minima->y = min(minima->y, position.y);
		minima->z = min(minima->z, position.z);
		maxima->x = max(maxima->x, position.x);
		maxima->y = max(maxima->y, position.y);
		maxima->z = max(maxima->z, position.z);
	}
}

void GJSubMesh::GetBoundingBox(LHPoint* minima, LHPoint* maxima)
{
	for (long i = 0; i < Primitives.Size; i++)
	{
		Primitives.Entry(i).GetBoundingBox(minima, maxima);
	}
}

void GJMesh::GetBoundingBox(LH3DBoundingBox* bounding_box)
{
	LHPoint minima(GJ_MESH_BOUNDS_LIMIT, GJ_MESH_BOUNDS_LIMIT, GJ_MESH_BOUNDS_LIMIT);
	LHPoint maxima(-GJ_MESH_BOUNDS_LIMIT, -GJ_MESH_BOUNDS_LIMIT, -GJ_MESH_BOUNDS_LIMIT);
	for (long i = 0; i < SubMeshes.Size; i++)
	{
		SubMeshes.Entry(i).GetBoundingBox(&minima, &maxima);
	}
	bounding_box->centre = (minima + maxima) * 0.5f;
	bounding_box->size = (maxima - minima) * 0.5f;
}

void GJPrimitive::TransformAllPoints(const LHMatrix& matrix)
{
	for (long i = 0; i < Positions.GetSize(); i++)
	{
		matrix.TransformPoint(Positions[i]);
	}
}

void GJSubMesh::TransformAllPoints(const LHMatrix& matrix)
{
	for (long i = 0; i < Primitives.Size; i++)
	{
		Primitives.Entry(i).TransformAllPoints(matrix);
	}
}

void GJMesh::TransformAllPoints(const LHMatrix& matrix)
{
	for (long i = 0; i < SubMeshes.Size; i++)
	{
		SubMeshes.Entry(i).TransformAllPoints(matrix);
	}
}

void GJSubMesh::SetLightMap(uint32_t light_map)
{
	for (long i = 0; i < Primitives.Size; i++)
	{
		Primitives.Entry(i).SetLightMap(light_map);
	}
}

void GJMesh::SetLightMap(uint32_t light_map)
{
	for (long i = 0; i < SubMeshes.Size; i++)
	{
		SubMeshes.Entry(i).SetLightMap(light_map);
	}
}

RenderParticleMist::RenderParticleMist()
{
	Mist = NULL;
	Ratio = 0.0f;
	TakeRatioFromMatrix = false;
}

uint32_t RenderParticleMist::GetSaveType()
{
	return GAME_THING_TYPE_RENDER_PARTICLE_MIST;
}

char* RenderParticleMist::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

RenderParticleMist::~RenderParticleMist()
{
	if (Mist)
	{
		Mist->Release();
	}
}

ParticlePlayerSymbol::ParticlePlayerSymbol()
{
	PlayerNumber = 0;
}

uint32_t ParticlePlayerSymbol::GetSaveType()
{
	return GAME_THING_TYPE_RENDER_PARTICLE_PLAYER_SYMBOL;
}

char* ParticlePlayerSymbol::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

ParticlePlayerSymbol::ParticlePlayerSymbol(uint8_t player_number)
{
	PlayerNumber = player_number;
	CreateSprite();
}

void ParticlePlayerSymbol::ResolveLoad()
{
	CreateSprite();
}

void ParticlePlayerSymbol::CreateSprite()
{
	Sprite = PlayerSymbolSprite::Create(PlayerNumber);
}

ParticlePlayerSymbol::~ParticlePlayerSymbol()
{
	if (Sprite)
	{
		Sprite->Release();
		Sprite = NULL;
	}
}

Particle3DSprite::~Particle3DSprite()
{
	if (Sprite)
	{
		SpriteBank::ReleaseSprite(Sprite);
		Sprite = NULL;
	}
}

LH3DSprite* Particle3DSprite::GetSprite()
{
	return Sprite;
}

void Particle3DSprite::GameUpdate(AtomCore* core)
{
	if (StretchVertically)
	{
		PreviousScale = Scale;
		float height = core->StretchHeight;
		Scale = height;
	}
}

RenderParticleGameObject::RenderParticleGameObject()
{
	GameObject = NULL;
	Player = NULL;
	Matrix.SetIdentity();
	KillLiving = true;
}

uint32_t RenderParticleGameObject::GetSaveType()
{
	return GAME_THING_TYPE_RENDER_PARTICLE_GAME_OBJECT;
}

char* RenderParticleGameObject::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

void RenderParticleGameObject::StopFlying()
{
	if (GameObject.Pointer)
	{
		if (GameObject.IsValid())
		{
			float yaw, pitch, roll;
			Matrix.GetYXZ(&yaw, &pitch, &roll);
			GameObject->SetXYZAngles(pitch, yaw, roll);
			Object* object = GameObject.Get();
			object->Pos.SetX(Matrix.GetPos().x);
			object->Pos.SetZ(Matrix.GetPos().z);
			object->Pos.SetAltitude(0.0f);
			GameObject->Pos.altitude = 0.0f;
			GameObject->EndPhysics(NULL, true);
			GameObject->GameThing::Flags &= ~GAME_THING_FLAG_PSYS_FLYING;
		}
	}
}

RenderParticleGameObject::~RenderParticleGameObject()
{
	if (GameObject.Pointer)
	{
		if (GameObject.IsValid())
		{
			if (KillLiving && GameObject->IsLiving())
			{
				StopFlying();
				GameObject->DestroyedByEffect(Player, 1.0f);
			}
			else
			{
				GameObject->ToBeDeleted(false);
			}
		}
	}
}

bool32_t RenderParticleGameObject::InitialisePSysFlying(Object* object)
{
	LHPoint angularVelocity(0.0f, 1.0f, 0.0f);
	LHPoint velocity(0.0f, 0.0f, 0.0f);
	if (object->InitialisePhysics(velocity, angularVelocity, NULL, false, NULL).Started == true)
	{
		object->GameThing::Flags |= GAME_THING_FLAG_PSYS_FLYING;
		return true;
	}
	return false;
}

void RenderParticleGameObject::SetGameObject(AtomCore* core, Object* object)
{
	Player = core->Collection->Manager->GetPlayer();
	GameObject = object;
	if (GameObject.Pointer)
	{
		if (GameObject.IsValid())
		{
			GameObject->GetWorldMatrix(&Matrix);
			if (!(GameObject->GameThing::Flags & GAME_THING_FLAG_PSYS_FLYING))
			{
				if (GameObject->InPhysics || InitialisePSysFlying(GameObject.Get()) != true)
				{
					GameObject.Pointer = NULL;
				}
			}
		}
	}
}

void RenderParticleGameObject::GameUpdate(AtomCore* core)
{
	Matrix = core->LastDrawPosInfo.Transform;
	if (GameObject.Pointer)
	{
		GameObject.IsValid();
	}
	if (GameObject.Pointer)
	{
		if (!(GameObject.Get()->Flags & GAME_THING_WITH_POS_FLAG_IN_MAP))
		{
			GameObject.Get()->Pos = MapCoords(Matrix.GetPos());
		}
	}
}

PSysLightMap::PSysLightMap()
{
	Reserved1 = 0;
	Reserved2 = 0;
	Bitmap = NULL;
	Frame = 0;
	Intensity = 1.0f;
}

PSysLightMap::~PSysLightMap()
{
	long index = 0;
	while ((index = PSysLightMaps::List.Maps.Find(this, index)) != -1)
	{
		PSysLightMaps::List.Maps.RemoveAt(index);
	}
}

void PSysLightMap::AddLight()
{
	if (Bitmap != NULL && Bitmap->Data != NULL &&
	    (Bitmap->Depth == GJ_BITMAP_RGB_DEPTH || Bitmap->Depth == GJ_BITMAP_GREY_DEPTH))
	{
		LHPoint pos = Position;
		pos.x += LIGHT_MAP_POSITION_OFFSET;
		pos.z += LIGHT_MAP_POSITION_OFFSET;
		DynamicLightAndShadow::AddLight(&pos, Bitmap->GetFrameData(Frame % Bitmap->Frames), Bitmap->Width, true,
		                                Intensity,
		                                Bitmap->Depth == GJ_BITMAP_RGB_DEPTH ? DynamicLightAndShadow::LIGHT_TYPE_LIGHT
		                                                                     : DynamicLightAndShadow::LIGHT_TYPE_SHADOW,
		                                false);
	}
}

PSysShadow::PSysShadow()
{
	Previous = NULL;
	Next = NULL;
	DynamicShadow = LH3DDynamicShadow::Create();
	Object3D = NULL;
}

PSysShadow::~PSysShadow()
{
	if (PSysLightMaps::List.Shadows.FindUsingAddress(this) != NULL)
	{
		PSysLightMaps::List.Shadows.RemoveFromList(this);
	}
	DynamicShadow->Release();
}

void PSysShadow::Prepare()
{
	if (DynamicShadow != NULL && Object3D != NULL)
	{
		DynamicShadow->Prepare(Object3D);
	}
}

ParticleLightMap::ParticleLightMap()
{
	Creator = NULL;
	RandJitter = PARTICLE_LIGHT_MAP_DEFAULT_JITTER;
	UseRandJitter = true;
	ShiftX = 0.0f;
	ShiftZ = 0.0f;
}

uint32_t ParticleLightMap::GetSaveType()
{
	return GAME_THING_TYPE_PARTICLE_LIGHT_MAP;
}

char* ParticleLightMap::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

LightMapList PSysLightMaps::List;

LightMapList::LightMapList()
{
	BlurAmount = 0.0f;
	BlurState = LIGHT_MAP_BLUR_STATE_NONE;
}

LightMapList::~LightMapList()
{
	PSysShadow* shadow;
	while ((shadow = Shadows.Head()) != NULL)
	{
		Shadows.RemoveFromList(shadow);
	}
}

void LightMapList::Submit()
{
	float blur = BlurAmount;
	blur = blur < 0.0f ? 0.0f : (blur > 1.0f ? 1.0f : blur);
	LH3DRender::g_motion_blur_value = (int)(blur * LIGHT_MAP_MOTION_BLUR_SCALE);
	for (long i = 0; i < Maps.GetSize(); i++)
	{
		Maps[i]->AddLight();
	}
	for (PSysShadow* shadow = Shadows.Head(); shadow != NULL; shadow = shadow->Next)
	{
		shadow->Prepare();
	}
}

void LightMapList::StartBlur()
{
	BlurState = LIGHT_MAP_BLUR_STATE_INCREASING;
}

void LightMapList::StopBlur()
{
	BlurState = LIGHT_MAP_BLUR_STATE_DECREASING;
}

void LightMapList::UpdateBlur()
{
	if (BlurState == LIGHT_MAP_BLUR_STATE_DECREASING)
	{
		BlurAmount -= GGameInfo::Info.MillisecondsPerGameTurn * LIGHT_MAP_BLUR_SPEED;
		if (BlurAmount <= 0.0f)
		{
			BlurAmount = 0.0f;
			BlurState = LIGHT_MAP_BLUR_STATE_NONE;
		}
	}
	else if (BlurState == LIGHT_MAP_BLUR_STATE_INCREASING)
	{
		BlurAmount += GGameInfo::Info.MillisecondsPerGameTurn * LIGHT_MAP_BLUR_SPEED;
		if (BlurAmount > LIGHT_MAP_BLUR_MAX)
		{
			BlurAmount = LIGHT_MAP_BLUR_MAX;
			BlurState = LIGHT_MAP_BLUR_STATE_NONE;
		}
	}
}

void LightMapList::Clear()
{
	Maps.SetSize(0);
	PSysShadow* shadow;
	while ((shadow = Shadows.Head()) != NULL)
	{
		Shadows.RemoveFromList(shadow);
	}
}

void PSysLightMaps::AddDrawing()
{
	List.Submit();
	List.Clear();
}

void PSysLightMaps::ProcessLightMaps()
{
	List.UpdateBlur();
}

RenderParticleVolBlendMesh::RenderParticleVolBlendMesh()
{
	Mesh2 = NULL;
	Mesh1 = NULL;
	Object3D = NULL;
	BlendAmount = VOL_BLEND_AMOUNT_UNSET;
	NumFrames = 1;
	FrameHeight = VOL_BLEND_DEFAULT_FRAME_SIZE;
	FrameWidth = VOL_BLEND_DEFAULT_FRAME_SIZE;
}

RenderParticleVolBlendMesh::~RenderParticleVolBlendMesh()
{
	if (Object3D != NULL)
	{
		Object3D->Release();
	}
	if (BlendMesh != NULL)
	{
		BlendMesh->Release();
	}
}

static int    Unused1 = 0;
LH3DSprite*   GoldenShower::Sprite = NULL;
LH3DMaterial* GoldenShower::Material = NULL;
static int    Unused2 = 0;

GoldenShower* GoldenShower::Create()
{
	return NEW(1468) GoldenShower;
}

void GoldenShower::Release()
{
	delete this;
}

GoldenShower::GoldenShower()
{
	Alpha = LH3D_COLOR_OPAQUE;
	Dirty = false;
	if (Sprite == NULL)
	{
		Sprite = LH3DSprite::Create(1, false);
	}
	if (Material == NULL)
	{
		Material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ,
		                                      GJUtils::CreateSharedTexture(".\\data\\textures\\S_SpriteSheet1.raw"));
	}
	Dirty = true;
	InitSparkles();
	Dirty = false;
	FrameOffset = GRand::LocalRand(GOLDEN_SHOWER_FRAME_COUNT);
}

void GoldenShower::InitSparkles()
{
	if (Dirty)
	{
		Sparkles.SetSize(GOLDEN_SHOWER_SPARKLE_COUNT);
		for (int i = 0; i < GOLDEN_SHOWER_SPARKLE_COUNT; i++)
		{
			Sparkle& sparkle = Sparkles.Data[i];
			sparkle.Age = -i * GOLDEN_SHOWER_SPARKLE_LIFETIME / GOLDEN_SHOWER_SPARKLE_COUNT;
			float angle = GRand::LocalFloatRand(TWO_PI);
			sparkle.Angle = angle;
		}
		Dirty = false;
	}
}

void GoldenShower::SetPosition(const LHPoint& position)
{
	Position = position;
}

void GoldenShower::AddDrawing()
{
	LHPoint point = Position;
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&GoldenShower::Draw,
	                                  LH3DTech::GetValueForZSorter(point), 0);
}

const float GoldenShowerRise = -20.0f;
const float GoldenShowerStartSize = 2.0f;
const float GoldenShowerEndSize = 1.2f;

void GoldenShower::Draw()
{
	Dirty = true;
	int timeInc = LH3DTech::GetGameTimeInc();
	for (int i = 0; i < Sparkles.GetSize(); i++)
	{
		Sparkle& sparkle = Sparkles.Entry(i);
		sparkle.Age += timeInc;
		if (sparkle.Age > GOLDEN_SHOWER_SPARKLE_LIFETIME)
		{
			sparkle.Age -= GOLDEN_SHOWER_SPARKLE_LIFETIME;
			sparkle.Angle = GRand::LocalFloatRand(TWO_PI);
		}
	}
	LH3DRender::SetMaterial(Material, 0);
	for (int j = 0; j < Sparkles.GetSize(); j++)
	{
		Sparkle& sparkle = Sparkles.Entry(j);
		if (sparkle.Age >= 0)
		{
			Sprite->pos = Position;
			float progress = (float)(sparkle.Age * sparkle.Age) *
			                 (1.0f / (GOLDEN_SHOWER_SPARKLE_LIFETIME * GOLDEN_SHOWER_SPARKLE_LIFETIME));
			Sprite->pos.y -= GoldenShowerRise * progress;
			Sprite->Size = GoldenShowerStartSize + (GoldenShowerEndSize - GoldenShowerStartSize) * progress;
			float fade;
			if (sparkle.Age < GOLDEN_SHOWER_FADE_IN_TIME)
			{
				fade = sparkle.Age / (float)GOLDEN_SHOWER_FADE_IN_TIME;
			}
			else
			{
				fade = 1.0f - (sparkle.Age - GOLDEN_SHOWER_FADE_IN_TIME) * (1.0f / GOLDEN_SHOWER_FADE_OUT_TIME);
			}
			Sprite->colour = LH3DColor((uint8_t)(int)(Alpha * fade) << 24 | LH3D_COLOR_RGB_MASK);
			uint8_t frame = (sparkle.Age / GOLDEN_SHOWER_FRAME_TIME + (j + FrameOffset)) % GOLDEN_SHOWER_FRAME_COUNT;
			Sprite->SetFrame(frame);
			Sprite->SetRotation(sparkle.Angle);
			Sprite->Draw();
		}
	}
}
