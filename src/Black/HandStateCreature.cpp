#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "HandStateCreature.h"

#include <math.h> /* For pow, sin, cos */

#include <chlasm/CreatureSpec.h>                        /* For enum CREATURE_ANIMATIONS */
#include <Lionhead/LH3DLib/development/CAnim.h>         /* For struct CAnim */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>      /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For PI_F */
#include <Lionhead/LH3DLib/development/LH3DTech.h>      /* For LH3DTech */
#include <Lionhead/LH3DLib/development/LHMatrix.h>      /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/MeshIntersect.h> /* For struct MeshIntersect */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>    /* For LHSession */

#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */

#include "ColourConstants.h"  /* For White */
#include "ControlHand.h"      /* For CHand */
#include "Creature.h"         /* For Creature */
#include "Creature3D.h"       /* For LH3DCreature */
#include "CreaturePhysical.h" /* For CreaturePhysical */
#include "Game.h"             /* For GGame */
#include "Interface.h"        /* For GInterface */
#include "Utils.h"            /* For GUtils */

static int Unused = 0;

const float HandValueStrokeGain = 0.1f;
const float HandValueSlapLoss = 0.1f;

enum HAND_STATE_CREATURE_STROKE_BONE
{
	HAND_STATE_CREATURE_STROKE_BONE_HEAD,
	HAND_STATE_CREATURE_STROKE_BONE_ARMPIT_R,
	HAND_STATE_CREATURE_STROKE_BONE_ARMPIT_L,
	HAND_STATE_CREATURE_STROKE_BONE_BELLY,
	HAND_STATE_CREATURE_STROKE_BONE_GROIN,
	HAND_STATE_CREATURE_STROKE_BONE_FOOT_R,
	HAND_STATE_CREATURE_STROKE_BONE_FOOT_L,
	HAND_STATE_CREATURE_STROKE_BONE_HAND_R,
	HAND_STATE_CREATURE_STROKE_BONE_HAND_L
};

struct CreatureBruisePacketData
{
	MeshIntersect Intersect;
	long          Type;
	long          SubType;
};

static long StrokeActions[HAND_STATE_CREATURE_NUM_STROKE_BONES] = {
	C_REWARD_HEAD,     //
	C_REWARD_ARMPIT_R, //
	C_REWARD_ARMPIT_R, //
	C_REWARD_BELLY,    //
	C_REWARD_GROIN,    //
	C_REWARD_FOOT_R,   //
	C_REWARD_FOOT_R,   //
	C_REWARD_HAND_R,   //
	C_REWARD_HAND_R,   //
};

static bool32_t StrokeActionMirrored[HAND_STATE_CREATURE_NUM_STROKE_BONES] = {
	false, //
	false, //
	true,  //
	false, //
	false, //
	false, //
	true,  //
	false, //
	true,  //
};

static long StrokeFacialActions[HAND_STATE_CREATURE_NUM_STROKE_BONES] = {
	C_FACE_AAH,   //
	C_FACE_SMILE, //
	C_FACE_SMILE, //
	C_FACE_AAH,   //
	C_FACE_OOH,   //
	C_FACE_SMILE, //
	C_FACE_SMILE, //
	C_FACE_SMILE, //
	C_FACE_SMILE, //
};

// BW1W120 00c64210
extern bool32_t AlwaysSetLookPoint;

HandStateCreature::HandStateCreature(CHand* hand) : HandState(hand) {}

