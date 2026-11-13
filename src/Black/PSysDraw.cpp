#include "ParticleDrawConstants.h"

#include "ParticleConstants.h"

#include "GameTimeConstants.h"

#include "HalfLifeConstants.h"

#include "Camera.h"
#include "Chain.h"
#include "DrawData.h"
#include "GJBitmap.h"
#include "GJUtils.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GoldenShower.h"
#include "Object.h"
#include "PSysAtomCore.h"
#include "PSysGlobal.h"
#include "PSysLightMaps.h"
#include "PSysManager.h"
#include "PSysModifiers.h"
#include "PSysPCreator.h"
#include "PSysRenderParticle.h"
#include "Particle3DAnim.h"
#include "Particle3DAnimWithCamera.h"
#include "Particle3DObj.h"
#include "Particle3DObjAnimTextured.h"
#include "Particle3DSprite.h"
#include "ParticleChainJoint.h"
#include "ParticleCreator.h"
#include "ParticleLightMap.h"
#include "ParticlePlayerSymbol.h"
#include "PlayerSymbolSprite.h"
#include "Rand.h"
#include "ScriptHighlight.h"

#include <Lionhead/LH3DLib/development/LH3DCamera.h>
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DLine.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DMist.h>
#include <Lionhead/LH3DLib/development/LH3DObject.h>
#include <Lionhead/LH3DLib/development/LH3DPrimitive.h>
#include <Lionhead/LH3DLib/development/LH3DSky.h>
#include <Lionhead/LH3DLib/development/LH3DSprite.h>
#include <Lionhead/LH3DLib/development/Zoomer.h>

#include <math.h>

#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LH3DLib/development/LH3DZSorter.h>

const float MaxDrawInterpolation = 5.0f;
const float ChainSunLight = 1.0f - CHAIN_AMBIENT_LIGHT;

// BW1W120 00c0215c
extern uint8_t DrawingAlpha;
// BW1W120 00c0215d
extern bool DrawingUseZSorter;
// BW1W120 0067c100
bool AreTriangleIndicesInRange(GJVector<SLONGTriangle>* triangles, long num_vertices);

void PSysManager::AddDrawing(float interpolation, const LHPoint& pos)
{
	DrawInterpolation = interpolation;
	UseZSorter = false;
	LHPoint point = pos;
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&PSysManager::DrawNow,
	                                  LH3DTech::GetValueForZSorter(point), 0);
}

void PSysManager::Draw(float interpolation, bool use_z_sorter)
{
	DrawInterpolation = interpolation;
	UseZSorter = use_z_sorter;
	DrawNow();
}

void PSysManager::DrawNow()
{
	float interpolation = DrawInterpolation;
	if (PSysGlobal::DrawManagers)
	{
		DrawingAlpha = Alpha;
		DrawingUseZSorter = UseZSorter;
		for (LHLinkedNode<AtomCollection*>* node = Collections.GetStart(); node != NULL; node = node->next.Get())
		{
			node->payload->DoDrawLoopDrawing(interpolation);
		}
	}
}

void AtomCollection::DoDrawLoopDrawing(float interpolation)
{
	for (GJDoubleLinkList<AtomCore>::Iterator it(Atoms); !it.IsFinished(); it++)
	{
		it->DoDrawLoopDrawing(interpolation);
	}
	if (ParticleChain != NULL)
	{
		if (DrawingUseZSorter)
		{
			ParticleChain->AddDrawing();
		}
		else
		{
			ParticleChain->DrawWithClipping();
		}
	}
	for (GJDoubleLinkList<AtomCore>::Iterator atom_it(Atoms); !atom_it.IsFinished(); atom_it++)
	{
		for (GJDoubleLinkList<AtomCollection>::Iterator sub_it(atom_it->SubCollections); !sub_it.IsFinished(); sub_it++)
		{
			sub_it->DoDrawLoopDrawing(interpolation);
		}
	}
}

