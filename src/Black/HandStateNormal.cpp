#include "MapCellConstants.h"
#include "HandConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "HandStateNormal.h"

#include <Lionhead/LH3DLib/development/CAnim.h>         /* For struct CAnim */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>      /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For SquareRoot */
#include <Lionhead/LH3DLib/development/LH3DTech.h>      /* For LH3DTech::g_delta_time */
#include <Lionhead/LH3DLib/development/LHMatrix.h>      /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/MeshIntersect.h> /* For struct MeshIntersect */
#include <Lionhead/LH3DLib/development/Zoomer.h>        /* For struct Zoomer, struct Zoomer3d */

#include "AnimatedStatic.h"   /* For AnimatedStatic */
#include "Camera.h"           /* For GCamera */
#include "camerahelp.h"       /* For CameraHelp */
#include "CameraModeNew3.h"   /* For CameraModeNew3 */
#include "ColourConstants.h"  /* For White */
#include "ControlHand.h"      /* For CHand */
#include "Creature.h"         /* For Creature */
#include "Creature3D.h"       /* For LH3DCreature */
#include "CreaturePhysical.h" /* For CreaturePhysical */
#include "Game.h"             /* For GGame */
#include "Game3DObject.h"     /* For Game3DObject */
#include "GJUtils.h"          /* For boundf */
#include "Interface.h"        /* For GInterface */
#include "Landscape.h"        /* For GLandscape */
#include "Living.h"           /* For Living */
#include "MagicVortex.h"      /* For LandscapeVortex */
#include "SpellIcon.h"        /* For SpellIcon */
#include "Utils.h"            /* For GUtils */

static int Unused = 0;

// BW1W120 00d13f30
extern LHPoint HandLandPos;
// BW1W120 00d13f3c
extern int GiveToCreatureTimeLeft;
// BW1W120 00d13f4c
extern float HeldObjectHeight;

HandStateNormal::HandStateNormal(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}

bool HandStateNormal::AllowCameraTricons()
{
	return true;
}

static Zoomer3d UpZoomer;
static Zoomer   DistanceFromViewZoomer;
LHPoint         FightIntersectionPos;
bool32_t        FightIntersectionPosPending = false;

void HandStateNormal::Enter()
{
	FightIntersectionPosPending = false;
	UpZoomer.SetPosition(LHPoint(0.0f, 1.0f, 0.0f));
	AnimationTime = 0;
	Anim = HAND_ANIM_NONE;
	DistanceFromViewZoomer.SetPosition(Hand->DistanceFromView);
}

LHPoint HandUp;