void HandStateCreature::Enter()
{
	GInterface* gameInterface = GGame::g_game->MyInterface();
	Creature*   creature = dynamic_cast<Creature*>(gameInterface->interface_collide.GetObjectA());
	if (creature == NULL)
	{
		return;
	}

	LH3DCreature* creature3d = creature->physical->Creature3d;
	HandValue = 0.0f;
	ActionStarted = false;
	ActionTimer = 0;
	FacialActionTimer = 0;
	Touching = false;
	TouchTimer = 0;
	SlapTimer = 0;
	AnimationTime = 0;
	SlapHeight = HAND_STATE_CREATURE_SLAP_HEIGHT_LOW;
	SlapCount = 0;

	StrokeBones[HAND_STATE_CREATURE_STROKE_BONE_HEAD] = creature3d->HeadBone;
	StrokeBones[HAND_STATE_CREATURE_STROKE_BONE_ARMPIT_R] = creature3d->RightArmpit;
	StrokeBones[HAND_STATE_CREATURE_STROKE_BONE_ARMPIT_L] = creature3d->GetMirrorBone(creature3d->RightArmpit);
	StrokeBones[HAND_STATE_CREATURE_STROKE_BONE_BELLY] = creature3d->BellyBone;
	StrokeBones[HAND_STATE_CREATURE_STROKE_BONE_GROIN] = creature3d->Anus;
	StrokeBones[HAND_STATE_CREATURE_STROKE_BONE_FOOT_R] = creature3d->RightFoot;
	StrokeBones[HAND_STATE_CREATURE_STROKE_BONE_FOOT_L] = creature3d->GetMirrorBone(creature3d->RightFoot);
	StrokeBones[HAND_STATE_CREATURE_STROKE_BONE_HAND_R] = creature3d->RightHand;
	StrokeBones[HAND_STATE_CREATURE_STROKE_BONE_HAND_L] = creature3d->GetMirrorBone(creature3d->RightHand);

	GGame::g_game->GetCamera();
	LHPoint cameraPos;
	cameraPos = *LH3DTech::GetCameraPosition();
	LHPoint up = cameraPos - creature3d->GetPos();
	float   distance = up.Normalize();
	UpZoomer.SetPosition(up);
	UpZoomer.SetDestinationWithTime(up, 1.0f);

	Anim = HAND_ANIM_STROKE;
	distance -= creature3d->Size1 * 0.825f;
	DistanceFromViewZoomer.SetPosition(distance);
	DistanceFromViewZoomer.SetDestination(distance, 1.0f);
}