void AtomCore::DoDrawLoopDrawing(float interpolation)
{
	if (PSysGlobal::DrawAtoms && Particle != NULL && InUse == true &&
	    (DrawPosState == DRAW_POS_STATE_READY || (DrawPosState == DRAW_POS_STATE_FIRST_UPDATE && DrawOnFirstUpdate)))
	{
		CalculateDrawPosInfo  blended;
		CalculateDrawPosInfo* drawPos = &LastDrawPosInfo;
		if (PSysGlobal::InterpolateAtoms && Collection->InterpolateDrawPos)
		{
			float t = boundf(0.0f, interpolation, MaxDrawInterpolation);
			blended.SetBlend(DrawPosInfo, LastDrawPosInfo, t);
			drawPos = &blended;
		}
		long frame;
		if (AnimInfo.LoopAnim)
		{
			float frameFraction = boundf(0.0f, interpolation, MaxDrawInterpolation);
			float frameCount = (float)AnimInfo.FrameCount;
			float framePos =
				fmodf(GJUtils::LinterpNoBoundsCheck(PreviousFrameTime, FrameTime, frameFraction), frameCount);
			if (framePos < 0.0f)
			{
				framePos += frameCount;
			}
			frame = (long)framePos;
		}
		else
		{
			float frameFraction = boundf(0.0f, interpolation, 1.0f);
			long  lastFrame = AnimInfo.FrameCount - 1;
			long  frameIndex = (long)GJUtils::Linterp(PreviousFrameTime, FrameTime, frameFraction);
			if (frameIndex > 0)
			{
				if (frameIndex < lastFrame)
				{
					frame = frameIndex;
				}
				else
				{
					frame = lastFrame;
				}
			}
			else
			{
				frame = 0;
			}
		}
		LH3DColor colour = Colour;
		colour.a = drawPos->Alpha;
		if (Offset != NULL)
		{
			if (drawPos != &blended)
			{
				blended = *drawPos;
				drawPos = &blended;
			}
			LHPoint offset;
			Offset->GetOffset(&offset);
			drawPos->Transform.GetPos() += offset;
		}
		if (DrawingAlpha != LH3D_COLOR_OPAQUE)
		{
			colour.a = colour.a * DrawingAlpha >> 8;
		}
		if (PSysGlobal::DrawParticles)
		{
			DrawData data;
			data.Atom = this;
			data.DrawPos = drawPos;
			data.Colour = colour;
			data.Specular = Specular;
			data.Frame = frame;
			data.Interpolation = interpolation;
			Particle->DrawAt(data);
		}
	}
}

static GJVector<LHPoint>   TransformedVertices;
static GJVector<LH3DColor> LitColours;
static GJVector<LHPoint>   ScratchPoints;
static GJVector<UVCoord>   ScratchUVs;

void ParticleChainJoint::DrawAt(const DrawData& data)
{
	ChainJoint* joint = ParentChain->GetJoint(JointIndex);
	joint->Scale = data.DrawPos->Scale;
	joint->Colour = data.Colour;
	joint->Specular = LH3DColor(data.Specular);
	joint->Position = data.DrawPos->Transform.GetPos();
	joint->Active = true;
	ParentChain->JointsUpdated = true;
	if (JitterEnabled)
	{
		joint->Position += LHPoint((GRand::LocalFloatRand(RandJitter)), (GRand::LocalFloatRand(RandJitter)),
		                           (GRand::LocalFloatRand(RandJitter)));
	}
}

void Particle3DObj::DrawNow()
{
	if (DrawCutByPlane)
	{
		if (Object3D->GetMesh()->GetBoundingBox().CheckRegionOnScreen(Object3D))
		{
			Object3D->DrawCutByPlane();
		}
	}
	else
	{
		Object3D->DrawWithClipping();
	}
}

void Particle3DObj::AddDrawing()
{
	if (Object3D->GetMesh()->GetBoundingBox().CheckRegionOnScreen(Object3D))
	{
		LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&Particle3DObj::DrawNow,
		                                  LH3DTech::GetValueForZSorter(Object3D->matrix.GetPos()), 0);
	}
}

void Particle3DObj::DrawAt(const DrawData& data)
{
	if (Object3D != NULL && Creator != NULL)
	{
		Object3D->matrix = data.DrawPos->Transform;
		Object3D->scale = data.DrawPos->Scale;
		if (DrawWithLandscapeColor)
		{
			Object3D->CombineColorFromPos(data.Colour.GetColor(), data.Specular);
		}
		else
		{
			Object3D->SetColorSpecular(data.Colour.GetColor(), data.Specular);
		}
		if (((ParticleBaseMeshCreator*)Creator)->FaceCamera)
		{
			GGame::g_game->GetCamera();
			LHPoint cameraPos;
			cameraPos = *LH3DTech::GetCameraPosition();
			cameraPos.y = 0.0f;
			LHPoint pos;
			pos.Set(data.DrawPos->Transform.GetPos());
			pos.y = 0.0f;
			LHPoint forward(0.0f, 0.0f, 1.0f);
			data.DrawPos->Transform.TransformVector(forward);
			forward.FastNormalizeInline();
			LHPoint toCamera = pos - cameraPos;
			toCamera.FastNormalizeInline();
			float angle = (float)atan2(toCamera.z, toCamera.x) - (float)atan2(forward.z, forward.x);
			Object3D->matrix.RotateY(angle);
			Object3D->matrix.PreScale(1.0f, ((ParticleBaseMeshCreator*)Creator)->HeightStretch, 1.0f);
			if (((ParticleBaseMeshCreator*)Creator)->UseScriptHightlightPulse)
			{
				LH3DColor colour = Object3D->color;
				float     pulse = ScriptHighlight::GetNetUnsafeBeamPulseValue();
				colour.a = pulse * colour.a;
				Object3D->color = colour.GetColor();
			}
		}
		else if (((ParticleBaseMeshCreator*)Creator)->FaceCameraSprite)
		{
			GGame::g_game->GetCamera();
			LHPoint cameraPos;
			cameraPos = *LH3DTech::GetCameraPosition();
			LHPoint pos;
			pos.Set(data.DrawPos->Transform.GetPos());
			LHPoint toCamera = cameraPos - pos;
			Object3D->matrix.SetIdentity();
			Object3D->matrix.PostScale(data.DrawPos->Scale);
			float pitch =
				HALF_PI_F - atan2f(toCamera.y, (float)sqrt(toCamera.x * toCamera.x + toCamera.z * toCamera.z));
			Object3D->matrix.PostRotateZ(pitch);
			float yaw = atan2f(toCamera.z, toCamera.x);
			Object3D->matrix.PostRotateY(yaw);
			Object3D->matrix.PostTranslation(pos);
			Object3D->scale = data.DrawPos->Scale;
		}
		if (PSysGlobal::DrawObjects)
		{
			if (UseGlobalAlpha)
			{
				Object3D->SetDrawWithGlobalAlpha(true);
			}
			if (DrawingUseZSorter && PSysGlobal::ZSortObjects)
			{
				AddDrawing();
			}
			else
			{
				DrawNow();
			}
		}
	}
	if (Shadow != NULL)
	{
		Shadow->Object3D = Object3D;
		PSysLightMaps::List.Shadows.InsertIntoList(Shadow);
	}
}

