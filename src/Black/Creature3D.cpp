#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "Creature3D.h"

#include <math.h>    /* For sin, cos */
#include <windows.h> /* For min */
#include <string.h>  /* For memcpy, memset, strcpy */

#include <Lionhead/LHLib/ver5.0/LHWin.h>                    /* For operator new(size_t, const char*, uint32_t) */
#include <chlasm/CreatureSpec.h>                            /* For CREATURE_ANIMATIONS */
#include <Lionhead/LH3DLib/development/Blob.h>              /* For DrawASparkle */
#include <Lionhead/LH3DLib/development/Fish.h>              /* For FishRush */
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h> /* For LH3DComplexObject */
#include <Lionhead/LH3DLib/development/LH3DMath.h>          /* For angle_correct, heading_from_direction_vector */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>          /* For LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DPrimitive.h>     /* For LH3DPrimitive */
#include <Lionhead/LH3DLib/development/LH3DSmoke.h>         /* For LH3DSmoke */
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>       /* For LH3DSubMesh */
#include <Lionhead/LH3DLib/development/LH3DTech.h>          /* For LH3DTech::g_camera */
#include <Lionhead/LH3DLib/development/LH3DVertex.h>        /* For LH3DVertex */
#include <Lionhead/LH3DLib/development/LH3DWetFeet.h>       /* For LH3DWetFeet */
#include <Lionhead/LHLib/ver5.0/RPFollow.h>                 /* For RPFollow */
#include <Lionhead/LHLib/ver5.0/RPlan.h>                    /* For RPlan */
#include <Lionhead/LHLib/ver5.0/Route.h>                    /* For Route */
#include <Lionhead/LHLog/ver4.0/LHDebugStack.h>             /* For GetCurrentStackString */

#include "ColourConstants.h"        /* For White */
#include "CreatureFightConstants.h" /* For FightLifeLossScale */
#include "LandscapeConstants.h"     /* For LandscapeExtent */

#include "Abode.h"
#include "AnimalDove.h"
#include "Audio.h"
#include "Camera.h"
#include "CameraExclusion.h"
#include "CameraModeNew3.h"
#include "ControlHand.h"
#include "Creature.h"
#include "CreatureInfo.h"
#include "CreatureMental.h"
#include "CreatureDanceLineInput.h"
#include "CreatureMorph.h"
#include "CreaturePhysical.h"
#include "EffectValues.h"
#include "Fragment.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameInfo.h"
#include "Global.h"
#include "HelpProfile.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "JCMisc.h"
#include "LeashStatus.h"
#include "LiquidParticle.h"
#include "MagicEffectInfo.h"
#include "Map.h"
#include "MobileObjectInfo.h"
#include "Landscape.h"
#include "Living.h"
#include "PhysicsObject.h"
#include "Player.h"
#include "PSysHandFX.h"
#include "Rand.h"
#include "Reaction.h"
#include "Rock.h"
#include "RoutePlan.h"
#include "Script.h"
#include "Serialise.h"
#include "SoundMap.h"
#include "SoundTag.h"
#include "StoragePit.h"
#include "TownCentre.h"
#include "Utils.h"
#include "ViscousLiquid.h"

// Size of a route-planner square in world units.
const float RouteSquareSize = 80.0f;
// Fraction of the arena radius beyond which stepping further out is refused.
const float ArenaEdgeFraction = 0.8f;
// Radius of the impact search around the striking bone, as a fraction of the standing height.
const float ImpactSampleRadius = 0.2f;
// Eye size per unit of creature size and extra head/eye scale (DrawNow).
const float EyeSizeScale = 0.1f;
const float Const_8cf0a8 = 3000.0f;
const float Const_8cf0ac = 15000.0f;
// Strength of the blood colouring (ColourIntersectionPoint) in UpdateBlood and MorphTexture.
const float BloodColourStrength = 0.75f;
// Ticks a bruise of each type lasts while it heals.
const int BruiseHealTimes[8] = {32, 64, 64, 64, 64, 64, 64, 1};
// Time step (seconds per game turn) and acceleration of a creature moving along its route (ProcessMoveStraight).
const float MoveTimeStep = 0.1f;
const float MoveAcceleration = 12.0f;

// Abode.cpp defines these the same way; Camera.h only declares them.
inline void GCamera::GetPosition(LHPoint& pos)
{
	pos = LH3DTech::g_camera.pos;
}

inline float GCamera::GetDistance(const LHPoint& point)
{
	LHPoint pos;
	GetPosition(pos);
	return pos.GetDistance(point);
}

#if defined(VERSION_BW1W100)
#define CREATURE_3D_FILE "C:\\dev\\black\\Creature3D.cpp"
#elif defined(VERSION_BW1W110)
#define CREATURE_3D_FILE "C:\\dev\\Black\\Creature3D.cpp"
#else
#define CREATURE_3D_FILE "C:\\dev\\MP\\Black\\Creature3D.cpp"
#endif

float global_fight_speed = 1.1f;

static int     NumObjectsEncountered;
static Object* ObjectsEncountered[16];

float LH3DCreature::GetFightMul()
{
	if (CurrentAnim >= 0x89 && CurrentAnim <= 0x8c)
	{
		return global_fight_speed * 0.9f;
	}
	return global_fight_speed * 0.6f;
}

void LH3DCreature::FollowerCallbackFunction(int creature, int event)
{
	if (creature)
	{
		switch (event)
		{
		case 0:
			((Creature*)creature)->CantFindRoute();
			break;
		case 3:
			((Creature*)creature)->CantFindRoute();
			break;
		}
	}
}

void LH3DCreature::FollowerCallbackObjectEncountered(int creature, int object)
{
	if (NumObjectsEncountered < 16)
	{
		for (int i = 0; i < NumObjectsEncountered; i++)
		{
			if (ObjectsEncountered[i] == (Object*)object)
			{
				return;
			}
		}
		if (((Creature*)creature)->FindSuitableActionToRemoveObstacle((Object*)object))
		{
			ObjectsEncountered[NumObjectsEncountered++] = (Object*)object;
		}
	}
}

void LH3DCreature::FollowerCallbackPrepareAnims(int creature, float param_2, float param_3)
{
	if (creature)
	{
		((Creature*)creature)->GetCreature3D()->PrepareAnims(param_2, param_3);
	}
}

float LH3DCreature::FollowerCallbackGetStopDist(int creature)
{
	if (creature)
	{
		return ((Creature*)creature)->GetCreature3D()->GetStopDist();
	}
	return 0.0f;
}

float LH3DCreature::GetStopDist()
{
	if (field_0x5190 == 4)
	{
		return 0.05f;
	}
	if (field_0x5190 == 5)
	{
		LHPoint* offset = (LHPoint*)((uint8_t*)Anim0x5220 + 0x10);
		return Size2 * offset->GetNorme() - RpFollow->field_0x64038;
	}
	return 0.0f;
}

void LH3DCreature::PrepareAnims(float param_1, float param_2)
{
	switch (field_0x5190)
	{
	case 0: {
		float   heading = RpFollow->field_0x64040;
		LHPoint dest(sin(heading) * param_2, 0.0f, -cos(heading) * param_2);
		dest.Add(position);
		field_0x5190 = GetStartState(position, dest);
		break;
	}
	case 2:
		field_0x5190 = 3;
		break;
	}
}

void LH3DCreature::CycleLookCounter()
{
	static int counter;
	if (++counter == 3)
	{
		counter = 0;
	}
}

void AddToVectorOfMovingLiving(Living* living, float time, LHPoint* pos)
{
	GLandscape::ConvertMapCoordToLandscapePoint(living->Pos, *pos);
	float speed = (living->speed * 100.0f) / (float)0x10000;
	if (speed > 0.1f)
	{
		float   angle = GUtils::ConvertGameAngleToScawenAngle(living->GetGameAngle());
		float   distance = speed * time;
		LHPoint offset((float)sin(angle) * distance, 0.0f, -(float)cos(angle) * distance);
		pos->Add(offset);
	}
}

static LH3DColor     BruiseColours[3];
static LH3DColor     BloodColours[3];
static LH3DCreature* SparklingCreature;
// Never written in this TU; when set, SetLookPoint ignores the INTERACTING guard.
static bool32_t AlwaysSetLookPoint;
// fabricated name. Set when AddFightIntersection(long, MeshIntersect&) records a hit, cleared by
// ValidateLastFightIntersection and ReceivedFightImpact3d. Interface.cpp and InterfaceAction.cpp write it too, so the
// original has external linkage.
static int LastFightIntersectionPending;
// Set by CheckKeepInArenaRule while it steps the creature back into the arena, so that StartFightAction does not
// refuse the step.
static bool32_t ForcedArenaStep;

LH3DCreature::LH3DCreature(LH3DCreature& other, const LHPoint& pos, void* param_3)
{
	CameraExclusionDome = NULL;
	creature = NULL;
	RpFollow = new (CREATURE_3D_FILE, 465) RPFollow;
	field_0x571c = 0x10;
	RpFollow->Init((int)creature, FollowerCallbackFunction, FollowerCallbackPrepareAnims, FollowerCallbackGetStopDist,
	               field_0x571c);
	Init((LHPoint&)pos, param_3);
	DynamicShadow->CreateDynamicShadow();
	if (DynamicShadow->GetShadowInfo())
	{
		((uint32_t*)DynamicShadow->GetShadowInfo())[15] = 0;
	}
	Damage = new (CREATURE_3D_FILE, 474) LH3DCreatureDamage;
	*Damage = *other.Damage;
	Anim0x5220 = NULL;
	SoundBank = NULL;
	BoundingSphereValid = false;
	field_0x57a0 = 1;
	strcpy(FileName, other.FileName);
	LoadBinary(FileName, 0);
	SetSize(other.Size1);
	float value = other.GetThinFat();
	ThinFat = value > -1.0f ? (value < 1.0f ? value : 1.0f) : -1.0f;
	value = other.GetWeakStrong();
	WeakStrong = value > -1.0f ? (value < 1.0f ? value : 1.0f) : -1.0f;
	value = other.GetEvilGood();
	EvilGood = value > -1.0f ? (value < 1.0f ? value : 1.0f) : -1.0f;
	creature = NULL;
}

LH3DCreature::LH3DCreature(Creature* creature, const LHPoint& pos, void* param_3)
{
	CameraExclusionDome = NULL;
	this->creature = creature;
	RpFollow = new (CREATURE_3D_FILE, 502) RPFollow;
	field_0x571c = 0x10;
	RpFollow->Init((int)creature, FollowerCallbackFunction, FollowerCallbackPrepareAnims, FollowerCallbackGetStopDist,
	               field_0x571c);
	Init((LHPoint&)pos, param_3);
	DynamicShadow->CreateDynamicShadow();
	if (DynamicShadow->GetShadowInfo())
	{
		((uint32_t*)DynamicShadow->GetShadowInfo())[15] = 0;
	}
	Damage = new (CREATURE_3D_FILE, 511) LH3DCreatureDamage;
	Anim0x5220 = NULL;
	SoundBank = NULL;
	BoundingSphereValid = false;
	field_0x57a0 = 0;
}

float LH3DCreature::GetDamageFraction()
{
	return Damage->NumBruises * (1.0f / 1024.0f);
}

void LH3DCreature::GetBoundingSphere(LHPoint& centre, float& radius)
{
	if (!BoundingSphereValid)
	{
		BoundingSphereCentre.SetNull();
		LHMatrix* matrices = GetSafeBuffer();
		int       i;
		for (i = 0; i < field_0x47b8; i++)
		{
			BoundingSphereCentre.Add(matrices[i].GetPos());
		}
		BoundingSphereCentre *= 1.0f / field_0x47b8;
		BoundingSphereRadius = 0.0f;
		for (i = 0; i < field_0x47b8; i++)
		{
			float distance = matrices[i].GetPos().GetDistance(BoundingSphereCentre);
			if (distance > BoundingSphereRadius)
			{
				BoundingSphereRadius = distance;
			}
		}
		BoundingSphereValid = true;
	}
	centre = BoundingSphereCentre;
	radius = BoundingSphereRadius;
}

void LH3DCreature::SetRequiredSpeed(float speed)
{
	RequiredSpeed = speed > 0.0f ? (speed < 1.0f ? speed : 1.0f) : 0.0f;
	RpFollow->field_0x6403c = RequiredSpeed * RunSpeed * 1.1f;
}

float LH3DCreature::GetMass()
{
	float size = Size1 / 0.12f;
	float mass = ((WeakStrong + ThinFat) * 0.15f + 1.0f) * 100.0f;
	return mass * size * size * size;
}

void LH3DCreature::ApplyForce(LHPoint& param_1, LHPoint& param_2)
{
	if (MoveState == 2 || MoveState == 3 || MoveState == 4 || MoveState == 0x23 || MoveState == 0x1e ||
	    MoveState == 0x1f || MoveState == 0x24)
	{
		return;
	}
	if (MoveState == 1 && (field_0x5190 == 4 || field_0x5190 == 5))
	{
		return;
	}
	float    height = GetStandingHeight() * 0.6f;
	float    altitude = GetAltitude(param_1);
	LHPoint* force;
	if (param_1.y - altitude > height)
	{
		force = &Forces[1];
	}
	else
	{
		force = &Forces[0];
	}
	float scale = FloatTimeInc / (GetMass() * 0.5f);
	force->x += scale * param_2.x;
	force->y = 0.0f;
	force->z += scale * param_2.z;
	float length = force->GetNorme();
	if (length > 8.0f)
	{
		force->Mul(8.0f / length);
	}
	ForceApplied = true;
}

void LH3DCreature::AnalyseLeashForcePacket(float param_1)
{
	if (param_1 < 0.2f)
	{
		LeashForce = 0.0f;
	}
	else
	{
		LeashForce = param_1;
	}
}

void LH3DCreature::Init(LHPoint& pos, void* param_2)
{
	field_0x519c = 0;
	BloodColours[0].Set(0xff, 0x96, 0x00, 0x14);
	BloodColours[1].Set(0xff, 0x78, 0x14, 0x14);
	BloodColours[2].Set(0xff, 0x50, 0x28, 0x00);
	BruiseColours[0].Set(0xff, 0xb3, 0xa6, 0x5f);
	BruiseColours[1].Set(0xff, 0x74, 0x59, 0x7c);
	BruiseColours[2].Set(0xff, 0x46, 0x3b, 0x4d);
	IsAnimationTimeModified = false;
	field_0x49a8 = 0.5f;
	field_0x49a4 = 0.0f;
	field_0x4a94 = 0;
	SparklingCreature = NULL;
	MorphInit(pos, 0, param_2);
	SetPos(pos);
	Glows = NULL;
	CurrentSpeed = 0.0f;
	BodyTurnRate = 0;
	LookPoint.SetNull();
	HeldObject = NULL;
	ActionObject = NULL;
	field_0x4904 = 0;
	field_0x4988 = 0.0f;
	field_0x51e4 = 0;
	LookHeadingRate = 0;
	LookRelativeHeading = 0.0f;
	LookPitchRate = 0;
	LookRelativePitch = 0.0f;
	field_0x4ab8 = (int)Const_8cf0a8;
	field_0x4abc = 12;
	field_0x4b30 = 0;
	field_0x4ac0 = 0;
	field_0x5188 = 0;
	field_0x499c = 0;
	MoveState = 0;
	field_0x579c = 0;
	field_0x5044 = 0;
	field_0x5430 = 0;
	field_0x545c = 0;
	field_0x5464 = 0.0f;
	field_0x4ab0 = 0.0f;
	field_0x4ab4 = 0;
	field_0x8c = 1.0f;
	SetSize(1.0f);
	SetRequiredSpeed(0.6f);
	field_0x51bc = 0;
	BellyBone = 0;
	Anus = 0;
	HeadBone = 0;
	RightFoot = 0;
	RightHand = 0;
	RightArmpit = 0;
	field_0x51d0 = -1;
	HeadGrowBone = -1;
	field_0x5474 = 1.0f;
	SafeBufferMemory0 = NULL;
	SafeBuffer0 = NULL;
	SafeBufferMemory1 = NULL;
	SafeBuffer1 = NULL;
	field_0x5190 = 0;
	ReverseAnim = 0;
	field_0x5230 = 0;
	field_0x5234 = 0;
	field_0x5238 = 0;
	field_0x523c = 0;
	EventualHeading = 0.0f;
	MirrorBones = NULL;
	field_0x51f4 = 0;
	CurrentFacialAction = 0;
	RequestedFacialAction = 0;
	FacialActionTime = 0;
	FacialAnimTime = 0;
	int i;
	for (i = 0; i < 2; i++)
	{
		Forces[i].SetNull();
		field_0x4888[i].SetNull();
	}
	ForceApplied = false;
	LeashForce = 0.0f;
	field_0x48a0.SetNull();
	ThrowPosHigh.SetNull();
	ThrowPosFlat.SetNull();
	KissPositionA.SetNull();
	KissPositionB.SetNull();
	field_0x51dc = 0;
	PutDownTime = 0;
	ThrowTime = 0;
	DestroyTime = 0;
	PickUpTime = 0;
	DiscardTime = 0;
	EatTime = 0;
	field_0x4a38 = 0;
	field_0x4a3c = 0;
	field_0x4a8c = 0;
	field_0x4a80 = 0;
	field_0x4a88 = 0;
	TurningCompleted = 0;
	field_0x51e8 = 1;
	for (i = 0; i < 7; i++)
	{
		DanceAnimSpeeds[i] = 1;
	}
	field_0x5214 = 0;
	field_0x5218 = 0;
	RequiredHeading = 0.0f;
	DiscardVelocity.SetNull();
	DiscardPosition.SetNull();
	for (i = 0; i < 12; i++)
	{
		field_0x4ec4[i].SetNull();
		field_0x50d8[i] = 0;
		field_0x5108[i] = 0;
		field_0x5138[i] = 0;
	}
	ThrowYR = 0.0f;
	ThrowYL = 0.0f;
	ThrowYH = 0.0f;
	ThrowZR = 0.0f;
	ThrowZL = 0.0f;
	ThrowZH = 0.0f;
	GameThrowingAngle = 0;
	ObjectActionStatus = 0;
	CurrentAnim = 0;
	for (i = 0; i < 4; i++)
	{
		field_0x5518[i] = 0;
		field_0x5528[i] = 0;
		if (i < 2)
		{
			field_0x5538[i].SetPosition(LHPoint(0.0f, 0.0f, 1.0f));
		}
		if (i < 3)
		{
			field_0x5658[i] = 0;
			field_0x5664[i] = 0;
			field_0x5670[i] = 0;
		}
	}
	for (i = 0; i < 8; i++)
	{
		field_0x569c[i] = 0;
		field_0x56fc[i] = 0.5f;
		field_0x56bc[i] = 0;
		field_0x56dc[i] = 0;
	}
	field_0x5460 = 2;
	Boite = NULL;
	field_0x57a8 = 0;
	field_0x57ac = 0;
	field_0x5468 = 1000;
	field_0x546c = 5000;
	field_0x5470 = 0;
	field_0x5168.SetNull();
	ImpactTime = 0;
	field_0x51b4 = 0;
	field_0x48f8.SetNull();
	field_0x48e8.SetNull();
	field_0x48d8.SetNull();
	field_0x48f4 = 1.0f;
	field_0x48e4 = 1.0f;
	field_0x48d4 = 1.0f;
	FightCreature = 0;
	FightMove = 0;
	for (i = 0; i < 5; i++)
	{
		field_0x5290[i] = 0;
	}
	for (i = 0; i < 8; i++)
	{
		field_0x53e8[i] = 12000;
	}
	InHandInteraction = false;
	SafeBufferSelector = false;
	field_0x5798 = 0;
	field_0x5268 = 0;
	field_0x5730 = 0;
	field_0x5738 = 0;
	field_0x5734 = 0;
	field_0x485c = 47.12389f;
	ResetMorphAnims();
	field_0x51ec = 0;
	field_0x5744 = 0;
	field_0x5740 = 0;
	field_0x573c = 0;
	field_0x5748.SetNull();
	field_0x5794 = 1;
	field_0x4aac = 1.0f;
	field_0x4aa8 = 1.0f;
}

LH3DCreature::~LH3DCreature()
{
	if (CameraExclusionDome)
	{
		CameraExclusion::Remove(CameraExclusionDome);
		CameraExclusionDome = NULL;
	}
	if (SafeBufferMemory0)
	{
		delete SafeBufferMemory0;
	}
	if (SafeBuffer0)
	{
		delete SafeBuffer0;
	}
	if (SafeBufferMemory1)
	{
		delete SafeBufferMemory1;
	}
	if (SafeBuffer1)
	{
		delete SafeBuffer1;
	}
	if (MirrorBones)
	{
		delete MirrorBones;
	}
	if (field_0x51f4)
	{
		field_0x51f4->Release();
	}
	if (Boite)
	{
		delete Boite;
	}
	delete Damage;
	if (file.opened)
	{
		file.CloseSegment();
		file.Close();
	}
	if (GGlobal::Global.audio)
	{
		GGlobal::Global.audio->BankRelease(SoundBank);
	}
	delete RpFollow;
	delete Anim0x5220;
	if (Glows)
	{
		Glows->Release();
	}
}

void LH3DCreature::ReduceFightHealth(float amount)
{
	field_0x4aa8 -= amount;
}

void LH3DCreature::StartUnknownAction6A()
{
	GetAnim(C_FIGHT_EXTRA_FAINT, 1);
	CurrentAnim = C_FIGHT_EXTRA_FAINT;
	StateSet(0x1e);
}

void LH3DCreature::SetAnimTime(int anim, int time)
{
	int i;
	switch (anim)
	{
	case C_PICKUP_FRONT_RIGHT:
	case C_PICKUP_FRONT_LEFT:
	case C_PICKUP_BACK_RIGHT:
	case C_PICKUP_BACK_LEFT:
		Morphable::SetAnimTime(C_PICKUP_FRONT_RIGHT, time);
		Morphable::SetAnimTime(C_PICKUP_FRONT_LEFT, time);
		Morphable::SetAnimTime(C_PICKUP_BACK_RIGHT, time);
		Morphable::SetAnimTime(C_PICKUP_BACK_LEFT, time);
		break;
	case C_THROW_HURL_FLAT:
	case C_THROW_HURL_HIGH:
		Morphable::SetAnimTime(C_THROW_HURL_FLAT, time);
		Morphable::SetAnimTime(C_THROW_HURL_HIGH, time);
		break;
	case C_DESTROY_FRONT_RIGHT:
	case C_DESTROY_FRONT_LEFT:
	case C_DESTROY_BACK_RIGHT:
	case C_DESTROY_BACK_LEFT:
		Morphable::SetAnimTime(C_DESTROY_FRONT_RIGHT, time);
		Morphable::SetAnimTime(C_DESTROY_FRONT_LEFT, time);
		Morphable::SetAnimTime(C_DESTROY_BACK_RIGHT, time);
		Morphable::SetAnimTime(C_DESTROY_BACK_LEFT, time);
		break;
	case C_DANCE_A:
		for (i = 0; i < 7; i++)
		{
			Morphable::SetAnimTime(C_DANCE_A + i, time * DanceAnimSpeeds[i]);
		}
		break;
	case C_OBJECT_REMOVE_DISCARD:
		Morphable::SetAnimTime(anim, time);
		break;
	case C_OBJECT_REMOVE_EAT:
	case C_OBJECT_REMOVE_PUT_DOWN:
		Morphable::SetAnimTime(anim, time);
		break;
	default:
		Morphable::SetAnimTime(anim, time);
		break;
	}
}

void LH3DCreature::SetSize(float size)
{
	float half = size * 0.5f;
	float a = 1.6f - half * 0.85f;
	float b = half * 1.75f + 0.25f;
	Size1 = size > 0.05f ? (size < 4.0f ? size : 4.0f) : 0.05f;
	Size2 = GetStandingHeight() / field_0x8c;
	WalkSpeed = b * 8.0f;
	RunSpeed = b * 20.0f;
	CurrentSpeed = min(RunSpeed, CurrentSpeed);
	Acceleration = 12.0f;
	field_0x4858 = a * field_0x485c;
	BodyTurnAccel = a * 3.1415927f;
	field_0x498c = field_0x4990 = 5.0f / (1.0f / (float)sqrt(Size1));
	field_0x5228 = Size2 * field_0x5224;
	if (creature && creature->GetPlayer())
	{
		for (GInterfaceStatus* status = creature->GetPlayer()->GetNextInterfaceStatus(NULL); status;
		     status = creature->GetPlayer()->GetNextInterfaceStatus(status))
		{
			if (!status->LeashStatus->ObjectAttachedTo)
			{
				status->LeashStatus->CalculateLeashLengthFromCreature(creature);
			}
		}
	}
}

void LH3DCreature::StartHandInteraction()
{
	InHandInteraction = true;
}

void LH3DCreature::StopHandInteraction()
{
	InHandInteraction = false;
}

void LH3DCreature::DisconnectFromGame(long param_1)
{
	SafeBufferSelector = true;
	if (param_1)
	{
		StartIndividualAction(param_1);
	}
	memcpy(SafeBuffer1, SafeBuffer0, field_0x47b8 * sizeof(LHMatrix));
}

void LH3DCreature::ReconnectToGame()
{
	if (SafeBufferSelector)
	{
		ResetLook();
		SafeBufferSelector = false;
	}
}

void LH3DCreature::GetKissPosition(float param_1, LHPoint* result)
{
	ValidateKissPositions();
	LHPoint diff = KissPositionA - KissPositionB;
	result->Set(KissPositionB + diff * param_1);
	result->Mul(Size2);
}

void LH3DCreature::GetPickUpFromHandPosition(LHPoint* result, bool param_2, float param_3)
{
	ValidatePickUpFromHandPosition();
	LHMatrix rotation;
	rotation.SetRotationY(param_3);
	result->Set(PickUpFromHandPosition);
	if (!param_2)
	{
		result->x = -result->x;
	}
	result->Mul(Size2);
	rotation.TransformPoint(*result);
	result->Add(position);
}

bool32_t LH3DCreature::CanKissCreature(LH3DCreature* other)
{
	LHPoint otherPos;
	LHPoint myPos;
	other->GetKissPosition(1.0f, &otherPos);
	GetKissPosition(1.0f, &myPos);
	LHPoint       low;
	LHPoint       high;
	LH3DCreature* lower;
	if (myPos.y > otherPos.y)
	{
		lower = this;
		high = myPos;
		low = otherPos;
	}
	else
	{
		lower = other;
		high = otherPos;
		low = myPos;
	}
	LHPoint bottom;
	lower->GetKissPosition(0.0f, &bottom);
	if (bottom.y > low.y)
	{
		return false;
	}
	if (myPos.y > otherPos.y)
	{
		KissFraction = (otherPos.y - bottom.y) / (high.y - bottom.y);
	}
	else
	{
		KissFraction = 1.0f;
	}
	return true;
}

float LH3DCreature::GetKissingDistance(LH3DCreature* other)
{
	float distance = 0.0f;
	if (CanKissCreature(other))
	{
		LHPoint pos;
		GetKissPosition(KissFraction, &pos);
		distance = -pos.z;
	}
	return distance;
}

float LH3DCreature::GetNavRadius()
{
	if (creature && !creature->field_0x12a8)
	{
		return creature->physical->field_0x6c / Size1 * field_0x5228;
	}
	return field_0x5228;
}

bool32_t LH3DCreature::IsPhysicsObject(Object* object)
{
	return PhysicsObject::SearchForPhysicsObject(object) != NULL;
}

bool32_t LH3DCreature::StartCatching(Object* object)
{
	if (!GetAnim(C_CATCH_LO_L, 0) || !GetAnim(C_CATCH_LO_R, 0) || !GetAnim(C_CATCH_HI_L, 0) ||
	    !GetAnim(C_CATCH_HI_R, 0))
	{
		return false;
	}
	if (field_0x51ec || IsPerformingBodyAction())
	{
		return false;
	}
	PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(object);
	if (!physics || physics->Physics.Velocity.x * physics->Physics.Velocity.x +
	                        physics->Physics.Velocity.y * physics->Physics.Velocity.y <
	                    1.0f)
	{
		return false;
	}
	ActionObject = object;
	float heading = angle_correct(heading_from_direction_vector(physics->Physics.Velocity) + 3.1415927f);
	if ((float)fabs(angle_correct(heading - Heading)) > 0.2617994f)
	{
		TurningCompleted = 0;
		InitialiseTurning(heading);
	}
	else
	{
		TurningCompleted = 1;
	}
	ValidateCatchPositions();
	StateSet(0x13);
	return true;
}

bool32_t LH3DCreature::StartKickingAction(Object* object)
{
	if (!GetAnim(C_DESTROY_KICK_LOW, 0))
	{
		return false;
	}
	if (IsPerformingBodyAction())
	{
		return false;
	}
	ActionObject = object;
	ValidateKickPositions();
	StateSet(0x12);
	return true;
}

void LH3DCreature::SetField5218(long value)
{
	field_0x5218 = value;
}

bool32_t LH3DCreature::StartFacialAction(long action, long time)
{
	RequestedFacialAction = action;
	FacialActionTime = time ? time : 3600000;
	return true;
}

float LH3DCreature::GetLookDirection()
{
	if (!HasLookPoint())
	{
		return Heading;
	}
	if (LookPoint == position)
	{
		return Heading;
	}
	return heading_from_direction_vector(LookPoint - position);
}

bool32_t LH3DCreature::IsPerformingFacialAction()
{
	return CurrentFacialAction != 0;
}

void LH3DCreature::OperateFace()
{
	if (FacialActionTime > 0)
	{
		FacialActionTime = max(0, FacialActionTime - IntTimeInc);
	}
	if (FacialActionTime == 0)
	{
		RequestedFacialAction = 0;
	}
	if (RequestedFacialAction != CurrentFacialAction)
	{
		if (CurrentFacialAction)
		{
			long delta = IntTimeInc;
			if (!RequestedFacialAction)
			{
				delta >>= 2;
			}
			FacialAnimTime = max(0, FacialAnimTime - delta);
			if (FacialAnimTime == 0)
			{
				CurrentFacialAction = 0;
			}
		}
		if (!CurrentFacialAction)
		{
			CurrentFacialAction = RequestedFacialAction;
		}
	}
	else if (CurrentFacialAction && GetAnim(CurrentFacialAction, 0))
	{
		FacialAnimTime = AdvanceSimple(CurrentFacialAction, FacialAnimTime, IntTimeInc);
	}
}

bool32_t LH3DCreature::StartBlendedAction(Object* object, long state)
{
	if (state == 0xe)
	{
		GetAnim(C_PICKUP_BACK_LEFT, 0) && GetAnim(C_PICKUP_BACK_RIGHT, 0) && GetAnim(C_PICKUP_FRONT_LEFT, 0) &&
			GetAnim(C_PICKUP_FRONT_RIGHT, 0);
		ValidatePickUpPositions();
	}
	else
	{
		GetAnim(C_DESTROY_BACK_LEFT, 0) && GetAnim(C_DESTROY_BACK_RIGHT, 0) && GetAnim(C_DESTROY_FRONT_LEFT, 0) &&
			GetAnim(C_DESTROY_FRONT_RIGHT, 0);
		ValidateDestructionPositions();
	}
	if (!IsPerformingBodyAction() && (state != 0xe || !HeldObject))
	{
		CycleTime[0] = 0;
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, pos);
		Living* living = dynamic_cast<Living*>(object);
		if (living && living->IsMoving())
		{
			long  time = state == 0xe ? PickUpTime : DestroyTime;
			float scale = sqrt(Size1 + Size1) * 0.001;
			AddToVectorOfMovingLiving(living, scale * time, &pos);
		}
		float heading;
		TurningCompleted = IsInRangeImmediately(pos, state, &heading);
		if (!TurningCompleted)
		{
			InitialiseTurning(heading);
		}
		ActionObject = object;
		StateSet(state);
		return true;
	}
	return false;
}

bool32_t LH3DCreature::StartPickUpFromHandAction(Object* object)
{
	if (IsPerformingBodyAction() || HeldObject)
	{
		return false;
	}
	ValidatePickUpFromHandPosition();
	if (!GetAnim(C_PICKUP_FROM_HAND, 0) || !object)
	{
		return false;
	}
	ActionObject = object;
	CycleTime[0] = 0;
	ReverseAnim = field_0x5794 == 0;
	StateSet(0xf);
	return true;
}

bool32_t LH3DCreature::IsPickingUpFromHand()
{
	return MoveState == 0xf;
}

void LH3DCreature::SaveDamage(Archive& archive)
{
	unsigned long i;
	archive << Damage->NumCuts;
	for (i = 0; i < Damage->NumCuts; i++)
	{
		archive << *(unsigned long*)&Damage->Cuts[i];
	}
	archive << Damage->NumBruises;
	for (i = 0; i < Damage->NumBruises; i++)
	{
		archive << *(unsigned long*)&Damage->Bruises[i];
	}
}