void ObtainRequiredHandPosition(CHand* hand, float dt, float tilt, float& unused, LHPoint& hand_pos, LHPoint& up,
                                int& anim, bool use_camera_tricons, bool keep_clear_of_land)
{
	static bool32_t firstTime = true;

	if (firstTime)
	{
		UpZoomer.SetPosition(LHPoint(0.0f, 1.0f, 0.0f));
		DistanceFromViewZoomer.SetPosition(0.0f);
		firstTime = false;
	}

	CameraModeNew3* fightMode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
	bool            inFight = fightMode != NULL && fightMode->HasFight;
	bool            givingToCreature = hand->GetCreatureToGiveTo() != NULL;
	bool            overCreature = false;

	LHPoint cameraPos;
	GGame::g_game->GetCamera()->GetPosition(cameraPos);

	float standardDistance = hand->WorkOutStandardDistanceFromView(keep_clear_of_land);
	hand->SetDistanceFromView(standardDistance);

	LHPoint pos;
	if (FightIntersectionPosPending)
	{
		pos = FightIntersectionPos;
	}
	else
	{
		GUtils::SetPointFromScreenPointAndDistance(&hand->ScreenPos, standardDistance, &pos);
	}

	GInterface* gameInterface = GGame::g_game->MyInterface();
	Object*     collideObject = gameInterface->interface_collide.GetObjectA();
	Object*     object = collideObject;
	Bubble*     bubble = gameInterface->interface_collide.GetBubble();
	bool32_t    leashInteract = (bool32_t)gameInterface->interface_collide.leash;
	if (!leashInteract && GGame::g_game->MyInterface()->GetActionState() == INTERFACE_ACTION_STATE_LEASH_INTERACT)
	{
		leashInteract = true;
	}

	bool32_t useLandNormal = false;
	bool32_t useObjectRadius = false;
	LHPoint  normal;

	anim = leashInteract ? HAND_ANIM_LEASH : HAND_ANIM_NORMAL;

	float distanceOffset = 0.0f;

	if (collideObject != NULL && dynamic_cast<LandscapeVortex*>(collideObject) != NULL)
	{
		object = NULL;
	}
	if (object == hand->HeldObject)
	{
		object = NULL;
	}

	if (object != NULL && object->Game3dObject != NULL)
	{
		LHMatrix*     matrices;
		LH3DCreature* creature3d;

		anim =
			gameInterface->HandState.GetState() == HAND_STATE_CAN_PICK_UP ? HAND_ANIM_PICK_UP : HAND_ANIM_OVER_OBJECT;

		if (dynamic_cast<Living*>(object) != NULL)
		{
			Creature* creature = dynamic_cast<Creature*>(object);
			if (creature != NULL)
			{
				creature3d = creature->physical->Creature3d;
				matrices = creature3d->GetMatrixBuffer();
				overCreature = true;
				if (hand->HeldObject != NULL &&
				    creature->InterfaceValidToGiveObject(gameInterface->GetStatus(), hand->HeldObject) == true)
				{
					if (hand->InteractCreature != creature)
					{
						hand->InteractCreature = creature;
						hand->InteractCreature3d = hand->InteractCreature->GetCreature3D();
					}
					GiveToCreatureTimeLeft = 1100;
				}
			}
			else
			{
				useObjectRadius = true;
				matrices = &object->Game3dObject->matrix;
			}
		}
		else
		{
			matrices = &object->Game3dObject->matrix;
			if (object->Game3dObject->IsAnimated() && dynamic_cast<AnimatedStatic*>(object) == NULL)
			{
				useObjectRadius = true;
			}
		}

		if (dynamic_cast<SpellIcon*>(object) != NULL)
		{
			useLandNormal = true;
			GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, pos);
			anim = HAND_ANIM_PICK_UP;
			distanceOffset = CHand::GetStandardSize();
		}

		if (!useLandNormal)
		{
			LH3DMesh*       mesh;
			AnimatedStatic* animatedStatic = dynamic_cast<AnimatedStatic*>(object);
			if (animatedStatic != NULL)
			{
				mesh = animatedStatic->GetCurrentPhysicsMesh();
				useObjectRadius = false;
			}
			else
			{
				mesh = object->Game3dObject->GetMesh();
			}

			LHPoint direction;
			direction.Set(pos - cameraPos);
			direction.Normalise();

			LHPoint cursorDirection;
			if (hand->HeldObject != NULL)
			{
				cursorDirection = direction;
				direction.Set(HandLandPos - cameraPos);
				direction.y += HeldObjectHeight;
				direction.Normalise();
			}

			if (useObjectRadius)
			{
				LHPoint objectPos;
				GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, objectPos);
				float distance = (objectPos - cameraPos).GetNorme() - object->Get2DRadius();
				GUtils::SetPointFromScreenPointAndDistance(&hand->ScreenPos, distance, &pos);
				distance += (pos.y - objectPos.y) * direction.y;
				GUtils::SetPointFromScreenPointAndDistance(&hand->ScreenPos, distance, &pos);
				useLandNormal = true;
			}
			else
			{
				MeshIntersect intersect;
				if (intersect.GetNearestIntersection(mesh, matrices, &cameraPos, &direction, false, &pos, &normal,
				                                     false))
				{
					normal.Normalise();

					LHPoint toCamera = cameraPos - pos;
					float   depth = -(direction * toCamera);
					if (hand->HeldObject != NULL)
					{
						direction = cursorDirection;
						pos = cameraPos + direction * depth;
						toCamera.Set(cameraPos - pos);
					}
					if (depth < 1.0f)
					{
						pos = cameraPos + direction;
						toCamera.Set(-direction.x, -direction.y, -direction.z);
					}
					else
					{
						toCamera.Normalise();
					}

					if (hand->HeldObject != NULL)
					{
						float clearance = 0.0f;
						if (overCreature)
						{
							float creatureDistance = pos.GetDistance2D(creature3d->GetPos());
							float bodyRadius = creature3d->BodyRadius;
							if (creatureDistance < bodyRadius)
							{
								clearance = bodyRadius - creatureDistance;
							}
						}
						pos += toCamera * (hand->HeldObject->Get2DRadius() * 0.5f + clearance);
					}

					normal.x = toCamera.x * 0.25f - normal.x;
					normal.y = toCamera.y * 0.25f - normal.y + 0.5f;
					normal.z = toCamera.z * 0.25f - normal.z;

					if (!object->HandShouldFeelWithMeshIntersect())
					{
						useLandNormal = true;
					}
				}
				else
				{
					useLandNormal = true;
				}
			}
		}
	}
	else if (bubble == NULL && !leashInteract)
	{
		CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
		uint32_t        triconFlags = mode != NULL && use_camera_tricons ? mode->MouseTriconFlags : 0;

		if (GGame::g_game->MyInterface()->IsPlayBack(0))
		{
			if (CameraModeNew3::ActiveTricons & CAMERA_TRICON_ROTATE)
			{
				triconFlags |= CAMERA_TRICON_INPUT_ROTATE;
			}
			if (CameraModeNew3::ActiveTricons & CAMERA_TRICON_PITCH)
			{
				triconFlags |= CAMERA_TRICON_INPUT_PITCH;
			}
			if (CameraModeNew3::ActiveTricons & CAMERA_TRICON_ZOOM)
			{
				triconFlags |= CAMERA_TRICON_INPUT_ZOOM;
			}
			hand->ScreenPosChanged = true;
		}

		if (triconFlags & CAMERA_TRICON_INPUT_ROTATE)
		{
			if (CameraHelp::EnabledFeatures & CAMERA_FEATURE_ROTATE)
			{
				anim = HAND_ANIM_ROTATE;
				normal.Set(*LH3DTech::GetCameraTarget() - pos);
				normal.y += normal.GetNorme() * 0.3f;
				normal.Normalise();
			}
			else
			{
				useLandNormal = true;
			}
		}
		else if (triconFlags & CAMERA_TRICON_INPUT_PITCH)
		{
			if (CameraHelp::EnabledFeatures & CAMERA_FEATURE_PITCH)
			{
				anim = HAND_ANIM_PITCH;
				useLandNormal = true;
			}
			else
			{
				useLandNormal = true;
			}
		}
		else
		{
			useLandNormal = true;
		}
	}
	else
	{
		normal.Set(0.0f, 1.0f, 0.0f);
	}

	if (hand->UseDrawScreenPos)
	{
		anim = HAND_ANIM_ROTATE;
		useLandNormal = false;
		normal.Set(*LH3DTech::GetCameraTarget() - pos);
		normal.y += normal.GetNorme() * 0.3f;
		normal.Normalise();
	}

	float distance = leashInteract    ? (cameraPos - pos).GetNorme() - distanceOffset
	                 : bubble != NULL ? gameInterface->interface_collide.GetBubbleDistance()
	                                  : (cameraPos - pos).GetNorme() - distanceOffset;

	static float normalZoomTime = 0.28f;
	static float fightZoomTime = 2.0f;
	static float approachZoomTime = 0.1f;

	double currentDistance = DistanceFromViewZoomer.GetCurrentValue();
	if (distance < 1.0f)
	{
		distance = 1.0f;
	}

	float zoomTime;
	if (distance < currentDistance)
	{
		zoomTime = approachZoomTime;
	}
	else
	{
		bool slow = false;
		if ((inFight || givingToCreature) && DistanceFromViewZoomer.CurrentSpeed > -1.0f)
		{
			slow = true;
		}
		zoomTime = slow ? fightZoomTime : normalZoomTime;
	}
	DistanceFromViewZoomer.SetDestination(distance, zoomTime);
	DistanceFromViewZoomer.Update(dt);
	if (DistanceFromViewZoomer.GetCurrentValue() < 1.0f)
	{
		DistanceFromViewZoomer.SetPosition(1.0f);
	}

	float distanceFromView = min(standardDistance, DistanceFromViewZoomer.GetCurrentValue());
	hand->SetDistanceFromView(distanceFromView);
	distanceFromView = hand->DistanceFromView;

	float altitude = hand_pos.y - LH3DIsland::GetAltitude(hand_pos);
	float handSize = CHand::GetStandardSize() * hand->DistanceScale * 0.5f;

	if (tilt != 0.0f)
	{
		normal.x = 0.0f;
		normal.y = 1.0f;
		normal.z = 0.0f;

		LHPoint toCamera;
		GGame::g_game->GetCamera()->GetPosition(toCamera);
		toCamera -= hand_pos;
		toCamera.Normalise();

		LHMatrix matrix;
		matrix.SetFromVectorAndAngle(toCamera, tilt);
		matrix.TransformPoint(normal);
	}
	else if (useLandNormal || (object != NULL && altitude < handSize))
	{
		LH3DIsland::GetNormal(LHPoint(&hand_pos), &normal);
	}
	normal.Normalise();

	CHand::GetStandardSize();

	if (hand->ScreenPosChanged || tilt != 0.0f)
	{
		UpZoomer.SetDestinationWithTime(normal, 0.4f);
	}
	UpZoomer.Update(LH3DTech::g_delta_time / 1000.0f);

	up = UpZoomer.GetCurrentValue();
	up.Normalise();
	HandUp = up;

	if (FightIntersectionPosPending)
	{
		FightIntersectionPosPending = false;
		hand_pos = FightIntersectionPos;
	}
	else
	{
		GUtils::SetPointFromScreenPointAndDistance(&hand->ScreenPos, distanceFromView, &hand_pos);
	}
}