void Particle3DObjAnimTextured::DrawAt(const DrawData& data)
{
	if (Object3D == NULL && Creator != NULL)
	{
		Object3D = Creator->CreateLH3DObject();
	}
	if (Object3D != NULL)
	{
		if (!SlideU && !SlideV)
		{
			uint32_t step = PARTICLE_ANIM_TEXTURE_SIZE / TextureWidth;
			float    u = ((uint32_t)data.Frame % step) * (TextureWidth * OneOverTextureSize);
			float    v = ((uint32_t)data.Frame / step) * (TextureHeight * OneOverTextureSize);
			Object3D->SetAnimatedUV(u, v);
		}
		else
		{
			float u = 0.0f;
			float v = 0.0f;
			if (SlideU)
			{
				u = (TextureWidth * (uint32_t)data.Frame) / (NumFrames * (float)PARTICLE_ANIM_TEXTURE_SIZE);
			}
			if (SlideV)
			{
				v = (TextureHeight * (uint32_t)data.Frame) / (NumFrames * (float)PARTICLE_ANIM_TEXTURE_SIZE);
			}
			Object3D->SetAnimatedUV(u, v);
		}
	}
	Particle3DObj::DrawAt(data);
}

static inline void boundfRef(float& value, float low, float high)
{
	value = value > low ? (value < high ? value : high) : low;
}

void RenderParticleMist::DrawAt(const DrawData& data)
{
	if (Mist != NULL)
	{
		Mist->Scale = data.DrawPos->Scale;
		const LHMatrix* matrix = &data.DrawPos->Transform;
		if (TakeRatioFromMatrix && (float)fabs(matrix->_11) > PARTICLE_MIST_MIN_MATRIX_SCALE)
		{
			Mist->Ratio = matrix->_22 / matrix->_11;
		}
		LH3DColor topColour = LH3DSky::topcol;
		topColour.a = LH3D_COLOR_OPAQUE;
		Mist->SetColorSpecular(GJUtils::ModulateColor(topColour.GetColor(), data.Colour.GetColor()), data.Specular);
		LHPoint position = matrix->GetPos();
		Mist->SetPosition(position.x, position.y, position.z);
		if (DrawingUseZSorter)
		{
			Mist->AddDrawing();
		}
		else
		{
			Mist->DrawWithClipping();
		}
		if (LightMap.Bitmap == NULL && Creator != NULL)
		{
			LightMap.Bitmap = Creator->GetBitmap();
		}
		if (LightMap.Bitmap != NULL && LightMap.Bitmap->Data != NULL)
		{
			position.y = 0.0f;
			LightMap.Intensity = data.Colour.a * OneOverMaxAlpha;
			boundfRef(LightMap.Intensity, 0.0f, 1.0f);
			LightMap.Position = position;
			PSysLightMaps::List.Maps.PushBack(&LightMap);
		}
	}
}

void Particle3DAnim::DrawAt(const DrawData& data)
{
	if (Object3D != NULL)
	{
		CycleTime = GetCycleTimeFromFrame(data.Frame);
		Object3D->SetCurrentCycleTime(CycleTime);
		Object3D->SetColorSpecular(data.Colour.GetColor(), data.Specular);
		Object3D->matrix = data.DrawPos->Transform;
		Object3D->scale = data.DrawPos->Scale;
		bool32_t             useGlobalAlpha = UseGlobalAlpha;
		ParticleAnimCreator* creator = (ParticleAnimCreator*)Creator;
		if (creator != NULL && creator->Mesh1 != NULL && creator->Mesh2 != NULL)
		{
			uint32_t frame = data.Frame;
			float    blend = (frame - FrameToStartBlend) / (FrameToEndBlend - FrameToStartBlend);
			blend = boundf(0.0f, blend, 1.0f);
			if (blend < PARTICLE_3D_ANIM_MIN_BLEND)
			{
				blend = 0.0f;
			}
			else
			{
				useGlobalAlpha = false;
			}
			Object3D->SetFastBlending(blend, creator->Mesh1, creator->Mesh2);
		}
		if (data.Frame != 0 && Object3D->GetMesh() != NULL)
		{
			Object3D->SetDrawWithGlobalAlpha(useGlobalAlpha);
			if (DrawingUseZSorter && PSysGlobal::ZSortObjects)
			{
				Object3D->AddDrawing();
			}
			else
			{
				Object3D->DrawWithClipping();
			}
		}
	}
}