void LH3DCreature::LoadDamage(Archive& archive)
{
	unsigned long i;
	archive >> Damage->NumCuts;
	for (i = 0; i < Damage->NumCuts; i++)
	{
		archive >> *(unsigned long*)&Damage->Cuts[i];
	}
	archive >> Damage->NumBruises;
	for (i = 0; i < Damage->NumBruises; i++)
	{
		archive >> *(unsigned long*)&Damage->Bruises[i];
	}
}

bool32_t LH3DCreature::StartTurningAction(float heading)
{
	if (!IsPerformingBodyAction())
	{
		InitialiseTurning(heading);
		StateSet(0x23);
		return true;
	}
	return false;
}

float LH3DCreature::GetApproximateThrowTime(float param_1)
{
	return 0.0f;
}

bool32_t LH3DCreature::ThrowAtPointGivenTime(LHPoint& pos, float time)
{
	if (!HeldObject)
	{
		return false;
	}
	if (IsPerformingBodyAction())
	{
		return false;
	}
	if (HeldObject->IsCreature())
	{
		return false;
	}
	ThrowTarget = pos;
	ThrowGivenTime = time;
	if (position.GetDistance2D(pos) < GetStandingHeight() * 0.66f)
	{
		return false;
	}
	float heading = heading_from_direction_vector(pos - position);
	if ((float)fabs(angle_correct(Heading - heading)) > 0.01f)
	{
		TurningCompleted = 0;
		InitialiseTurning(heading);
	}
	else
	{
		ThrowPreCalc();
	}
	StateSet(0xd);
	return true;
}

long LH3DCreature::FindMirrorBone(long bone)
{
	LHMatrix* matrices = field_0x47f4;
	LHPoint   pos(matrices[bone]._41, matrices[bone]._42, matrices[bone]._43);
	long      mirror = -1;
	float     best = 100.0f;
	for (long i = 0; i < field_0x47b8; i++)
	{
		LHPoint mirrored(-matrices[i]._41, matrices[i]._42, matrices[i]._43);
		float   distance = mirrored.GetDistance(pos);
		if (distance < best)
		{
			best = distance;
			mirror = i;
		}
	}
	return mirror;
}

long LH3DCreature::GetMirrorBone(long bone)
{
	if (bone == -1)
	{
		return -1;
	}
	return MirrorBones[bone];
}

LHPoint* LH3DCreature::GetHeadPos()
{
	return (LHPoint*)&GetSafeBuffer()[HeadBone].GetPos();
}

LHPoint* LH3DCreature::GetAnusPos()
{
	return (LHPoint*)&GetSafeBuffer()[Anus].GetPos();
}

LHPoint* LH3DCreature::GetBonePos(long bone)
{
	return (LHPoint*)&GetSafeBuffer()[bone].GetPos();
}

void LH3DCreature::AddEvilGoodSparkles()
{
	if (SparklingCreature && SparklingCreature != this)
	{
		return;
	}
	if (EvilGood > 0.2f)
	{
		LHPoint velocity(0.0f, 0.0f, 0.0f);
		// Left unset by the switch's missing default; the target reads its uninitialised slot too.
		unsigned long colour;
		for (int i = 0; i < 3.0f; i++)
		{
			float         x = (int)(GRand::LocalRand(101) - 50) * 0.02f;
			float         y = (int)(GRand::LocalRand(101) - 50) * 0.02f;
			float         z = (int)(GRand::LocalRand(101) - 50) * 0.02f;
			float         scale = GetStandingHeight() * 0.05f;
			LHMatrix*     matrix = &SafeBuffer0[GRand::LocalRand(field_0x47b8)];
			LHPoint       pos(matrix->_41 + x * scale, matrix->_42 + y * scale, matrix->_43 + z * scale);
			unsigned long alpha = (unsigned long)(EvilGood * 32.0f) << 24;
			switch (GRand::LocalRand(6))
			{
			case 0:
				colour = 0xff9090;
				break;
			case 1:
				colour = 0x90ff90;
				break;
			case 2:
				colour = 0x9090ff;
				break;
			case 3:
				colour = 0xffff90;
				break;
			case 4:
				colour = 0x90ffff;
				break;
			case 5:
				colour = 0xff90ff;
				break;
			}
			AddLiquidParticle(pos, velocity, colour + alpha, Size1 * 5.0f, GRand::LocalRand(2) ? 1 : 2);
		}
	}
	if (EvilGood < -0.2f)
	{
		LHPoint       velocity(0.0f, 2.0f, 0.0f);
		unsigned long colour;
		// TODO: The local keeps cl6 from folding -EvilGood * 72.0f into EvilGood * -72.0f (the target negates with
		// fchs, as the Mac does with fneg), and i is set before alpha because the target clears ebp before the
		// __ftol call. Both are guesses at the original shape.
		float         evil = -EvilGood;
		int           i = 0;
		unsigned long alpha = (unsigned long)(evil * 72.0f) << 24;
		for (; i < 3.0f; i++)
		{
			float     x = (int)(GRand::LocalRand(101) - 50) * 0.02f;
			float     y = (int)(GRand::LocalRand(101) - 50) * 0.02f;
			float     z = (int)(GRand::LocalRand(101) - 50) * 0.02f;
			float     scale = GetStandingHeight() * 0.05f;
			LHMatrix* matrix = &SafeBuffer0[GRand::LocalRand(field_0x47b8)];
			LHPoint   pos(matrix->_41 + x * scale, matrix->_42 + y * scale, matrix->_43 + z * scale);
			switch (GRand::LocalRand(6))
			{
			case 0:
				colour = 0x300000;
				break;
			case 1:
				colour = 0x3000;
				break;
			case 2:
				colour = 0x30;
				break;
			case 3:
				colour = 0x303000;
				break;
			case 4:
				colour = 0x3030;
				break;
			case 5:
				colour = 0x300030;
				break;
			}
			AddLiquidParticle(pos, velocity, colour + alpha, Size1 * 2.0f, 3);
		}
	}
}

void LH3DCreature::UpdateBlood()
{
	for (int i = 0; i < 8; i++)
	{
		if (field_0x53e8[i] < 12000)
		{
			field_0x53e8[i] += IntTimeInc;
			LHPoint pos;
			LHPoint normal;
			BloodIntersections[i].GetWorldPositionAndInwardNormal(GetMesh(), SafeBuffer0, &pos, &normal);
			pos.y -= 0.012f;
			if (BloodIntersections[i].GetNearestIntersection(GetMesh(), SafeBuffer0, &pos, &normal, false, NULL, NULL,
			                                                 true))
			{
				TextureRef ref;
				BloodIntersections[i].GetTextureRef(GetMesh(), &ref);
				ref.ColourIntersectionPoint(GetMesh(), BloodColours, BloodColourStrength);
				ref.Age = 0;
				LH3DCreatureDamage* damage = Damage;
				if (damage->NumCuts < 0x400)
				{
					damage->Cuts[damage->NumCuts++] = ref;
				}
				else
				{
					int           maxAge = 0;
					unsigned long oldest = 0;
					for (unsigned long j = 0; j < 0x400; j++)
					{
						if (damage->Cuts[j].Age > maxAge)
						{
							maxAge = damage->Cuts[j].Age;
							oldest = j;
						}
					}
					damage->Cuts[oldest] = ref;
				}
			}
			else
			{
				field_0x53e8[i] = 12000;
			}
		}
	}
}

void LH3DCreature::PlayQueuedSoundEffects()
{
	MorphableSoundEffect* effect = SoundEffects;
	for (int i = 0; i < NumSoundEffects; i++)
	{
		PlayASoundEffect(effect->Sound, effect->Param, effect->Flag);
		effect++;
	}
	NumSoundEffects = 0;
}

void LH3DCreature::TimeWarpHeal(long time)
{
	bool healed = false;
	for (long t = 0; t < time; t++)
	{
		if (++field_0x5188 == 600)
		{
			field_0x5188 = 0;
			LH3DCreatureDamage* damage = Damage;
			unsigned long       i;
			for (i = 0; i < damage->NumCuts; i++)
			{
				if (damage->Cuts[i].Age == 0x3f)
				{
					damage->Cuts[i] = damage->Cuts[--damage->NumCuts];
					i--;
				}
				else
				{
					damage->Cuts[i].Age++;
				}
			}
			TextureRef* bruise = damage->Bruises;
			for (i = 0; i < damage->NumBruises; i++)
			{
				if (bruise->Age < 0x3f)
				{
					bruise->Age++;
					if (bruise->Age == BruiseHealTimes[bruise->Type])
					{
						damage->Bruises[i] = damage->Bruises[--damage->NumBruises];
						i--;
						bruise--;
					}
				}
				bruise++;
			}
			healed = true;
		}
	}
	if (healed)
	{
		MorphTexture();
	}
}

bool32_t LH3DCreature::CanFightAroundObject(Object* object)
{
	if (object->IsLiving())
	{
		return true;
	}
	if (!object->Game3dObject)
	{
		return true;
	}
	if (object->IsCitadelHeart() || dynamic_cast<StoragePit*>(object) || dynamic_cast<TownCentre*>(object))
	{
		return false;
	}
	if (object->GetHeight() > GetStandingHeight())
	{
		return false;
	}
	if (object->IsAbode() ||
	    (object->CanBecomeAPhysicsObject() && !(object->Flags & GAME_THING_WITH_POS_FLAG_IMMOVABLE)))
	{
		return true;
	}
	return false;
}

bool32_t LH3DCreature::CanKnockObject(Object* object)
{
	if (!object->Game3dObject || (object->Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) || object->IsCreature() ||
	    object->IsCitadelHeart() || object->IsTree() || dynamic_cast<StoragePit*>(object) ||
	    dynamic_cast<TownCentre*>(object) || dynamic_cast<Fragment*>(object))
	{
		return false;
	}
	if (object->IsVillager(NULL) || (object->IsAnimal() && !dynamic_cast<Dove*>(object)))
	{
		return !(object->Flags & GAME_THING_WITH_POS_FLAG_IMMOVABLE);
	}
	if (object->IsLiving() || object->Game3dObject->IsAnimated())
	{
		return false;
	}
	if (object->IsAbode())
	{
		if (object->IsField())
		{
			return false;
		}
	}
	else if (!object->CanBecomeAPhysicsObject() || (object->Flags & GAME_THING_WITH_POS_FLAG_IMMOVABLE))
	{
		return false;
	}
	return true;
}

bool32_t DoesPosIntersectAnyVertices(const LHPoint& pos, float radius, Object* object)
{
	LHMatrix matrix;
	object->GetWorldMatrix(&matrix);
	LH3DMesh* mesh = LH3DMesh::GetPackedMesh(object->GetMesh());
	float     radiusSq = radius * radius;
	if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		return false;
	}
	// The count is cached before the loop (the target stores it before i = 0).
	int numSubmeshes = mesh->SubmeshCount;
	for (int i = 0; i < numSubmeshes; i++)
	{
		LH3DSubMesh* submesh = mesh->submeshes[i];
		if (submesh->flags_ & 0x20000000)
		{
			// TODO: NumPrimitives is compared signed (jl here, cmpw on Mac); its uint32_t declaration is probably wrong.
			for (int j = 0; j < (int)submesh->NumPrimitives; j++)
			{
				LH3DPrimitive* primitive = submesh->primitives_[j];
				LH3DVertex*    vertex = primitive->Vertices;
				for (int k = 0; k < primitive->NumVertices; k++)
				{
					// TODO: 97.2%: the target multiplies y, x, z in each row of the inlined transform, we multiply x, z, y.
					// Unused LHPoint locals cycle the x87 order, so this is a cl6 tie-break, not a source difference.
					LHPoint point = matrix * vertex->position;
					if (point.GetDistanceSq(pos) < radiusSq)
					{
						return true;
					}
					vertex++;
				}
			}
		}
	}
	return false;
}

void LH3DCreature::UpdateTime(int time)
{
	ProcessBreath();
	field_0x57a8 = 0;
	BoundingSphereValid = false;
	IntTimeInc = time;
	FloatTimeInc = IntTimeInc / 1000.0f;
	if (IsAnimationTimeModified)
	{
		AnimTimeInc = time;
	}
	else
	{
		float half = Size1 * 0.5f;
		AnimTimeInc = (long)(time * (1.6f - half * 0.85f));
	}
	if (field_0x5730)
	{
		AnimTimeInc *= 2;
	}
	if (LastFightIntersectionPending && field_0x4b30)
	{
		long last = field_0x4b30 - 1;
		field_0x4b64[last] += IntTimeInc;
		if (field_0x4b64[last] > 1200)
		{
			field_0x4b64[last] = 1200;
		}
	}
	if (FightCreature && creature && creature == GGame::g_game->MyPlayer()->GetCreature())
	{
		LHMatrix rotation;
		rotation.SetRotationY(Heading);
		rotation.SetTranslateOnly(position);
		for (int i = 0; i < field_0x4b30; i++)
		{
			if (field_0x4b34[i] == 2)
			{
				// Written out: LHMatrix::operator* leaves a `+ 0.0` for the known-zero _21/_23 entries and copies through
				// a temporary, which the target does not do.
				LHPoint& p = field_0x4da4[i];
				field_0x4e34[i].x = p.z * rotation.m[6] + p.y * rotation.m[3] + p.x * rotation.m[0] + rotation.m[9];
				field_0x4e34[i].y = p.z * rotation.m[7] + p.y * rotation.m[4] + p.x * rotation.m[1] + rotation.m[10];
				field_0x4e34[i].z = p.z * rotation.m[8] + p.y * rotation.m[5] + p.x * rotation.m[2] + rotation.m[11];
			}
		}
	}
	TimeWarpHeal(field_0x5798 ? 50 : 1);
	UpdateMorphing();
	field_0x5268 = 0;
	AddEvilGoodSparkles();
	UpdateBlood();
	field_0x5468 -= IntTimeInc;
	if (field_0x5468 <= 0)
	{
		switch (field_0x5470)
		{
		case 0:
			field_0x5470 = 1;
			field_0x5468 = 200;
			break;
		case 1:
			field_0x5470 = 2;
			field_0x5468 = 200;
			break;
		case 2:
			field_0x5470 = 0;
			field_0x5468 = GRand::LocalRand(field_0x546c) + (field_0x546c >> 1);
			break;
		}
	}
	LHPoint leash;
	if (LeashForce > 0.05f)
	{
		LHPoint handPos;
		if (creature->GetPlayer())
		{
			GInterfaceStatus* status = creature->GetInterfaceStatusLeashOn();
			if (status)
			{
				handPos = status->GetHandPos();
			}
		}
		else
		{
			handPos = position;
		}
		LHPoint force = handPos - position;
		force.SetSize(GetMass() * LeashForce * 15.0f);
		ApplyForce(*GetHeadPos(), force);
		leash = force * -0.9f;
		LeashForce *= 0.95f;
		if (LeashForce < 0.3f)
		{
			LeashForce = 0.0f;
		}
	}
	else
	{
		leash.SetNull();
	}
	if (ForceApplied)
	{
		bool    settled = true;
		LHPoint diff = leash - field_0x48a0;
		field_0x48a0.Add(diff * 0.15f);
		float dt = FloatTimeInc / 10.0f;
		float mass = GetMass() * 0.5f;
		float stiffness = -mass * 30.0f;
		float damping = mass * 5.0f;
		float accel = dt / mass;
		for (int i = 0; i < 2; i++)
		{
			for (int j = 0; j < 10; j++)
			{
				LHPoint force = field_0x48a0;
				force.Add(field_0x4888[i] * stiffness);
				float lengthSq = Forces[i].GetNormeSq();
				if (lengthSq > 36.0f)
				{
					Forces[i] *= 6.0f / (float)sqrt(lengthSq);
				}
				force -= Forces[i] * damping;
				Forces[i].Add(force * accel);
				field_0x4888[i].Add(Forces[i] * dt);
			}
			if (field_0x4888[i].GetNorme() > 0.05f || Forces[i].GetNorme() > 0.05f)
			{
				settled = false;
			}
		}
		if (settled)
		{
			ForceApplied = false;
		}
	}
	if (field_0x47bc)
	{
		UpdateBuffers();
		return;
	}
	PlayQueuedSoundEffects();
	OperateFace();
	if (field_0x5738)
	{
		CAnim* anim = GetAnim(field_0x5738, 0);
		long   delta = AnimTimeInc;
		if (field_0x5730)
		{
			delta /= 2;
		}
		bool finished;
		// TODO: CAnim's first field is a signed duration (see UpdateLook), hence the cast.
		if (field_0x5734 + delta >= (long)anim->FrameOffset)
		{
			finished = true;
			delta = anim->FrameOffset - field_0x5734;
		}
		else
		{
			finished = false;
		}
		field_0x5734 = AdvanceCyclic(field_0x5738, field_0x5734, delta);
		if (finished)
		{
			field_0x5738 = 0;
		}
	}
	for (int i = 0; i < 4; i++)
	{
		CycleAnim[i] = NULL;
		CycleWeight[i] = 0.0f;
	}
	if (ActionObject && !ActionObject->IsAvailable())
	{
		ActionObject = NULL;
	}
	if (HeldObject && !HeldObject->IsAvailable())
	{
		HeldObject = NULL;
	}
	StateSwitch();
	StateAction();
	UpdateLook();
	UpdateBuffers();
	float radius = GetStandingHeight() * 0.05f;
	float radiusSq = radius * radius;
	if (field_0x5044)
	{
		for (int i = 0; i < 8; i++)
		{
			DestructionBone* bone = &DestructionBones[i];
			LHPoint          bonePos = SafeBuffer0[bone->Bone].GetPos();
			LHPoint          diff = bonePos - bone->Pos;
			if (diff.GetNorm() > radiusSq)
			{
				bone->Pos = bonePos;
				long     cellX = (long)(bonePos.x * 0.1f);
				long     cellZ = (long)(bonePos.z * 0.1f);
				MapCell* cell = GGame::g_game->map.ToMap(cellX, cellZ);
				for (MapCellIterator it = cell->GetFirstIterator(); it.object;)
				{
					Object* object = it.object;
					if (CanKnockObject(object))
					{
						LHPoint objectPos;
						GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, objectPos);
						if (object->IsVillager(NULL) || object->IsAnimal())
						{
							float reach = object->Get2DRadius() + bone->Radius * 0.3f;
							if (objectPos.GetDistance2DSq(bone->Pos) < reach * reach)
							{
								diff *= 7.0f;
								LHPoint           angular(0.0f, 0.0f, 0.0f);
								GInterfaceStatus* status = creature && creature->GetPlayer()
								                               ? creature->GetPlayer()->GetLeaderInterfaceStatus()
								                               : NULL;
								object->InitialisePhysics(diff, angular, creature, true, status);
							}
						}
						else if (object->IsAbode())
						{
							float reach = bone->Radius + object->Get2DRadius();
							if (objectPos.GetDistance2DSq(bone->Pos) < reach * reach &&
							    DoesPosIntersectAnyVertices(bonePos, bone->Radius, object))
							{
								Abode* abode = dynamic_cast<Abode*>(object);
								if (creature && abode->CanBeKickedByCreature(creature))
								{
									if (!abode->DestructionMesh)
									{
										abode->DestructionMesh =
											new (CREATURE_3D_FILE, 2149) FragMesh(abode->Game3dObject);
									}
									float speed = diff.Normalise() * 10.0f;
									// TODO: The Mac builds the impulse straight from diff; this copy-then-scale form is the one
									// that reproduces the target's Normalise and multiply scheduling.
									LHPoint impulse = diff;
									impulse *= speed * 0.4f;
									abode->DestructionMesh->Impact(&bonePos, &impulse, bone->Radius, abode);
									if (abode->DestructionMesh->WorkOutFractionRemaining() == 1.0f)
									{
										delete abode->DestructionMesh;
										abode->DestructionMesh = NULL;
									}
									else
									{
										abode->ApplyEffectsDueToPhysicalDestruction(
											creature, creature ? creature->GetPlayer() : NULL);
									}
								}
							}
						}
						else if (object->CanBecomeAPhysicsObject() &&
						         !(object->Flags & GAME_THING_WITH_POS_FLAG_IMMOVABLE))
						{
							float reach = bone->Radius * 0.3f + object->Get2DRadius();
							if (objectPos.GetDistance2DSq(bone->Pos) < reach * reach &&
							    DoesPosIntersectAnyVertices(bonePos, bone->Radius, object))
							{
								diff *= 7.0f;
								LHPoint           angular(0.0f, 0.0f, 0.0f);
								GInterfaceStatus* status = creature && creature->GetPlayer()
								                               ? creature->GetPlayer()->GetLeaderInterfaceStatus()
								                               : NULL;
								object->InitialisePhysics(diff, angular, creature, true, status);
							}
						}
					}
					it.object = it.object->GetMapChild(*it.cell);
					it.MoveToMobileObsIfNeededAndPoss();
				}
			}
		}
	}
	if (HeldObject && HeldObject->IsCreature())
	{
		Creature* held = HeldObject->CastCreature();
		long      bone = field_0x5230 ? GetMirrorBone(RightHand) : RightHand;
		LH3DAnim::GetGraspPoint(GetSafeBuffer(), meshes[CurrentMesh], held->GetCreature3D()->position, bone);
		held->GetCreature3D()->UpdateBuffers();
	}
	if (field_0x57ac)
	{
		PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(creature);
		if (physics)
		{
			GetBoundingSphere((LHPoint&)physics->Physics.Matrix.GetPos(), physics->Physics.Radius);
			GetBoite();
		}
	}
	static float CameraExclusionScale = 1.35f;
	// The position is read without any inline call (an inline accessor inside the by-value argument is not
	// expanded here), so the original probably named an LHPoint member of LHMatrix directly.
	if (CameraExclusionDome)
	{
		CameraExclusion::Adjust(CameraExclusionDome, *(LHPoint*)&DynamicShadow->matrix._41,
		                        field_0x5228 * CameraExclusionScale, CameraExclusionScale * GetStandingHeight());
	}
	else
	{
		CameraExclusionDome =
			CameraExclusion::CreateDome(3, *(LHPoint*)&DynamicShadow->matrix._41, field_0x5228 * CameraExclusionScale,
		                                CameraExclusionScale * GetStandingHeight());
		if (CameraExclusionDome)
		{
			CameraExclusionDome->Saved = false;
		}
	}
}

void LH3DCreature::SetLookPoint(LHPoint* point)
{
	if (GGlobal::Global.debug.field_0x14c && (!creature || !(creature->Flags & GAME_THING_WITH_POS_FLAG_INTERACTING)))
	{
		fprintf(GGame::g_game->field_0x2502d0, "SetLookPoint x:%20.20f, y:%20.20f, z:%20.20f\n", point->x, point->y,
		        point->z);
		fprintf(GGame::g_game->field_0x2502d0, "STACK: %s\n", GetCurrentStackString());
	}
	if (AlwaysSetLookPoint || !creature || !(creature->Flags & GAME_THING_WITH_POS_FLAG_INTERACTING))
	{
		LookPoint = *point;
	}
}

bool32_t LH3DCreature::HasLookPoint()
{
	return LookPoint.x != 0.0f || LookPoint.y != 0.0f || LookPoint.z != 0.0f;
}

void LH3DCreature::UpdateLook()
{
	float yaw = 0.0f;
	float pitch = 0.0f;
	if ((MoveState == LH3D_CREATURE_STATE_CATCH_MAIN || MoveState == LH3D_CREATURE_STATE_CATCH_STEP) && ActionObject)
	{
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(ActionObject->Pos, pos);
		SetLookPoint(&pos);
	}
	if ((HasLookPoint() && CanUpdateLook()) || (MoveState == LH3D_CREATURE_STATE_FIGHT_MAIN && FightCreature))
	{
		// TODO: 99.9%: the target sums y*y + z*z + x*x in the normalisation, ours z*z + y*y + x*x. cl6 orders
		// that sum by its internal numbering of dir's fields (the source order of the sum has no effect), and no
		// tried way of filling dir (member copies in any order, struct copies, a shared local) gives both the
		// target's sum order and its copy code (x and z kept on the x87 stack, y copied through edx).
		LHPoint dir;
		if (IsStandingStill())
		{
			UpdateRPLookPoint();
			dir.x = field_0x5748.x;
			dir.y = field_0x5748.y;
			dir.z = field_0x5748.z;
		}
		else if (MoveState == LH3D_CREATURE_STATE_FIGHT_MAIN)
		{
			LHPoint* head = FightCreature->GetHeadPos();
			dir.x = head->x;
			dir.y = head->y;
			dir.z = head->z;
		}
		else
		{
			dir.x = LookPoint.x;
			dir.y = LookPoint.y;
			dir.z = LookPoint.z;
		}
		LHPoint eye = position;
		eye.y += GetStandingHeight();
		dir -= eye;
		dir.FastNormalizeInline();
		if (fabs(dir.x) > 0.0001f && fabs(dir.z) > 0.0001f)
		{
			float heading = Heading;
			if (Anim0x5220)
			{
				// TODO: CAnim's first field is a signed duration (fidiv here, xoris on Mac), not uint32_t FrameOffset.
				heading += angle_correct(RequiredHeading - Heading) * CycleTime[0] / (long)Anim0x5220->FrameOffset;
			}
			yaw = angle_correct(heading_from_direction_vector(dir) - heading);
		}
		pitch = asin(dir.y);
	}
	RotateSmoothly(&LookRelativeHeading, yaw, &LookHeadingRate, field_0x4858, FloatTimeInc, 3.1415927f);
	RotateSmoothly(&LookRelativePitch, pitch, &LookPitchRate, field_0x4858, FloatTimeInc, 1.5707964f);
}

bool32_t LH3DCreature::IsStandingStill()
{
	return MoveState == LH3D_CREATURE_STATE_MOVING && field_0x5190 == 0;
}

void LH3DCreature::UpdateRPLookPoint()
{
	field_0x5744 -= AnimTimeInc;
	if (field_0x5744 < 0)
	{
		// Both coordinates come from field_0x64074.x in the target and on the Mac (an original slip).
		field_0x5748.Set(RpFollow->field_0x64074.x, 0.0f, RpFollow->field_0x64074.x);
		if (RpFollow->field_0x640bc >= 0 && RpFollow->field_0x640bc < RpFollow->field_0x640b8)
		{
			Route* route = RpFollow->field_0x64090[RpFollow->field_0x640bc]->Route0x68;
			if (route && route->Head)
			{
				field_0x5748.Set(route->Tail->field_0x8.x, 0.0f, route->Tail->field_0x8.y);
			}
		}
		field_0x5748.y = LH3DIsland::GetAltitude(field_0x5748);
		field_0x5744 = 2000;
	}
}

void* LH3DCreature::GetBoite()
{
	if (!field_0x57a8)
	{
		Boite->InitForCollision(GetMesh(), GetSafeBuffer());
		field_0x57a8 = true;
	}
	return Boite;
}

void LH3DCreature::ResetLook()
{
	LookHeadingRate = 0.0f;
	LookRelativeHeading = 0.0f;
	LookPitchRate = 0.0f;
	LookRelativePitch = 0.0f;
	CurrentAnim = 0;
	ReverseAnim = 0;
	CurrentFacialAction = 0;
	RequestedFacialAction = 0;
	FacialAnimTime = 0;
	field_0x5190 = 0;
	CycleTime[0] = 0;
	NumSoundEffects = 0;
	field_0x519c = 0;
	Point2D pos(position.x, position.z);
	RpFollow->SetPos(pos, GetNavRadius());
	if (Anim0x5220)
	{
		delete Anim0x5220;
		Anim0x5220 = NULL;
	}
	field_0x523c = 0;
	StateSet(LH3D_CREATURE_STATE_STANDING);
	DoAppropriateAction();
	UpdateBuffers();
	LookPoint.SetNull();
	ClearField5044();
}

void LH3DCreature::PlayASoundEffect(long param_1, long param_2, bool param_3)
{
	MapCoords coords;
	GLandscape::ConvertLandscapePointToMapCoord(position, coords);
	if (GGame::g_game->GetCamera())
	{
		float distance = GGame::g_game->GetCamera()->GetDistance(position);
		long  size = (long)((2.0f - Size1) * 1.5f + 1.0f);
		long  sound[5];
		sound[0] = size > 1 ? (size < 3 ? size : 3) : 1;
		long alignment = (long)((1.0f - EvilGood) * 1.5f + 1.0f);
		sound[1] = alignment > 1 ? (alignment < 3 ? alignment : 3) : 1;
		sound[2] = field_0x4830;
		sound[3] = GSoundMap::GetSurfaceType(coords);
		sound[4] = param_1;
		LH_AudioBank* bank =
			param_3 ? GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_CREATURE_GENERIC] : SoundBank;
		if (param_3 || GGame::g_game->script->field_0x84 || creature == GGame::g_game->MyPlayer()->GetCreature())
		{
			// TODO: SamplePlayAnimEffect returns the LH_SampleInfo* of the started sample.
			LH_SampleInfo* sample = (LH_SampleInfo*)GGlobal::Global.audio->SamplePlayAnimEffect(
				(void*)field_0x4, distance, sound, param_2, bank, 1, 0.0f, 0.0f);
			if (sample && !field_0x4)
			{
				GGlobal::Global.audio->SampleSet3DPosition(sample, position.x, position.y, position.z, false);
			}
		}
		switch (param_1)
		{
		case 3:
			AddFootstepPuffs(3);
			break;
		case 4:
			AddFootstepPuffs(6);
			break;
		case 5:
			AddFootstepPuffs(12);
			break;
		case 95:
		case 96:
		case 97:
		case 98:
		case 99:
		case 100:
		case 101:
		case 102:
		case 103:
		case 104:
		case 105:
		case 106:
		case 107:
		case 108:
		case 109:
			UpdateHandGlows((LHSoundAction)param_1);
			break;
		}
		if (param_1 >= 3 && param_1 <= 5)
		{
			LHMatrix* matrices = TransformedMatrices;
			LHMatrix* matrix = &matrices[RightFoot];
			LHMatrix* mirror = &matrices[GetMirrorBone(RightFoot)];
			bool32_t  left = false;
			if (mirror->_42 < matrix->_42)
			{
				left = true;
				matrix = mirror;
			}
			LHPoint origin(0.0f, 0.0f, 0.0f);
			LHPoint axis(matrix->_11, matrix->_21, matrix->_31);
			LH3DMath::GetYAngle(&origin, &axis);
			float yAngle;
			float xAngle;
			float zAngle;
			matrix->GetYXZ(&yAngle, &xAngle, &zAngle);
			long type = 0;
			if (creature)
			{
				type = creature->GetInfo()->CreatureType;
			}
			LHPoint footPos(matrix->_41, matrix->_42, matrix->_43);
			LH3DWetFeet::Add(&footPos, yAngle + 3.1415927f, Size1 * 4.0f, type, left);
			if (footPos.y < 1.0f)
			{
				FishRush::g_b_er_valid = 1;
				FishRush::g_emergency = footPos;
			}
		}
	}
}

bool32_t LH3DCreature::CanUpdateLook()
{
	switch (MoveState)
	{
	case LH3D_CREATURE_STATE_MOVING:
		return field_0x5190 != 5;
	case LH3D_CREATURE_STATE_STANDING:
	case LH3D_CREATURE_STATE_CATCH_MAIN:
	case LH3D_CREATURE_STATE_CATCH_STEP:
	case LH3D_CREATURE_STATE_TURNING:
		return true;
	case LH3D_CREATURE_STATE_DO_STATIC:
		return CurrentAnim == C_STATIC_SIT;
	case LH3D_CREATURE_STATE_POINTING:
	case LH3D_CREATURE_STATE_FINISH_POINTING: {
		long duration = GetAnim(C_POINT_HI_LEFT, 0)->FrameOffset;
		return CycleTime[0] > duration * 7 / 10 || CycleTime[0] < duration * 2 / 10;
	}
	}
	return false;
}

bool32_t LH3DCreature::ReachedLookDestination()
{
	return LookRelativeHeading == 0.0f && LookRelativePitch == 0.0f;
}

bool32_t LH3DCreature::IsDestinationValidAndClear(LHPoint* pos)
{
	if (IsMoving())
	{
		return false;
	}
	RpFollow->Empty();
	Point2D point(pos->x, pos->z);
	RpFollow->SearchRPSquare((int)(pos->x / RouteSquareSize), (int)(pos->y / RouteSquareSize));
	RPAvoid* avoid = RpFollow->AvoidArray;
	for (int i = 0; i < RpFollow->AvoidCount; i++)
	{
		const Point2D& centre = avoid->field_0x8;
		float          dx = centre.x - point.x;
		float          dz = centre.y - point.y;
		if (dz * dz + dx * dx < avoid->field_0x10 * avoid->field_0x10)
		{
			RpFollow->Empty();
			return false;
		}
		avoid++;
	}
	RpFollow->Empty();
	return true;
}

bool32_t LH3DCreature::IsDestinationValid(const LHPoint* pos)
{
	return ValidPosGivenRadiusToEncloseSquare(pos, 7.1f);
}

bool32_t LH3DCreature::IsDestinationValidForCreature(const LHPoint* pos)
{
	return ValidPosGivenRadiusToEncloseSquare(pos, 7.05f);
}