void HandStateNormal::Update(float dt, LHMatrix* buffer)
{
	float   unused;
	LHPoint up;
	int     anim;
	ObtainRequiredHandPosition(Hand, dt, 0.0f, unused, Hand->GetPos(), up, anim, true, true);

	CAnim* handAnim = Hand->GetAnim(anim, 0);
	AnimationTime = (AnimationTime + LH3DTech::g_delta_time) % handAnim->Duration;

	if (Anim == HAND_ANIM_NONE)
	{
		Anim = anim;
	}
	else if (anim != Anim)
	{
		Anim = anim;
		Hand->BlendToNewPosition();
		buffer = Hand->GetMatrixBuffer();
	}

	if (anim == HAND_ANIM_LEASH)
	{
		if (GGame::g_game->MyInterface()->GetActionState() == INTERFACE_ACTION_STATE_LEASH_INTERACT)
		{
			AnimationTime = handAnim->Duration / 2;
		}
		else
		{
			AnimationTime = 0;
		}
	}

	LHMatrix root;
	Hand->FillStandardPositionMatrix(root, Hand->GetPos(), up);

	handAnim->FillBuffer(buffer, Hand->GetMesh(), Hand->BaseMatrices, Hand->InverseBaseMatrices, AnimationTime,
	                     Hand->frame, NULL, true);

	CAnim* lagAnimX = Hand->GetAnim(anim + HAND_ANIM_LAG_X, 0);
	float  lagX = boundf(-MaxHandLagX, Hand->LaggedScreenPosX - (float)Hand->ScreenPos.x, MaxHandLagX);
	if (lagAnimX != NULL && fabs(lagX) > 0.0001f)
	{
		lagAnimX->ModifyBufferByDifferenceFromFrame(
			buffer, lagAnimX->frames[(lagAnimX->FrameCount - 1) / 2], Hand->GetMesh(), Hand->BaseMatrices,
			Hand->InverseBaseMatrices, (long)((lagX + MaxHandLagX) / (MaxHandLagX + MaxHandLagX) * lagAnimX->Duration),
			NULL, NULL);
	}

	CAnim* lagAnimY = Hand->GetAnim(anim + HAND_ANIM_LAG_Y, 0);
	float  lagY = boundf(-MaxHandLagY, (float)Hand->ScreenPos.y - Hand->LaggedScreenPosY, MaxHandLagY);
	if (lagAnimY != NULL && fabs(Hand->LaggedScreenPosY) > 0.0001f)
	{
		lagAnimY->ModifyBufferByDifferenceFromFrame(
			buffer, lagAnimY->frames[(lagAnimY->FrameCount - 1) / 2], Hand->GetMesh(), Hand->BaseMatrices,
			Hand->InverseBaseMatrices, (long)((lagY + MaxHandLagY) / (MaxHandLagY + MaxHandLagY) * lagAnimY->Duration),
			NULL, NULL);
	}

	LH3DAnim::FinishTransform(buffer, Hand->GetMesh(), root);

	Hand->DrawScreenPos = Hand->ScreenPos;
}