void Particle3DAnimWithCamera::DrawAt(const DrawData& data)
{
	if (Object3D != NULL)
	{
		Particle3DAnim::DrawAt(data);
	}
	if (CameraActive && data.Atom != NULL && data.Frame >= data.Atom->AnimInfo.FrameCount - 1)
	{
		StopCamera();
	}
}

void Particle3DAnimWithCamera::UpdateCamera(Zoomer3d* origin, Zoomer3d* focus)
{
	if (CameraCreator != NULL && ((ParticleAnimWithCameraCreator*)CameraCreator)->Camera != NULL)
	{
		if (PauseFinished)
		{
			LHPoint originPosition;
			LHPoint focusPosition;
			((ParticleAnimWithCameraCreator*)CameraCreator)
				->Camera->GetCamera(Object3D, CycleTime, &originPosition, &focusPosition);
			origin->SetDestinationWithTime(originPosition, PARTICLE_3D_ANIM_WITH_CAMERA_ZOOM_TIME);
			focus->x.SetDestination(focusPosition.x, PARTICLE_3D_ANIM_WITH_CAMERA_ZOOM_TIME);
			focus->y.SetDestination(focusPosition.y, PARTICLE_3D_ANIM_WITH_CAMERA_ZOOM_TIME);
			focus->z.SetDestination(focusPosition.z, PARTICLE_3D_ANIM_WITH_CAMERA_ZOOM_TIME);
		}
		else if (CameraActive)
		{
			if (!CameraPositioned)
			{
				LHPoint originPosition;
				LHPoint focusPosition;
				((ParticleAnimWithCameraCreator*)CameraCreator)
					->Camera->GetCamera(Object3D, CycleTime, &originPosition, &focusPosition);
				focus->SetDestinationWithTime(focusPosition, PauseBeforePlay + PARTICLE_3D_ANIM_WITH_CAMERA_ZOOM_TIME);
				origin->SetDestinationWithTime(originPosition,
				                               PauseBeforePlay + PARTICLE_3D_ANIM_WITH_CAMERA_ZOOM_TIME);
			}
			CameraPositioned = true;
		}
	}
}

void ParticlePlayerSymbol::DrawAt(const DrawData& data)
{
	if (Sprite != NULL && data.Colour.a != 0)
	{
		Sprite->SetScale(data.DrawPos->Scale);
		Sprite->SetAlphaColor(data.Colour.GetColor());
		Sprite->SetPos(data.DrawPos->Transform.GetPos());
		if (DrawingUseZSorter)
		{
			Sprite->AddDrawing();
		}
		else
		{
			Sprite->Draw();
		}
	}
}

void Particle3DSprite::DrawAt(const DrawData& data)
{
	if (Sprite != NULL && data.Colour.a != 0)
	{
		float scale = data.DrawPos->Scale;
		Sprite->SetSize(scale);
		if (StretchVertically)
		{
			Sprite->SetShape(scale, GJUtils::LinterpNoBoundsCheck(PreviousScale, Scale, data.Interpolation));
		}
		LH3DColor colour = data.Colour;
		if (Alpha != LH3D_COLOR_OPAQUE)
		{
			colour.a = Alpha * colour.a / LH3D_COLOR_OPAQUE;
		}
		if (!IgnoreRotation && PSysGlobal::RotateSprites)
		{
			Sprite->SetRotation(atan2(data.DrawPos->Transform._13, data.DrawPos->Transform._11));
		}
		LHPoint pos = data.DrawPos->Transform.GetPos();
		if (CentreAtBase)
		{
			pos.y += Sprite->Aspect * Sprite->Size * 0.5f;
		}
		Sprite->pos = pos;
		if (UseLandscapeColor)
		{
			unsigned long landscapeColour;
			unsigned long landscapeSpecular;
			LH3DIsland::GetColorAndSpecular(&Sprite->pos, &landscapeColour, &landscapeSpecular);
			colour = LH3DColor(GJUtils::ModulateColor(colour.GetColor(), landscapeColour));
			unsigned long specular = LH3DIsland::GetFogValue(&Sprite->pos, data.Specular, (unsigned long*)&colour);
			Sprite->colour = colour;
			Sprite->specular = LH3DColor(specular);
		}
		else
		{
			Sprite->colour = colour;
			Sprite->specular = LH3DColor(data.Specular);
		}
		uint8_t frame = FrameOffset + data.Frame;
		Sprite->SetFrame(frame);
		if (PSysGlobal::DrawSprites)
		{
			if (DrawingUseZSorter)
			{
				Sprite->AddDrawing();
			}
			else
			{
				Sprite->Draw();
			}
		}
	}
}