bool32_t LH3DCreature::ValidPosGivenRadiusToEncloseSquare(const LHPoint* pos, float radius)
{
	int x = (int)(pos->x * 0.1f);
	int z = (int)(pos->z * 0.1f);
	if (x < 0 || x >= 512 || z < 0 || z >= 512)
	{
		return false;
	}
	int type = LandAvoid[z][x];
	if (type != 0 && type != 6)
	{
		return false;
	}
	for (int j = -1; j < 2; j++)
	{
		int cellZ = z + j;
		if (cellZ >= 0 && cellZ < 512)
		{
			for (int i = -1; i < 2; i++)
			{
				int cellX = x + i;
				if (cellX >= 0 && cellX < 512)
				{
					type = LandAvoid[cellZ][cellX];
					if (type != 0 && type != 6)
					{
						float dx = cellX * 10.0f + 5.0f - pos->x;
						float dz = cellZ * 10.0f + 5.0f - pos->z;
						if (dz * dz + dx * dx < radius * radius)
						{
							return false;
						}
					}
				}
			}
		}
	}
	return true;
}

void LH3DCreature::SpiralCheckForValidPoint(LHPoint* pos, LHPoint* result)
{
	float sines[16];
	float cosines[16];
	float angle = 0.0f;
	int   i;
	for (i = 0; i < 16; i++)
	{
		sines[i] = sin(angle);
		cosines[i] = cos(angle);
		angle += 3.1415927f / 8;
	}
	for (float radius = 0.5f; radius < 1000.0f; radius += 0.5f)
	{
		for (i = 0; i < 16; i++)
		{
			LHPoint point(radius * cosines[i] + pos->x, 0.0f, radius * sines[i] + pos->z);
			if (IsDestinationValid(&point))
			{
				*result = point;
				return;
			}
		}
	}
}

bool32_t LH3DCreature::AlwaysTrue(long param_1)
{
	return 1;
}

long LH3DCreature::GetStartState(LHPoint& param_1, LHPoint& param_2)
{
	LHPoint delta(param_2.x - param_1.x, 0.0f, param_2.z - param_1.z);
	float   heading = Heading;
	LHPoint facing(sin(heading), 0.0f, -cos(heading));
	RequiredHeading = heading_from_direction_vector(delta);
	CAnim* anim0;
	CAnim* anim1;
	CAnim* anim2;
	// TODO: CAnim 0xc is the length of the anim's root movement, the LHPoint at 0x10 (CAnim::field_0x8[1..4]).
	if (y_of_vector_product_2d(facing, delta) < 0.0f)
	{
		if (!(anim0 = GetAnim(C_MOVE_L_STEP_0, 0)) || !(anim1 = GetAnim(C_MOVE_L_STEP_90, 0)) ||
		    !(anim2 = GetAnim(C_MOVE_L_STEP_180, 0)))
		{
			InitialiseTurning(RequiredHeading);
			return 4;
		}
		anim0->field_0x8[1] = ((LHPoint*)&anim0->field_0x8[2])->GetNorme();
		anim1->field_0x8[1] = ((LHPoint*)&anim1->field_0x8[2])->GetNorme();
		anim2->field_0x8[1] = ((LHPoint*)&anim2->field_0x8[2])->GetNorme();
		field_0x521c = 1;
	}
	else
	{
		if (!(anim0 = GetAnim(C_MOVE_R_STEP_0, 0)) || !(anim1 = GetAnim(C_MOVE_R_STEP_90, 0)) ||
		    !(anim2 = GetAnim(C_MOVE_R_STEP_180, 0)))
		{
			InitialiseTurning(RequiredHeading);
			return 4;
		}
		anim0->field_0x8[1] = ((LHPoint*)&anim0->field_0x8[2])->GetNorme();
		anim1->field_0x8[1] = ((LHPoint*)&anim1->field_0x8[2])->GetNorme();
		anim2->field_0x8[1] = ((LHPoint*)&anim2->field_0x8[2])->GetNorme();
		field_0x521c = 2;
	}
	float distance = sqrt(delta.x * delta.x + delta.z * delta.z + delta.y * delta.y) / Size2;
	if (distance <= anim0->field_0x8[1] || distance <= anim1->field_0x8[1] || distance <= anim2->field_0x8[1])
	{
		if ((float)fabs(angle_correct(RequiredHeading - Heading)) < 0.2617994f)
		{
			CycleTime[0] = CycleTime[1] = 0;
			return 6;
		}
		InitialiseTurning(RequiredHeading);
		return 4;
	}
	CFrame* frame = GetAnim(C_MOVE_STAND, 0)->frames[0];
	CycleTime[0] = 0;
	float angle = angle_correct(RequiredHeading - Heading);
	if (angle < 0.0f)
	{
		angle = -angle;
	}
	if (angle < 1.5707964f)
	{
		Anim0x5220 = new (CREATURE_3D_FILE, 2799) CAnim(anim0, frame, anim1, frame, angle / 1.5707964f);
	}
	else
	{
		Anim0x5220 = new (CREATURE_3D_FILE, 2805) CAnim(anim1, frame, anim2, frame, (angle - 1.5707964f) / 1.5707964f);
	}
	long    frames = Anim0x5220->FrameCount - 1;
	float   scale = 1.0f / frames;
	float   angle2 = angle_correct(RequiredHeading - Heading);
	LHPoint direction(sin(angle2), 0.0f, -cos(angle2));
	LHPoint step = *(LHPoint*)&Anim0x5220->field_0x8[2] * scale;
	// TODO: CAnim::FrameOffset holds the anim duration here.
	Anim0x5220->FrameOffset = (long)(1000.0f * (Size2 * step.DotProduct(direction) / WalkSpeed * frames));
	return 5;
}

LHPoint* LH3DCreature::GetDestination()
{
	static LHPoint destination;
	destination.Set(RpFollow->field_0x64074.x, 0.0f, RpFollow->field_0x64074.y);
	return &destination;
}

bool32_t LH3DCreature::StartMovingToObject(Object* object, float param_2, float param_3, float param_4)
{
	if (!IsMovingOrStanding())
	{
		return true;
	}
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, pos);
	float range = GetNavRadius() + object->GetRoutePlanRadius(creature);
	param_2 += range;
	param_3 += range;
	return StartMovingToPoint(pos, param_2, param_3, param_4);
}

bool32_t LH3DCreature::StartMovingToPoint(const LHPoint& pos, float param_2, float param_3, float param_4)
{
	if (!IsMovingOrStanding())
	{
		return 1;
	}
	if (!IsDestinationValid(&pos))
	{
		return 0;
	}
	if (field_0x51ec)
	{
		return 1;
	}
	if (MoveState != LH3D_CREATURE_STATE_MOVING)
	{
		if (!IsDestinationValidForCreature(&position))
		{
			LHPoint validPos = position;
			SpiralCheckForValidPoint(&position, &validPos);
			SetPos(validPos);
		}
		Point2D currentPos(position.x, position.z);
		RpFollow->SetPos(currentPos, GetNavRadius());
		field_0x5190 = 0;
		field_0x573c = 3000;
		field_0x5740 = 0;
		field_0x5744 = 0;
		if (!creature || !creature->field_0x12a8)
		{
			field_0x519c = 1;
		}
	}
	else
	{
		Point2D  target(pos.x, pos.z);
		Point2D* currentDest = &RpFollow->field_0x64074;
		float    dx = target.x - currentDest->x;
		float    dz = target.y - currentDest->y;
		if (dz * dz + dx * dx < 0.01f)
		{
			return 4;
		}
		field_0x519c = 0;
	}
	float distance = position.GetDistance2D(pos) - 0.05f;
	param_3 = min(param_3, distance);
	if (param_2 < param_3 + 0.001f)
	{
		param_2 = param_3 + 0.001f;
	}
	LHPoint dest = pos;
	if (!GetAnim(C_MOVE_WALK, 0) || !GetAnim(C_MOVE_RUN, 0))
	{
		return 1;
	}
	Point2D destPoint(dest.x, dest.z);
	RpFollow->SetDest(destPoint, param_3, param_2, GetNavRadius(), param_4);
	MoveState = LH3D_CREATURE_STATE_MOVING;
	if (creature)
	{
		GLandscape::ConvertLandscapePointToMapCoord(dest, creature->field_0x1214);
		creature->field_0x1118 = 1;
	}
	return 4;
}

bool32_t LH3DCreature::StopMoving()
{
	field_0x4990 = GetStandardBreathTime();
	if (MoveState == LH3D_CREATURE_STATE_MOVING)
	{
		RpFollow->StopMoving();
		field_0x51b4 = 0;
		return true;
	}
	return false;
}

LHMatrix* LH3DCreature::GetSafeBuffer()
{
	return SafeBufferSelector ? SafeBuffer1 : SafeBuffer0;
}

bool32_t LH3DCreature::IsPerformingBodyAction()
{
	return MoveState != 0;
}

bool32_t LH3DCreature::IsMovingOrStanding()
{
	return MoveState >= 0 && MoveState <= 1;
}

bool32_t LH3DCreature::IsMoving() const
{
	return MoveState == 1;
}

bool32_t LH3DCreature::StartStaticAction(long action)
{
	long random = creature ? GRand::GameRand(2, CREATURE_3D_FILE, 2993) : GRand::LocalRand(2);
	return StartStaticAction(action, IsAnimationTimeModified ? 0 : random);
}

bool32_t LH3DCreature::StartConcurrentAction(long action)
{
	if (field_0x5738 == 0 && GetAnim(action, 0))
	{
		field_0x5738 = action;
		field_0x5734 = 0;
		return true;
	}
	return false;
}

bool32_t LH3DCreature::StartStaticAction(long action, int param_2)
{
	if (IsPerformingBodyAction() || !GetAnim(action - 1, 1) || !GetAnim(action, 1) || !GetAnim(action + 1, 1))
	{
		return false;
	}
	CurrentAnim = action;
	ReverseAnim = param_2;
	StateSet(LH3D_CREATURE_STATE_START_STATIC);
	return true;
}

bool32_t LH3DCreature::StartFighting(LH3DCreature* other, LHPoint& pos, float param_3)
{
	if (IsPerformingBodyAction() || !GetAnim(C_FIGHT_START, 0) || !GetAnim(C_FIGHT_STANCE, 0) ||
	    !GetAnim(C_FIGHT_FINISH, 0))
	{
		return false;
	}
	if (field_0x51ec)
	{
		return false;
	}
	ValidateFightPositions();
	InitialiseDestructionBones();
	FightCreature = other;
	field_0x4ac0 = 0;
	field_0x4b24 = 0;
	field_0x4b30 = 0;
	if (FightCreature)
	{
		TurningCompleted = 0;
		float heading = heading_from_direction_vector(FightCreature->GetPos() - position);
		InitialiseTurning(heading);
	}
	else
	{
		TurningCompleted = 1;
	}
	StateSet(LH3D_CREATURE_STATE_START_FIGHT);
	field_0x4ab8 = (int)Const_8cf0a8;
	ArenaCentre = pos;
	ArenaRadius = param_3;
	return true;
}

bool32_t LH3DCreature::StartSolitaryKissing()
{
	if (IsPerformingBodyAction() || !GetAnim(C_MISC_KISS_HI, 0) || !GetAnim(C_MISC_KISS_LO, 0))
	{
		return false;
	}
	KissFraction = 0.0f;
	StateSet(LH3D_CREATURE_STATE_KISSING);
	return true;
}

bool32_t LH3DCreature::StartKissing(LH3DCreature* other)
{
	if (IsPerformingBodyAction() || !GetAnim(C_MISC_KISS_HI, 0) || !GetAnim(C_MISC_KISS_LO, 0))
	{
		return false;
	}
	if (CanKissCreature(other))
	{
		StateSet(LH3D_CREATURE_STATE_KISSING);
		return true;
	}
	return false;
}

bool32_t LH3DCreature::EndFighting()
{
	FightCreature = NULL;
	if (MoveState == LH3D_CREATURE_STATE_START_FIGHT || MoveState == LH3D_CREATURE_STATE_FIGHT_MAIN ||
	    MoveState == LH3D_CREATURE_STATE_FIGHT || MoveState == LH3D_CREATURE_STATE_START_BLOCK ||
	    MoveState == LH3D_CREATURE_STATE_BLOCK || MoveState == LH3D_CREATURE_STATE_FINISH_BLOCK ||
	    MoveState == LH3D_CREATURE_STATE_START_FIGHT_CAST || MoveState == LH3D_CREATURE_STATE_FIGHT_CAST ||
	    MoveState == LH3D_CREATURE_STATE_FINISH_FIGHT_CAST)
	{
		CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
		if (mode)
		{
			mode->EndFightSoon(1);
		}
		if (creature)
		{
			creature->SetLife(creature->GetLife() - (1.0f - field_0x4aa8) * FightLifeLossScale);
		}
		field_0x5238 = 1;
		return true;
	}
	return false;
}

void LH3DCreature::SetField49a8(float value)
{
	field_0x49a8 = value;
}

float LH3DCreature::GetField49a8()
{
	return field_0x49a8;
}

bool32_t LH3DCreature::StartFightAction(long action, float param_2)
{
	field_0x49a4 = param_2 + 0.5f;
	if (MoveState != LH3D_CREATURE_STATE_FIGHT_MAIN || !GetAnim(action, 0))
	{
		return false;
	}
	if (!ForcedArenaStep && position.GetDistance2D(ArenaCentre) > ArenaEdgeFraction * ArenaRadius &&
	    (action == C_FIGHT_STEP_LEFT || action == C_FIGHT_STEP_RIGHT || action == C_FIGHT_STEP_BACK))
	{
		return false;
	}
	CurrentAnim = action;
	StateSet(LH3D_CREATURE_STATE_FIGHT);
	return true;
}

bool32_t LH3DCreature::StartFightRecoilAction(long action)
{
	if (IsRecoiling())
	{
		return false;
	}
	if (IsBlocking())
	{
		GetAnim(C_RECOIL_BLOCK, 1);
		CurrentAnim = C_RECOIL_BLOCK;
		StateSet(LH3D_CREATURE_STATE_BLOCK_RECOIL);
		return true;
	}
	switch (MoveState)
	{
	case LH3D_CREATURE_STATE_FIGHT_MAIN:
	case LH3D_CREATURE_STATE_FIGHT:
	case LH3D_CREATURE_STATE_START_FIGHT_CAST:
	case LH3D_CREATURE_STATE_FIGHT_CAST:
	case LH3D_CREATURE_STATE_FINISH_FIGHT_CAST:
		GetAnim(action, 1);
		CurrentAnim = action;
		StateSet(LH3D_CREATURE_STATE_FIGHT);
		return true;
	}
	return false;
}

bool32_t LH3DCreature::StartDanceAction(long action)
{
	if (IsPerformingBodyAction() || !GetAnim(C_DANCE_START, 1) || !GetAnim(C_DANCE_A, 1) || !GetAnim(C_DANCE_FINISH, 1))
	{
		return false;
	}
	SetDanceAnimTime(action);
	StateSet(LH3D_CREATURE_STATE_START_DANCE);
	return true;
}

bool32_t LH3DCreature::SetDanceAnimTime(int time)
{
	SetAnimTime(C_DANCE_A, time);
	return true;
}

bool32_t LH3DCreature::EndStaticAction()
{
	if (MoveState == LH3D_CREATURE_STATE_DO_STATIC)
	{
		StateSet(LH3D_CREATURE_STATE_FINISH_STATIC);
		return true;
	}
	if (MoveState == LH3D_CREATURE_STATE_START_STATIC)
	{
		field_0x5238 = 1;
		return true;
	}
	return false;
}

bool32_t LH3DCreature::EndDanceAction()
{
	if (MoveState == LH3D_CREATURE_STATE_DO_DANCE)
	{
		StateSet(LH3D_CREATURE_STATE_FINISH_DANCE);
		return true;
	}
	if (MoveState == LH3D_CREATURE_STATE_START_DANCE)
	{
		field_0x5238 = 1;
		return true;
	}
	return false;
}

bool32_t LH3DCreature::PointAt(LHPoint* pos, bool param_2)
{
	if (IsPerformingBodyAction() && !param_2)
	{
		return false;
	}
	if (!GetAnim(C_POINT_LO_LEFT, 1) || !GetAnim(C_POINT_LO_RIGHT, 1) || !GetAnim(C_POINT_HI_LEFT, 1) ||
	    !GetAnim(C_POINT_HI_RIGHT, 1))
	{
		return false;
	}
	PointPoint = *pos;
	float heading = heading_from_direction_vector(PointPoint - *GetHeadPos());
	float angle = angle_correct(heading - Heading);
	if ((float)fabs(angle) < PI_F * 0.15f)
	{
		TurningCompleted = 1;
		if (HeldObject)
		{
			ReverseAnim = field_0x5230 == 0;
		}
		else
		{
			ReverseAnim = angle > 0.0f;
		}
	}
	else
	{
		InitialiseTurning(heading);
		TurningCompleted = 0;
	}
	if (param_2)
	{
		field_0x5190 = 2;
		CycleTime[0] = 0;
	}
	else
	{
		StateSet(LH3D_CREATURE_STATE_POINTING);
	}
	return true;
}

void LH3DCreature::UpdatePointPoint(LHPoint* pos)
{
	PointPoint = *pos;
}

void LH3DCreature::StopPointing()
{
	if (MoveState == LH3D_CREATURE_STATE_POINTING)
	{
		MoveState = LH3D_CREATURE_STATE_FINISH_POINTING;
	}
}

bool32_t LH3DCreature::StartIndividualAction(long action)
{
	return StartIndividualAction(
		action,
		HeldObject ? field_0x5230 == 0 : (creature ? GRand::GameRand(2, CREATURE_3D_FILE, 3338) : GRand::LocalRand(2)));
}

bool32_t LH3DCreature::StartIndividualAction(long action, int param_2)
{
	if (IsPerformingBodyAction() || !GetAnim(action, 1))
	{
		return false;
	}
	CurrentAnim = action;
	ReverseAnim = param_2;
	StateSet(LH3D_CREATURE_STATE_INDIVIDUAL);
	return true;
}

bool32_t LH3DCreature::ForceIndividualAction(long action)
{
	return ForceIndividualAction(action, creature ? GRand::GameRand(2, CREATURE_3D_FILE, 3361) : GRand::LocalRand(2));
}

bool32_t LH3DCreature::ForceIndividualAction(long action, int param_2)
{
	if (!GetAnim(action, 1))
	{
		return false;
	}
	CurrentAnim = action;
	ReverseAnim = param_2;
	StateSet(LH3D_CREATURE_STATE_INDIVIDUAL);
	return true;
}

float LH3DCreature::GetBodyActionFraction()
{
	CAnim* anim = GetAnim(CurrentAnim, 0);
	// TODO: CAnim::FrameOffset is the signed animation length; drop the cast once LH3DAnim.h types it as long.
	return (float)CycleTime[0] / (long)anim->FrameOffset;
}

bool32_t LH3DCreature::StartObjectKeepAction(long action)
{
	if (!HeldObject || IsPerformingBodyAction() || !GetAnim(action, 1))
	{
		return false;
	}
	CurrentAnim = action;
	StateSet(LH3D_CREATURE_STATE_OBJECT_KEEP);
	ReverseAnim = field_0x5230;
	return true;
}

bool32_t LH3DCreature::StartDeathAction(long action)
{
	return StartDeathAction(action, creature ? GRand::GameRand(2, CREATURE_3D_FILE, 3403) : GRand::LocalRand(2));
}

bool32_t LH3DCreature::StartDeathAction(long action, int param_2)
{
	if (!GetAnim(action, 1) || IsDying() || IsActuallyDead())
	{
		return false;
	}
	Point2D pos(position.x, position.z);
	RpFollow->SetPos(pos, GetNavRadius());
	field_0x5190 = 0;
	if (Anim0x5220)
	{
		delete Anim0x5220;
		Anim0x5220 = NULL;
	}
	CurrentAnim = action;
	ReverseAnim = param_2;
	StateSet(LH3D_CREATURE_STATE_DEATH);
	return true;
}

bool32_t LH3DCreature::IsDying()
{
	return MoveState == 0x1e;
}

bool32_t LH3DCreature::IsActuallyDead()
{
	return MoveState == 0x24;
}

bool32_t LH3DCreature::Resurrect()
{
	if (MoveState == LH3D_CREATURE_STATE_DEATH || MoveState == LH3D_CREATURE_STATE_DEAD)
	{
		CurrentAnim = C_FIGHT_EXTRA_GET_UP;
		GetAnim(C_FIGHT_EXTRA_GET_UP, 1);
		StateSet(LH3D_CREATURE_STATE_RESURRECT);
		return true;
	}
	return false;
}

bool32_t LH3DCreature::StartObjectRemoveAction(long action)
{
	ValidateRemovePositions();
	if (IsPerformingBodyAction() || !GetAnim(action, 0) || !HeldObject)
	{
		return false;
	}
	CurrentAnim = action;
	StateSet(LH3D_CREATURE_STATE_OBJECT_REMOVE);
	ReverseAnim = field_0x5230;
	return true;
}

// Names of the physical actions for the creature statistics display ("PhysicalAction: %s" in
// Creature::DisplayStatistics). The list predates most of LH3D_CREATURE_STATE and only matches it up to
// FINISH_DANCE.
char PhysicalActionNames[38][64] = {
	"Standing",    "Moving",     "StartStatic", "DoStatic",     "FinishStatic", "StartDance", "DoDance",
	"FinishDance", "Individual", "ObjectKeep",  "ObjectRemove", "Throwing",     "PickingUp",  "Destruction",
	"StartFight",  "FightMain",  "Fight",       "FinishFight",  "Death",        "Turning",    "Dead",
};

void LH3DCreature::StateSet(long state)
{
	int i;
	MoveState = state;
	switch (state)
	{
	case LH3D_CREATURE_STATE_STANDING:
		for (i = 0; i < 4; i++)
		{
			CycleAnim[i] = NULL;
			CycleWeight[i] = 0.0f;
		}
		field_0x5730 = 0;
		CurrentSpeed = 0.0f;
		if (field_0x523c)
		{
			field_0x523c = 0;
			StartTurningAction(EventualHeading);
		}
		CurrentAnim = 0;
		ClearField5044();
		break;
	case LH3D_CREATURE_STATE_MOVING:
		CycleTime[1] = 0;
		break;
	case LH3D_CREATURE_STATE_DO_DANCE:
		do
		{
			CurrentAnim = GRand::GameRand(7, CREATURE_3D_FILE, 3516) + C_DANCE_A;
		} while (!GetAnim(CurrentAnim, 0));
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_START_BLOCK:
		GetAnim(C_FIGHT_START_BLOCK, 1);
		GetAnim(C_FIGHT_BLOCK, 1);
		FightMove = 0;
		CycleTime[0] = 0;
		field_0x5238 = 0;
		break;
	case LH3D_CREATURE_STATE_START_FIGHT_CAST:
		StartDestruction();
		GetAnim(C_FIGHT_EXTRA_START_CAST, 1);
		GetAnim(C_FIGHT_EXTRA_CAST, 1);
		FightMove = 0;
		CycleTime[0] = 0;
		field_0x5238 = 0;
		break;
	case LH3D_CREATURE_STATE_START_FIGHT:
		StartDestruction();
		FightMove = 0;
		CycleTime[0] = 0;
		field_0x5238 = 0;
		break;
	case LH3D_CREATURE_STATE_START_STATIC:
	case LH3D_CREATURE_STATE_START_DANCE:
		if (CurrentAnim == C_STATIC_SLEEP)
		{
			InitialiseDestructionBones();
			StartDestruction();
		}
		CycleTime[0] = 0;
		field_0x5238 = 0;
		break;
	case LH3D_CREATURE_STATE_FIGHT:
		StartDestruction();
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_BLOCK:
		GetAnim(C_FIGHT_BLOCK, 1);
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_FINISH_BLOCK:
		GetAnim(C_FIGHT_END_BLOCK, 1);
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_FIGHT_CAST:
		GetAnim(C_FIGHT_EXTRA_CAST, 1);
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_FINISH_FIGHT_CAST:
		GetAnim(C_FIGHT_EXTRA_END_CAST, 1);
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_FINISH_STATIC:
		if (CurrentAnim == C_STATIC_SLEEP)
		{
			field_0x5460 = 2;
			InitialiseDestructionBones();
			StartDestruction();
		}
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_DEATH:
		InitialiseDestructionBones();
		StartDestruction();
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_DO_STATIC:
		if (CurrentAnim == C_STATIC_SLEEP)
		{
			field_0x5460 = 1;
			ClearField5044();
		}
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_FINISH_DANCE:
	case LH3D_CREATURE_STATE_POINTING:
	case LH3D_CREATURE_STATE_INDIVIDUAL:
	case LH3D_CREATURE_STATE_OBJECT_KEEP:
	case LH3D_CREATURE_STATE_OBJECT_REMOVE:
	case LH3D_CREATURE_STATE_PICK_UP_FROM_HAND:
	case LH3D_CREATURE_STATE_KISSING:
	case LH3D_CREATURE_STATE_KICKING:
	case LH3D_CREATURE_STATE_CATCH_MAIN:
	case LH3D_CREATURE_STATE_CATCH_STEP:
	case LH3D_CREATURE_STATE_FINISH_FIGHT:
	case LH3D_CREATURE_STATE_BLOCK_RECOIL:
	case LH3D_CREATURE_STATE_TURNING:
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_RESURRECT:
		field_0x5460 = 2;
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_FIGHT_MAIN:
		CurrentAnim = 0;
		CycleTime[0] = 0;
		ClearField5044();
		break;
	case LH3D_CREATURE_STATE_THROWING:
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_CATCH_ACTION:
		field_0x5230 = ReverseAnim;
		ObjectActionStatus = 1;
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_PICKING_UP:
	case LH3D_CREATURE_STATE_DESTRUCTION:
		ObjectActionStatus = 1;
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_CREATION:
		CycleTime[0] = 0;
		break;
	case LH3D_CREATURE_STATE_DEAD:
		ClearField5044();
		field_0x5460 = 1;
		break;
	}
}

void LH3DCreature::StateSwitch()
{
	// Moves on to the next physical state once the current state's animation would run past its end this frame
	// (field_0x5238 asks for the finishing phase instead of the looping one).
	switch (MoveState)
	{
	case LH3D_CREATURE_STATE_START_DANCE:
		CycleAnim[0] = GetAnim(C_DANCE_START, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_DANCE_START, CycleTime[0], AnimTimeInc);
			if (field_0x5238)
			{
				StateSet(LH3D_CREATURE_STATE_FINISH_DANCE);
			}
			else
			{
				StateSet(LH3D_CREATURE_STATE_DO_DANCE);
			}
		}
		break;
	case LH3D_CREATURE_STATE_START_BLOCK:
		CycleAnim[0] = GetAnim(C_FIGHT_START_BLOCK, 0);
		if (CycleTime[0] + (long)(GetFightMul() * IntTimeInc) >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_FIGHT_START_BLOCK, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
			if (field_0x5238)
			{
				StateSet(LH3D_CREATURE_STATE_FINISH_BLOCK);
			}
			else
			{
				StateSet(LH3D_CREATURE_STATE_BLOCK);
			}
		}
		break;
	case LH3D_CREATURE_STATE_START_FIGHT_CAST:
		CycleAnim[0] = GetAnim(CurrentAnim - 1, 0);
		if (CycleTime[0] + (long)(GetFightMul() * IntTimeInc) >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim - 1, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
			if (field_0x5238)
			{
				StateSet(LH3D_CREATURE_STATE_FINISH_FIGHT_CAST);
			}
			else
			{
				if (creature && FightCreature)
				{
					if (creature->arena)
					{
						creature->arena->SetSpellSelection((MAGIC_TYPE)field_0x4b28, creature, false);
					}
					if (GMagicEffectInfo::GetInfo()[field_0x4b28].field_0xf0)
					{
						creature->CastSpellOnObject((MAGIC_TYPE)field_0x4b28, FightCreature->creature, 2.0f, 0);
					}
					else if (GMagicEffectInfo::GetInfo()[field_0x4b28].field_0xf4)
					{
						creature->CastSpellOnObject((MAGIC_TYPE)field_0x4b28, creature, 2.0f, 0);
					}
				}
				field_0x4b2c = 0;
				StateSet(LH3D_CREATURE_STATE_FIGHT_CAST);
			}
		}
		break;
	case LH3D_CREATURE_STATE_FINISH_FIGHT_CAST:
		CycleAnim[0] = GetAnim(CurrentAnim + 1, 0);
		if (CycleTime[0] + (long)(GetFightMul() * IntTimeInc) >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim + 1, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
			CurrentAnim = 0;
			StateSet(LH3D_CREATURE_STATE_FIGHT_MAIN);
			if (field_0x579c != 2)
			{
				CheckFightQueue();
			}
		}
		break;
	case LH3D_CREATURE_STATE_START_STATIC:
		CycleAnim[0] = GetAnim(CurrentAnim - 1, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim - 1, CycleTime[0], AnimTimeInc);
			if (field_0x5238)
			{
				StateSet(LH3D_CREATURE_STATE_FINISH_STATIC);
			}
			else
			{
				StateSet(LH3D_CREATURE_STATE_DO_STATIC);
			}
		}
		break;
	case LH3D_CREATURE_STATE_START_FIGHT:
		if (TurningCompleted)
		{
			CycleAnim[0] = GetAnim(C_FIGHT_START, 0);
			if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
			{
				AdvanceSimple(C_FIGHT_START, CycleTime[0], AnimTimeInc);
				if (field_0x5238)
				{
					StateSet(LH3D_CREATURE_STATE_FINISH_FIGHT);
				}
				else
				{
					StateSet(LH3D_CREATURE_STATE_FIGHT_MAIN);
				}
			}
		}
		break;
	case LH3D_CREATURE_STATE_DO_STATIC:
		if (field_0x5238)
		{
			StateSet(LH3D_CREATURE_STATE_FINISH_STATIC);
		}
		break;
	case LH3D_CREATURE_STATE_BLOCK:
		if (field_0x5238)
		{
			StateSet(LH3D_CREATURE_STATE_FINISH_BLOCK);
		}
		break;
	case LH3D_CREATURE_STATE_FIGHT_CAST:
		field_0x4b2c += IntTimeInc;
		if (field_0x5238 || field_0x4b2c > 2.0f)
		{
			if (creature)
			{
				creature->DestroySpell();
			}
			StateSet(LH3D_CREATURE_STATE_FINISH_FIGHT_CAST);
		}
		break;
	case LH3D_CREATURE_STATE_FIGHT_MAIN:
		if (field_0x5238)
		{
			StateSet(LH3D_CREATURE_STATE_FINISH_FIGHT);
		}
		break;
	case LH3D_CREATURE_STATE_CATCH_MAIN:
		if (field_0x5238 && TurningCompleted)
		{
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_CATCH_STEP:
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim, CycleTime[0], AnimTimeInc);
			StateSet(LH3D_CREATURE_STATE_CATCH_MAIN);
		}
		break;
	case LH3D_CREATURE_STATE_CATCH_ACTION:
		CycleAnim[0] = GetAnim(C_CATCH_LO_L, 0);
		if (ObjectActionStatus == 1 || ObjectActionStatus == 3)
		{
			if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
			{
				AdvanceSimple(C_CATCH_LO_L, CycleTime[0], AnimTimeInc);
				StateSet(LH3D_CREATURE_STATE_STANDING);
			}
		}
		else if (CycleTime[0] < AnimTimeInc)
		{
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_DO_DANCE: {
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		long duration = CycleAnim[0]->FrameOffset;
		if (CycleTime[0] + IntTimeInc >= duration)
		{
			do
			{
				CurrentAnim = GRand::GameRand(5, CREATURE_3D_FILE, 3863) + C_DANCE_A;
			} while (!GetAnim(CurrentAnim, 0));
			long newDuration = GetAnim(CurrentAnim, 0)->FrameOffset;
			CycleTime[0] -= duration;
			CycleTime[0] += newDuration;
		}
		break;
	}
	case LH3D_CREATURE_STATE_FINISH_STATIC:
		CycleAnim[0] = GetAnim(CurrentAnim + 1, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim + 1, CycleTime[0], AnimTimeInc);
			CurrentAnim = 0;
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_FINISH_BLOCK:
		CycleAnim[0] = GetAnim(C_FIGHT_END_BLOCK, 0);
		if (CycleTime[0] + (long)(GetFightMul() * IntTimeInc) >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_FIGHT_END_BLOCK, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
			CurrentAnim = 0;
			StateSet(LH3D_CREATURE_STATE_FIGHT_MAIN);
			if (field_0x579c != 2)
			{
				CheckFightQueue();
			}
		}
		break;
	case LH3D_CREATURE_STATE_FINISH_FIGHT:
		CycleAnim[0] = GetAnim(C_FIGHT_FINISH, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_FIGHT_FINISH, CycleTime[0], AnimTimeInc);
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_FINISH_DANCE:
		CycleAnim[0] = GetAnim(C_DANCE_FINISH, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_DANCE_FINISH, CycleTime[0], AnimTimeInc);
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_POINTING:
	case LH3D_CREATURE_STATE_FINISH_POINTING:
		if (TurningCompleted)
		{
			CycleAnim[0] = GetAnim(C_POINT_HI_LEFT, 0);
			if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
			{
				AdvanceSimple(C_POINT_HI_LEFT, CycleTime[0], AnimTimeInc);
				StateSet(LH3D_CREATURE_STATE_STANDING);
			}
		}
		break;
	case LH3D_CREATURE_STATE_INDIVIDUAL:
	case LH3D_CREATURE_STATE_OBJECT_KEEP:
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim, CycleTime[0], AnimTimeInc);
			CurrentAnim = 0;
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_KISSING:
		CycleAnim[0] = GetAnim(C_MISC_KISS_HI, 0);
		if (CycleTime[0] + IntTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_MISC_KISS_HI, CycleTime[0], IntTimeInc);
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_KICKING:
		CycleAnim[0] = GetAnim(C_DESTROY_KICK_LOW, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_DESTROY_KICK_LOW, CycleTime[0], AnimTimeInc);
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_BLOCK_RECOIL:
		CycleAnim[0] = GetAnim(C_RECOIL_BLOCK, 0);
		if (CycleTime[0] + (long)(GetFightMul() * IntTimeInc) >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_RECOIL_BLOCK, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
			StateSet(LH3D_CREATURE_STATE_BLOCK);
		}
		break;
	case LH3D_CREATURE_STATE_FIGHT:
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		if (CycleTime[0] + (long)(GetFightMul() * IntTimeInc) >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
			StateSet(LH3D_CREATURE_STATE_FIGHT_MAIN);
			if (field_0x579c != 2)
			{
				CheckFightQueue();
			}
		}
		break;
	case LH3D_CREATURE_STATE_THROWING:
		if (TurningCompleted)
		{
			float highSlope = ThrowYH / ThrowZH;
			float lowSlope = ThrowYL / ThrowZL;
			float slope = ThrowYR / ThrowZR;
			CycleAnim[0] = GetAnim(C_THROW_HURL_FLAT, 0);
			CycleAnim[1] = GetAnim(C_THROW_HURL_HIGH, 0);
			CycleWeight[1] = (slope - lowSlope) / (highSlope - lowSlope);
			CycleWeight[0] = 1.0f - CycleWeight[1];
			long inc =
				(long)(1.6f * IntTimeInc * ThrowZR / (Size2 * (CycleWeight[0] * ThrowZL + CycleWeight[1] * ThrowZH)));
			long diff = abs(CycleTime[0] - ThrowTime);
			if (diff > 400.0f)
			{
				diff = 400;
			}
			long step = (long)((diff / 400.0f) * (AnimTimeInc - inc) + inc);
			if (CycleTime[0] + step >= (long)CycleAnim[0]->FrameOffset)
			{
				AdvanceSimple(C_THROW_HURL_FLAT, CycleTime[0], step);
				StateSet(LH3D_CREATURE_STATE_STANDING);
			}
		}
		break;
	case LH3D_CREATURE_STATE_OBJECT_REMOVE:
		// Same as INDIVIDUAL/OBJECT_KEEP; its own case here on Mac, merged into theirs by MSVC.
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim, CycleTime[0], AnimTimeInc);
			CurrentAnim = 0;
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_PICK_UP_FROM_HAND:
		CycleAnim[0] = GetAnim(C_PICKUP_FROM_HAND, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim, CycleTime[0], AnimTimeInc);
			CurrentAnim = 0;
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_PICKING_UP:
	case LH3D_CREATURE_STATE_DESTRUCTION:
		if (TurningCompleted)
		{
			long anim = MoveState == LH3D_CREATURE_STATE_PICKING_UP ? C_PICKUP_FRONT_RIGHT : C_DESTROY_FRONT_RIGHT;
			CycleAnim[0] = GetAnim(anim, 0);
			if (ObjectActionStatus == 1 || ObjectActionStatus == 3)
			{
				if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
				{
					AdvanceSimple(anim, CycleTime[0], AnimTimeInc);
					StateSet(LH3D_CREATURE_STATE_STANDING);
				}
			}
			else if (CycleTime[0] < AnimTimeInc)
			{
				StateSet(LH3D_CREATURE_STATE_STANDING);
			}
		}
		break;
	case LH3D_CREATURE_STATE_DEATH:
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim, CycleTime[0], AnimTimeInc);
			StateSet(LH3D_CREATURE_STATE_DEAD);
		}
		break;
	case LH3D_CREATURE_STATE_RESURRECT:
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(CurrentAnim, CycleTime[0], AnimTimeInc);
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	case LH3D_CREATURE_STATE_TURNING:
		if (fabs(Heading - RequiredHeading) < 0.0001f)
		{
			Heading = RequiredHeading;
			StateSet(LH3D_CREATURE_STATE_STANDING);
			if (Anim0x5220)
			{
				delete Anim0x5220;
				Anim0x5220 = NULL;
			}
		}
		break;
	case LH3D_CREATURE_STATE_CREATION:
		CycleAnim[0] = GetAnim(C_FIGHT_EXTRA_CREATION, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_FIGHT_EXTRA_CREATION, CycleTime[0], AnimTimeInc);
			StateSet(LH3D_CREATURE_STATE_STANDING);
		}
		break;
	default:
		// Needed for the layout: without it the shared FIGHT_MAIN/CheckFightQueue tail of FINISH_FIGHT_CAST is
		// merged forward into FIGHT's copy instead of the other way round.
		break;
	}
}