void HandStateCreature::Update(float dt, LHMatrix* buffer)
{
	LHPoint unused0(0.0f, 0.0f, 0.0f);
	LHPoint unused1(0.0f, 0.0f, 0.0f);
	LHPoint unused2(0.0f, 0.0f, 0.0f);
	LHPoint unused3(0.0f, 0.0f, 0.0f);
	LHPoint unused4(0.0f, 0.0f, 0.0f);
	LHPoint unused5(0.0f, 0.0f, 0.0f);
	LHPoint unused6(0.0f, 0.0f, 0.0f);
	LHPoint unused7(0.0f, 0.0f, 0.0f);
	LHPoint unused8(0.0f, 0.0f, 0.0f);
	LHPoint unused9(0.0f, 0.0f, 0.0f);
	float   size = Hand->InteractCreature3d->Size1 * 15.0f;
	float   distanceScale = pow(Hand->InteractCreature3d->Size1, 0.5);
	if (!Hand->InteractCreature3d->InHandInteraction)
	{
		return;
	}

	LHPoint handPos;
	GUtils::SetPointFromScreenPointAndDistance(&Hand->ScreenPos, 1.0f, &handPos);
	GGame::g_game->GetCamera();
	LHPoint cameraPos;
	cameraPos = *LH3DTech::GetCameraPosition();
	handPos -= cameraPos;
	LHPoint direction = handPos;

	ActionTimer += GGame::g_game->TimeInc;
	FacialActionTimer += GGame::g_game->TimeInc;

	LHPoint creaturePos = Hand->InteractCreature3d->GetPos();
	LHPoint anusPos;
	anusPos = *Hand->InteractCreature3d->GetAnusPos();
	LHPoint handWorldPos;
	handWorldPos = Hand->GetPos();
	LHPoint handOffset = handWorldPos - creaturePos;
	GGame::g_game->GetCamera();
	LHPoint creatureCameraPos = *LH3DTech::GetCameraPosition();
	float   distance = creatureCameraPos.GetDistance(anusPos) - size * 0.25f;
	if (DistanceFromViewZoomer.GetCurrentValue() > distance)
	{
		DistanceFromViewZoomer.SetPosition(distance);
	}
	Hand->SetDistanceFromView(DistanceFromViewZoomer.GetCurrentValue());
	Hand->DistanceScale = distanceScale * Hand->DistanceScale;
	LHPoint handTarget = cameraPos + handPos * Hand->DistanceFromView;
	LHPoint flatOffset = handTarget - creaturePos;
	flatOffset.y = 0.0f;

	int halfWidth = LHSys::TheSystem.screen.width / 2;
	int previousX = Hand->PreviousScreenPos.x - halfWidth;
	int currentX = Hand->ScreenPos.x - halfWidth;
	SlapTimer += GGame::g_game->TimeInc;

	MeshIntersect intersect;
	bool32_t      touching = intersect.GetNearestIntersection(Hand->InteractCreature3d->GetMesh(),
	                                                          Hand->InteractCreature3d->GetMatrixBuffer(), &cameraPos,
	                                                          &handPos, false, NULL, NULL, false);
	bool32_t      immersionPlaying = GGame::g_game->MyInterface()->IsImmersionPlaying(IMMERSION_EFFECT_TYPE_FUR);
	if (!touching)
	{
		LHCoord middle((Hand->PreviousScreenPos.X() + Hand->ScreenPos.X()) >> 1,
		               (Hand->PreviousScreenPos.Y() + Hand->ScreenPos.Y()) >> 1);
		LHPoint middlePos;
		GUtils::SetPointFromScreenPointAndDistance(&middle, 1.0f, &middlePos);
		middlePos -= cameraPos;
		touching = intersect.GetNearestIntersection(Hand->InteractCreature3d->GetMesh(),
		                                            Hand->InteractCreature3d->GetMatrixBuffer(), &cameraPos, &middlePos,
		                                            false, NULL, NULL, false);
	}

	if (touching && !immersionPlaying)
	{
		GGame::g_game->MyInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_FUR, IMM_EFFECT_DONT_CHANGE);
	}
	else if (immersionPlaying)
	{
		GGame::g_game->MyInterface()->StopImmersion(IMMERSION_EFFECT_TYPE_FUR);
	}

	LHPoint normal(0.0f, -1.0f, 0.0f);
	LHPoint currentPos;
	GUtils::SetPointFromScreenPointAndDistance(&Hand->ScreenPos, Hand->DistanceFromView, &currentPos);
	LHPoint previousPos;
	GUtils::SetPointFromScreenPointAndDistance(&Hand->PreviousScreenPos, Hand->DistanceFromView, &previousPos);
	LHPoint velocity = currentPos - previousPos;
	velocity.y = 0.0f;
	velocity *= 1.0f / dt;
	float speed = velocity.GetNorme();
	float hardSlapSpeed = size * 9.0f;
	float slapSpeed = size * 5.0f;
	if (speed > slapSpeed && Anim != HAND_ANIM_SLAP)
	{
		Anim = HAND_ANIM_SLAP;
		Hand->BlendToNewPosition();
	}

	bool32_t slapped = false;
	if ((touching && !Touching) || currentX * previousX < 0)
	{
		float height = (Hand->GetPos().y - LH3DIsland::GetAltitude(Hand->GetPos())) / size;
		if (height > 0.0f && height < 1.1 && SlapTimer > HAND_STATE_CREATURE_MIN_TIME_BEFORE_SLAP && speed > slapSpeed)
		{
			slapped = true;

			long                            action;
			HAND_STATE_CREATURE_SLAP_HEIGHT slapHeight;
			if (height < 0.4)
			{
				action = C_PUNISH_FEET_SLAP_R;
				slapHeight = HAND_STATE_CREATURE_SLAP_HEIGHT_LOW;
			}
			else if (height < 0.7)
			{
				action = C_PUNISH_WAIST_SLAP_R;
				slapHeight = HAND_STATE_CREATURE_SLAP_HEIGHT_MIDDLE;
			}
			else
			{
				action = C_PUNISH_HEAD_SLAP_R;
				slapHeight = HAND_STATE_CREATURE_SLAP_HEIGHT_HIGH;
			}
			if (slapHeight != SlapHeight)
			{
				SlapHeight = slapHeight;
				SlapCount = 0;
			}

			int strength;
			if (speed < hardSlapSpeed)
			{
				strength = 1;
			}
			else
			{
				strength = 2;
				SlapCount++;
				if (touching && SlapCount > 2)
				{
					SlapCount = 0;
					int severity = (int)((speed - hardSlapSpeed) * 5.0f / hardSlapSpeed);
					if (severity > 0)
					{
						severity = min(severity, HAND_STATE_CREATURE_MAX_BRUISE_SEVERITY);
					}
					else
					{
						severity = 0;
					}
					CreatureBruisePacketData data;
					data.Intersect = intersect;
					data.SubType = HAND_STATE_CREATURE_MAX_BRUISE_SEVERITY - severity;
					data.Type = 0;
					GGame::g_game->SetPacketWithData(PACKET_TYPE_CREATURE_BRUISE, &data, sizeof(data));
				}
			}

			if (!Hand->InteractCreature3d->IsPerformingBodyAction() ||
			    Hand->InteractCreature3d->GetBodyActionFraction() > 0.35f)
			{
				bool32_t mirrored = Hand->ScreenPos.x - Hand->PreviousScreenPos.x < 0;
				ActionTimer = 0;
				FacialActionTimer = HAND_STATE_CREATURE_FACIAL_ACTION_TIME / 2;
				long slapAction = action + (strength == 1 ? C_PUNISH_HEAD_GENTLE_R - C_PUNISH_HEAD_SLAP_R : 0);
				ActionStarted = Hand->InteractCreature3d->ForceIndividualAction(slapAction, mirrored);
				if (ActionStarted && GGame::g_game->network.session->GetNumberOfPlayers() == 1)
				{
					Hand->InteractCreature3d->InitialiseDestructionBones();
					Hand->InteractCreature3d->StartDestruction();
				}
				if (strength == 1)
				{
					GGame::g_game->MyInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_SLAP, IMM_EFFECT_DONT_CHANGE);
				}
				else
				{
					GGame::g_game->MyInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_HIT, IMM_EFFECT_DONT_CHANGE);
				}
				int creatureIndex = Hand->InteractCreature->GetIndexOffset();
				GGame::g_game->SetPacket(PACKET_TYPE_CREATURE_INDIVIDUAL_ACTION, creatureIndex, slapAction, mirrored,
				                         0);
				if (HandValue > 0.25)
				{
					strength *= 2;
				}
				HandValue = max(-1.0f, HandValue - strength * HandValueSlapLoss);
			}
			TouchTimer = 0;
		}
	}

	if (!slapped)
	{
		if (touching)
		{
			LHPoint position;
			intersect.GetWorldPositionAndInwardNormal(Hand->InteractCreature3d->GetMesh(),
			                                          Hand->InteractCreature3d->GetMatrixBuffer(), &position, &normal);
			float strokeDistance = (position - cameraPos).GetNorme() - size * 0.055f;
			float startDistance = strokeDistance - size * 0.03f;
			if (DistanceFromViewZoomer.GetCurrentValue() > startDistance)
			{
				DistanceFromViewZoomer.SetPosition(startDistance);
			}
			DistanceFromViewZoomer.SetDestination(strokeDistance, 0.3f);
			Hand->SetDistanceFromView(DistanceFromViewZoomer.GetCurrentValue());
			Hand->DistanceScale = distanceScale * Hand->DistanceScale;

			TouchTimer += GGame::g_game->TimeInc;
			if (TouchTimer > HAND_STATE_CREATURE_MIN_TOUCH_TIME_BEFORE_STROKE && Hand->ScreenPosChanged)
			{
				LHMatrix* matrices = Hand->InteractCreature3d->SafeBuffer0;
				int       nearest = 0;
				float     nearestDistance = 1000.0f;
				for (int i = 0; i < HAND_STATE_CREATURE_NUM_STROKE_BONES; i++)
				{
					LHPoint bonePos(matrices[StrokeBones[i]].GetPos().x, matrices[StrokeBones[i]].GetPos().y,
					                matrices[StrokeBones[i]].GetPos().z);
					float   boneDistance = (position - bonePos).GetNorme();
					if (boneDistance < nearestDistance)
					{
						nearestDistance = boneDistance;
						nearest = i;
					}
				}

				if (nearest == HAND_STATE_CREATURE_STROKE_BONE_ARMPIT_L ||
				    nearest == HAND_STATE_CREATURE_STROKE_BONE_ARMPIT_R)
				{
					if (Anim != HAND_ANIM_STROKE)
					{
						Anim = HAND_ANIM_STROKE;
						Hand->BlendToNewPosition();
					}
				}
				else if (Anim != HAND_ANIM_STROKE)
				{
					Anim = HAND_ANIM_STROKE;
					Hand->BlendToNewPosition();
				}

				if (ActionTimer >= (int)(((1.0f - HandValue) * 0.5f) * 2500.0f) && LastStrokedBone != nearest &&
				    FacialActionTimer >= HAND_STATE_CREATURE_FACIAL_ACTION_TIME)
				{
					Hand->InteractCreature3d->StartFacialAction(StrokeFacialActions[nearest],
					                                            HAND_STATE_CREATURE_FACIAL_ACTION_TIME);
					if (!Hand->InteractCreature3d->IsPerformingBodyAction() ||
					    Hand->InteractCreature3d->GetBodyActionFraction() > 0.8)
					{
						LastStrokedBone = nearest;
						ActionTimer = 0;
						FacialActionTimer = HAND_STATE_CREATURE_FACIAL_ACTION_TIME / 2;
						long     action = StrokeActions[nearest];
						bool32_t mirrored = StrokeActionMirrored[nearest];
						ActionStarted = Hand->InteractCreature3d->ForceIndividualAction(action, mirrored);
						int creatureIndex = Hand->InteractCreature->GetIndexOffset();
						GGame::g_game->SetPacket(PACKET_TYPE_CREATURE_INDIVIDUAL_ACTION, creatureIndex, action,
						                         mirrored, 0);
						HandValue = min(1.0f, HandValueStrokeGain + HandValue);
						SlapTimer = 0;
					}
				}
			}
		}
		else
		{
			LastStrokedBone = HAND_STATE_CREATURE_NUM_STROKE_BONES;
		}
	}

	DistanceFromViewZoomer.Update(dt);

	CHand* hand = Hand;
	if ((*hand->InteractCreature3d->GetAnusPos() - hand->GetPos()).GetNorme() > size * 0.6f)
	{
		LHPoint lookPoint = Hand->GetPos() + direction * (size * -0.3f);
		AlwaysSetLookPoint = true;
		Hand->InteractCreature3d->SetLookPoint(&lookPoint);
		AlwaysSetLookPoint = false;
	}
	else
	{
		AlwaysSetLookPoint = true;
		Hand->InteractCreature3d->SetLookPoint(&cameraPos);
		AlwaysSetLookPoint = false;
	}

	GUtils::SetPointFromScreenPointAndDistance(&Hand->ScreenPos, Hand->DistanceFromView, &Hand->GetPos());
	Touching = touching;

	LHMatrix root;
	Hand->SetUpPositionMatrix(root);
	if (!touching && Anim == HAND_ANIM_STROKE)
	{
		Anim = HAND_ANIM_NORMAL;
	}

	if (Hand->ScreenPosChanged && touching)
	{
		normal.FastNormalizeInline();
		LHPoint targetUp(-normal.x, -normal.y, -normal.z);
		LHPoint toCamera = creatureCameraPos - Hand->InteractCreature3d->GetPos();
		toCamera.SetLength(0.4f);
		targetUp += toCamera;
		UpZoomer.SetDestinationWithTime(targetUp, 0.9f);
	}
	if (!touching)
	{
		UpZoomer.SetDestinationWithTime(LHPoint(0.0f, 1.0f, 0.0f), 2.5f);
	}
	UpZoomer.Update(dt);

	LHPoint up = UpZoomer.GetCurrentValue();
	up.FastNormalizeInline();
	float   heading = Hand->Heading + PI_F;
	LHPoint forward((float)sin(heading), 0.0f, -(float)cos(heading));
	LHPoint right;
	right = forward ^ up;
	right.Normalise();
	forward = up ^ right;

	LHMatrix rotation;
	rotation.GetVectorX().Set(right.x, right.y, right.z);
	rotation.GetVectorY().Set(-forward.x, -forward.y, -forward.z);
	rotation.GetVectorZ().Set(-up.x, -up.y, -up.z);
	root.PostMultiplyMatrixOnly(rotation);
	root.SetTranslateOnly(Hand->GetPos());

	CAnim* anim = Hand->GetAnim(Anim, 0);
	AnimationTime = (AnimationTime + LH3DTech::g_delta_time) % anim->Duration;
	anim->FillBuffer(Hand->GetMatrixBuffer(), Hand->GetMesh(), Hand->BaseMatrices, Hand->InverseBaseMatrices,
	                 AnimationTime, Hand->frame, NULL, true);
	LH3DAnim::FinishTransform(Hand->GetMatrixBuffer(), Hand->GetMesh(), root);

	Hand->DrawScreenPos = Hand->ScreenPos;
}

void HandStateCreature::Exit()
{
	GGame::g_game->MyInterface()->StopImmersion(IMMERSION_EFFECT_TYPE_FUR);
}