void RenderParticleGoldenShower::DrawAt(const DrawData& data)
{
	if (Shower == NULL)
	{
		Shower = GoldenShower::Create();
	}
	if (Shower != NULL)
	{
		Object* object = GetGameObject();
		if (object != NULL)
		{
			Shower->Alpha = data.Colour.a;
			Shower->SetPosition(object->Game3dObject != NULL ? object->Game3dObject->matrix.GetPos()
			                                                 : object->Pos.GetLHPoint());
			if (DrawingUseZSorter)
			{
				Shower->AddDrawing();
			}
			else
			{
				Shower->Draw();
			}
		}
	}
}

void RenderParticleGameObject::DrawAt(const DrawData& data)
{
	Object* object = GameObject.Get();
	if (object != NULL)
	{
		Game3DObject* object3d = object->Game3dObject;
		if (object3d != NULL)
		{
			if (data.Colour.a < LH3D_COLOR_OPAQUE)
			{
				object3d->SetDrawWithGlobalAlpha(true);
			}
			object3d->matrix = data.DrawPos->Transform;
			object3d->scale = data.DrawPos->Scale;
			if (object->Get3DType() == LH3DObject::ANIMATED && object3d->GetCurrentAnim() != NULL)
			{
				object3d->SetCurrentCycleTime(object->MoveAnimByTime(
					object3d->GetCurrentAnim(), object3d->GetCurrentCycleTime(), GGame::g_game->TimeInc));
			}
			object->DrawOutOfMap(false);
		}
	}
}

void ParticleLightMap::DrawAt(const DrawData& data)
{
	LightMap.Frame = (uint8_t)data.Frame;
	LightMap.Position.Set(data.DrawPos->Transform.GetPos());
	LightMap.Intensity = data.Colour.a * OneOverMaxAlpha;
	if (UseRandJitter)
	{
		LightMap.Position += LHPoint((GRand::LocalFloatRand(RandJitter)), (GRand::LocalFloatRand(RandJitter)),
		                             (GRand::LocalFloatRand(RandJitter)));
	}
	if (LightMap.Bitmap != NULL && LightMap.Bitmap->Data != NULL)
	{
		PSysLightMaps::List.Maps.PushBack(&LightMap);
	}
}

void Chain::DrawWithClipping()
{
	if (Joints.GetSize() >= 1)
	{
		Draw();
	}
}

void Chain::AddDrawing()
{
	if (LH3DRender::g_started_frame && Joints.GetSize() != 0)
	{
		LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&Chain::Draw,
		                                  LH3DTech::GetValueForZSorter(Joints[Joints.GetSize() / 2].Position), 0);
	}
}