float LH3DCreature::CalculateMaximumActionRange(long action)
{
	// The stored constant is -0.39999998f (0xbecccccc), one ulp short of -0.4f.
	float    weights[4] = {-0.39999998f, -0.39999998f, 0.9f, 0.9f};
	LHPoint  range(0.0f, 0.0f, 0.0f);
	LHPoint* positions;
	switch (action)
	{
	case LH3D_CREATURE_STATE_PICKING_UP:
		ValidatePickUpPositions();
		positions = field_0x49c8;
		break;
	case LH3D_CREATURE_STATE_DESTRUCTION:
		ValidateDestructionPositions();
		positions = field_0x4a44;
		break;
	}
	for (int i = 0; i < 4; i++)
	{
		float scale = Size2 * weights[i];
		range += positions[i] * scale;
	}
	return sqrt(range.GetNorm());
}

float LH3DCreature::CalculateAverageActionRange(long action)
{
	LHPoint* positions;
	switch (action)
	{
	case LH3D_CREATURE_STATE_PICKING_UP:
		ValidatePickUpPositions();
		positions = field_0x49c8;
		break;
	case LH3D_CREATURE_STATE_DESTRUCTION:
		ValidateDestructionPositions();
		positions = field_0x4a44;
		break;
	}
	float range = 0.0f;
	for (int i = 0; i < 4; i++)
	{
		range -= Size2 * positions[i].z;
	}
	return range * 0.25f;
}

long LH3DCreature::GetBlendedActionStatus(Object* object, LHPoint* pos, long action)
{
	// Returns 0 when the blended action can start from here, otherwise 1 with the point to walk to in *pos (for a
	// moving Living, where it will be by the time the creature gets there, refined twice).
	ValidatePickUpPositions();
	LHPoint objectPos;
	GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, objectPos);
	LHPoint offset = objectPos - position;
	float   distance = range_2d(offset);
	if (MoveState == LH3D_CREATURE_STATE_MOVING)
	{
		if (distance < CalculateAverageActionRange(action))
		{
			return 0;
		}
	}
	else
	{
		float heading;
		if (distance < CalculateMaximumActionRange(action) || IsInRangeImmediately(objectPos, action, &heading))
		{
			return 0;
		}
	}
	Living* living = dynamic_cast<Living*>(object);
	if (living && living->IsMoving())
	{
		float speed = RequiredSpeed * RunSpeed;
		// The Mac multiplies by 15 and then by 2; MSVC folds the constants (written as one chain, not 30 * Size1).
		float maxTravel = 15.0f * Size1 * 2.0f;
		float travel = min(range_2d(objectPos, position), maxTravel);
		float brakeDistance = min(travel, speed * speed / (2.0f * Acceleration));
		AddToVectorOfMovingLiving(living, (travel - brakeDistance) / speed + speed / Acceleration, &objectPos);
		travel = min(range_2d(objectPos, position), maxTravel);
		AddToVectorOfMovingLiving(living, (travel - brakeDistance) / speed + speed / Acceleration, &objectPos);
	}
	pos->Set(objectPos);
	return 1;
}

bool32_t LH3DCreature::IsInRangeImmediately(LHPoint& pos, long action, float* heading)
{
	// The four hand positions are the back-left, back-right, front-left and front-right reach of the blended pick-up
	// or destruction animations. The action can start from here if the target lies close enough to the quad they span
	// (for the normal or the mirrored, left-handed, version, whichever centre is nearer); *heading gets the turn that
	// faces the chosen centre towards the target.
	LHPoint centre;
	centre.SetNull();
	LHPoint* positions = action == LH3D_CREATURE_STATE_PICKING_UP ? field_0x49c8 : field_0x4a44;
	LHPoint  scaled[4];
	for (int i = 0; i < 4; i++)
	{
		scaled[i] = positions[i] * Size2;
		centre += scaled[i];
	}
	centre *= 0.25f;
	LHPoint mirrored(-centre.x, centre.y, centre.z);
	LHPoint relative;
	GetRelativePosition(pos, &relative);
	bool32_t mirror = range_2d(relative, mirrored) < range_2d(relative, centre);
	// Blend factors between the back pair, the front pair, and back to front.
	float backBlend;
	float frontBlend;
	float depthBlend;
	GetMultipliers(&backBlend, &frontBlend, &depthBlend, relative, action, mirror);
	if (action == LH3D_CREATURE_STATE_PICKING_UP)
	{
		field_0x5230 = mirror;
	}
	else
	{
		field_0x5234 = mirror;
	}
	float centreHeading = heading_from_direction_vector(mirror ? mirrored : centre);
	float targetHeading = heading_from_direction_vector(pos - position);
	*heading = targetHeading - centreHeading;
	return backBlend > -0.5f && backBlend < 1.5f && frontBlend > -0.5f && frontBlend < 1.5f && depthBlend > -0.8f &&
	       depthBlend < 1.8f;
}

void LH3DCreature::BeCut(LHPoint& pos, LHPoint& direction, long type, long sub_type)
{
	LHPoint dir = direction;
	dir.SetSize(1.0f);
	MeshIntersect intersect;
	LH3DMesh*     mesh = meshes[CurrentMesh];
	if (intersect.GetNearestIntersection(mesh, GetSafeBuffer(), &pos, &dir, false, NULL, NULL, true))
	{
		ApplyBruise(&intersect, type, sub_type);
		switch (type)
		{
		case 2:
		case 3:
		case 5: {
			// These wounds keep bleeding: take a free slot (its timer has run out).
			long index = -1;
			for (long i = 0; i < 8 && index == -1; i++)
			{
				if (field_0x53e8[i] >= 12000)
				{
					index = i;
				}
			}
			if (index != -1)
			{
				// Dead in both builds (the Mac build still evaluates the normalisation's tests); the slot probably
				// stored the bleeding direction once.
				LHPoint bleedDirection = direction;
				bleedDirection.SetSize(1.0f);
				BloodIntersections[index] = intersect;
				field_0x53e8[index] = 0;
			}
			break;
		}
		}
	}
}

void LH3DCreature::DrawTestTattoo(long slot)
{
	Morphable::MorphTexture();
	if (field_0x569c[slot])
	{
		TattooInfo info;
		info.Red = 0xff;
		info.Green = 0xff;
		info.Blue = 0xff;
		info.Type = 0;
		info.Slot = slot;
		// A 64x64 white image with an "L" in it, with its four mip levels.
		static unsigned char* testImage = NULL;
		if (!testImage)
		{
			testImage = new (CREATURE_3D_FILE, 4373) unsigned char[0x1550];
			memset(testImage, 0xff, 0x1550);
			long offset = 0;
			for (long level = 0; level < 5; level++)
			{
				for (long i = 4; i < 60; i++)
				{
					testImage[offset + (i >> level) * (64 >> level) + (4 >> level)] = 0;
					testImage[offset + (i >> level) * (64 >> level) + (5 >> level)] = 0;
					testImage[offset + (i >> level) * (64 >> level) + (6 >> level)] = 0;
					testImage[offset + (i >> level) * (64 >> level) + (7 >> level)] = 0;
					if (i < 30)
					{
						testImage[offset + (59 >> level) * (64 >> level) + (i >> level)] = 0;
						testImage[offset + (58 >> level) * (64 >> level) + (i >> level)] = 0;
						testImage[offset + (57 >> level) * (64 >> level) + (i >> level)] = 0;
						testImage[offset + (56 >> level) * (64 >> level) + (i >> level)] = 0;
					}
				}
				offset += (64 >> level) * (64 >> level);
			}
		}
		// TODO: LH3DMesh::skins is an array of texture pointers (LH3DTexture**); drop the cast once it is.
		GTattoo::Draw(field_0x56bc[slot], field_0x56dc[slot],
		              ((LH3DTexture**)meshes[CurrentMesh]->skins)[TattooPositions[slot].Skin], TattooPositions[slot].X,
		              TattooPositions[slot].Y, field_0x56fc[slot], 1, &info, 0, testImage);
	}
}

void LH3DCreature::ApplyBruise(MeshIntersect* intersect, long type, long sub_type)
{
	TextureRef ref;
	intersect->GetTextureRef(meshes[CurrentMesh], &ref);
	ref.Type = type;
	ref.SubType = sub_type;
	ref.Flags = 3;
	ref.DrawCutAroundIntersectionPoint(meshes[CurrentMesh], 0.0f);
	LH3DCreatureDamage* damage = Damage;
	if (damage->NumBruises < 0x400)
	{
		damage->Bruises[damage->NumBruises++] = ref;
	}
	else
	{
		int           maxAge = 0;
		unsigned long oldest = 0;
		for (unsigned long i = 0; i < 0x400; i++)
		{
			if (damage->Bruises[i].Age > maxAge)
			{
				maxAge = damage->Bruises[i].Age;
				oldest = i;
			}
		}
		damage->Bruises[oldest] = ref;
	}
}

float LH3DCreature::GetHeadHeight()
{
	LHPoint pos = *GetHeadPos();
	return pos.y - GetAltitude(pos);
}

void LogCurrentBufferMatrixes(LHMatrix* matrices, int count, long param_3) {}

bool32_t LH3DCreature::CheckKeepInArenaRule()
{
	if (FightCreature->position.GetDistance2D(ArenaCentre) < ArenaEdgeFraction * ArenaRadius &&
	    position.GetDistance2D(ArenaCentre) < ArenaEdgeFraction * ArenaRadius)
	{
		return false;
	}
	if (MoveState == LH3D_CREATURE_STATE_BLOCK)
	{
		StateSet(LH3D_CREATURE_STATE_FINISH_BLOCK);
	}
	else if (MoveState == LH3D_CREATURE_STATE_FIGHT_MAIN)
	{
		LHPoint toCentre = ArenaCentre - position;
		float   distance = toCentre.GetNorme();
		float   radius = field_0x5228;
		if (distance > radius)
		{
			// Step back towards the centre, in whichever of the four step directions points at it most.
			LHMatrix rotation;
			rotation.SetRotationY(-Heading);
			ForcedArenaStep = true;
			LHPoint local;
			local.x = toCentre.x * rotation._11 + toCentre.y * rotation._21 + toCentre.z * rotation._31;
			local.z = toCentre.x * rotation._13 + toCentre.y * rotation._23 + toCentre.z * rotation._33;
			if (1.5f * (float)fabs(local.x) > (float)fabs(local.z))
			{
				if (local.x < 0.0f)
				{
					StartFightAction(C_FIGHT_STEP_RIGHT, 0.0f);
				}
				else
				{
					StartFightAction(C_FIGHT_STEP_LEFT, 0.0f);
				}
			}
			else if (local.z < 0.0f)
			{
				StartFightAction(C_FIGHT_STEP_FORWARD, 0.0f);
			}
			else
			{
				StartFightAction(C_FIGHT_STEP_BACK, 0.0f);
			}
			ForcedArenaStep = false;
		}
	}
	return true;
}

void LH3DCreature::StateAction()
{
	field_0x4988 += FloatTimeInc / field_0x498c;
	field_0x4988 -= (long)field_0x4988;
	switch (MoveState)
	{
	case LH3D_CREATURE_STATE_STANDING:
		DoStandingAction();
		break;
	case LH3D_CREATURE_STATE_MOVING:
		DoMovingAction();
		break;
	case LH3D_CREATURE_STATE_START_STATIC:
		CycleAnim[0] = GetAnim(CurrentAnim - 1, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(CurrentAnim - 1, CycleTime[0], AnimTimeInc);
		break;
	case LH3D_CREATURE_STATE_START_BLOCK:
	case LH3D_CREATURE_STATE_START_FIGHT_CAST:
		CycleAnim[0] = GetAnim(CurrentAnim - 1, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(CurrentAnim - 1, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
		break;
	case LH3D_CREATURE_STATE_BLOCK:
		if (field_0x579c == 1)
		{
			field_0x4ab8 -= IntTimeInc;
			if (field_0x4ab8 < 0)
			{
				field_0x579c = 2;
			}
		}
		CycleAnim[0] = GetAnim(C_FIGHT_BLOCK, 0);
		CycleTime[0] = AdvanceCyclic(C_FIGHT_BLOCK, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
		CycleWeight[0] = 1.0f;
		if (FightCreature)
		{
			float heading = heading_from_direction_vector(FightCreature->GetPos() - position);
			Heading = angle_correct(heading);
			if (!CheckKeepInArenaRule())
			{
				if (field_0x579c != 2)
				{
					CheckFightQueue();
				}
				else if (GRand::GameRand(8, CREATURE_3D_FILE, 4568) == 1)
				{
					StateSet(LH3D_CREATURE_STATE_FINISH_BLOCK);
				}
			}
		}
		break;
	case LH3D_CREATURE_STATE_FIGHT_CAST:
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		CycleTime[0] = AdvanceCyclic(CurrentAnim, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
		CycleWeight[0] = 1.0f;
		break;
	case LH3D_CREATURE_STATE_DO_STATIC:
		DoStaticAction();
		break;
	case LH3D_CREATURE_STATE_FINISH_BLOCK:
		CycleAnim[0] = GetAnim(C_FIGHT_END_BLOCK, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(C_FIGHT_END_BLOCK, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
		break;
	case LH3D_CREATURE_STATE_FINISH_FIGHT_CAST:
		CycleAnim[0] = GetAnim(CurrentAnim + 1, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(CurrentAnim + 1, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
		break;
	case LH3D_CREATURE_STATE_FINISH_STATIC:
		CycleAnim[0] = GetAnim(CurrentAnim + 1, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(CurrentAnim + 1, CycleTime[0], AnimTimeInc);
		break;
	case LH3D_CREATURE_STATE_START_DANCE:
		CycleAnim[0] = GetAnim(C_DANCE_START, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(C_DANCE_START, CycleTime[0], AnimTimeInc);
		break;
	case LH3D_CREATURE_STATE_START_FIGHT:
		if (!TurningCompleted)
		{
			if (DoTheTurningBusiness())
			{
				TurningCompleted = true;
				CycleTime[0] = 0;
			}
			else
			{
				return;
			}
		}
		CycleAnim[0] = GetAnim(C_FIGHT_START, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(C_FIGHT_START, CycleTime[0], AnimTimeInc);
		if (FightCreature)
		{
			float heading = heading_from_direction_vector(FightCreature->GetPos() - position);
			Heading = angle_correct(heading);
		}
		break;
	case LH3D_CREATURE_STATE_BLOCK_RECOIL: {
		if (field_0x579c == 1)
		{
			field_0x4ab8 -= IntTimeInc;
		}
		LHMatrix rotation;
		rotation.SetRotationY(Heading);
		CycleAnim[0] = GetAnim(C_RECOIL_BLOCK, 0);
		LHPoint move;
		move = *(LHPoint*)&CycleAnim[0]->field_0x8[2];
		move *= Size2 * AnimTimeInc / (long)CycleAnim[0]->FrameOffset;
		rotation.TransformPoint(move);
		LHPoint newPos = position + move;
		if (newPos.GetDistance2D(ArenaCentre) < ArenaEdgeFraction * ArenaRadius)
		{
			SetPos(newPos);
		}
		CycleAnim[0] = GetAnim(C_RECOIL_BLOCK, 0);
		CycleTime[0] = AdvanceCyclic(C_RECOIL_BLOCK, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
		CycleWeight[0] = 1.0f;
		break;
	}
	case LH3D_CREATURE_STATE_DO_DANCE: {
		CAnim* anim = GetAnim(CurrentAnim, 0);
		long   inc = IntTimeInc;
		CycleAnim[0] = anim;
		// Windows only (the Mac just advances by IntTimeInc): with the CreatureDanceLineIn feature the dance follows
		// the beat detected on the sound card's line input. The line input's beat counter runs at the detected tempo
		// (120 bpm without a recent beat) and the dance's beat counter is pulled towards it; the animation is then
		// advanced so that its own beat catches up with the dance beat.
		// TODO: CreatureDanceLineInput::field_0x3510/0x3514/0x3518 are floats (line-input beat, dance beat, tempo);
		// drop the casts once its header types them. The first half may be an inline CreatureDanceLineInput method
		// (it works on a local copy of the pointer, the second half reloads GGame::CreatureDanceLineIn each time).
		CreatureDanceLineInput* lineIn = GGame::CreatureDanceLineIn;
		if (lineIn && anim)
		{
			float dt = FloatTimeInc;
			long  tempo;
			if (lineIn->Analysis.field_0x34e4 > lineIn->Analysis.Threshold &&
			    GetTickCount() - lineIn->Analysis.LastDetectionTick < 4000 && lineIn->Analysis.field_0x3028 < 50.0f)
			{
				tempo = lineIn->Analysis.Tempo;
			}
			else
			{
				tempo = 120;
			}
			*(float*)&lineIn->field_0x3518 = tempo;
			if (lineIn->Analysis.field_0x302c)
			{
				lineIn->Analysis.field_0x302c = 0;
				*(float*)&lineIn->field_0x3510 = (long)(*(float*)&lineIn->field_0x3510 + 0.5f);
			}
			float beats = *(float*)&lineIn->field_0x3518 * dt / 60.0f;
			*(float*)&lineIn->field_0x3510 += beats;
			*(float*)&lineIn->field_0x3514 += beats;
			float drift = *(float*)&lineIn->field_0x3510 - *(float*)&lineIn->field_0x3514;
			if (fabs(drift) > 0.5)
			{
				*(float*)&lineIn->field_0x3514 +=
					(long)(*(float*)&lineIn->field_0x3510 + 0.5f) - (long)(*(float*)&lineIn->field_0x3514 + 0.5f);
			}
			float pull = dt * 10.0f;
			pull = pull > -1.0f ? min(pull, 1.0f) : -1.0f;
			*(float*)&lineIn->field_0x3514 += pull * drift;
			// The animation's own tempo, folded into 81..162 bpm.
			float animTempo = 60000.0f / (long)anim->FrameOffset;
			if (animTempo < 0.1f)
			{
				animTempo = 0.1f;
			}
			else if (animTempo > 10000.0f)
			{
				animTempo = 10000.0f;
			}
			while (animTempo < 81.0f)
			{
				animTempo *= 2.0f;
			}
			while (animTempo >= 163.0f)
			{
				animTempo *= 0.5f;
			}
			float animBeat = CycleTime[0] * animTempo / 60000.0f;
			if (fabs(animBeat - *(float*)&GGame::CreatureDanceLineIn->field_0x3514) > 0.5)
			{
				// More than half a beat out: jump both counters to the animation's whole beat.
				long beat = (long)(animBeat + 0.5f);
				*(float*)&GGame::CreatureDanceLineIn->field_0x3514 +=
					beat - (long)(*(float*)&GGame::CreatureDanceLineIn->field_0x3514 + 0.5f);
				*(float*)&GGame::CreatureDanceLineIn->field_0x3510 +=
					beat - (long)(*(float*)&GGame::CreatureDanceLineIn->field_0x3510 + 0.5f);
			}
			inc = (long)((*(float*)&GGame::CreatureDanceLineIn->field_0x3514 - animBeat) * 60000.0f / animTempo);
			if (inc > 0)
			{
				inc = min(inc, IntTimeInc * 5);
			}
			else
			{
				inc = 0;
			}
		}
		CycleTime[0] = AdvanceCyclic(CurrentAnim, CycleTime[0], inc);
		CycleWeight[0] = 1.0f;
		break;
	}
	case LH3D_CREATURE_STATE_FIGHT_MAIN:
		if (field_0x579c == 1)
		{
			field_0x4ab8 -= IntTimeInc;
			if (field_0x4ab8 < 0)
			{
				field_0x579c = 2;
			}
		}
		DoFightMainAction();
		break;
	case LH3D_CREATURE_STATE_FINISH_DANCE:
		CycleAnim[0] = GetAnim(C_DANCE_FINISH, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(C_DANCE_FINISH, CycleTime[0], AnimTimeInc);
		break;
	case LH3D_CREATURE_STATE_FINISH_FIGHT:
		CycleAnim[0] = GetAnim(C_FIGHT_FINISH, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(C_FIGHT_FINISH, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
		break;
	case LH3D_CREATURE_STATE_KISSING:
		DoKissingAction();
		break;
	case LH3D_CREATURE_STATE_POINTING:
	case LH3D_CREATURE_STATE_FINISH_POINTING:
		DoPointAction(false);
		break;
	case LH3D_CREATURE_STATE_PICK_UP_FROM_HAND:
		DoPickupFromHandAction();
		break;
	case LH3D_CREATURE_STATE_INDIVIDUAL:
	case LH3D_CREATURE_STATE_OBJECT_KEEP: {
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		long oldTime = CycleTime[0];
		long half = (long)CycleAnim[0]->FrameOffset >> 1;
		CycleTime[0] = AdvanceCyclic(CurrentAnim, oldTime, AnimTimeInc);
		if (oldTime <= half && CycleTime[0] > half)
		{
			field_0x5268 = 1;
		}
		CycleWeight[0] = 1.0f;
		break;
	}
	case LH3D_CREATURE_STATE_FIGHT:
		if (field_0x579c == 1)
		{
			field_0x4ab8 -= IntTimeInc;
		}
		DoFightActionAction();
		break;
	case LH3D_CREATURE_STATE_OBJECT_REMOVE:
		DoDiscardAction();
		break;
	case LH3D_CREATURE_STATE_THROWING:
		DoThrowingAction();
		break;
	case LH3D_CREATURE_STATE_KICKING:
		DoKickingAction();
		break;
	case LH3D_CREATURE_STATE_CATCH_MAIN:
		DoCatchMain();
		break;
	case LH3D_CREATURE_STATE_CATCH_STEP:
		DoCatchStep();
		break;
	case LH3D_CREATURE_STATE_CATCH_ACTION:
		DoCatchAction();
		break;
	case LH3D_CREATURE_STATE_PICKING_UP:
	case LH3D_CREATURE_STATE_DESTRUCTION:
		DoBlendedAction();
		break;
	case LH3D_CREATURE_STATE_DEATH:
	case LH3D_CREATURE_STATE_RESURRECT:
		AttemptToKeepOnFlatLand();
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		CycleTime[0] = AdvanceSimple(CurrentAnim, CycleTime[0], AnimTimeInc);
		CycleWeight[0] = 1.0f;
		break;
	case LH3D_CREATURE_STATE_TURNING:
		DoTheTurningBusiness();
		break;
	case LH3D_CREATURE_STATE_CREATION:
		CycleAnim[0] = GetAnim(C_FIGHT_EXTRA_CREATION, 0);
		CycleWeight[0] = 1.0f;
		CycleTime[0] = AdvanceCyclic(C_FIGHT_EXTRA_CREATION, CycleTime[0], AnimTimeInc);
		break;
	case LH3D_CREATURE_STATE_DEAD:
		CycleAnim[0] = GetAnim(CurrentAnim, 0);
		CycleWeight[0] = 1.0f;
		break;
	}
	if (!creature || !(creature->Flags & GAME_THING_WITH_POS_FLAG_INTERACTING))
	{
		LogCurrentBufferMatrixes(SafeBuffer0, field_0x47b8, MoveState);
	}
}

void LH3DCreature::DoStaticAction()
{
	CycleAnim[0] = GetAnim(CurrentAnim, 0);
	CycleTime[0] = AdvanceCyclic(CurrentAnim, CycleTime[0], AnimTimeInc);
	CycleWeight[0] = 1.0f;
	if (CurrentAnim == C_STATIC_POO)
	{
		field_0x51e4++;
		if (field_0x51e4 >= 5)
		{
			CREATURE_ACTION action = creature ? creature->mind->agenda.plans[0].creature_action : NO_ACTION_SPECIFIED;
			LHPoint         anus = *GetAnusPos();
			if (action == CREATURE_FART)
			{
				// A cloud of particles behind the creature plus a smoke puff; an evil creature's fart makes people faint.
				if (creature)
				{
					float   size = GetStandingHeight();
					float   angle = Heading + 3.1415927f;
					LHPoint offset(sin(angle) * size, 0.0f, -cos(angle) * size);
					float   half = size * 0.5f;
					for (int i = 0; i < 15; i++)
					{
						LHPoint spread(GRand::GameFloatRand(size, CREATURE_3D_FILE, 4850) - half,
						               GRand::GameFloatRand(size, CREATURE_3D_FILE, 4850) - half,
						               GRand::GameFloatRand(size, CREATURE_3D_FILE, 4850) - half);
						LHPoint pos = offset + spread;
						AddLiquidParticle(position, pos, 0x40808080, Size1 * 4.0f, 4);
					}
					creature->smoke = LH3DSmoke::Create(NULL);
					if (creature->smoke)
					{
						creature->smoke->pos = anus;
					}
					if (EvilGood < -0.5f)
					{
						Reaction::CreateReaction(creature, REACTION_FAINTING, creature->GetPlayer(), 0);
					}
				}
			}
			else
			{
				// Drop a lump of poo behind the creature.
				MapCoords coords;
				GLandscape::ConvertLandscapePointToMapCoord(anus, coords);
				MobileObject* poo =
					MobileObject::Create(coords, &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_LUMP_OF_POO], NULL,
				                         GRand::GameFloatRand(6.2831855f, CREATURE_3D_FILE, 4870), Size1 * 1.5f);
				poo->Pos.altitude = anus.y - GetAltitude(anus);
				float   angle = Heading + 3.1415927f;
				LHPoint velocity(5.0f * (float)sin(angle), 0.0f, 5.0f * -(float)cos(angle));
				LHPoint spin(0.0f, 0.0f, 0.0f);
				if (creature)
				{
					// TODO: result unused in both builds; probably fed something compiled out of the release build.
					creature->GetPlayer();
				}
				poo->InitialisePhysics(velocity, spin, creature, true, NULL);
				if (creature)
				{
					// TODO: CreaturePhysical::field_0x2c is the float AmountOfPoo (BW1M119 GetAmountOfPoo reads 0x2c).
					creature->physical->field_0x2c = 0;
					CreatureDesires& desires = creature->mind->desires;
					desires.field_0x148[CREATURE_DESIRE_TO_POO] = 0.0f;
					CLAMP(desires.field_0x148[CREATURE_DESIRE_TO_POO], 0.0f, 1.0f);
					creature->mind->desires.SuppressDesire(CREATURE_DESIRE_TO_POO, 60.0f);
					creature->NumPoos++;
				}
			}
			field_0x51e4 = 0;
		}
	}
	else if (CurrentAnim == C_STATIC_PUKE)
	{
		// Twelve drops of sick from the mouth, tinted by the lighting where the creature stands.
		float   spread = Size1 * 0.008f;
		float   offset = Size1 * 0.4f;
		LHPoint vomPoint;
		GetVomPoint(&vomPoint);
		LH3DColor      colour;
		unsigned long  specular;
		const LHPoint* objectPos = &Get3DObject()->matrix.GetPos();
		LH3DIsland::GetColorAndSpecular(objectPos, (unsigned long*)&colour, &specular);
		specular = LH3DIsland::GetFogValue(objectPos, specular, (unsigned long*)&colour);
		for (int i = 0; i < 12; i++)
		{
			LHPoint   velocity(GRand::LocalRand(100) * spread - offset, -(GRand::LocalRand(100) * spread),
			                   GRand::LocalRand(100) * spread - offset);
			long      red = GRand::LocalRand(100) + 80;
			long      green = GRand::LocalRand(80) + 60;
			long      blue = GRand::LocalRand(30) + 20;
			LH3DColor tint(red, green, blue);
			LH3DColor vomit;
			vomit.b = colour.b * tint.b / 255;
			vomit.g = colour.g * tint.g / 255;
			vomit.r = colour.r * tint.r / 255;
			vomit.a = colour.a * tint.a / 255;
			AddLiquidParticle(vomPoint, velocity, *(unsigned long*)&vomit, Size1 * 0.2f, 0);
		}
	}
}

void LH3DCreature::DoPickupFromHandAction()
{
	CycleAnim[0] = GetAnim(C_PICKUP_FROM_HAND, 0);
	LogCAnim(CycleAnim[0]);
	CycleWeight[0] = 1.0f;
	long lastTime = CycleTime[0];
	// The animation time at which the object is taken out of the hand.
	long takeTime = field_0x4a38;
	CycleTime[0] = AdvanceCyclic(C_PICKUP_FROM_HAND, lastTime, AnimTimeInc);
	if (lastTime <= takeTime && CycleTime[0] > takeTime)
	{
		field_0x5230 = ReverseAnim;
		if (!ActionObject)
		{
			StateSet(LH3D_CREATURE_STATE_STANDING);
			DoAppropriateAction();
		}
		else
		{
			DropHeldObject(ActionObject);
			if (creature)
			{
				// TODO: the giving player's interface status; typed as uint32_t in CreatureSubActionAgenda (0xc44).
				GInterfaceStatus* status = (GInterfaceStatus*)creature->mind->agenda.SubActionAgenda.field_0xc44;
				creature->physical->ObjectCarried = HeldObject;
				uint32_t result = creature->InterfaceGiveObject(status, HeldObject);
				status->GetInterface()->ApplyChangesToHand(result, HeldObject, NULL);
				if (GGame::g_game->MyInterfaceStatus() == status)
				{
					GGame::g_game->MyInterface()->GetRenderHand()->EndGiveToCreature();
					GGame::g_game->MyInterface()->flags.ClearWaitForGive();
				}
			}
		}
		ActionObject = NULL;
	}
}

bool LH3DCreature::GetPointingHandPosition(LHPoint& pos)
{
	if (MoveState != LH3D_CREATURE_STATE_POINTING)
	{
		return false;
	}
	if (!TurningCompleted)
	{
		return false;
	}
	long      hand = ReverseAnim ? GetMirrorBone(RightHand) : RightHand;
	LH3DMesh* mesh = meshes[CurrentMesh];
	LH3DAnim::GetGraspPoint(GetSafeBuffer(), mesh, pos, hand);
	return true;
}

// param_1 is set when pointing while moving (UpdateMotion); the plain pointing state passes false.
void LH3DCreature::DoPointAction(bool param_1)
{
	bool justTurned = false;
	if (!TurningCompleted)
	{
		if (!DoTheTurningBusiness())
		{
			return;
		}
		TurningCompleted = true;
		justTurned = true;
		CycleTime[0] = 0;
	}
	LHPoint eye(position.x, position.y + GetStandingHeight(), position.z);
	LHPoint offset = PointPoint - eye;
	float   distance = offset.GetNorme();
	float   angle;
	float   pitch;
	if (distance < 0.1f)
	{
		angle = 0.0f;
		pitch = 0.0f;
	}
	else
	{
		float heading = heading_from_direction_vector(offset);
		angle = angle_correct(Heading - heading);
		angle = angle > -0.5235988f ? (angle < 0.5235988f ? angle : 0.5235988f) : -0.5235988f;
		pitch = offset.y / distance;
		pitch = pitch > -0.5f ? (pitch < 0.5f ? pitch : 0.5f) : -0.5f;
	}
	// Point with the hand that is free, or else towards the side the point is on.
	if (justTurned)
	{
		if (HeldObject)
		{
			ReverseAnim = field_0x5230 == 0;
		}
		else
		{
			ReverseAnim = angle > 0.0f;
		}
	}
	if (ReverseAnim)
	{
		angle = -angle;
	}
	// TODO: 0x5168 and 0x5170 are the floats m_lrb and m_bf (checksum names); field_0x5168 is still an LHPoint.
	field_0x5168.x = (angle + 0.5235988f) / 1.0471976f;
	field_0x5168.z = pitch + 0.5f;
	CycleAnim[0] = GetAnim(C_POINT_LO_LEFT, 0);
	CycleAnim[1] = GetAnim(C_POINT_LO_RIGHT, 0);
	CycleAnim[2] = GetAnim(C_POINT_HI_LEFT, 0);
	CycleAnim[3] = GetAnim(C_POINT_HI_RIGHT, 0);
	CycleWeight[0] = (1.0f - field_0x5168.x) * (1.0f - field_0x5168.z);
	CycleWeight[1] = field_0x5168.x * (1.0f - field_0x5168.z);
	CycleWeight[2] = (1.0f - field_0x5168.x) * field_0x5168.z;
	CycleWeight[3] = field_0x5168.x * field_0x5168.z;
	bool advance = false;
	if ((param_1 && field_0x5190 == 3) || (!param_1 && MoveState == LH3D_CREATURE_STATE_FINISH_POINTING))
	{
		advance = true;
	}
	if (advance || CycleTime[0] < field_0x4a80)
	{
		CycleTime[0] = AdvanceCyclic(C_POINT_LO_LEFT, CycleTime[0], AnimTimeInc);
	}
	CycleTime[1] = CycleTime[2] = CycleTime[3] = CycleTime[0];
}

// Blends the four catch animations towards the flying object and, at the catch time, takes it out of the physics.
// TODO: field_0x5168 is still an LHPoint; its x/y/z are the floats m_lrb, m_lrf and m_bf.
void LH3DCreature::DoCatchAction()
{
	field_0x5168.x = field_0x5168.y = 0.5f;
	if (ActionObject)
	{
		PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(ActionObject);
		// TODO: field_0x49f8 holds the catch hand positions set by ValidateCatchPositions.
		float lowY = field_0x49f8[1].y * Size2 + position.y;
		float highY = field_0x49f8[3].y * Size2 + position.y;
		if (physics)
		{
			const LHPoint& objectPos = physics->Physics.Matrix.GetPos();
			field_0x5168.z = (objectPos.y - lowY) / (highY - lowY);
			float   angle = Heading - 1.5707964f;
			LHPoint right((float)sin(angle), 0.0f, -(float)cos(angle));
			float   rightX = -field_0x49f8[3].x * Size2;
			LHPoint offset(objectPos.x - position.x, objectPos.y - position.y, objectPos.z - position.z);
			float   side = right * offset;
			if (ReverseAnim)
			{
				side = -side;
			}
			float leftX = -field_0x49f8[2].x * Size2;
			field_0x5168.x = field_0x5168.y = (side - leftX) / (rightX - leftX);
		}
		else
		{
			ObjectActionStatus = 2;
		}
	}
	else
	{
		ObjectActionStatus = 2;
	}
	bool clamped = false;
	if (field_0x5168.z < -0.2f)
	{
		clamped = true;
		field_0x5168.z = -0.2f;
	}
	if (field_0x5168.z > 1.2f)
	{
		clamped = true;
		field_0x5168.z = 1.2f;
	}
	if (field_0x5168.x < -0.2f)
	{
		clamped = true;
		field_0x5168.x = field_0x5168.y = -0.2f;
	}
	if (field_0x5168.x > 1.2f)
	{
		clamped = true;
		field_0x5168.x = field_0x5168.y = 1.2f;
	}
	CycleAnim[0] = GetAnim(C_CATCH_LO_L, 0);
	CycleAnim[1] = GetAnim(C_CATCH_LO_R, 0);
	CycleAnim[2] = GetAnim(C_CATCH_HI_L, 0);
	CycleAnim[3] = GetAnim(C_CATCH_HI_R, 0);
	CycleWeight[0] = (1.0f - field_0x5168.z) * (1.0f - field_0x5168.x);
	CycleWeight[1] = (1.0f - field_0x5168.z) * field_0x5168.x;
	CycleWeight[2] = field_0x5168.z * (1.0f - field_0x5168.y);
	CycleWeight[3] = field_0x5168.z * field_0x5168.y;
	if (ObjectActionStatus == 1 || ObjectActionStatus == 3)
	{
		CycleTime[0] = AdvanceCyclic(C_CATCH_LO_L, CycleTime[0], AnimTimeInc);
	}
	else
	{
		CycleTime[0] = max(0, CycleTime[0] - AnimTimeInc);
	}
	CycleTime[1] = CycleTime[2] = CycleTime[3] = CycleTime[0];
	if (ObjectActionStatus != 3 && ObjectActionStatus != 2 && CycleTime[0] >= field_0x4a3c)
	{
		LookPoint.SetNull();
		if (clamped)
		{
			ObjectActionStatus = 2;
		}
		else
		{
			ObjectActionStatus = 3;
			HeldObject = PhysicsObject::RemoveObject(ActionObject, false, true);
			DropHeldObject(ActionObject);
			Living* living = dynamic_cast<Living*>(HeldObject);
			if (living)
			{
				living->StorePreviousState();
				living->SetTopState(VILLAGER_STATE_IN_HAND);
			}
			if (HeldObject)
			{
				if (creature)
				{
					creature->physical->ObjectCarried = HeldObject;
				}
			}
			else
			{
				ObjectActionStatus = 2;
			}
		}
	}
}

// Steps towards the object to catch: moves by this frame's share of the step animation's movement.
void LH3DCreature::DoCatchStep()
{
	LHMatrix rotation;
	rotation.SetRotationY(Heading);
	CycleAnim[0] = GetAnim(CurrentAnim, 0);
	CAnim* anim = CycleAnim[0];
	// TODO: CAnim's 0x10 is the animation's total movement and its first field a signed duration (fidiv here,
	// xoris on Mac), not uint32_t FrameOffset.
	LHPoint step;
	step = *(LHPoint*)&anim->field_0x8[2];
	step *= AnimTimeInc * Size2 / (long)anim->FrameOffset;
	rotation.TransformPoint(step);
	if (ReverseAnim)
	{
		SetPos(position - step);
	}
	else
	{
		SetPos(position + step);
	}
	if (!IsDestinationValidForCreature(&position))
	{
		LHPoint valid = position;
		SpiralCheckForValidPoint(&position, &valid);
		SetPos(valid);
	}
	CycleTime[0] = AdvanceCyclic(CurrentAnim, CycleTime[0], AnimTimeInc);
	CycleWeight[0] = 1.0f;
}

// Waits for a thrown object: gives up when it is behind the creature or out of the physics, steps sideways while it
// is out of reach and starts the catch when it arrives at about the time the catch animation needs.
void LH3DCreature::DoCatchMain()
{
	if (!TurningCompleted)
	{
		if (!DoTheTurningBusiness())
		{
			return;
		}
		TurningCompleted = true;
		CycleTime[0] = 0;
	}
	if (!ActionObject || !(ActionObject->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS))
	{
		StateSet(LH3D_CREATURE_STATE_STANDING);
		DoAppropriateAction();
		return;
	}
	PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(ActionObject);
	if (!physics)
	{
		StateSet(LH3D_CREATURE_STATE_STANDING);
		DoAppropriateAction();
		return;
	}
	LHPoint& objectPos = (LHPoint&)physics->Physics.Matrix.GetPos();
	SetLookPoint(&objectPos);
	float   heading = Heading;
	LHPoint forward((float)sin(heading), 0.0f, -(float)cos(heading));
	LHPoint offset = objectPos - position;
	float   distance = forward * offset;
	if (distance < 0.0f)
	{
		// The object is behind the creature.
		StateSet(LH3D_CREATURE_STATE_STANDING);
		DoAppropriateAction();
		return;
	}
	float   angle = Heading - 1.5707964f;
	LHPoint right((float)sin(angle), 0.0f, -(float)cos(angle));
	float   reach = -((field_0x49f8[3].x - field_0x49f8[2].x) * 1.2f + field_0x49f8[2].x) * Size2;
	LHPoint sideOffset(objectPos.x - position.x, objectPos.y - position.y, objectPos.z - position.z);
	float   side = right * sideOffset;
	if ((float)fabs(side) > reach)
	{
		// Out of reach: take a sideways step towards the object.
		if (side > 0.0f)
		{
			ReverseAnim = false;
		}
		else
		{
			ReverseAnim = true;
		}
		LHMatrix matrix;
		GetPositionMatrix(&matrix);
		CurrentAnim = C_CATCH_STEP_RIGHT;
		CAnim* anim = GetAnim(CurrentAnim, 0);
		if (anim)
		{
			LHPoint move = *(LHPoint*)&anim->field_0x8[2];
			if (ReverseAnim)
			{
				move.x = -move.x;
			}
			// TODO: matches once LHMatrix::operator* sums x, y, z then the translation (see notes).
			LHPoint destination = matrix * move;
			if (IsDestinationValidAndClear(&destination))
			{
				StateSet(LH3D_CREATURE_STATE_CATCH_STEP);
				DoCatchStep();
				return;
			}
		}
		StateSet(LH3D_CREATURE_STATE_STANDING);
		DoAppropriateAction();
		return;
	}
	// In reach: catch when the object arrives at about the time the catch animation needs.
	float   half = Size1 * 0.5f;
	float   catchTime = field_0x4a3c / ((1.6f - half * 0.85f) * 1000.0f);
	LHPoint velocity(-physics->Physics.Velocity.x, 0.0f, -physics->Physics.Velocity.z);
	float   arrivalTime = distance / (velocity * forward);
	if (arrivalTime < catchTime + 0.1f)
	{
		if (arrivalTime > catchTime - 0.01f)
		{
			ReverseAnim = side < 0.0f;
			StateSet(LH3D_CREATURE_STATE_CATCH_ACTION);
			DoCatchAction();
		}
		else
		{
			StateSet(LH3D_CREATURE_STATE_STANDING);
			DoAppropriateAction();
		}
	}
	else
	{
		DoStandingAction();
	}
}

void LH3DCreature::DoKickingAction()
{
	CycleAnim[0] = GetAnim(C_DESTROY_KICK_LOW, 0);
	CycleWeight[0] = 1.0f;
	long previousTime = CycleTime[0];
	long kickTime = field_0x4a8c;
	CycleTime[0] = CycleTime[1] = AdvanceCyclic(C_DESTROY_KICK_LOW, CycleTime[0], AnimTimeInc);
	if (ActionObject && previousTime <= kickTime && CycleTime[0] > kickTime)
	{
		LHMatrix matrix;
		GetPositionMatrix(&matrix);
		LHPoint kickPos = field_0x4a28;
		matrix.TransformPoint(kickPos);
		LHPoint kickDir(0.0f, 1.0f, -1.0f);
		matrix.TransformVector(kickDir);
		kickDir.FastNormalizeInline();
		if (GGame::g_game->GetCamera())
		{
			float distance = GGame::g_game->GetCamera()->GetDistance(kickPos);
			long  sound[5];
			if (ActionObject->IsAbode())
			{
				sound[0] = 0;
				sound[1] = 0;
				sound[2] = 19;
				sound[3] = 0;
				sound[4] = IMPACT_SOUND_EVENT_KICK;
				GGlobal::Global.audio->SamplePlayAnimEffect(ActionObject, distance, sound, 0,
				                                            GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR),
				                                            0, 0.0f, 0.0f);
			}
			else if (ActionObject->IsVillager(NULL))
			{
				sound[0] = 0;
				sound[1] = 0;
				sound[2] = 22;
				sound[3] = 0;
				sound[4] = IMPACT_SOUND_EVENT_KICK;
				GGlobal::Global.audio->SamplePlayAnimEffect(ActionObject, distance, sound, 0,
				                                            GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR),
				                                            0, 0.0f, 0.0f);
			}
			else if (ActionObject->IsFence())
			{
				sound[0] = 0;
				sound[1] = 0;
				sound[2] = 25;
				sound[3] = 0;
				sound[4] = IMPACT_SOUND_EVENT_KICK;
				GGlobal::Global.audio->SamplePlayAnimEffect(ActionObject, distance, sound, 0,
				                                            GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR),
				                                            0, 0.0f, 0.0f);
			}
			else if (ActionObject->IsTree())
			{
				if (!(ActionObject->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS))
				{
					SoundTag::Create(kickPos, SoundTag::GetRandomSample(LH_SAMPLE_G_TREEBREAK_01_C2, 3), false, 3, 0, 0,
					                 1, AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
				}
				else
				{
					sound[0] = 0;
					sound[1] = 0;
					sound[2] = 20;
					sound[3] = 0;
					// Original bug, kept here and in the two branches below: the event goes into sound[3] instead of
					// sound[4] (the Mac stores sound[3] twice too).
					sound[3] = IMPACT_SOUND_EVENT_KICK;
					GGlobal::Global.audio->SamplePlayAnimEffect(
						ActionObject, distance, sound, 0, GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 0,
						0.0f, 0.0f);
				}
			}
			else if (ActionObject->IsRock())
			{
				sound[0] = 0;
				sound[1] = 0;
				sound[2] = 22;
				sound[3] = 0;
				sound[3] = IMPACT_SOUND_EVENT_KICK;
				GGlobal::Global.audio->SamplePlayAnimEffect(ActionObject, distance, sound, 0,
				                                            GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR),
				                                            0, 0.0f, 0.0f);
			}
			else
			{
				sound[0] = 0;
				sound[1] = 0;
				sound[2] = 22;
				sound[3] = 0;
				sound[3] = IMPACT_SOUND_EVENT_KICK;
				GGlobal::Global.audio->SamplePlayAnimEffect(ActionObject, distance, sound, 0,
				                                            GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR),
				                                            0, 0.0f, 0.0f);
			}
			if (ActionObject->IsAbode())
			{
				Abode* abode = dynamic_cast<Abode*>(ActionObject);
				if (creature && abode->CanBeKickedByCreature(creature))
				{
					if (!abode->DestructionMesh)
					{
						abode->DestructionMesh = new (CREATURE_3D_FILE, 5452) FragMesh(abode->Game3dObject);
					}
					LHPoint velocity = kickDir * 2.0f;
					kickPos = position + (kickPos - position) * 0.5f;
					float randomAngle = (GRand::GameRand(11, CREATURE_3D_FILE, 5459) - 5) / 10.0f;
					float randomHeight1 = GRand::GameRand(100, CREATURE_3D_FILE, 5460) / 100.0f;
					float randomHeight2 = GRand::GameRand(100, CREATURE_3D_FILE, 5461) / 100.0f;
					float altitude = LH3DIsland::GetAltitude(LH3DMapCoords(kickPos.x, kickPos.z));
					if (kickPos.y < altitude)
					{
						kickPos.y = altitude;
					}
					float heightAbove = kickPos.y - altitude;
					if (heightAbove > 0.25f * GetStandingHeight())
					{
						heightAbove = 0.25f * GetStandingHeight();
					}
					float   angle = HALF_PI_F * randomAngle + Heading;
					LHPoint velocity2(2.0f * (float)sin(angle), 0.0f, 2.0f * -(float)cos(angle));
					float   radius = 0.25f * GetStandingHeight();
					float   abodeRadius = 0.6f * abode->Get2DRadius();
					if (radius > abodeRadius)
					{
						radius = abodeRadius;
					}
					kickPos.y = heightAbove * randomHeight1 + altitude;
					abode->DestructionMesh->Impact(&kickPos, &velocity, radius, abode);
					kickPos.y = heightAbove * randomHeight2 + altitude;
					abode->DestructionMesh->Impact(&kickPos, &velocity2, radius, abode);
					if (abode->DestructionMesh->WorkOutFractionRemaining() == 1.0f)
					{
						delete abode->DestructionMesh;
						abode->DestructionMesh = NULL;
					}
					else
					{
						abode->SmashedByCreature = true;
						abode->ApplyEffectsDueToPhysicalDestruction(creature, creature ? creature->GetPlayer() : NULL);
						abode->SmashedByCreature = false;
					}
				}
			}
			else if (ActionObject->CanBecomeAPhysicsObject() &&
			         !(ActionObject->Flags & GAME_THING_WITH_POS_FLAG_IMMOVABLE))
			{
				float          speed = 3.0f * GetStandingHeight();
				LHPoint        angularVelocity(0.0f, 0.0f, 0.0f);
				LHPoint        velocity = kickDir * speed;
				PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject(ActionObject);
				if (physicsObject)
				{
					physicsObject->Physics.Velocity = velocity;
				}
				else
				{
					GInterfaceStatus* status =
						creature->GetPlayer() ? creature->GetPlayer()->GetLeaderInterfaceStatus() : NULL;
					PhysicsObject* newPhysicsObject =
						ActionObject->InitialisePhysics(velocity, angularVelocity, creature, true, status).Physics;
					if (newPhysicsObject)
					{
						newPhysicsObject->Physics.AdjustToGroundLevel(false, true);
						PhysicsObject::RaiseUntilNotIntersecting(&newPhysicsObject);
					}
				}
			}
			else if (ActionObject->IsCreature())
			{
				float ratio = 1.0f;
				if (creature)
				{
					Creature* other = ActionObject->CastCreature();
					if (other)
					{
						ratio = creature->GetHeight() / other->GetHeight();
						CLAMP(ratio, 0.0f, 1.0f);
					}
				}
				float        multiplier = (ratio + 1.0f) * 0.1f;
				EffectValues values(EFFECT_INFO_CRUSH, creature, NULL);
				values.numbers *= multiplier;
				ActionObject->CastCreature()->ApplyEffect(values, 0);
			}
			ActionObject = NULL;
		}
	}
}

void LH3DCreature::DoKissingAction()
{
	CycleAnim[0] = GetAnim(C_MISC_KISS_HI, 0);
	CycleWeight[0] = KissFraction;
	CycleAnim[1] = GetAnim(C_MISC_KISS_LO, 0);
	CycleWeight[1] = 1.0f - KissFraction;
	long previousTime = CycleTime[0];
	long kissTime = field_0x4a88;
	CycleTime[0] = CycleTime[1] = AdvanceCyclic(C_MISC_KISS_HI, CycleTime[0], IntTimeInc);
	if (previousTime <= kissTime && CycleTime[0] > kissTime)
	{
		field_0x5268 = 1;
	}
}

void LH3DCreature::DoFightMainAction()
{
	if (field_0x4b24)
	{
		CycleAnim[0] = GetAnim(C_FIGHT_EXTRA_SPARE0, 0);
		if (CycleAnim[0])
		{
			// TODO: CAnim's first field is a signed duration, not uint32_t FrameOffset.
			if (CycleTime[0] > (long)CycleAnim[0]->FrameOffset)
			{
				CycleTime[0] = 0;
			}
			CycleTime[0] = AdvanceCyclic(C_FIGHT_EXTRA_SPARE0, CycleTime[0], (long)(IntTimeInc * GetFightMul()));
		}
		else
		{
			CycleAnim[0] = GetAnim(C_FIGHT_STANCE, 0);
			CycleTime[0] = AdvanceCyclic(C_FIGHT_STANCE, CycleTime[0], (long)(IntTimeInc * GetFightMul()));
		}
		CycleWeight[0] = 1.0f;
	}
	else
	{
		CycleAnim[0] = GetAnim(C_FIGHT_STANCE, 0);
		CycleTime[0] = AdvanceCyclic(C_FIGHT_STANCE, CycleTime[0], (long)(IntTimeInc * GetFightMul()));
		CycleWeight[0] = 1.0f;
	}
	if (FightCreature)
	{
		LHPoint toFightCreature = FightCreature->GetPos() - position;
		float   heading = heading_from_direction_vector(toFightCreature);
		Heading = angle_correct(heading);
		if (!CheckKeepInArenaRule())
		{
			DoFightPullApart();
			if (field_0x579c == 2)
			{
				bool attack = false;
				bool step = false;
				bool block = false;
				// TODO: As in the Mac code, the second test overrides the first, so the style is only ever 0 or 2.
				int style = 1;
				if (field_0x4ab0 > -0.33f)
				{
					style = 2;
				}
				if (field_0x4ab0 < 0.33f)
				{
					style = 0;
				}
				switch (FightCreature->MoveState)
				{
				case LH3D_CREATURE_STATE_FIGHT_MAIN:
				case LH3D_CREATURE_STATE_FINISH_FIGHT_CAST: {
					int chance;
					switch (style)
					{
					case 0:
						chance = 16;
						break;
					case 1:
						chance = 8;
						break;
					case 2:
						chance = 1;
						break;
					}
					if (!GRand::GameRand(chance, CREATURE_3D_FILE, 5638))
					{
						attack = true;
					}
					break;
				}
				case LH3D_CREATURE_STATE_FIGHT:
				case LH3D_CREATURE_STATE_START_FIGHT_CAST:
				case LH3D_CREATURE_STATE_FIGHT_CAST:
					if (FightCreature->CurrentAnim >= C_FIGHT_ATTACK_HIGH &&
					    FightCreature->CurrentAnim <= C_FIGHT_ATTACK_SPECIAL2)
					{
						if (style == 2 && GRand::GameRand(5, CREATURE_3D_FILE, 5650))
						{
							attack = true;
						}
						else if (!GRand::GameRand(4, CREATURE_3D_FILE, 5657))
						{
							block = true;
						}
						else
						{
							step = true;
						}
					}
					else if (FightCreature->CurrentAnim == C_FIGHT_STEP_FORWARD)
					{
						if (style == 2 && GRand::GameRand(5, CREATURE_3D_FILE, 5665))
						{
							attack = true;
						}
						else
						{
							switch (GRand::GameRand(4, CREATURE_3D_FILE, 5672))
							{
							case 0:
								block = true;
								break;
							case 1:
							case 2:
								step = true;
								break;
							case 3:
								attack = true;
								break;
							}
						}
					}
					else
					{
						attack = true;
					}
					break;
				case LH3D_CREATURE_STATE_START_BLOCK:
				case LH3D_CREATURE_STATE_BLOCK:
				case LH3D_CREATURE_STATE_FINISH_BLOCK:
					if (style == 2 && GRand::GameRand(5, CREATURE_3D_FILE, 5699))
					{
						attack = true;
					}
					else if (GRand::GameRand(10, CREATURE_3D_FILE, 5703) == 1)
					{
						switch (GRand::GameRand(2, CREATURE_3D_FILE, 5705))
						{
						case 0:
							step = true;
							break;
						case 1:
							attack = true;
							break;
						}
					}
					break;
				case LH3D_CREATURE_STATE_BLOCK_RECOIL:
					attack = true;
					break;
				}
				if (attack)
				{
					AttemptAttack(GRand::GameRand(3, CREATURE_3D_FILE, 5725), field_0x49a8);
				}
				if (block)
				{
					AttemptAttack(3, 0.0f);
				}
				if (step)
				{
					switch (GRand::GameRand(3, CREATURE_3D_FILE, 5735))
					{
					case 0:
						StartFightAction(C_FIGHT_STEP_LEFT, 0.0f);
						break;
					case 1:
						StartFightAction(C_FIGHT_STEP_RIGHT, 0.0f);
						break;
					case 2:
						StartFightAction(C_FIGHT_STEP_BACK, 0.0f);
						break;
					}
				}
			}
			else
			{
				CheckFightQueue();
			}
		}
	}
}

void LH3DCreature::CheckFightQueue()
{
	if (FightCreature)
	{
		float dx = FightCreature->position.x - ArenaCentre.x;
		float dz = FightCreature->position.z - ArenaCentre.z;
		float dist = sqrt(dx * dx + dz * dz);
		if (dist > ArenaEdgeFraction * ArenaRadius)
		{
			return;
		}
	}
	if (field_0x4ac0 == 0)
	{
		return;
	}
	field_0x4ab8 = (int)Const_8cf0ac;
	unsigned long action = field_0x4ac4[0];
	if (MoveState == LH3D_CREATURE_STATE_BLOCK)
	{
		if (action == 3)
		{
			ShuntFightQueue();
			StateSet(LH3D_CREATURE_STATE_FINISH_BLOCK);
		}
		else if (field_0x4ac0 != 0)
		{
			StateSet(LH3D_CREATURE_STATE_FINISH_BLOCK);
		}
	}
	else if (MoveState == LH3D_CREATURE_STATE_FIGHT_MAIN && field_0x4ac0 != 0)
	{
		if (action & 0x8000)
		{
			StartFightAction(action & 0x3fff, 0.0f);
			if (GGame::g_game->MyPlayer() == creature->GetPlayer())
			{
				GGame::g_game->help_profile->Trigger(HELP_EVENT_TYPE_39);
			}
			ShuntFightQueue();
			if (creature)
			{
				creature->mind->learning.field_0x1522c *= 0.98f;
				creature->mind->learning.field_0x1522c -= 0.02f;
				CLAMP(creature->mind->learning.field_0x1522c, -1.0f, 1.0f);
			}
		}
		else if (action & 0x4000)
		{
			field_0x4b28 = action & 0x3fff;
			StateSet(LH3D_CREATURE_STATE_START_FIGHT_CAST);
			CurrentAnim = C_FIGHT_EXTRA_CAST;
			if (GGame::g_game->MyPlayer() == creature->GetPlayer())
			{
				GGame::g_game->help_profile->Trigger(HELP_EVENT_TYPE_38);
			}
			ShuntFightQueue();
		}
		else
		{
			if (GGame::g_game->MyPlayer() == creature->GetPlayer())
			{
				if (action == 3)
				{
					GGame::g_game->help_profile->Trigger(HELP_EVENT_TYPE_36);
					if (creature)
					{
						creature->mind->learning.field_0x1522c *= 0.98f;
						creature->mind->learning.field_0x1522c -= 0.02f;
						CLAMP(creature->mind->learning.field_0x1522c, -1.0f, 1.0f);
					}
				}
				else
				{
					if (creature)
					{
						creature->mind->learning.field_0x1522c *= 0.98f;
						creature->mind->learning.field_0x1522c += 0.02f;
						CLAMP(creature->mind->learning.field_0x1522c, -1.0f, 1.0f);
					}
					GGame::g_game->help_profile->Trigger(HELP_EVENT_TYPE_37);
				}
			}
			if (action == 3)
			{
				AttemptAttack(action, 0.0f);
			}
			else if (field_0x4af4[0] != -1)
			{
				AttemptAttack(action, 0.5 + field_0x4af4[0] / 1200.0f);
			}
		}
	}
}

void LH3DCreature::ShuntFightQueue()
{
	if (field_0x579c == 2)
	{
		return;
	}
	field_0x4ac0--;
	int i;
	for (i = 0; i < field_0x4ac0; i++)
	{
		field_0x4ac4[i] = field_0x4ac4[i + 1];
		field_0x4af4[i] = field_0x4af4[i + 1];
	}
	if (field_0x4b30 > 0)
	{
		field_0x4b30--;
		for (i = 0; i < field_0x4b30; i++)
		{
			field_0x4b34[i] = field_0x4b34[i + 1];
			field_0x4b64[i] = field_0x4b64[i + 1];
			field_0x4b94[i] = field_0x4b94[i + 1];
			field_0x4bc4[i] = field_0x4bc4[i + 1];
			field_0x4da4[i] = field_0x4da4[i + 1];
			field_0x4e34[i] = field_0x4e34[i + 1];
		}
	}
}

void LH3DCreature::AddToFightQueue(unsigned long action, bool param_2)
{
	if (field_0x579c == 2)
	{
		field_0x579c = 1;
	}
	field_0x4ab8 = (int)Const_8cf0ac;
	if (param_2)
	{
		field_0x4ac0 = 0;
		if (field_0x4b30 > 1)
		{
			field_0x4bc4[0] = field_0x4bc4[field_0x4b30 - 1];
			field_0x4b34[0] = field_0x4b34[field_0x4b30 - 1];
			field_0x4da4[0] = field_0x4da4[field_0x4b30 - 1];
			field_0x4e34[0] = field_0x4e34[field_0x4b30 - 1];
			field_0x4b64[0] = field_0x4b64[field_0x4b30 - 1];
			field_0x4b30 = 1;
		}
		field_0x4ac4[field_0x4ac0] = action;
		field_0x4af4[field_0x4ac0] = -1;
		field_0x4ac0++;
	}
	else
	{
		if (field_0x4ac0 == field_0x4abc)
		{
			field_0x4b24 = false;
			return;
		}
		field_0x4ac4[field_0x4ac0] = action;
		field_0x4af4[field_0x4ac0] = -1;
		field_0x4ac0++;
	}
	if (action == 4 || action & 0x4000)
	{
		field_0x4b24 = false;
		field_0x4af4[field_0x4ac0 - 1] = 1200;
	}
	else if (action == 3 || action & 0x8000)
	{
		field_0x4b24 = false;
		field_0x4af4[field_0x4ac0 - 1] = 0;
	}
	else
	{
		field_0x4b24 = true;
	}
	CheckFightQueue();
}

bool LH3DCreature::FightClickGround(LHPoint& pos, bool param_2)
{
	// Rotate the clicked point into the creature's frame.
	LHPoint  delta = pos - position;
	LHMatrix matrix;
	matrix.SetRotationY(-Heading);
	matrix.TransformVector(delta);
	if (-delta.z > (float)fabs(delta.x))
	{
		AddToFightQueue(0x8000 | C_FIGHT_STEP_FORWARD, param_2);
	}
	else if (delta.z > (float)fabs(delta.x))
	{
		AddToFightQueue(0x8000 | C_FIGHT_STEP_BACK, param_2);
	}
	else if (-delta.x > (float)fabs(delta.z))
	{
		AddToFightQueue(0x8000 | C_FIGHT_STEP_RIGHT, param_2);
	}
	else
	{
		AddToFightQueue(0x8000 | C_FIGHT_STEP_LEFT, param_2);
	}
	return true;
}

bool32_t LH3DCreature::IsRecoiling()
{
	if (CurrentAnim >= C_RECOIL_HI && CurrentAnim <= C_RECOIL_LO_B)
	{
		return true;
	}
	if (MoveState == LH3D_CREATURE_STATE_BLOCK_RECOIL || MoveState == LH3D_CREATURE_STATE_DEATH)
	{
		return true;
	}
	return false;
}

void LH3DCreature::AttemptAttack(long action, float param_2)
{
	if (MoveState != LH3D_CREATURE_STATE_FIGHT_MAIN && MoveState != LH3D_CREATURE_STATE_BLOCK &&
	    MoveState != LH3D_CREATURE_STATE_DEAD)
	{
		return;
	}
	if (!FightCreature)
	{
		return;
	}
	float headHeight = FightCreature->GetHeadHeight();
	float highest;
	float lowest;
	switch (action)
	{
	case 0:
		highest = headHeight;
		lowest = 0.66f * headHeight;
		break;
	case 1:
		highest = 0.66f * headHeight;
		lowest = 0.33f * headHeight;
		break;
	case 2:
		highest = 0.33f * headHeight;
		lowest = 0.0f;
		break;
	case 3:
		if (MoveState == LH3D_CREATURE_STATE_FIGHT_MAIN)
		{
			CurrentAnim = C_FIGHT_BLOCK;
			StateSet(LH3D_CREATURE_STATE_START_BLOCK);
			ShuntFightQueue();
		}
		else if (MoveState == LH3D_CREATURE_STATE_BLOCK)
		{
			StateSet(LH3D_CREATURE_STATE_FINISH_BLOCK);
			ShuntFightQueue();
		}
		return;
	case 4:
		FightMove = C_FIGHT_ATTACK_SPECIAL;
		StartFightAction(FightMove, 1.5f);
		ShuntFightQueue();
		return;
	}
	LHPoint dir = FightCreature->GetPos() - position;
	// TODO: the Mac inlines the same rsqrt normalise as the camera code's FastNormalizeInline, but here the target
	// multiplies 1/sqrt * x (the shape `SetSize(1.0f)` gives); FastNormalizeInline as declared gives x * 1/sqrt.
	dir.FastNormalizeInline();
	LHMatrix matrix;
	GetPositionMatrix(&matrix);
	int hits[12];
	int numHits = 0;
	int i;
	for (i = 0; i < 12; i++)
	{
		hits[i] = 0;
	}
	float   reach = 0.15 * FightCreature->GetStandingHeight();
	LHPoint up(0.0f, 1.0f, 0.0f);
	float   stepLength = (reach + reach) / 10.0f;
	LHPoint side = up ^ dir;
	// TODO: the target squares x, y and z from FPU-stack copies (x first); every spelling tried here squares z first.
	side *= InverseSquareRoot(side * side);
	LHPoint     step = side * stepLength;
	CollideBox* boite = (CollideBox*)FightCreature->GetBoite();
	float       distances[12];
	for (i = 0; i < 12; i++)
	{
		long anim = i + C_FIGHT_ATTACK_HIGH;
		if (anim != C_FIGHT_ATTACK_SPECIAL && GetAnim(anim, 0))
		{
			LHPoint attackPos = matrix * LHPoint(0.0f, field_0x4ec4[i].y, field_0x4ec4[i].z);
			float   height = Size2 * field_0x4ec4[i].y;
			if (height <= headHeight)
			{
				distances[i] = 1000.0f;
				int     numImpacts = 0;
				LHPoint sample = attackPos - side * reach;
				for (int j = 0; j < 11; j++)
				{
					LHPoint impact;
					LHPoint normal;
					if (boite->GetImpactPoint(FightCreature->GetMesh(), sample, dir, impact, normal))
					{
						float distance = (impact - attackPos).DotProductInline(dir);
						distances[i] = min(distances[i], distance);
						numImpacts++;
					}
					sample += step;
				}
				if (numImpacts)
				{
					hits[i] = (height <= highest && height >= lowest) + 1;
					numHits++;
				}
			}
		}
	}
	if (!numHits)
	{
		return;
	}
	float  bestDistance = -1000.0f;
	long   bestStep = 5;
	int    bestAttack = 0;
	int    bestCost = 1000;
	CAnim* anim = GetAnim(C_FIGHT_STEP_BACK, 0);
	float  stepBack = anim ? anim->field_0x8[1] * Size2 : 0.0f;
	anim = GetAnim(C_FIGHT_STEP_FORWARD, 0);
	float stepForward = anim ? anim->field_0x8[1] * Size2 : 0.0f;
	float minDistance = 0.5f * -GetStandingHeight();
	for (long k = -10; k <= 10; k++)
	{
		float offset = 0.0f;
		if (k < 0)
		{
			offset = stepBack * k;
		}
		else if (k > 0)
		{
			offset = stepForward * k;
		}
		for (int j = 0; j < 12; j++)
		{
			if (hits[j])
			{
				float distance = distances[j] - offset;
				if (distance < 0.0f && distance > minDistance)
				{
					int cost = abs(k);
					if (hits[j] == 1)
					{
						cost = 999;
					}
					if (cost == bestCost)
					{
						if (distance > bestDistance)
						{
							bestDistance = distance;
							bestAttack = j;
						}
					}
					else if (cost < bestCost)
					{
						bestCost = cost;
						bestStep = k;
						bestDistance = distance;
						bestAttack = j;
					}
				}
			}
		}
	}
	if (bestCost == 1000)
	{
		return;
	}
	if (bestStep < 0)
	{
		StartFightAction(C_FIGHT_STEP_BACK, 0.0f);
	}
	else if (bestStep > 0)
	{
		StartFightAction(C_FIGHT_STEP_FORWARD, 0.0f);
	}
	else
	{
		FightMove = bestAttack + C_FIGHT_ATTACK_HIGH;
		StartFightAction(FightMove, param_2);
		ShuntFightQueue();
	}
}

bool LH3DCreature::ReturnTrue()
{
	return true;
}

void LH3DCreature::IncFightQueueSize()
{
	char text[64];
	field_0x4abc = min(12, field_0x4abc + 1);
	sprintf(text, "Fight Queue %d", field_0x4abc);
	GGlobal::Global.AddPlayerTextMessage(-1, text);
}

void LH3DCreature::DecFightQueueSize()
{
	char text[64];
	field_0x4abc = max(1, field_0x4abc - 1);
	sprintf(text, "Fight Queue %d", field_0x4abc);
	GGlobal::Global.AddPlayerTextMessage(-1, text);
}

void LH3DCreature::AddFightIntersection(long param_1, MeshIntersect& intersect)
{
	if (field_0x4b30 < 12)
	{
		field_0x4bc4[field_0x4b30] = intersect;
		field_0x4b34[field_0x4b30] = param_1;
		field_0x4b64[field_0x4b30] = 0;
		field_0x4b94[field_0x4b30] = 0;
		LastFightIntersectionPending = true;
		field_0x4b30++;
	}
}

void LH3DCreature::AddFightIntersection(LHPoint& param_1, LHPoint& param_2)
{
	if (field_0x4b30 < 12)
	{
		field_0x4e34[field_0x4b30] = param_1;
		field_0x4da4[field_0x4b30] = param_2;
		field_0x4b34[field_0x4b30] = 2;
		field_0x4b64[field_0x4b30] = 0;
		field_0x4b94[field_0x4b30] = 0;
		field_0x4b30++;
	}
}

void LH3DCreature::DoNothing(long param_1) {}

void LH3DCreature::ValidateFightEvent(unsigned long time)
{
	if (field_0x4b24 && field_0x4ac0)
	{
		field_0x4af4[field_0x4ac0 - 1] = min(1200, time);
		field_0x4b24 = false;
	}
}

void LH3DCreature::ValidateLastFightIntersection(unsigned long time)
{
	LastFightIntersectionPending = false;
}

bool LH3DCreature::IsBlocking()
{
	switch (MoveState)
	{
	case LH3D_CREATURE_STATE_START_BLOCK:
		// TODO: CAnim's first field is a signed duration, not uint32_t FrameOffset.
		if (CycleTime[0] > (long)GetAnim(C_FIGHT_START_BLOCK, 0)->FrameOffset / 2)
		{
			return true;
		}
		break;
	case LH3D_CREATURE_STATE_BLOCK:
		return true;
	case LH3D_CREATURE_STATE_FINISH_BLOCK:
		if (CycleTime[0] < (long)GetAnim(C_FIGHT_START_BLOCK, 0)->FrameOffset / 2)
		{
			return true;
		}
		break;
	}
	return false;
}

void LH3DCreature::DoFightActionAction()
{
	LHMatrix matrix;
	matrix.SetRotationY(Heading);
	CycleAnim[0] = GetAnim(CurrentAnim, 0);
	// TODO: CAnim 0x10 is the anim's root movement (CAnim::field_0x8[2..4]); its first field is the signed duration.
	LHPoint move;
	move = *(LHPoint*)&CycleAnim[0]->field_0x8[2];
	move *= GetFightMul() * IntTimeInc * Size2 / (long)CycleAnim[0]->FrameOffset;
	matrix.TransformPoint(move);
	LHPoint newPos = position + move;
	SetPos(newPos);
	long oldTime = CycleTime[0];
	CycleTime[0] = AdvanceCyclic(CurrentAnim, CycleTime[0], (long)(GetFightMul() * IntTimeInc));
	CycleWeight[0] = 1.0f;
	if (FightCreature)
	{
		CollideBox* boite = (CollideBox*)FightCreature->GetBoite();
		long        anim = CurrentAnim;
		if (anim >= C_FIGHT_ATTACK_HIGH && anim <= C_FIGHT_ATTACK_SPECIAL2)
		{
			long     index = anim - C_FIGHT_ATTACK_HIGH;
			long     tolerance = (long)(AnimTimeInc * 0.6f);
			LHMatrix positionMatrix;
			GetPositionMatrix(&positionMatrix);
			LHMatrix* bone = &SafeBuffer1[field_0x5108[index]];
			long      time = oldTime;
			CycleAnim[0]->FillBuffer(SafeBuffer1, GetMesh(), field_0x47f4, field_0x47f8, oldTime, frame, NULL, 1);
			LH3DAnim::FinishTransform(SafeBuffer1, GetMesh(), positionMatrix);
			LHPoint start(bone->_41, bone->_42, bone->_43);
			long    step = AnimTimeInc / 30;
			bool    noHit = true;
			LHPoint hitPos;
			LHPoint hitDir;
			for (int i = 0; i < 30; i++)
			{
				time += step;
				if (time < field_0x50d8[index] - tolerance || time > field_0x50d8[index] + tolerance)
				{
					continue;
				}
				CycleAnim[0]->FillBuffer(SafeBuffer1, GetMesh(), field_0x47f4, field_0x47f8, time, frame, NULL, 1);
				LH3DAnim::FinishTransform(SafeBuffer1, GetMesh(), positionMatrix);
				LHPoint prev = start;
				start.Set(bone->_41, bone->_42, bone->_43);
				LHPoint velocity(0.0f, 0.0f, 0.0f);
				float   scale = CurrentAnim == C_FIGHT_ATTACK_SPECIAL ? 2.0f : 1.0f;
				AddLiquidParticle(start, velocity, 0x30ffffff, scale * Size1 * 2.0f, 4);
				float radius = scale * Size1 * ImpactSampleRadius * 15.0f;
				if (!FightCreature->IsRecoiling() && noHit)
				{
					LHPoint delta = start - prev;
					LHPoint up(0.0f, 1.0f, 0.0f);
					LHPoint side = up ^ delta;
					up = side ^ delta;
					LHPoint dirs[5] = {delta, side, up, LHPoint(-side.x, -side.y, -side.z),
					                   LHPoint(-up.x, -up.y, -up.z)};
					LHPoint anus = *GetAnusPos();
					for (int j = 0; j < 5; j++)
					{
						dirs[j].SetSize(radius);
						LHPoint end = start + dirs[j];
						LHPoint dir = end - anus;
						LHPoint impact;
						LHPoint normal;
						if (boite->GetImpactPoint(FightCreature->GetMesh(), anus, dir, impact, normal))
						{
							LHPoint toImpact = impact - anus;
							float   length = dir.Normalise();
							float   along = dir.DotProductInline(toImpact);
							if (along > 0.0f && along < length)
							{
								hitPos = impact;
								noHit = false;
								hitDir = delta;
							}
						}
					}
				}
			}
			if (!noHit)
			{
				float   damage = field_0x4ec4[index].y * Size2 / FightCreature->GetHeadHeight();
				LHPoint cutDir = hitDir * 5.0f * 30.0f;
				long    cutType = 0;
				long    cutSize = GRand::GameRand(8, CREATURE_3D_FILE, 6523);
				if (GRand::GameRand(2, CREATURE_3D_FILE, 6527))
				{
					switch (field_0x5138[index])
					{
					case 0:
						cutType = 1;
						break;
					case 1:
						switch (GRand::GameRand(3, CREATURE_3D_FILE, 6540))
						{
						case 0:
							cutType = 3;
							break;
						case 1:
							cutType = 4;
							break;
						case 2:
							cutType = 5;
							break;
						}
						break;
					case 2:
						cutType = 2;
						break;
					}
				}
				FightCreature->BeCut(hitPos, cutDir, cutType, cutSize);
				float spread = (float)sqrt(cutDir.x * cutDir.x + cutDir.y * cutDir.y + cutDir.z * cutDir.z) / 100.0f;
				if (!FightCreature->IsBlocking())
				{
					for (int i = 0; i < 40; i++)
					{
						LHPoint blood(cutDir.x + spread * (int)(GRand::LocalRand(51) - 25),
						              cutDir.y + spread * (int)(GRand::LocalRand(51) - 25),
						              cutDir.z + spread * (int)(GRand::LocalRand(51) - 25));
						AddLiquidParticle(hitPos, blood, BloodColours[GRand::LocalRand(3)].GetColor(),
						                  FightCreature->Size1 * 0.1f, 0);
					}
				}
				cutDir *= 0.25f;
				spread *= 0.6f;
				for (int i = 0; i < 8; i++)
				{
					LHPoint spark(cutDir.x + spread * (int)(GRand::LocalRand(51) - 25),
					              cutDir.y + spread * (int)(GRand::LocalRand(51) - 25),
					              cutDir.z + spread * (int)(GRand::LocalRand(51) - 25));
					AddLiquidParticle(hitPos, spark, 0x30f0c070, Size1 * 7.0f, 4);
				}
				float strength = (WeakStrong + 3.0f) / (FightCreature->WeakStrong + 3.0f) *
				                 (Size1 / FightCreature->Size1) * field_0x49a4;
				strength = strength > 0.04f ? (strength < 2.0f ? strength : 2.0f) : 0.04f;
				if (CurrentAnim == C_FIGHT_ATTACK_SPECIAL)
				{
					strength *= 2.0f;
				}
				float loss;
				long  recoil;
				long  impactType;
				if (damage > 0.66f)
				{
					loss = HeavyHitLoss;
					recoil = C_RECOIL_HI;
					impactType = 0;
				}
				else if (damage < 0.33f)
				{
					loss = LightHitLoss;
					recoil = C_RECOIL_LO;
					impactType = 2;
				}
				else
				{
					loss = MediumHitLoss;
					recoil = C_RECOIL_MI;
					impactType = 1;
				}
				loss *= strength;
				if (FightCreature->IsBlocking())
				{
					loss *= BlockedHitLossScale;
				}
				// Pick the _R/_L/_T/_B variant of the recoil from the direction the attack comes from.
				LHPoint& hitAngle = field_0x5048[index];
				if (sqrt(hitAngle.x * hitAngle.x + hitAngle.y * hitAngle.y) > -hitAngle.z)
				{
					if (hitAngle.x >= (float)fabs(hitAngle.y))
					{
						if (FightCreature->GetAnim(recoil + 2, 0))
						{
							recoil += 2;
						}
					}
					else if (-hitAngle.x >= (float)fabs(hitAngle.y))
					{
						if (FightCreature->GetAnim(recoil + 1, 0))
						{
							recoil += 1;
						}
					}
					else if (hitAngle.y >= (float)fabs(hitAngle.x))
					{
						if (FightCreature->GetAnim(recoil + 4, 0))
						{
							recoil += 4;
						}
					}
					else
					{
						if (FightCreature->GetAnim(recoil + 3, 0))
						{
							recoil += 3;
						}
					}
				}
				if (FightCreature)
				{
					FightCreature->ReduceFightHealth(loss);
					FightCreature->ReceivedFightImpact3d(impactType, 1.0f, creature);
					if (FightCreature->creature)
					{
						FightCreature->creature->DestroySpell();
					}
					if (FightCreature->field_0x4aa8 <= 0.0f)
					{
						Creature* loser = FightCreature->creature;
						if (loser)
						{
							Creature* winner = creature;
							if (winner)
							{
								CreatureBelief* belief = winner->mind->AddBeliefAboutObject(winner, loser);
								// A good winner shows off, an evil one poos on the loser.
								CreaturePlan plan(CREATURE_DESIRE_TO_OBEY_PLAYER,
								                  EvilGood >= -0.5f ? CREATURE_SHOW_IMPRESSIVE_ANIMATION : CREATURE_POO,
								                  belief, belief, NULL, 1.0f);
								winner->ForceActivityAndForceAction(plan, 1, 1);
								winner->NumBattlesWon++;
								winner->field_0x10b0 = 1;
								if (winner->GetPlayer())
								{
									Reaction::CreateReaction(winner, REACTION_REACT_TO_FIGHT_WON, winner->GetPlayer(),
									                         1);
								}
							}
							loser->Faint();
							loser->field_0x10b0 = 1;
						}
					}
					else
					{
						FightCreature->StartFightRecoilAction(recoil);
					}
				}
				field_0x5268 = 1;
			}
			if (FightCreature)
			{
				float   heading = Heading;
				LHPoint dir(sin(heading), 0.0f, -cos(heading));
				float   distance = FightCreature->position.GetDistance2D(position);
				float   extent = GetForwardExtent() + FightCreature->GetForwardExtent() * 0.5f;
				if (distance < extent)
				{
					LHPoint push = dir * ((extent - distance) * 0.5f);
					position -= push;
					position.y = GetAltitude(position);
					FightCreature->position.Add(push);
					FightCreature->position.y = GetAltitude(FightCreature->position);
				}
			}
		}
		else
		{
			LHPoint dir = FightCreature->GetPos() - position;
			float   heading = heading_from_direction_vector(dir);
			Heading = angle_correct(heading);
			DoFightPullApart();
		}
	}
}

void LH3DCreature::DoFightPullApart()
{
	if (FightCreature->CurrentAnim < C_FIGHT_ATTACK_HIGH || FightCreature->CurrentAnim > C_FIGHT_ATTACK_SPECIAL2)
	{
		// Push both creatures apart along this creature's facing if their forward extents overlap.
		float   heading = Heading;
		LHPoint dir(sin(heading), 0.0f, -cos(heading));
		float   distance = FightCreature->position.GetDistance2D(position);
		float   extent = GetForwardExtent() + FightCreature->GetForwardExtent();
		if (distance < extent)
		{
			// TODO: 90%. The target shares one stack slot between dir and newPos, keeps x/y of the second sum on
			// the FPU and computes push as dir.x * overlap (not overlap * dir.x). It matches 100% with
			// `LHPoint push(dir.x * overlap, dir.y * overlap, dir.z * overlap)` plus a field-wise
			// LHPoint::operator=, but that operator breaks ten matched functions (they need bitwise copies).
			LHPoint push = dir * ((extent - distance) * 0.5f);
			LHPoint newPos = position - push;
			if (newPos.GetDistance2D(ArenaCentre) < ArenaEdgeFraction * ArenaRadius)
			{
				SetPos(newPos);
			}
			newPos = FightCreature->position + push;
			if (newPos.GetDistance2D(ArenaCentre) < ArenaEdgeFraction * ArenaRadius)
			{
				FightCreature->SetPos(newPos);
			}
		}
	}
}

float LH3DCreature::GetForwardExtent()
{
	float     heading = Heading;
	LHPoint   forward(sin(heading), 0.0f, -cos(heading));
	float     extent = 0.0f;
	LHMatrix* matrix = GetSafeBuffer();
	for (int i = 0; i < field_0x47b8; i++)
	{
		const LHPoint& pos = matrix->GetPos();
		LHPoint        offset(pos.x - position.x, pos.y - position.y, pos.z - position.z);
		extent = max(extent, forward.DotProductInline(offset));
		matrix++;
	}
	return extent;
}

void LH3DCreature::ReceivedFightImpact3d(long param_1, float param_2, Creature* attacker)
{
	if (creature)
	{
		creature->ReceivedFightImpact(param_1, param_2 * 0.5f, attacker);
	}
	if (field_0x4b24 && field_0x4ac0)
	{
		field_0x4ac0--;
		field_0x4b24 = false;
		if (creature == GGame::g_game->players[GGame::g_game->PlayerIndex].creature.Get() && field_0x4b30)
		{
			field_0x4b30--;
			LastFightIntersectionPending = false;
		}
	}
}

uint32_t LH3DCreature::GetObjectActionStatus()
{
	return ObjectActionStatus;
}

bool32_t LH3DCreature::InitialiseTurning(float heading)
{
	ReverseAnim = 0;
	RequiredHeading = heading;
	float    diff = angle_correct(RequiredHeading - Heading);
	bool32_t ok = true;
	CAnim*   anim0;
	CAnim*   anim1;
	CAnim*   anim2;
	if (diff > 0.0f)
	{
		if (!(anim0 = GetAnim(C_MOVE_L_SPIN_0, 0)) || !(anim1 = GetAnim(C_MOVE_L_SPIN_90, 0)) ||
		    !(anim2 = GetAnim(C_MOVE_L_SPIN_180, 0)))
		{
			ok = false;
		}
		field_0x521c = 1;
	}
	else
	{
		if (!(anim0 = GetAnim(C_MOVE_R_SPIN_0, 0)) || !(anim1 = GetAnim(C_MOVE_R_SPIN_90, 0)) ||
		    !(anim2 = GetAnim(C_MOVE_R_SPIN_180, 0)))
		{
			ok = false;
		}
		field_0x521c = 2;
	}
	CycleTime[0] = 0;
	if (!ok)
	{
		return true;
	}
	CFrame* frame = GetAnim(C_MOVE_STAND, 0)->frames[0];
	if (field_0x521c == 2)
	{
		diff = -diff;
	}
	// Blend between the 0/90 or 90/180 degree spins.
	if (diff < HALF_PI_F)
	{
		Anim0x5220 = new (CREATURE_3D_FILE, 6898) CAnim(anim0, frame, anim1, frame, diff / HALF_PI_F);
	}
	else
	{
		Anim0x5220 = new (CREATURE_3D_FILE, 6904) CAnim(anim1, frame, anim2, frame, (diff - HALF_PI_F) / HALF_PI_F);
	}
	return true;
}

bool32_t LH3DCreature::DoTheTurningBusiness()
{
	CycleWeight[0] = 1.0f;
	if (Anim0x5220)
	{
		CycleAnim[0] = Anim0x5220;
		CAnim* anim = GetAnim(C_MOVE_R_SPIN_90, 0);
		// TODO: CAnim's first field is a signed duration, not uint32_t FrameOffset.
		long oldTime = (long)anim->FrameOffset * CycleTime[0] / (long)CycleAnim[0]->FrameOffset;
		CycleTime[0] += AnimTimeInc;
		CheckSounds(C_MOVE_R_SPIN_90, oldTime,
		            (long)anim->FrameOffset * CycleTime[0] / (long)CycleAnim[0]->FrameOffset);
	}
	else
	{
		CycleAnim[0] = GetAnim(C_MOVE_STAND, 0);
		float diff = angle_correct(RequiredHeading - Heading);
		float heading = Heading + diff * CycleTime[0] / (long)CycleAnim[0]->FrameOffset;
		Heading = angle_correct(heading);
		CycleTime[0] += AnimTimeInc;
	}
	if (CycleTime[0] >= (long)CycleAnim[0]->FrameOffset)
	{
		CycleAnim[0] = GetAnim(C_MOVE_STAND, 0);
		CycleTime[0] = 0;
		Heading = RequiredHeading;
		delete Anim0x5220;
		Anim0x5220 = NULL;
		return true;
	}
	return false;
}

void LH3DCreature::AttemptToKeepOnFlatLand()
{
	if (IsMoving())
	{
		return;
	}
	int     count = 0;
	LHPoint sum(0.0f, 0.0f, 0.0f);
	for (int i = 0; i < field_0x47b8; i++)
	{
		const LHPoint* pos = &SafeBuffer0[i].GetPos();
		if (!IsDestinationValid(pos))
		{
			LHPoint dir(position.x - pos->x, 0.0f, position.z - pos->z);
			if (dir.GetNormeSq() > 0.01f)
			{
				count++;
				dir.FastNormalizeInline();
				sum.Add(dir);
			}
		}
	}
	if (count == 0)
	{
		return;
	}
	if (sum.GetNormeSq() < 0.01f)
	{
		return;
	}
	sum.SetSize(count * GetStandingHeight() / field_0x47b8 * 0.5f);
	LHPoint newPos = position + sum;
	if (IsDestinationValid(&newPos))
	{
		SetPos(newPos);
	}
}

void LH3DCreature::DoBlendedAction()
{
	if (!TurningCompleted)
	{
		if (!DoTheTurningBusiness())
		{
			return;
		}
		TurningCompleted = 1;
		CycleTime[0] = 0;
	}
	long actionTime;
	long anim;
	if (MoveState == LH3D_CREATURE_STATE_PICKING_UP)
	{
		actionTime = PickUpTime;
		CycleAnim[0] = GetAnim(C_PICKUP_BACK_LEFT, 0);
		CycleAnim[1] = GetAnim(C_PICKUP_BACK_RIGHT, 0);
		CycleAnim[2] = GetAnim(C_PICKUP_FRONT_LEFT, 0);
		anim = C_PICKUP_FRONT_RIGHT;
		ReverseAnim = field_0x5230;
	}
	else
	{
		actionTime = DestroyTime;
		CycleAnim[0] = GetAnim(C_DESTROY_BACK_LEFT, 0);
		CycleAnim[1] = GetAnim(C_DESTROY_BACK_RIGHT, 0);
		CycleAnim[2] = GetAnim(C_DESTROY_FRONT_LEFT, 0);
		anim = C_DESTROY_FRONT_RIGHT;
		ReverseAnim = field_0x5234;
	}
	CycleAnim[3] = GetAnim(anim, 0);
	if (!ActionObject && !HeldObject && ObjectActionStatus != 3)
	{
		ObjectActionStatus = 2;
	}
	if (ObjectActionStatus == 1)
	{
		if (ActionObject->IsObjectInMap())
		{
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(ActionObject->Pos, pos);
			Living* living = dynamic_cast<Living*>(ActionObject);
			if (living && living->IsMoving())
			{
				AddToVectorOfMovingLiving(living, (actionTime - CycleTime[0]) * (sqrt(Size1 + Size1) * 0.001), &pos);
			}
			LHPoint relative;
			GetRelativePosition(pos, &relative);
			float lrb;
			float lrf;
			float bf;
			GetMultipliers(&lrb, &lrf, &bf, relative, MoveState, ReverseAnim);
			if (lrb < -0.5f || lrb > 1.5f || lrf < -0.5f || lrf > 1.5f || bf < -0.8f || bf > 1.8f)
			{
				ObjectActionStatus = 2;
				ActionObject = NULL;
			}
			else
			{
				// TODO: field_0x5168 is still an LHPoint; its x/y/z are the floats m_lrb, m_lrf and m_bf.
				// 99.9%: the target multiplies m_bf * m_lrf for CycleWeight[3] where this source gives m_lrf * m_bf
				// (cl6 picks the operand order itself; writing these stores through an LHPoint reference matches,
				// but that would be a meaningless alias).
				field_0x5168.x = lrb;
				field_0x5168.y = lrf;
				field_0x5168.z = bf;
			}
		}
		else
		{
			ObjectActionStatus = 2;
			ActionObject = NULL;
		}
	}
	CycleWeight[0] = (1.0f - field_0x5168.z) * (1.0f - field_0x5168.x);
	CycleWeight[1] = (1.0f - field_0x5168.z) * field_0x5168.x;
	CycleWeight[2] = field_0x5168.z * (1.0f - field_0x5168.y);
	CycleWeight[3] = field_0x5168.z * field_0x5168.y;
	if (ObjectActionStatus == 1 || ObjectActionStatus == 3)
	{
		CycleTime[0] = AdvanceCyclic(anim, CycleTime[0], AnimTimeInc);
	}
	else
	{
		CycleTime[0] = max(0, CycleTime[0] - AnimTimeInc);
	}
	CycleTime[1] = CycleTime[2] = CycleTime[3] = CycleTime[0];
	if (ObjectActionStatus == 3 || ObjectActionStatus == 2)
	{
		return;
	}
	if (CycleTime[0] < actionTime)
	{
		return;
	}
	ObjectActionStatus = 3;
	if (MoveState == LH3D_CREATURE_STATE_PICKING_UP)
	{
		DropHeldObject(ActionObject);
		Creature* heldCreature = HeldObject ? HeldObject->CastCreature() : NULL;
		if (heldCreature)
		{
			heldCreature->SetInCreatureHand(creature);
			if (!heldCreature->GetCreature3D()->SetInHand(true))
			{
				ObjectActionStatus = 2;
				ActionObject = NULL;
				ReleaseHeldObject();
				return;
			}
		}
		else
		{
			Living* living = dynamic_cast<Living*>(HeldObject);
			if (living)
			{
				living->StorePreviousState();
				if (living->SetTopState(VILLAGER_STATE_IN_HAND) != LIVING_SET_STATE_SUCCESS)
				{
					ObjectActionStatus = 2;
					ActionObject = NULL;
					ReleaseHeldObject();
					return;
				}
			}
		}
		HeldObject->RemoveMapObject();
		if (HeldObject->IsTree() && !(ActionObject->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS))
		{
			SoundTag::Create(position, SoundTag::GetRandomSample(LH_SAMPLE_G_TREEBREAK_01_C2, 3), false, 3, 0, 0, 1,
			                 AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
		}
		if (creature)
		{
			creature->physical->ObjectCarried = HeldObject;
		}
	}
	else if (ActionObject->IsAbode())
	{
		Abode* abode = dynamic_cast<Abode*>(ActionObject);
		if (!abode->DestructionMesh)
		{
			abode->DestructionMesh = new (CREATURE_3D_FILE, 7164) FragMesh(abode->Game3dObject);
		}
		LHPoint pos = abode->Pos.GetLHPoint();
		LHPoint direction(0.0f, -1.0f, 0.0f);
		// TODO: hitter 1 has no IMPACT_SOUND_HITTER name yet.
		long sound[5] = {IMPACT_SOUND_LEVEL_MEDIUM, 1, 1, IMPACT_SOUND_TARGET_BUILDING, IMPACT_SOUND_EVENT_COLLISION};
		if (!GGame::g_game->GetCamera())
		{
			return;
		}
		float distance = GGame::g_game->GetCamera()->GetDistance(pos);
		GGlobal::Global.audio->SamplePlayAnimEffect(
			abode, distance, sound, 0, GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 0, 0.0f, 0.0f);
		abode->DestructionMesh->Impact(&pos, &direction, GetStandingHeight() * 0.25f, abode);
		if (abode->DestructionMesh->WorkOutFractionRemaining() == 1.0f)
		{
			delete abode->DestructionMesh;
			abode->DestructionMesh = NULL;
		}
		else
		{
			abode->ApplyEffectsDueToPhysicalDestruction(creature, creature ? creature->GetPlayer() : NULL);
		}
	}
	else if (ActionObject->IsRock())
	{
		Rock* rock = dynamic_cast<Rock*>(ActionObject);
		if (rock)
		{
			LHPoint              pos = rock->Pos.GetLHPoint();
			LH_SamplePlayOptions options;
			options.Bank = GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_IN_GAME);
			static unsigned long rockTap;
			options.SampleNumber = LH_SAMPLE_G_ROCKTAP_01_C2 + rockTap;
			if (++rockTap == 4)
			{
				rockTap = 0;
			}
			// TODO: the attached object is this LH3DCreature, not a Base.
			options.AttachedObject = (Base*)this;
			options.Positional = 1;
			options.Pos = pos;
			options.Looping = 0;
			GGlobal::Global.audio->PlaySoundEffect(&options);
			rock->SplitInTwo();
		}
	}
	// TODO: squashing a Living plays the squash-animal sounds, but only after a cast to Rock (the Mac does the same),
	// so it never happens; looks like a copy-and-paste slip in the original.
	else if (ActionObject->IsLiving())
	{
		Rock* rock = dynamic_cast<Rock*>(ActionObject);
		if (rock)
		{
			LHPoint              pos = ActionObject->Pos.GetLHPoint();
			LH_SamplePlayOptions options;
			options.Bank = GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_IN_GAME);
			static unsigned long squashAnimal;
			options.SampleNumber = LH_SAMPLE_G_SQUASHANIMAL_01 + squashAnimal;
			if (++squashAnimal == 3)
			{
				squashAnimal = 0;
			}
			// TODO: the attached object is this LH3DCreature, not a Base.
			options.AttachedObject = (Base*)this;
			options.Positional = 1;
			options.Pos = pos;
			options.Looping = 0;
			GGlobal::Global.audio->PlaySoundEffect(&options);
			rock->SplitInTwo();
		}
	}
	ActionObject = NULL;
}

void LH3DCreature::GetThrowPosition(float heading, float slope, LHPoint* result)
{
	ValidateThrowPositions();
	// Interpolate between the flat and the high release positions by the requested y/z slope.
	float   flat = ThrowYL / ThrowZL;
	float   high = ThrowYH / ThrowZH;
	float   t = (slope - flat) / (high - flat);
	LHPoint pos = ThrowPosHigh * t + ThrowPosFlat * (1.0f - t);
	if (field_0x5230)
	{
		pos.x = -pos.x;
	}
	LHMatrix rotation;
	rotation.SetRotationY(heading);
	result->Set(pos);
	result->Mul(Size2);
	rotation.TransformPoint(*result);
	result->Add(position);
}

void LH3DCreature::DoDiscardAction()
{
	CycleAnim[0] = GetAnim(CurrentAnim, 0);
	CycleWeight[0] = 1.0f;
	long releaseTime;
	switch (CurrentAnim)
	{
	case C_OBJECT_REMOVE_DISCARD:
		releaseTime = DiscardTime;
		break;
	case C_OBJECT_REMOVE_EAT:
		releaseTime = EatTime;
		break;
	case C_OBJECT_REMOVE_PUT_DOWN:
		releaseTime = PutDownTime;
		break;
	}
	if (HeldObject && CycleTime[0] >= releaseTime)
	{
		if (CurrentAnim == C_OBJECT_REMOVE_DISCARD || CurrentAnim == C_OBJECT_REMOVE_PUT_DOWN)
		{
			LHPoint velocity;
			if (CurrentAnim == C_OBJECT_REMOVE_DISCARD)
			{
				LHMatrix rotation;
				rotation.SetRotationY(Heading);
				velocity.Set(DiscardVelocity * 0.6f);
				if (field_0x5230)
				{
					velocity.x = -velocity.x;
				}
				velocity.Mul(Size2);
				rotation.TransformPoint(velocity);
			}
			else
			{
				velocity.Set(0.0f, 0.0f, 0.0f);
			}
			long    hand = field_0x5230 ? GetMirrorBone(RightHand) : RightHand;
			LHPoint handPos;
			LH3DAnim::GetGraspPoint(SafeBuffer0, meshes[CurrentMesh], handPos, hand);
			GLandscape::ConvertLandscapePointToMapCoord(handPos, HeldObject->Pos);
			float     altitude = GetAltitude(handPos);
			Creature* heldCreature = HeldObject ? HeldObject->CastCreature() : NULL;
			if (heldCreature)
			{
				heldCreature->SetInCreatureHand(NULL);
				heldCreature->GetCreature3D()->SetInHand(false);
				heldCreature->InsertMapObject();
				heldCreature->GetCreature3D()->position.y = altitude;
				heldCreature->Flags &= ~GAME_THING_WITH_POS_FLAG_LOCKED_SELECT;
			}
			else
			{
				HeldObject->Pos.altitude = handPos.y - altitude;
				UpdateHeldObjects3Angles();
				GPlayer* player = creature ? creature->GetPlayer() : NULL;
				LogCurrentBufferMatrixes(SafeBuffer0, field_0x47b8, MoveState);
				FillHeldObjectMatrix(SafeBuffer0);
				if (player)
				{
					LHPoint spin(0.0f, 1.0f, 0.0f);
					HeldObject->InitialisePhysicsFromHand(velocity, spin, player->GetLeaderInterfaceStatus(), creature,
					                                      false);
				}
				else
				{
					LHPoint spin(0.0f, 1.0f, 0.0f);
					HeldObject->InitialisePhysicsFromHand(velocity, spin, NULL, creature, false);
				}
				if (creature)
				{
					// TODO: Creature::field_0x11c8 is the Object* the creature last dropped (GScript::GetObjectDropped).
					creature->field_0x11c8 = (uint32_t)HeldObject;
				}
			}
		}
		ReleaseHeldObject();
	}
	CycleTime[0] = AdvanceCyclic(CurrentAnim, CycleTime[0], AnimTimeInc);
}

void LH3DCreature::UpdateHeldObjects3Angles()
{
	LHMatrix matrix = SafeBuffer0[field_0x5230 ? GetLeftHand() : RightHand];
	matrix.NormaliseMatrixOnly();
	float scale = HeldObject->GetScale();
	// Scaled column by column (the translation row too).
	matrix._11 *= scale;
	matrix._21 *= scale;
	matrix._31 *= scale;
	matrix._41 *= scale;
	matrix._12 *= scale;
	matrix._22 *= scale;
	matrix._32 *= scale;
	matrix._42 *= scale;
	matrix._13 *= scale;
	matrix._23 *= scale;
	matrix._33 *= scale;
	matrix._43 *= scale;
	// Swap the Y and Z axes (the Mac's GetVectorY/GetVectorZ rows). The temporary is assigned, not
	// copy-constructed: LHPoint's copy constructor copies member-wise and lets cl6 forward the scaled values.
	LHPoint temp;
	temp = *(LHPoint*)&matrix._31;
	*(LHPoint*)&matrix._31 = *(LHPoint*)&matrix._21;
	*(LHPoint*)&matrix._21 = temp;
	if (field_0x5230)
	{
		matrix._21 = -matrix._21;
		matrix._22 = -matrix._22;
		matrix._23 = -matrix._23;
		matrix._11 = -matrix._11;
		matrix._12 = -matrix._12;
		matrix._13 = -matrix._13;
	}
	else
	{
		matrix._31 = -matrix._31;
		matrix._32 = -matrix._32;
		matrix._33 = -matrix._33;
		matrix._11 = -matrix._11;
		matrix._12 = -matrix._12;
		matrix._13 = -matrix._13;
	}
	float x;
	float y;
	float z;
	matrix.GetYXZ(&y, &x, &z);
	HeldObject->SetXYZAngles(x, y, z);
}

void LH3DCreature::ReleaseHeldObject()
{
	if (!HeldObject->IsCreature())
	{
		HeldObject->Game3dObject->SetLinked(false);
		if (field_0x4904)
		{
			field_0x4904 = 0;
			HeldObject->Game3dObject->SetHumanShadowed(true);
		}
	}
	HeldObject = NULL;
	if (creature)
	{
		creature->physical->ObjectCarried = NULL;
	}
}

void LH3DCreature::DropHeldObject(Object* object)
{
	HeldObject = object;
	if (!HeldObject->IsCreature())
	{
		HeldObject->Game3dObject->SetLinked(true);
		if (HeldObject->Game3dObject->IsHumanShadowed())
		{
			field_0x4904 = 1;
			HeldObject->Game3dObject->SetHumanShadowed(false);
		}
	}
}

void LH3DCreature::FillAverageHandPos(LHPoint& pos)
{
	LHMatrix* matrices = GetSafeBuffer();
	LHPoint   right;
	LH3DAnim::GetGraspPoint(matrices, meshes[CurrentMesh], right, RightHand);
	LHPoint left;
	LH3DAnim::GetGraspPoint(matrices, meshes[CurrentMesh], left, GetMirrorBone(RightHand));
	pos.Set((right + left) * 0.5f);
}

void LH3DCreature::ThrowPreCalc()
{
	ReverseAnim = field_0x5230;
	TurningCompleted = 1;
	CycleTime[0] = 0;
	float   heading = heading_from_direction_vector(ThrowTarget - position);
	LHPoint throwPos;
	GetThrowPosition(heading, 0.5f, &throwPos);
	LHPoint gravity(0.0f, -9.81f, 0.0f);
	LHPoint velocity =
		(ThrowTarget - throwPos - gravity * (0.5f * ThrowGivenTime * ThrowGivenTime)) * (1.0f / ThrowGivenTime);
	ThrowZR = range_2d(velocity);
	ThrowYR = velocity.y;
	if (ThrowYR < -ThrowZR)
	{
		ThrowYR = -ThrowZR;
	}
	if (ThrowYR > ThrowZR)
	{
		ThrowYR = ThrowZR;
	}
}

void LH3DCreature::DoThrowingAction()
{
	if (!TurningCompleted)
	{
		if (!DoTheTurningBusiness())
		{
			return;
		}
		ThrowPreCalc();
	}
	float high = ThrowYH / ThrowZH;
	float low = ThrowYL / ThrowZL;
	float required = ThrowYR / ThrowZR;
	CycleAnim[0] = GetAnim(C_THROW_HURL_FLAT, 0);
	CycleAnim[1] = GetAnim(C_THROW_HURL_HIGH, 0);
	CycleWeight[1] = (required - low) / (high - low);
	CycleWeight[0] = 1.0f - CycleWeight[1];
	// Near the release time the anim runs at the speed that matches the throw distance.
	long throwStep = 1.6f * IntTimeInc * ThrowZR / (Size2 * (CycleWeight[0] * ThrowZL + CycleWeight[1] * ThrowZH));
	long timeFromRelease = abs(CycleTime[0] - ThrowTime);
	if (timeFromRelease > 400.0f)
	{
		timeFromRelease = 400;
	}
	CycleTime[0] = CycleTime[1] = AdvanceCyclic(C_THROW_HURL_FLAT, CycleTime[0],
	                                            (timeFromRelease / 400.0f) * (AnimTimeInc - throwStep) + throwStep);
	if (HeldObject && CycleTime[0] >= ThrowTime)
	{
		long    hand = field_0x5230 ? GetMirrorBone(RightHand) : RightHand;
		LHPoint handPos;
		LH3DAnim::GetGraspPoint(SafeBuffer0, meshes[CurrentMesh], handPos, hand);
		GLandscape::ConvertLandscapePointToMapCoord(handPos, HeldObject->Pos);
		HeldObject->Pos.altitude = handPos.y - GetAltitude(handPos);
		UpdateHeldObjects3Angles();
		LHPoint gravity(0.0f, -9.81f, 0.0f);
		LHPoint velocity =
			(ThrowTarget - handPos - gravity * (0.5f * ThrowGivenTime * ThrowGivenTime)) * (1.0f / ThrowGivenTime);
		LHPoint           spin(0.0f, 0.0f, 0.0f);
		GInterfaceStatus* status = creature->GetPlayer() ? creature->GetPlayer()->GetLeaderInterfaceStatus() : NULL;
		PhysicsObject*    physics = HeldObject->InitialisePhysics(velocity, spin, creature, true, status).Physics;
		if (physics)
		{
			physics->Physics.Inertia = 0.0f;
		}
		if (creature)
		{
			// TODO: Creature::field_0x11c8 is the Object* the creature last dropped (GScript::GetObjectDropped).
			creature->field_0x11c8 = (uint32_t)HeldObject;
		}
		ReleaseHeldObject();
		// TODO: CreatureMentalDebug 0x24 and 0x30 are LHPoints (throw start and target), 0x3c how long to show them.
		creature->mind->debug.LineTurnsLeft = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(15.0f);
		creature->mind->debug.LineStart = handPos;
		creature->mind->debug.LineEnd = ThrowTarget;
	}
}

void LH3DCreature::DoStandingAction()
{
	CycleAnim[0] = GetAnim(C_MOVE_STAND, 0);
	CycleWeight[0] = 1.0f;
	if (CycleAnim[0])
	{
		// TODO: CAnim::FrameOffset is the signed animation length; drop the casts once LH3DAnim.h types it as long.
		CycleTime[0] = field_0x4988 * (long)CycleAnim[0]->FrameOffset;
		if (CycleTime[0] >= (long)CycleAnim[0]->FrameOffset)
		{
			CycleTime[0] = CycleAnim[0]->FrameOffset - 1;
		}
	}
}

void LH3DCreature::DoMovingAction()
{
	ReverseAnim = 0;
	bool wasMoving = RpFollow->field_0x64054 == 1 || RpFollow->field_0x64054 == 2;
	if (field_0x519c)
	{
		field_0x519c = 0;
		NumObjectsEncountered = 0;
		RpFollow->GameTurnUpdate(FollowerCallbackObjectEncountered, 0x100);
		if (RpFollow->field_0x64054 == 6)
		{
			MoveState = LH3D_CREATURE_STATE_STANDING;
			field_0x5190 = 0;
			StateSet(LH3D_CREATURE_STATE_STANDING);
			DoAppropriateAction();
			Point2D pos(position.x, position.z);
			RpFollow->SetPos(pos, GetNavRadius());
			if (creature)
			{
				// TODO: CreatureAgenda 0x1ad4 is an LHPoint (where the creature got trapped).
				((LHPoint*)&creature->mind->agenda.field_0x1ad4)
					->Set(RpFollow->field_0x64074.x, 0.0f, RpFollow->field_0x64074.y);
				creature->TrappedInEnclosedSpace(NumObjectsEncountered, ObjectsEncountered);
			}
			return;
		}
		if (RpFollow->field_0x64054 == 5)
		{
			RpFollow->field_0x64054 = 1;
		}
	}
	else
	{
		RpFollow->GameTurnUpdate(NULL, 0x80);
	}
	UpdateMotion();
	bool isMoving = RpFollow->field_0x64054 == 1 || RpFollow->field_0x64054 == 2;
	position.y = LH3DIsland::GetAltitude(LH3DMapCoords(position.x, position.z));
	if (isMoving && !wasMoving)
	{
		for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node != NULL; node = node->next.Get())
		{
			Creature*     other = node->payload;
			LH3DCreature* other3d = other->GetCreature3D();
			if (other3d != this && creature->CreatureMustAvoid(other))
			{
				if (other3d->RpFollow->field_0x64054 >= 2 && other3d->RpFollow->field_0x64054 <= 4)
				{
					creature->AddToRoutePlan(other3d->RpFollow, other, 1, NULL);
				}
			}
		}
	}
	if (RpFollow->field_0x64054 == 1)
	{
		switch (field_0x5190)
		{
		case 2:
			field_0x5190 = 3;
			break;
		case 5:
			Heading = RpFollow->field_0x64040;
			field_0x5190 = 0;
			StateSet(LH3D_CREATURE_STATE_STANDING);
			DoAppropriateAction();
			break;
		case 0:
		case 6:
		case 7:
			field_0x5190 = 0;
			StateSet(LH3D_CREATURE_STATE_STANDING);
			DoAppropriateAction();
			break;
		}
	}
}

void LH3DCreature::DoAppropriateAction()
{
	if (MoveState == LH3D_CREATURE_STATE_STANDING)
	{
		DoStandingAction();
	}
	else if (MoveState == LH3D_CREATURE_STATE_TURNING)
	{
		DoTheTurningBusiness();
	}
}

void LH3DCreature::MorphTexture()
{
	Morphable::MorphTexture();
	GPlayer*      player = creature ? creature->GetPlayer() : NULL;
	unsigned long playerNumber = player ? player->GetPlayerNumber() : GGame::g_game->PlayerIndex;
	if (GGame::g_game->GetPlayer(playerNumber)->GetLeaderInterfaceStatus())
	{
		TattooInfo* tattoos = creature ? (TattooInfo*)creature->field_0x1170 : NULL;
		if (field_0x4a94)
		{
			tattoos = field_0x4a94;
		}
		else if (player == GGame::g_game->MyPlayer() || GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
		{
			if (GGame::g_game->MyPlayer()->GetCreature())
			{
				tattoos = (TattooInfo*)GGame::g_game->MyPlayer()->GetCreature()->field_0x1170;
			}
		}
		if (tattoos)
		{
			for (int i = 0; i < 8; i++)
			{
				long slot = tattoos[i].Slot;
				if (slot < 8 && field_0x569c[slot])
				{
					// TODO: LH3DMesh::skins is an array of texture pointers (LH3DTexture**); drop the cast once it is.
					GTattoo::Draw(field_0x56bc[slot], field_0x56dc[slot],
					              ((LH3DTexture**)GetMesh()->skins)[TattooPositions[slot].Skin],
					              TattooPositions[slot].X, TattooPositions[slot].Y, field_0x56fc[slot], playerNumber,
					              &tattoos[i], i, NULL);
				}
			}
		}
	}
	LH3DMesh*           mesh = GetMesh();
	LH3DCreatureDamage* damage = Damage;
	unsigned long       i;
	for (i = 0; i < damage->NumBruises; i++)
	{
		damage->Bruises[i].DrawCutAroundIntersectionPoint(mesh, (float)damage->Bruises[i].Age /
		                                                            BruiseHealTimes[damage->Bruises[i].Type]);
	}
	for (i = 0; i < damage->NumCuts; i++)
	{
		int colour = 0;
		if (damage->Cuts[i].Age > 42)
		{
			colour = 2;
		}
		else if (damage->Cuts[i].Age > 21)
		{
			colour = 1;
		}
		damage->Cuts[i].ColourIntersectionPoint(mesh, &BloodColours[colour], BloodColourStrength);
	}
}

void LH3DCreature::ResetMorphAnims()
{
	field_0x5244 = 0;
	field_0x5248 = 0;
	field_0x524c = 0;
	field_0x5254 = 0;
	field_0x5258 = 0;
	field_0x5260 = 0;
	field_0x5264 = 0;
	field_0x525c = 0;
	field_0x5250 = 0;
}

void LH3DCreature::MorphAnims()
{
	Morphable::MorphAnims();
	ResetMorphAnims();
}

void LH3DCreature::InitialiseDestructionBones()
{
	float height = GetStandingHeight();
	DestructionBones[0].Bone = HeadBone;
	DestructionBones[0].Radius = height * GetExtraHeadScale() * 0.125f;
	DestructionBones[1].Bone = Anus;
	DestructionBones[1].Radius = height * (1.0f / 6.0f);
	DestructionBones[2].Bone = RightHand;
	DestructionBones[2].Radius = height * GetExtraFeetScale() * 0.125f;
	DestructionBones[3].Bone = GetMirrorBone(RightHand);
	DestructionBones[3].Radius = height * GetExtraFeetScale() * 0.125f;
	DestructionBones[4].Bone = RightFoot;
	DestructionBones[4].Radius = height * GetExtraFeetScale() * 0.125f;
	DestructionBones[5].Bone = GetMirrorBone(RightFoot);
	DestructionBones[5].Radius = height * GetExtraFeetScale() * 0.125f;
	DestructionBones[6].Bone = RightArmpit;
	DestructionBones[6].Radius = height * 0.125f;
	DestructionBones[7].Bone = GetMirrorBone(RightArmpit);
	DestructionBones[7].Radius = height * 0.125f;
}

void LH3DCreature::StartDestruction()
{
	field_0x5044 = 1;
	for (int i = 0; i < 8; i++)
	{
		DestructionBones[i].Pos = SafeBuffer0[DestructionBones[i].Bone].GetPos();
	}
}

void LH3DCreature::ClearField5044()
{
	field_0x5044 = 0;
}

void LH3DCreature::AdvanceMovementAnimations(float param_1)
{
	if (CurrentSpeed > 0.0001f)
	{
		if (CurrentSpeed < WalkSpeed)
		{
			CycleAnim[0] = GetAnim(C_MOVE_STAND, 0);
			CycleAnim[1] = GetAnim(C_MOVE_WALK, 0);
			CycleWeight[1] = CurrentSpeed / WalkSpeed;
			CycleWeight[0] = 1.0f - CycleWeight[1];
			float cycles = param_1 / (CycleAnim[1]->field_0x8[1] * Size2 * CycleWeight[1]);
			CycleTime[0] = (long)((long)CycleAnim[0]->FrameOffset * field_0x4988);
			CycleTime[1] = AdvanceCyclic(C_MOVE_WALK, CycleTime[1], (long)((long)CycleAnim[1]->FrameOffset * cycles));
		}
		else
		{
			CycleAnim[1] = GetAnim(C_MOVE_WALK, 0);
			CycleAnim[0] = GetAnim(C_MOVE_RUN, 0);
			CycleWeight[0] = (CurrentSpeed - WalkSpeed) / (RunSpeed - WalkSpeed);
			CycleWeight[1] = 1.0f - CycleWeight[0];
			float cycles =
				param_1 /
				((CycleAnim[1]->field_0x8[1] * CycleWeight[1] + CycleAnim[0]->field_0x8[1] * CycleWeight[0]) * Size2);
			CycleTime[1] = AdvanceCyclic(C_MOVE_WALK, CycleTime[1], (long)((long)CycleAnim[1]->FrameOffset * cycles));
			CycleTime[0] = CycleTime[1] * (long)CycleAnim[0]->FrameOffset / (long)CycleAnim[1]->FrameOffset;
		}
	}
}

void LH3DCreature::GetRelativePosition(LHPoint& pos, LHPoint* result)
{
	// TODO: 94.6%: the target copies result->z (integer move) before result->x/y (FPU); every copy form tried
	// (Set, struct copy, member-wise, z-first) keeps x first. The product is written back into offset as on the Mac.
	LHPoint offset;
	offset = pos - position;
	LHMatrix rotation;
	rotation.SetRotationY(-Heading);
	offset = rotation * offset;
	result->Set(offset);
}

void LH3DCreature::Unknown48db40(Object* object, LHPoint* result, long state)
{
	result->SetNull();
	// The target multiplies by a 3.0f constant (0x8cf194) that is not the shared `3.0f` literal (0x8c2c50, also
	// used elsewhere in this file); dividing by the folded 1/3 gives the reciprocal-named __real@4@4000bfffffa000003000.
	float    maxSize = Size1 / (1.0f / 3.0f);
	LHPoint* positions = state == LH3D_CREATURE_STATE_PICKING_UP ? field_0x49c8 : field_0x4a44;
	LHPoint  scaled[4];
	for (int i = 0; i < 4; i++)
	{
		scaled[i] = positions[i] * Size2;
		result->z += scaled[i].z * 0.25f;
	}
	Game3DObject* object3d = object->Game3dObject;
	if (object3d)
	{
		float scale = object->GetScale();
		if (scale * object3d->GetMesh()->BoundingBox.size.y * 2.0f > maxSize)
		{
			result->z = -max(-result->z, object->Get2DRadius() + field_0x5228);
		}
	}
}

void LH3DCreature::GetMultipliers(float* param_1, float* param_2, float* param_3, LHPoint& pos, long param_5,
                                  int param_6)
{
	LHPoint* positions = param_5 == LH3D_CREATURE_STATE_PICKING_UP ? field_0x49c8 : field_0x4a44;
	LHPoint  scaled[4];
	for (int i = 0; i < 4; i++)
	{
		scaled[i] = positions[i] * Size2;
		if (param_6)
		{
			scaled[i].x = -scaled[i].x;
		}
	}
	*param_1 = (pos.x - scaled[0].x) / (scaled[1].x - scaled[0].x);
	*param_2 = (pos.x - scaled[2].x) / (scaled[3].x - scaled[2].x);
	LHPoint front;
	front = scaled[0] * (1.0f - *param_1) + scaled[1] * *param_1;
	LHPoint back;
	back = scaled[2] * (1.0f - *param_2) + scaled[3] * *param_2;
	*param_3 = (pos.z - front.z) / (back.z - front.z);
}

void LH3DCreature::DrawFightSparkles()
{
	if (FightCreature && creature && GGame::g_game->GetCamera())
	{
		// Each fight intersection is drawn as a sparkle, coloured from red through yellow to white by its index.
		LHPoint camPos;
		GGame::g_game->GetCamera()->GetPosition(camPos);
		LHMatrix matrix;
		matrix.SetRotationY(Heading);
		matrix.SetTranslateOnly(position);
		for (int i = 0; i < field_0x4b30; i++)
		{
			LHPoint pos;
			LHPoint normal;
			long    frame = 0;
			switch (field_0x4b34[i])
			{
			case 0:
				field_0x4bc4[i].GetWorldPositionAndInwardNormal(FightCreature->GetMesh(),
				                                                FightCreature->GetMatrixBuffer(), &pos, &normal);
				field_0x4b94[i] = (field_0x4b94[i] + field_0x4b64[i] * 8 / 1200) & 15;
				frame = field_0x4b94[i];
				if (LastFightIntersectionPending)
				{
					// TODO: the target stores pos to an undeclared LHPoint global at 0x00d13f70 (HandStateHolding.cpp
					// .bss) and sets an undeclared flag global at 0x00d1404c (HandStateNormal.cpp .bss) to 1;
					// HandStateHolding::Update then moves the hand to that point and clears the flag. Restore as
					// `<FightHitPos> = pos; <FightHitPending> = true;` once their owner declares them.
				}
				break;
			case 1:
				field_0x4bc4[i].GetWorldPositionAndInwardNormal(GetMesh(), GetMatrixBuffer(), &pos, &normal);
				break;
			case 2:
				pos = field_0x4e34[i] + (matrix * field_0x4da4[i] - field_0x4e34[i]) * GGame::g_game->TurnFraction;
				break;
			case 3:
				pos = field_0x4da4[i];
				break;
			}
			float fraction = (float)(field_0x4abc - i) / field_0x4abc;
			long  red;
			long  green;
			long  blue;
			if (fraction < 0.33)
			{
				red = (long)(255.0 * (fraction / 0.33));
				green = 0;
				blue = 0;
			}
			else if (fraction < 0.66)
			{
				red = 255;
				green = (long)(255.0 * ((fraction - 0.33) / 0.33));
				blue = 0;
			}
			else
			{
				red = 255;
				green = 255;
				blue = (long)(255.0 * ((fraction - 0.66) / 0.33));
			}
			pos.Add((camPos - pos) * 0.5f);
			DrawASparkle(0xa0000000 | (red << 16) | (green << 8) | blue, pos, Size1, frame);
		}
	}
}

uint32_t LH3DCreature::AddForDrawing()
{
	LH3DComplexObject* object = DynamicShadow;
	LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), (unsigned long*)&object->color,
	                                       (unsigned long*)&object->specular);
	// TODO: LH3DObject::g_selected_px/g_selected_py (BW1W120 00ea1ac8/00ea1acc) are saved, replaced by
	// special_jc_x/special_jc_y around the bounding box check, and restored here. Declaring the two static members in
	// LH3DObject.h renumbers the static initialisers of Object.cpp and WorldRoom.cpp (both matching), so the uses stay
	// commented out until the header set accounts for them.
	// int selectedX = LH3DObject::g_selected_px;
	// int selectedY = LH3DObject::g_selected_py;
	// LH3DObject::g_selected_px = special_jc_x;
	LH3DObject::g_last_selected_box = 0;
	// LH3DObject::g_selected_py = special_jc_y;
	GetMesh()->BoundingBox.CheckRegionOnScreen(DynamicShadow);
	// LH3DObject::g_selected_px = selectedX;
	// LH3DObject::g_selected_py = selectedY;
	DrawNow();
	return LH3DObject::g_last_selected_box;
}

void LH3DCreature::DrawNow()
{
	static LH3DObject* eyeball;
	static LH3DObject* eyelid;

	bool32_t selected = false;
	if (Glows)
	{
		Glows->Draw(this);
	}
	switch (field_0x51e8)
	{
	case 1: {
		Unknown48f550();
		DynamicShadow->AddDrawing();
		selected = LH3DObject::g_last_selected_box;
		if (creature && creature->GetFireEffect())
		{
			creature->DrawFireEffect();
		}
		if (!eyeball)
		{
			eyeball = LH3DObject::Create(LH3DObject::STATIC);
			eyeball->SetMesh(LH3DMesh::CreateFromHD("Data\\eyeball.l3d", false), NULL, NULL);
			eyeball->field_0xc = 1;
			eyeball->SetDynamicLighting(1);
		}
		if (!eyelid)
		{
			eyelid = LH3DObject::Create(LH3DObject::STATIC);
			eyelid->SetMesh(LH3DMesh::CreateFromHD("Data\\eyelid.l3d", false), NULL, NULL);
			eyelid->SetDynamicLighting(1);
		}
		LHMatrix* eyeballMatrix = &eyeball->matrix;
		LHMatrix* eyelidMatrix = &eyelid->matrix;
		bool      lidColourSet = false;
		for (long eye = 0; eye < 2; eye++)
		{
			float scale = GetExtraHeadScale() * GetExtraEyesScale() * field_0x5474 * Size1 * EyeSizeScale;
			if (field_0x5460 == 3)
			{
				scale *= 1.1f;
			}
			float time = 0.3f / (field_0x5464 + 2.0f);
			if (!field_0x5518[eye])
			{
				continue;
			}
			LHPoint pos;
			LHPoint normal;
			GetEyePoint(eye, &pos, &normal);
			normal.FastNormalize();
			LHPoint look;
			switch (field_0x5460)
			{
			case 0:
			case 1:
			case 2:
			case 3:
				if (HasLookPoint())
				{
					look = pos - LookPoint;
					look.FastNormalize();
				}
				else
				{
					float heading = Heading;
					look.x = -1.0f * (float)sin(heading);
					look.y = 0.0f;
					look.z = -1.0f * -(float)cos(heading);
				}
				if (field_0x5460 == 3)
				{
					look.x += ((long)GRand::LocalRand(201) - 100) * 0.009f;
					look.y += ((long)GRand::LocalRand(201) - 100) * 0.009f;
					look.z += ((long)GRand::LocalRand(201) - 100) * 0.009f;
					time *= 5.0f;
				}
				break;
			case 4: {
				float heading = Heading;
				look.x = -1.0f * (float)sin(heading);
				look.y = 0.0f;
				look.z = -1.0f * -(float)cos(heading);
				break;
			}
			}
			float dot = normal.DotProductInline(look);
			if (dot < 0.1f)
			{
				look.Add(normal * (0.1f - dot));
			}
			look.FastNormalize();
			field_0x5538[eye].SetDestinationWithTime(look, time);
			field_0x5538[eye].Update(IntTimeInc * 0.001f);
			eyeball->matrix.GetVectorZ() = field_0x5538[eye].GetCurrentValue();
			eyeball->matrix.GetVectorZ().FastNormalize();
			eyeball->matrix.GetVectorX() = eyeball->matrix.GetVectorZ() ^ LHPoint(0.0f, 1.0f, 0.0f);
			eyeball->matrix.GetVectorX().FastNormalize();
			eyeball->matrix.GetVectorY() = eyeball->matrix.GetVectorZ() ^ eyeball->matrix.GetVectorX();
			pos -= normal * field_0x5528[eye];
			*(LHPoint*)&eyeball->matrix.GetPos() = pos;
			eyeballMatrix->PreScale(scale, scale, scale);
			eyeball->SetColorSpecular(DynamicShadow->color, DynamicShadow->specular);
			float frozAmount = DynamicShadow->FrozAmount;
			if (frozAmount != 0.0f)
			{
				eyeball->DrawFroz(frozAmount, DynamicShadow->FrozParam, DynamicShadow->FrozMaterial);
			}
			else
			{
				float fizzAmount = DynamicShadow->FizzAmount;
				if (fizzAmount != 0.0f)
				{
					eyeball->DrawFizz(fizzAmount, DynamicShadow->FizzMaterial);
				}
				else
				{
					eyeball->Draw();
				}
			}
			if (!field_0x5518[eye + 2])
			{
				continue;
			}
			LHPoint lidPos;
			LHPoint lidNormal;
			GetEyePoint(eye + 2, &lidPos, &lidNormal);
			eyelid->matrix.GetVectorZ().Set(-normal.x, -normal.y, -normal.z);
			eyelid->matrix.GetVectorZ().FastNormalize();
			eyelid->matrix.GetVectorX() = eye == 0 ? lidPos - pos : pos - lidPos;
			{
				LHPoint& lidX = eyelid->matrix.GetVectorX();
				LHPoint& lidZ = eyelid->matrix.GetVectorZ();
				eyelid->matrix.GetVectorY() = lidX ^ lidZ;
			}
			eyelid->matrix.GetVectorY().FastNormalize();
			eyelid->matrix.GetVectorX() = eyelid->matrix.GetVectorY() ^ eyelid->matrix.GetVectorZ();
			*(LHPoint*)&eyelid->matrix.GetPos() = pos;
			float sinAngle = eyeball->matrix.GetVectorZ().DotProductInline(eyelid->matrix.GetVectorY()) / scale;
			eyelidMatrix->PreScale(scale, scale, scale);
			if (!lidColourSet)
			{
				LH3DColor skin;
				if (DynamicShadow->FrozAmount == 1.0f)
				{
					skin = LH3DColor(0xffffffff);
				}
				else
				{
					EyeIntersects[eye + 2].ObtainPointColour(GetMesh(), (unsigned long*)&skin);
				}
				unsigned long colour = DynamicShadow->color;
				LH3DColor     lidColour;
				lidColour.a = 0xff;
				lidColourSet = true;
				lidColour.r = (((colour >> 16) & 0xff) * skin.r) >> 8;
				lidColour.g = (((colour >> 8) & 0xff) * skin.g) >> 8;
				lidColour.b = ((colour & 0xff) * skin.b) >> 8;
				eyelid->SetColorSpecular(lidColour.GetColor(), DynamicShadow->specular);
				eyelid->SetColorSpecular(skin.GetColor(), 0);
			}
			float angle;
			switch (field_0x5460)
			{
			case 0:
			case 3:
				angle = field_0x5658[1] * PI_F;
				break;
			case 1:
				angle = field_0x5664[1] * PI_F;
				break;
			case 2:
			case 4:
				angle = field_0x5670[1] * PI_F - asin(sinAngle) + field_0x5464 * 0.3f;
				switch (field_0x5470)
				{
				case 1:
					angle += (field_0x5664[1] * PI_F - angle) * ((200 - field_0x5468) / 200.0f);
					break;
				case 2:
					angle += (field_0x5664[1] * PI_F - angle) * (field_0x5468 / 200.0f);
					break;
				}
				break;
			}
			float     c = cos(angle);
			float     s = sin(angle);
			float     t;
			LHMatrix& lid = eyelid->matrix;
			t = lid._21 * s;
			lid._21 *= c;
			lid._21 -= lid._31 * s;
			lid._31 *= c;
			lid._31 += t;
			t = lid._22 * s;
			lid._22 *= c;
			lid._22 -= lid._32 * s;
			lid._32 *= c;
			lid._32 += t;
			t = lid._23 * s;
			lid._23 *= c;
			lid._23 -= lid._33 * s;
			lid._33 *= c;
			lid._33 += t;
			eyelid->specular = DynamicShadow->specular;
			LH3DColor lidColour = eyelid->color;
			LH3DColor shadowColour = DynamicShadow->color;
			LH3DColor blended;
			blended.b = (lidColour.b * shadowColour.b) / 255;
			blended.g = (lidColour.g * shadowColour.g) / 255;
			blended.r = (lidColour.r * shadowColour.r) / 255;
			blended.a = 0xff;
			eyelid->color = blended.GetColor();
			float lidFrozAmount = DynamicShadow->FrozAmount;
			if (lidFrozAmount != 0.0f)
			{
				eyelid->DrawFroz(lidFrozAmount, DynamicShadow->FrozParam, DynamicShadow->FrozMaterial);
			}
			else
			{
				float fizzAmount = DynamicShadow->FizzAmount;
				if (fizzAmount != 0.0f)
				{
					eyelid->DrawFizz(fizzAmount, DynamicShadow->FizzMaterial);
				}
				else
				{
					eyelid->Draw();
				}
			}
		}
		break;
	}
	case 3:
		// TODO: AnimEdit's "boite" (collision box) draw mode. The target still tests for it (`sub eax, 2`) and
		// duplicates the tail into the default path; whatever this case did is optimised away in this build, and an
		// empty case is folded away entirely here.
		break;
	}
	LH3DObject::g_last_selected_box = selected;
}

void LH3DCreature::SetEyeIntersect(long eye, MeshIntersect* intersect)
{
	EyeIntersects[eye] = *intersect;
	field_0x5518[eye] = 1;
}

void LH3DCreature::SetLipIntersect(MeshIntersect* intersect)
{
	LipIntersect = *intersect;
	field_0x5430 = 1;
}

void LH3DCreature::SetVomIntersect(MeshIntersect* intersect)
{
	VomIntersect = *intersect;
	field_0x545c = 1;
}

void LH3DCreature::GetEyePoint(long eye, LHPoint* position, LHPoint* normal)
{
	if (field_0x5518[eye])
	{
		EyeIntersects[eye].GetWorldPositionAndInwardNormal(meshes[CurrentMesh], TransformedMatrices, position, normal);
	}
	else
	{
		LHMatrix* head = &SafeBuffer0[HeadBone];
		position->Set(head->_41, head->_42, head->_43);
		normal->Set(0.0f, -1.0f, 0.0f);
	}
}

void LH3DCreature::GetLipPoint(LHPoint* result)
{
	if (field_0x5430)
	{
		LHPoint normal;
		LipIntersect.GetWorldPositionAndInwardNormal(GetMesh(), GetSafeBuffer(), result, &normal);
	}
	else
	{
		LHMatrix* head = &GetSafeBuffer()[HeadBone];
		result->Set(head->_41, head->_42, head->_43);
	}
}

void LH3DCreature::GetVomPoint(LHPoint* result)
{
	if (field_0x545c)
	{
		LHPoint normal;
		VomIntersect.GetWorldPositionAndInwardNormal(GetMesh(), GetSafeBuffer(), result, &normal);
	}
	else
	{
		LHMatrix* head = &GetSafeBuffer()[HeadBone];
		result->Set(head->_41, head->_42, head->_43);
	}
}

inline long LH3DCreature::GetLeftHand()
{
	return GetMirrorBone(RightHand);
}

void LH3DCreature::FillHeldObjectMatrix(LHMatrix* matrices)
{
	if (HeldObject)
	{
		LHMatrix matrix = matrices[field_0x5230 ? GetLeftHand() : RightHand];
		matrix.NormaliseMatrixOnly();
		float scale = HeldObject->GetScale();
		// Scaled column by column (the translation row too), as in UpdateHeldObjects3Angles.
		matrix._11 *= scale;
		matrix._21 *= scale;
		matrix._31 *= scale;
		matrix._41 *= scale;
		matrix._12 *= scale;
		matrix._22 *= scale;
		matrix._32 *= scale;
		matrix._42 *= scale;
		matrix._13 *= scale;
		matrix._23 *= scale;
		matrix._33 *= scale;
		matrix._43 *= scale;
		LHPoint temp;
		temp = *(LHPoint*)&matrix._31;
		*(LHPoint*)&matrix._31 = *(LHPoint*)&matrix._21;
		*(LHPoint*)&matrix._21 = temp;
		if (field_0x5230)
		{
			matrix._21 = -matrix._21;
			matrix._22 = -matrix._22;
			matrix._23 = -matrix._23;
			matrix._11 = -matrix._11;
			matrix._12 = -matrix._12;
			matrix._13 = -matrix._13;
		}
		else
		{
			matrix._31 = -matrix._31;
			matrix._32 = -matrix._32;
			matrix._33 = -matrix._33;
			matrix._11 = -matrix._11;
			matrix._12 = -matrix._12;
			matrix._13 = -matrix._13;
		}
		if (HeldObject && HeldObject->Game3dObject)
		{
			HeldObject->Game3dObject->matrix = matrix;
			long    hand = field_0x5230 ? GetMirrorBone(RightHand) : RightHand;
			LHPoint graspPoint;
			LH3DAnim::GetGraspPoint(matrices, meshes[CurrentMesh], graspPoint, hand);
			// Hang the object below the hand along the (swapped) Y axis.
			LHPoint offset = *(LHPoint*)&matrix._21;
			offset.SetSize(HeldObject->GetHeight() * HeldObject->GetHoldLoweringMultiplier());
			*(LHPoint*)&HeldObject->Game3dObject->matrix._41 = graspPoint - offset;
		}
	}
}

void LH3DCreature::Unknown48f550()
{
	if (HeldObject)
	{
		if (HeldObject->IsCreature())
		{
			HeldObject->CastCreature()->GetCreature3D()->AddForDrawing();
		}
		else
		{
			FillHeldObjectMatrix(TransformedMatrices);
			HeldObject->DrawOutOfMap(false);
		}
	}
}

float LH3DCreature::CalculateRadius2D()
{
	if (field_0x47b8 == 0)
	{
		return 0.0f;
	}
	CAnim* anim = GetAnim(C_MOVE_STAND, 0);
	if (!anim)
	{
		return 0.0f;
	}
	LHMatrix identity;
	identity.SetIdentity();
	anim->FillBuffer(SafeBuffer1, GetMesh(), field_0x47f4, field_0x47f8, 0, frame, NULL, 1);
	LH3DAnim::FinishTransform(SafeBuffer1, GetMesh(), identity);
	float radius = 0.0f;
	for (int i = 0; i < field_0x47b8; i++)
	{
		LHPoint pos;
		pos = SafeBuffer1[i].GetPos();
		float range = range_2d(pos);
		if (radius < range)
		{
			radius = range;
		}
	}
	return radius;
}

void LH3DCreature::EndAnyActions(int param_1, int param_2)
{
	if (param_2)
	{
		EndDanceAction();
		EndFighting();
		EndStaticAction();
		StopPointing();
	}
	if (param_1)
	{
		StopMoving();
	}
}

void LH3DCreature::EndAnyAnimsRapidly()
{
	switch (MoveState)
	{
	case LH3D_CREATURE_STATE_START_STATIC:
	case LH3D_CREATURE_STATE_DO_STATIC:
	case LH3D_CREATURE_STATE_FINISH_STATIC:
	case LH3D_CREATURE_STATE_START_DANCE:
	case LH3D_CREATURE_STATE_DO_DANCE:
	case LH3D_CREATURE_STATE_FINISH_DANCE:
	case LH3D_CREATURE_STATE_POINTING:
	case LH3D_CREATURE_STATE_FINISH_POINTING:
	case LH3D_CREATURE_STATE_INDIVIDUAL:
	case LH3D_CREATURE_STATE_OBJECT_KEEP:
	case LH3D_CREATURE_STATE_OBJECT_REMOVE:
	case LH3D_CREATURE_STATE_PICKING_UP:
	case LH3D_CREATURE_STATE_DESTRUCTION:
	case LH3D_CREATURE_STATE_START_FIGHT:
	case LH3D_CREATURE_STATE_FIGHT_MAIN:
	case LH3D_CREATURE_STATE_FIGHT:
	case LH3D_CREATURE_STATE_FINISH_FIGHT:
	case LH3D_CREATURE_STATE_CREATION:
		field_0x5730 = 1;
		break;
	}
}

void LH3DCreature::EndAnyActionsThenTurnToHeading(float heading)
{
	if (MoveState == LH3D_CREATURE_STATE_STANDING)
	{
		EventualHeading = heading;
		StartTurningAction(heading);
	}
	else
	{
		EndAnyActions(true, true);
		EventualHeading = heading;
		field_0x523c = 1;
	}
}

float LH3DCreature::GetPutDownDistance()
{
	ValidateRemovePositions();
	return -Size2 * field_0x492c;
}

uint32_t getint(float value)
{
	return *(uint32_t*)&value;
}

uint32_t LH3DCreature::GetInteractionCheckSum()
{
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "----------------------------------GameTurn %lu\n",
		        GGame::g_game->data.GameTurn);
	}
	uint32_t checkSum = getint(CurrentSpeed);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "CurrentSpeed %lu\n", getint(CurrentSpeed));
	}
	checkSum += getint(RequiredSpeed);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "RequiredSpeed:%lu\n", getint(RequiredSpeed));
	}
	checkSum += getint(RequiredHeading);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "RequiredHeading:%lu\n", getint(RequiredHeading));
	}
	checkSum += getint(Heading);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "Heading:%lu\n", getint(Heading));
	}
	checkSum += getint(WalkSpeed);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "WalkSpeed:%lu\n", getint(WalkSpeed));
	}
	checkSum += getint(RunSpeed);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "RunSpeed:%lu\n", getint(RunSpeed));
	}
	checkSum += getint(Acceleration);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "Acceleration:%lu\n", getint(Acceleration));
	}
	checkSum += getint(BodyTurnAccel);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "BodyTurnAccel:%lu\n", getint(BodyTurnAccel));
	}
	checkSum += getint(BodyTurnRate);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "BodyTurnRate:%lu\n", getint(BodyTurnRate));
	}
	checkSum += IntTimeInc;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "IntTimeInc:%lu\n", IntTimeInc);
	}
	checkSum += getint(FloatTimeInc);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "FloatTimeInc:%lu\n", getint(FloatTimeInc));
	}
	checkSum += AnimTimeInc;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "AnimTimeInc:%lu\n", AnimTimeInc);
	}
	checkSum += DiscardTime;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "DiscardTime:%lu\n", DiscardTime);
	}
	checkSum += getint(DiscardVelocity.x);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "DiscardVelocity.x:%lu\n", getint(DiscardVelocity.x));
	}
	checkSum += getint(DiscardVelocity.y);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "DiscardVelocity.y:%lu\n", getint(DiscardVelocity.y));
	}
	checkSum += getint(DiscardVelocity.z);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "DiscardVelocity.z:%lu\n", getint(DiscardVelocity.z));
	}
	checkSum += getint(DiscardPosition.x);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "DiscardPosition.x:%lu\n", getint(DiscardPosition.x));
	}
	checkSum += getint(DiscardPosition.y);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "DiscardPosition.y:%lu\n", getint(DiscardPosition.y));
	}
	checkSum += getint(DiscardPosition.z);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "DiscardPosition.z:%lu\n", getint(DiscardPosition.z));
	}
	checkSum += getint(ThrowPosHigh.x);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowPosHigh.x:%lu\n", getint(ThrowPosHigh.x));
	}
	checkSum += getint(ThrowPosHigh.y);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowPosHigh.y:%lu\n", getint(ThrowPosHigh.y));
	}
	checkSum += getint(ThrowPosHigh.z);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowPosHigh.z:%lu\n", getint(ThrowPosHigh.z));
	}
	checkSum += getint(ThrowPosFlat.x);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowPosFlat.x:%lu\n", getint(ThrowPosFlat.x));
	}
	checkSum += getint(ThrowPosFlat.y);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowPosFlat.y:%lu\n", getint(ThrowPosFlat.y));
	}
	checkSum += getint(ThrowPosFlat.z);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowPosFlat.z:%lu\n", getint(ThrowPosFlat.z));
	}
	checkSum += EatTime;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "EatTime:%lu\n", EatTime);
	}
	checkSum += ThrowTime;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowTime:%lu\n", ThrowTime);
	}
	checkSum += getint(ThrowZL);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowZL:%lu\n", getint(ThrowZL));
	}
	checkSum += getint(ThrowYL);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowYL:%lu\n", getint(ThrowYL));
	}
	checkSum += getint(ThrowZH);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowZH:%lu\n", getint(ThrowZH));
	}
	checkSum += getint(ThrowYH);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowYH:%lu\n", getint(ThrowYH));
	}
	checkSum += getint(ThrowZR);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowZR:%lu\n", getint(ThrowZR));
	}
	checkSum += getint(ThrowYR);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ThrowYR:%lu\n", getint(ThrowYR));
	}
	checkSum += GameThrowingAngle;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "GameThrowingAngle:%lu\n", GameThrowingAngle);
	}
	checkSum += ObjectActionStatus;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ObjectActionStatus:%lu\n", ObjectActionStatus);
	}
	checkSum += PickUpTime;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "PickUpTime:%lu\n", PickUpTime);
	}
	checkSum += PutDownTime;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "PutDownTime:%lu\n", PutDownTime);
	}
	checkSum += DestroyTime;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "DestroyTime:%lu\n", DestroyTime);
	}
	checkSum += getint(field_0x5168.x);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "m_lrb:%lu\n", getint(field_0x5168.x));
	}
	checkSum += getint(field_0x5168.y);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "m_lrf:%lu\n", getint(field_0x5168.y));
	}
	checkSum += getint(field_0x5168.z);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "m_bf:%lu\n", getint(field_0x5168.z));
	}
	checkSum += TurningCompleted;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "TurningCompleted:%lu\n", TurningCompleted);
	}
	checkSum += HeadBone;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "HeadBone:%lu\n", HeadBone);
	}
	checkSum += BellyBone;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "BellyBone:%lu\n", BellyBone);
	}
	checkSum += RightArmpit;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "RightArmpit:%lu\n", RightArmpit);
	}
	checkSum += RightHand;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "RightHand:%lu\n", RightHand);
	}
	checkSum += RightFoot;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "RightFoot:%lu\n", RightFoot);
	}
	checkSum += Anus;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "Anus:%lu\n", Anus);
	}
	checkSum += ImpactTime;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ImpactTime:%lu\n", ImpactTime);
	}
	checkSum += (FightCreature != NULL);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "FightCreature:%lu\n", (FightCreature != NULL));
	}
	checkSum += FightMove;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "FightMove:%lu\n", FightMove);
	}
	checkSum += getint(Size1);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "UserSize:%lu\n", getint(Size1));
	}
	return checkSum;
}