void Chain::Draw()
{
	if (Creator != NULL && ((ParticleChainCreator*)Creator)->GetMaterial() != NULL && JointsUpdated &&
	    PSysGlobal::DrawChains)
	{
		LHPoint sun = LH3DTech::GetSun();
		sun.FastNormalizeInline();
		GGame::g_game->GetCamera();
		LHPoint cameraPosition;
		cameraPosition = *LH3DTech::GetCameraPosition();
		static GJVector<LH3DColor>    colours;
		static GJVector<UVCoord>      uvs;
		static GJVector<LH3DLine>     lines;
		static GJArray<SLONGTriangle> triangles;
		static GJVector<LHPoint>      points;
		static GJVector<LHPoint>      normals;
		points.SetSize((Joints.GetSize() - 1) * CHAIN_POINTS_PER_SEGMENT);
		normals.SetSize((Joints.GetSize() - 1) * 2);
		colours.SetSize(points.GetSize() * 2);
		uvs.SetSize(points.GetSize());
		lines.SetSize(triangles.Size * 3);
		long triangleCount = (Joints.GetSize() - 1) * 2;
		if (triangles.Size < triangleCount)
		{
			triangles.SetSize(triangleCount);
			for (long quad = 0; quad < triangleCount / 2; quad++)
			{
				triangles.Entry(quad * 2).A = quad * CHAIN_POINTS_PER_SEGMENT;
				triangles.Entry(quad * 2).B = quad * CHAIN_POINTS_PER_SEGMENT + 1;
				triangles.Entry(quad * 2).C = quad * CHAIN_POINTS_PER_SEGMENT + 2;
				triangles.Entry(quad * 2 + 1).A = quad * CHAIN_POINTS_PER_SEGMENT + 1;
				triangles.Entry(quad * 2 + 1).B = quad * CHAIN_POINTS_PER_SEGMENT + 3;
				triangles.Entry(quad * 2 + 1).C = quad * CHAIN_POINTS_PER_SEGMENT + 2;
			}
		}
		LHPoint viewVector;
		GGame::g_game->GetCamera()->GetFocusVector(viewVector);
		viewVector *= -1.0f;
		if (PSysGlobal::ChainUseUpVector)
		{
			viewVector = LHPoint(0.0f, 1.0f, 0.0f);
		}
		for (long segment = 0; segment < Joints.GetSize() - 1; segment++)
		{
			LHPoint direction = Joints[segment + 1].Position - Joints[segment].Position;
			for (long end = 0; end < 2; end++)
			{
				viewVector = cameraPosition - Joints[segment + end].Position;
				LHPoint& normal = normals[segment * 2 + end];
				normal.CrossProduct(viewVector, direction);
				normal *= InverseSquareRoot(normal * normal);
			}
		}
		for (segment = 0; segment < Joints.GetSize() - 1; segment++)
		{
			for (long side = 0; side < 2; side++)
			{
				long        jointIndex = segment + side;
				ChainJoint& joint = Joints.Entry(jointIndex);
				LHPoint&    normal = normals[segment * 2 + side];
				normal.SetSize(Joints[jointIndex].Scale);
				points[segment * CHAIN_POINTS_PER_SEGMENT + side * CHAIN_POINTS_PER_SIDE] = joint.Position + normal;
				points[segment * CHAIN_POINTS_PER_SEGMENT + side * CHAIN_POINTS_PER_SIDE + 1] = joint.Position - normal;
				if (UseDynamicLighting)
				{
					LHPoint segmentVector = Joints[segment + 1].Position - Joints[segment].Position;
					LHPoint lightNormal = segmentVector ^ normal;
					lightNormal *= InverseSquareRoot(lightNormal.GetNormeSq());
					float brightness = lightNormal * sun;
					brightness = boundf(0.0f,
					                    brightness < 0.0f ? CHAIN_AMBIENT_LIGHT
					                                      : brightness * ChainSunLight + CHAIN_AMBIENT_LIGHT,
					                    1.0f);
					LH3DColor lit;
					lit = Joints[jointIndex].Colour;
					lit.r = (uint8_t)(lit.GetR() * brightness);
					lit.g = (uint8_t)(lit.GetG() * brightness);
					lit.b = (uint8_t)(lit.GetB() * brightness);
					LH3DColor* colour =
						colours.GetMemBuffer() + (segment * CHAIN_COLOURS_PER_SEGMENT + side * CHAIN_COLOURS_PER_SIDE);
					colour[0] = colour[2] = lit;
					colour[1] = colour[3] = Joints[jointIndex].Specular;
				}
				else
				{
					LH3DColor* colour =
						colours.GetMemBuffer() + (segment * CHAIN_COLOURS_PER_SEGMENT + side * CHAIN_COLOURS_PER_SIDE);
					colour[0] = colour[2] = Joints[jointIndex].Colour;
					colour[1] = colour[3] = Joints[jointIndex].Specular;
				}
			}
		}
		for (long corner = 1; corner < Joints.GetSize() - 1; corner++)
		{
			if (!PSysGlobal::ChainSharpJoints)
			{
				points[corner * CHAIN_POINTS_PER_SEGMENT] = points[corner * CHAIN_POINTS_PER_SEGMENT - 2] =
					(points[corner * CHAIN_POINTS_PER_SEGMENT] + points[corner * CHAIN_POINTS_PER_SEGMENT - 2]) * 0.5f;
				points[corner * CHAIN_POINTS_PER_SEGMENT + 1] = points[corner * CHAIN_POINTS_PER_SEGMENT - 1] =
					(points[corner * CHAIN_POINTS_PER_SEGMENT + 1] + points[corner * CHAIN_POINTS_PER_SEGMENT - 1]) *
					0.5f;
			}
			else
			{
				points[corner * CHAIN_POINTS_PER_SEGMENT] = points[corner * CHAIN_POINTS_PER_SEGMENT - 2];
				points[corner * CHAIN_POINTS_PER_SEGMENT + 1] = points[corner * CHAIN_POINTS_PER_SEGMENT - 1];
			}
		}
		if (PSysGlobal::AnimateUVs)
		{
			ScrollOffset += (float)LH3DTech::GetGameTimeInc() * ScrollSpeed * CHAIN_SECONDS_PER_MILLISECOND;
			float wrap = (float)FrameHeight * OneOverTextureSize;
			float offset = fmodf(ScrollOffset, wrap);
			ScrollOffset = offset < 0.0f ? offset + wrap : offset;
		}
		for (long uvStrip = 0; uvStrip < Joints.GetSize() - 1; uvStrip++)
		{
			GetUVs(uvStrip, 0, &uvs[uvStrip * CHAIN_POINTS_PER_SEGMENT], &uvs[uvStrip * CHAIN_POINTS_PER_SEGMENT + 1],
			       &uvs[uvStrip * CHAIN_POINTS_PER_SEGMENT + 2], &uvs[uvStrip * CHAIN_POINTS_PER_SEGMENT + 3]);
		}
		if (PSysGlobal::DrawChainTriangles)
		{
			LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
			LHMatrix identity;
			identity.SetIdentity();
			LH3DTech::g_local_to_clipping.Set(identity);
			LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
			LH3DRender::SetAnimUV(0.0f, ScrollOffset);
			long* indices = (long*)triangles.Data;
			LH3DTech::Draw3DWorldTriangleSpecular(points.GetSize(), points.GetMemBuffer(), colours.GetMemBuffer(),
			                                      (float*)uvs.GetMemBuffer(), triangleCount, indices,
			                                      ((ParticleChainCreator*)Creator)->GetMaterial());
			LH3DRender::g_b_need_anim_uv = false;
		}
	}
}

bool AreTriangleIndicesInRange(GJVector<SLONGTriangle>* triangles, long num_vertices)
{
	for (long i = 0; i < triangles->GetSize(); i++)
	{
		SLONGTriangle& triangle = (*triangles)[i];
		if (triangle.A < 0 || triangle.A >= num_vertices || triangle.B < 0 || triangle.B >= num_vertices ||
		    triangle.C < 0 || triangle.C >= num_vertices)
		{
			return false;
		}
	}
	return true;
}