uint32_t LH3DCreature::GetNormalCheckSum()
{
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "----------------------------------GameTurn %lu\n",
		        GGame::g_game->data.GameTurn);
	}
	LHPoint graspPoint;
	LH3DAnim::GetGraspPoint(SafeBuffer0, meshes[CurrentMesh], graspPoint,
	                        field_0x5230 ? GetMirrorBone(RightHand) : RightHand);
	uint32_t checkSum = getint(graspPoint.x);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "GetGraspPoint.x:%lu\n", getint(graspPoint.x));
	}
	checkSum += getint(graspPoint.y);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "GetGraspPoint.y:%lu\n", getint(graspPoint.y));
	}
	checkSum += getint(graspPoint.z);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "GetGraspPoint.z:%lu\n", getint(graspPoint.z));
	}
	checkSum += MoveState;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "MoveState:%lu\n", MoveState);
	}
	checkSum += (uint32_t)(LookRelativeHeading * 1000.0f);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "LookRelativeHeading:%lu\n", getint(LookRelativeHeading));
	}
	checkSum += getint(LookPitchRate);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "LookPitchRate:%lu\n", getint(LookPitchRate));
	}
	checkSum += getint(LookRelativePitch);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "LookRelativePitch:%lu\n", getint(LookRelativePitch));
	}
	checkSum += getint(LookHeadingRate);
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "LookHeadingRate:%lu\n", getint(LookHeadingRate));
	}
	checkSum += ReverseAnim;
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "ReverseAnim:%lu\n", ReverseAnim);
	}
	checkSum += CycleTime[0];
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "CycleTime[0]:%lu\n", CycleTime[0]);
	}
	checkSum += CycleTime[1];
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "CycleTime[1]:%lu\n", CycleTime[1]);
	}
	checkSum += CycleTime[2];
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "CycleTime[2]:%lu\n", CycleTime[2]);
	}
	checkSum += CycleTime[3];
	if (GGlobal::Global.debug.field_0x14c)
	{
		fprintf(GGame::g_game->field_0x2502d0, "CycleTime[3]:%lu\n", CycleTime[3]);
	}
	return checkSum;
}

inline float LH3DCreature::GetBreathTime()
{
	return field_0x498c;
}

void LH3DCreature::ProcessBreath()
{
	float    difference = field_0x4990 - field_0x498c;
	uint32_t ticks = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
		GetRequiredBreathTime() == GetStandardBreathTime() ? 10.0f : 0.5f);
	field_0x498c = difference / ticks + GetBreathTime();
}

bool32_t LH3DCreature::SetInHand(int in_hand)
{
	if (in_hand)
	{
		if (creature && creature->CanCurrentlyBePickedUp())
		{
			field_0x51ec = true;
			return true;
		}
		return false;
	}
	field_0x51ec = false;
	return true;
}

bool32_t LH3DCreature::IsInPickUpBlockingState()
{
	switch (MoveState)
	{
	case LH3D_CREATURE_STATE_MOVING:
	case LH3D_CREATURE_STATE_PICKING_UP:
	case LH3D_CREATURE_STATE_PICK_UP_FROM_HAND:
	case LH3D_CREATURE_STATE_DESTRUCTION:
	case LH3D_CREATURE_STATE_KISSING:
	case LH3D_CREATURE_STATE_KICKING:
	case LH3D_CREATURE_STATE_CATCH_MAIN:
	case LH3D_CREATURE_STATE_CATCH_STEP:
	case LH3D_CREATURE_STATE_CATCH_ACTION:
	case LH3D_CREATURE_STATE_START_FIGHT:
	case LH3D_CREATURE_STATE_FIGHT_MAIN:
	case LH3D_CREATURE_STATE_FIGHT:
	case LH3D_CREATURE_STATE_FINISH_FIGHT:
	case LH3D_CREATURE_STATE_START_BLOCK:
	case LH3D_CREATURE_STATE_BLOCK:
	case LH3D_CREATURE_STATE_BLOCK_RECOIL:
	case LH3D_CREATURE_STATE_FINISH_BLOCK:
	case LH3D_CREATURE_STATE_START_FIGHT_CAST:
	case LH3D_CREATURE_STATE_FIGHT_CAST:
	case LH3D_CREATURE_STATE_FINISH_FIGHT_CAST:
		return true;
	}
	return false;
}