void RenderParticleGJMesh::DrawAt(const DrawData& data)
{
	unsigned long colour = data.Colour.GetColor();
	if (UseLandscapeColour)
	{
		unsigned long specular;
		LH3DIsland::GetColorAndSpecular(&data.DrawPos->Transform.GetPos(), &colour, &specular);
		colour = GJUtils::ModulateColor(data.Colour.GetColor(), colour);
	}
	for (long subMeshIndex = 0; subMeshIndex < Mesh.SubMeshes.GetSize(); subMeshIndex++)
	{
		GJSubMesh& subMesh = Mesh.SubMeshes.Entry(subMeshIndex);
		for (long primitiveIndex = 0; primitiveIndex < subMesh.Primitives.GetSize(); primitiveIndex++)
		{
			GJPrimitive& primitive = subMesh.Primitives.Entry(primitiveIndex);
			if (primitive.Positions.GetSize() != 0)
			{
				long k;
				TransformedVertices.SetSize(primitive.Positions.GetSize());
				for (k = 0; k < primitive.Positions.GetSize(); k++)
				{
					TransformedVertices[k] = primitive.Positions[k];
					data.DrawPos->Transform.TransformPoint(TransformedVertices[k]);
				}
				if (FollowLandscape)
				{
					float baseAltitude = LH3DIsland::GetAltitude(data.DrawPos->Transform.GetPos());
					for (k = 0; k < primitive.Positions.GetSize(); k++)
					{
						float altitude = LH3DIsland::GetAltitude(TransformedVertices[k]);
						TransformedVertices[k].y += altitude - baseAltitude;
					}
				}
				GJVector<LH3DColor>* colours;
				if (primitive.Colours.GetSize() == primitive.Positions.GetSize())
				{
					if (!ModulateColour || colour == LH3D_COLOR_WHITE)
					{
						colours = &primitive.Colours;
					}
					else
					{
						LitColours.SetSize(primitive.Positions.GetSize());
						for (k = 0; k < LitColours.GetSize(); k++)
						{
							LitColours[k] = LH3DColor(GJUtils::ModulateColor(primitive.Colours[k].GetColor(), colour));
						}
						colours = &LitColours;
					}
				}
				else
				{
					LitColours.SetSize(primitive.Positions.GetSize());
					for (k = 0; k < LitColours.GetSize(); k++)
					{
						LitColours[k] = LH3DColor(colour);
					}
					colours = &LitColours;
				}
				if (PSysGlobal::LightMeshesWithSun && primitive.Normals.GetSize() == primitive.Positions.GetSize())
				{
					LitColours.SetSize(primitive.Positions.GetSize());
					LHPoint  sun = LH3DTech::GetSun();
					LHMatrix inverse;
					inverse.SetInverse(data.DrawPos->Transform);
					inverse.TransformPoint(sun);
					sun.FastNormalizeInline();
					for (k = 0; k < colours->GetSize(); k++)
					{
						long light =
							GetLightLevel(FloatToInt(sun.DotProductInline(primitive.Normals[k]) * LH3D_LIGHT_MAX));
						LitColours[k] = LH3DColor(LH3D_SCALE_COLOR((*colours)[k].GetColor(), light));
					}
					colours = &LitColours;
				}
				if (PSysGlobal::FadeMeshEdges && primitive.Normals.GetSize() == primitive.Colours.GetSize())
				{
					LitColours.SetSize(primitive.Positions.GetSize());
					LHPoint  view = *LH3DTech::GetTargetVector();
					LHMatrix inverse;
					inverse.SetInverse(data.DrawPos->Transform);
					inverse.TransformVector(view);
					view.FastNormalizeInline();
					static float fadeStart = 0.7f;
					for (k = 0; k < primitive.Colours.GetSize(); k++)
					{
						float fade = (float)fabs(-view.DotProductInline(primitive.Normals[k]));
						if (fade < 0.0f)
						{
							fade = 0.0f;
						}
						else if (fade > 1.0f)
						{
							fade = 1.0f;
						}
						fade -= fadeStart;
						if (fade < 0.0f)
						{
							fade = 0.0f;
						}
						LitColours[k] =
							LH3DColor(LH3D_SCALE_COLOR(primitive.Colours[k].GetColor(),
						                               (int)(fade / (1.0f - fadeStart) * LH3D_COLOR_CHANNEL_MAX)));
					}
					colours = &LitColours;
				}
				LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
				LHMatrix identity;
				identity.SetIdentity();
				LH3DTech::g_local_to_clipping.Set(identity);
				LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
				if (PSysGlobal::WireframeMeshes)
				{
					LH3DRender::SetRenderState(D3DRENDERSTATE_FILLMODE, D3DFILL_WIREFRAME);
				}
				if (primitive.Material != NULL)
				{
					if (data.Colour.a != LH3D_COLOR_OPAQUE)
					{
						LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
					}
					if (primitive.Speculars.GetSize() != colours->GetSize())
					{
						LH3DTech::Draw3DWorldTriangle(
							primitive.Positions.GetSize(), TransformedVertices.GetMemBuffer(), colours->GetMemBuffer(),
							(float*)primitive.UVs.GetMemBuffer(), primitive.Triangles.GetSize(),
							(long*)primitive.Triangles.GetMemBuffer(), primitive.Material, false);
					}
					else
					{
						long                       numColours = colours->GetSize();
						static GJVector<LH3DColor> interleaved;
						interleaved.SetSize(numColours * 2);
						LH3DColor* out = interleaved.GetMemBuffer();
						LH3DColor* colourData = colours->GetMemBuffer();
						LH3DColor* specularData = primitive.Speculars.GetMemBuffer();
						for (k = 0; k < numColours; k++)
						{
							*out++ = *colourData++;
							*out++ = *specularData++;
						}
						LH3DTech::Draw3DWorldTriangleSpecular(
							primitive.Positions.GetSize(), TransformedVertices.GetMemBuffer(),
							interleaved.GetMemBuffer(), (float*)primitive.UVs.GetMemBuffer(),
							primitive.Triangles.GetSize(), (long*)primitive.Triangles.GetMemBuffer(),
							primitive.Material);
					}
					LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_normal;
				}
				else
				{
					LH3DTech::Draw3DWorldTriangle_(primitive.Positions.GetSize(), TransformedVertices.GetMemBuffer(),
					                               colours->GetMemBuffer(), primitive.Triangles.GetSize(),
					                               (long*)primitive.Triangles.GetMemBuffer(), true, NULL);
				}
				if (PSysGlobal::WireframeMeshes)
				{
					LH3DRender::SetRenderState(D3DRENDERSTATE_FILLMODE, D3DFILL_SOLID);
				}
			}
		}
	}
}