bool32_t Creature::CanCurrentlyBePickedUp()
{
	if (Flags & GAME_THING_WITH_POS_FLAG_INTERACTING)
	{
		return false;
	}
	if (IsCannotBePickedUp())
	{
		return false;
	}
	return !GetCreature3D()->IsInPickUpBlockingState();
}

void Creature::SetInCreatureHand(Creature* creature)
{
	// TODO: field_0x10cc should be declared as Creature* (no other users)
	field_0x10cc = (uint32_t)creature;
}

void LH3DCreature::UpdateMotion()
{
	switch (field_0x5190)
	{
	case 0:
		if (RpFollow->field_0x64054 == 3 || RpFollow->field_0x64054 == 4)
		{
			float length = RpFollow->field_0x64070->GetLength(RpFollow->AvoidArray);
			if (length < 0.01f)
			{
				length = 0.01f;
			}
			float   heading = RpFollow->field_0x64040;
			LHPoint dest((float)sin(heading) * length, 0.0f, -(float)cos(heading) * length);
			dest.Add(position);
			field_0x5190 = GetStartState(position, dest);
		}
		else
		{
			field_0x573c -= AnimTimeInc;
			if (field_0x573c < 0)
			{
				long action = field_0x5740 ? GRand::GameRand(3, CREATURE_3D_FILE, 8920) : 0;
				field_0x5740 = 1;
				switch (action)
				{
				case 0:
					UpdateRPLookPoint();
					PointAt(&field_0x5748, true);
					field_0x573c = 6000;
					break;
				case 1:
					StartFacialAction(C_FACE_PUZZLED, 2000);
					field_0x573c = 3000;
					break;
				case 2:
					if (GetAnim(C_INDIVIDUAL_CONFUSED, 0))
					{
						ReverseAnim = GRand::GameRand(2, CREATURE_3D_FILE, 8943);
						CycleTime[0] = 0;
						field_0x5190 = 1;
					}
					break;
				}
			}
		}
		break;
	case 1:
		CycleAnim[0] = GetAnim(C_INDIVIDUAL_CONFUSED, 0);
		if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
		{
			AdvanceSimple(C_INDIVIDUAL_CONFUSED, CycleTime[0], AnimTimeInc);
			field_0x5190 = 0;
			field_0x573c = 3000;
		}
		break;
	case 2:
		field_0x573c -= AnimTimeInc;
		if (field_0x573c < 0)
		{
			field_0x5190 = 3;
		}
		break;
	case 3:
		if (TurningCompleted)
		{
			CycleAnim[0] = GetAnim(C_POINT_HI_LEFT, 0);
			if (CycleTime[0] + AnimTimeInc >= (long)CycleAnim[0]->FrameOffset)
			{
				AdvanceSimple(C_POINT_HI_LEFT, CycleTime[0], AnimTimeInc);
				field_0x5190 = 0;
				field_0x573c = 3000;
				field_0x5744 = 0;
			}
		}
		break;
	}
	switch (field_0x5190)
	{
	case 0:
		DoStandingAction();
		break;
	case 1:
		CycleAnim[0] = GetAnim(C_INDIVIDUAL_CONFUSED, 0);
		CycleTime[0] = AdvanceCyclic(C_INDIVIDUAL_CONFUSED, CycleTime[0], AnimTimeInc);
		CycleWeight[0] = 1.0f;
		break;
	case 2:
		UpdateRPLookPoint();
		UpdatePointPoint(&field_0x5748);
		DoPointAction(true);
		break;
	case 3:
		DoPointAction(true);
		break;
	case 4:
		if (DoTheTurningBusiness())
		{
			Heading = RequiredHeading;
			if (RpFollow->field_0x6408c && RpFollow->field_0x6408c->Route0x68)
			{
				field_0x5190 = 6;
				CycleTime[1] = 0;
				CycleTime[0] = 0;
				ProcessMoveStraight();
			}
			else
			{
				field_0x5190 = 0;
			}
		}
		break;
	case 5:
		if ((float)fabs(angle_correct(RequiredHeading - RpFollow->field_0x64040)) > 0.5235988f)
		{
			RpFollow->field_0x64034 = 0.0f;
			CurrentSpeed = 0.0f;
			Heading = RequiredHeading;
			RpFollow->field_0x64038 = 0.0f;
			RpFollow->FillPosAndHeading(RpFollow->field_0x6402c, RpFollow->field_0x64040, RpFollow->field_0x64038);
			position.Set(RpFollow->field_0x6402c.x, 0.0f, RpFollow->field_0x6402c.y);
			position.y = LH3DIsland::GetAltitude(position);
			float length = RpFollow->field_0x64070->GetLength(RpFollow->AvoidArray);
			if (length < 0.01f)
			{
				length = 0.01f;
			}
			float   heading = RpFollow->field_0x64040;
			LHPoint dest((float)sin(heading) * length, 0.0f, -(float)cos(heading) * length);
			dest.Add(position);
			delete Anim0x5220;
			Anim0x5220 = NULL;
			DoStandingAction();
			field_0x5190 = GetStartState(position, dest);
		}
		else
		{
			Heading = angle_correct(Heading + angle_correct(RpFollow->field_0x64040 - RequiredHeading));
			RequiredHeading = RpFollow->field_0x64040;
			CycleAnim[0] = Anim0x5220;
			CycleWeight[0] = 1.0f;
			if (CycleTime[0] + IntTimeInc >= (long)CycleAnim[0]->FrameOffset)
			{
				Heading = RequiredHeading;
				float fraction = (float)CycleTime[0] / (long)CycleAnim[0]->FrameOffset;
				CycleAnim[1] = GetAnim(C_MOVE_WALK, 0);
				if (field_0x521c == 2)
				{
					CycleTime[1] = (long)((long)CycleAnim[1]->FrameOffset * fraction);
				}
				else
				{
					CycleTime[1] = (long)((fraction - 0.5f) * (long)CycleAnim[1]->FrameOffset);
				}
				CurrentSpeed = WalkSpeed;
				field_0x5190 = 6;
				delete Anim0x5220;
				Anim0x5220 = NULL;
				field_0x5190 = 6;
				ProcessMoveStraight();
			}
			else
			{
				LHPoint move;
				CAnim*  anim = GetAnim(C_MOVE_R_STEP_90, 0);
				long    oldTime = CycleTime[0] * (long)anim->FrameOffset / (long)CycleAnim[0]->FrameOffset;
				CycleTime[0] += IntTimeInc;
				CheckSounds(C_MOVE_R_STEP_90, oldTime,
				            (long)anim->FrameOffset * CycleTime[0] / (long)CycleAnim[0]->FrameOffset);
				LHMatrix rotation;
				rotation.SetRotationY(Heading);
				move = *(LHPoint*)&CycleAnim[0]->field_0x8[2] * (IntTimeInc * Size2 / (long)CycleAnim[0]->FrameOffset);
				move.y = 0.0f;
				rotation.TransformPoint(move);
				if (RpFollow->field_0x6408c && RpFollow->field_0x6408c->Route0x68)
				{
					LHPoint pos(RpFollow->field_0x6402c.x, 0.0f, RpFollow->field_0x6402c.y);
					SetPos(pos);
					if (!IsDestinationValidForCreature(&position))
					{
						float   lastParam2 = RpFollow->field_0x64080;
						float   lastParam3 = RpFollow->field_0x6407c;
						float   lastParam4 = RpFollow->field_0x64084;
						LHPoint dest(RpFollow->field_0x64074.x, 0.0f, RpFollow->field_0x64074.y);
						LHPoint validPos = position;
						SpiralCheckForValidPoint(&position, &validPos);
						SetPos(validPos);
						ResetLook();
						if (StartMovingToPoint(dest, lastParam2, lastParam3, lastParam4) != 4 && creature)
						{
							creature->CantFindRoute();
						}
					}
					else
					{
						RpFollow->field_0x64034 = (float)sqrt(move * move) * 10.0f;
						RpFollow->MoveAlongRoute();
					}
				}
				else
				{
					Heading = RequiredHeading;
					field_0x5190 = 0;
				}
			}
		}
		break;
	case 6:
		ProcessMoveStraight();
		break;
	}
}

void LH3DCreature::ProcessMoveStraight()
{
	switch (RpFollow->field_0x64054)
	{
	case 0:
	case 1:
	case 2:
		field_0x5190 = 0;
		DoStandingAction();
		break;
	case 3:
	case 4: {
		float      maxSpeed = RpFollow->field_0x6403c;
		RouteNode* next = RpFollow->field_0x64070->Next;
		if (!next)
		{
			float length = RpFollow->field_0x64070->GetLength(RpFollow->AvoidArray);
			maxSpeed = max(0.1f, (float)sqrt(2.0f * MoveAcceleration * (length - RpFollow->field_0x64038)));
		}
		else if (next->field_0x1c == 1)
		{
			float length = RpFollow->field_0x64070->GetLength(RpFollow->AvoidArray);
			float arcSpeed = sqrt(RpFollow->AvoidArray[RpFollow->field_0x64070->field_0x10].field_0x10 * 12.0f);
			maxSpeed = max(
				0.1f, (float)sqrt(arcSpeed * arcSpeed + 2.0f * MoveAcceleration * (length - RpFollow->field_0x64038)));
		}
		float   distance = field_0x5228;
		float   heading = Heading;
		LHPoint ahead((float)sin(heading) * distance, 0.0f, -(float)cos(heading) * distance);
		ahead.Add(position);
		float slope = 1.0f - (LH3DIsland::GetAltitude(ahead) - position.y) / field_0x5228 * 0.6f;
		slope = slope > 0.3f ? (slope < 1.1f ? slope : 1.1f) : 0.3f;
		float requiredSpeed = RpFollow->field_0x6403c * slope;
		if (RpFollow->field_0x64034 < requiredSpeed)
		{
			RpFollow->field_0x64034 = min(requiredSpeed, MoveTimeStep * MoveAcceleration + RpFollow->field_0x64034);
		}
		if (RpFollow->field_0x64034 > maxSpeed)
		{
			RpFollow->field_0x64034 = maxSpeed;
		}
		RouteNode* oldNode = RpFollow->field_0x64070;
		RpFollow->MoveAlongRoute();
		CurrentSpeed = RpFollow->field_0x64034;
		if (RpFollow->field_0x64070)
		{
			if ((float)fabs(angle_correct(Heading - RpFollow->field_0x64040)) < 0.5235988f)
			{
				position.Set(RpFollow->field_0x6402c.x, 0.0f, RpFollow->field_0x6402c.y);
				position.y = LH3DIsland::GetAltitude(position);
				Heading = RpFollow->field_0x64040;
				AdvanceMovementAnimations(RpFollow->field_0x64050);
			}
			else
			{
				RpFollow->field_0x64034 = 0.0f;
				CurrentSpeed = 0.0f;
				if (RpFollow->field_0x64070 != oldNode)
				{
					RpFollow->field_0x64038 = 0.0f;
				}
				RpFollow->FillPosAndHeading(RpFollow->field_0x6402c, RpFollow->field_0x64040, RpFollow->field_0x64038);
				position.Set(RpFollow->field_0x6402c.x, 0.0f, RpFollow->field_0x6402c.y);
				position.y = LH3DIsland::GetAltitude(position);
				float length = RpFollow->field_0x64070->GetLength(RpFollow->AvoidArray);
				if (length < 0.01f)
				{
					length = 0.01f;
				}
				float   heading = RpFollow->field_0x64040;
				LHPoint dest((float)sin(heading) * length, 0.0f, -(float)cos(heading) * length);
				dest.Add(position);
				DoStandingAction();
				field_0x5190 = GetStartState(position, dest);
			}
			if (!IsDestinationValidForCreature(&position))
			{
				float   lastParam2 = RpFollow->field_0x64080;
				float   lastParam3 = RpFollow->field_0x6407c;
				float   lastParam4 = RpFollow->field_0x64084;
				LHPoint dest(RpFollow->field_0x64074.x, 0.0f, RpFollow->field_0x64074.y);
				LHPoint validPos = position;
				SpiralCheckForValidPoint(&position, &validPos);
				SetPos(validPos);
				ResetLook();
				if (StartMovingToPoint(dest, lastParam2, lastParam3, lastParam4) != 4 && creature)
				{
					creature->CantFindRoute();
				}
			}
		}
		else
		{
			LHPoint pos(RpFollow->field_0x6402c.x, 0.0f, RpFollow->field_0x6402c.y);
			SetPos(pos);
			DoStandingAction();
		}
		break;
	}
	}
}