void RenderParticleGJMeshRotatingUV::DrawAt(const DrawData& data)
{
	float u;
	float v;
	GJUtils::LinterpNoBoundsCheck(LastU, U, data.Interpolation, &u);
	GJUtils::LinterpNoBoundsCheck(LastV, V, data.Interpolation, &v);
	while (u > WrapU)
	{
		u -= WrapU;
	}
	while (v > WrapV)
	{
		v -= WrapV;
	}
	if (PSysGlobal::AnimateUVs)
	{
		LH3DRender::SetAnimUV(u, v);
		LH3DRender::PushTillingMode(0);
		LH3DRender::g_b_need_tilling = true;
	}
	RenderParticleGJMesh::DrawAt(data);
	LH3DRender::g_b_need_anim_uv = false;
	LH3DRender::PopTillingMode(0);
	LH3DRender::g_b_need_tilling = false;
}

void RenderParticleVolBlendMesh::DrawAt(const DrawData& data)
{
	LHPoint pos = data.DrawPos->Transform.GetPos();
	LHPoint xAxis = data.DrawPos->Transform.GetVectorX();
	float   xScale = xAxis.Normalise();
	LHPoint yAxis = data.DrawPos->Transform.GetVectorY();
	float   yScale = yAxis.Normalise();
	LHPoint zAxis = data.DrawPos->Transform.GetVectorZ();
	float   zScale = zAxis.Normalise();
	LHPoint toCamera;
	GGame::g_game->GetCamera()->GetPosition(toCamera);
	toCamera -= pos;
	toCamera.Normalise();
	float blend = (float)fabs(xAxis.DotProductInline(toCamera));
	if (BlendAmount != blend)
	{
		Object3D->GetMesh()->Blend(Mesh1, Mesh2, blend, false);
		BlendAmount = blend;
	}
	LHPoint right;
	LHPoint up = xAxis ^ toCamera;
	up.Normalise();
	right.CrossProduct(toCamera, up);
	right.Normalise();
	if (PSysGlobal::FaceCameraVolBlendMeshes)
	{
		LHMatrix& matrix = Object3D->matrix;
		matrix._11 = right.x;
		matrix._12 = right.y;
		matrix._13 = right.z;
		matrix._21 = up.x;
		matrix._22 = up.y;
		matrix._23 = up.z;
		matrix._31 = toCamera.x;
		matrix._32 = toCamera.y;
		matrix._33 = toCamera.z;
		matrix._41 = data.DrawPos->Transform._41;
		matrix._42 = data.DrawPos->Transform._42;
		matrix._43 = data.DrawPos->Transform._43;
		matrix.ScaleMatrixOnly(data.DrawPos->Scale);
	}
	else
	{
		Object3D->matrix = data.DrawPos->Transform;
	}
	unsigned long framesPerRow = VOL_BLEND_TEXTURE_SIZE / FrameWidth;
	float         u = (data.Frame % framesPerRow) * (FrameWidth * OneOverTextureSize);
	float         v = (data.Frame / framesPerRow) * (FrameHeight * OneOverTextureSize);
	Object3D->SetAnimatedUV(u, v);
	Object3D->SetColorSpecular(data.Colour.GetColor(), data.Specular);
	if (DrawingUseZSorter)
	{
		Object3D->AddDrawing();
	}
	else
	{
		Object3D->DrawWithClipping();
	}
}
