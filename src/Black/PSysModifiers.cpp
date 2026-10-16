#include <math.h> /* For log */

#include <Lionhead/LH3DLib/development/LHPoint.h>

static const LHPoint ModifierZeroPoint(0.0f, 0.0f, 0.0f);
static const float   OneOverMaxAlpha = 1.0f / 255.0f;

#include "GameTimeConstants.h"

static float OneOverLogHalf = 1.0f / (float)log(0.5);

#include "PSysModifiers.h"

#include <Lionhead/LH3DLib/development/LH3DCameraChecker.h> /* For LH3DCameraChecker::Create */
#include <Lionhead/LH3DLib/development/LH3DMath.h>          /* For PI_F, TWO_PI */

#include "Audio.h"           /* For enum IMPACT_SOUND_LEVEL */
#include "DefensiveSphere.h" /* For class DefensiveSphere, class TDefensiveShields */
#include "GJUtils.h"         /* For boundf, GJUtils::Linterp */
#include "GJVnoise.h"        /* For Noise */
#include "Game.h"            /* For GGame, GTPointer::SetGameTurnValidated */
#include "HandStateGrain.h"  /* For HandStateGrain::StartTimedPour */
#include "Interface.h"       /* For class GInterface */
#include "InterfaceStatus.h" /* For class GInterfaceStatus */
#include "Landscape.h"       /* For GLandscape::ConvertMapCoordToLandscapePoint */
#include "Object.h"          /* For class Object */
#include "ParticleCreator.h" /* For class ParticleCreator */
#include "PSysAtomCore.h"    /* For class AtomCollection, class AtomCore */
#include "PSysEvents.h"      /* For class TEventCondition */
#include "PSysManager.h"     /* For class PSysManager */
#include "PSysPCreator.h"    /* For class RenderParticleGameObjectRef */
#include "PSysRules.h"       /* For the concrete rules */
#include "PSysSound.h"       /* For class PSysSound */
#include "SoundMap.h"        /* For GSoundMap::GetSurfaceType */
#include "SpellEventInfo.h"  /* For struct SpellEventInfo */

#include <windows.h> /* For max, min */

#if defined(VERSION_BW1W100)
#define PSYS_MODIFIERS_FILE "C:\\dev\\black\\PSysModifiers.cpp"
#elif defined(VERSION_BW1W110)
#define PSYS_MODIFIERS_FILE "C:\\dev\\Black\\PSysModifiers.cpp"
#else
#define PSYS_MODIFIERS_FILE "C:\\dev\\MP\\Black\\PSysModifiers.cpp"
#endif

float FloatProvider_ParentAtomScale::GetValueForCollection(AtomCollection* collection)
{
	AtomCore* parent = collection->GetParentAtom();
	if (parent)
	{
		return parent->GetCombinedScale() * Scale;
	}
	return 1.0f;
}

void ConstFloatProvider::UpdateParams(const PSysManager* manager)
{
	Value = ConstValue;
}

void MagnitudeFloatProvider::UpdateParams(const PSysManager* manager)
{
	Value = manager->Magnitude * ScaleBy;
	Value = boundf(Minimum, Value, Maximum);
}

void StrengthFloatProvider::UpdateParams(const PSysManager* manager)
{
	Value = manager->ProcessInfo.Strength * ScaleBy;
	Value = boundf(Minimum, Value, Maximum);
}

void MagnitudeTimesStrengthFloatProvider::UpdateParams(const PSysManager* manager)
{
	Value = manager->Magnitude * manager->ProcessInfo.Strength * ScaleBy;
	Value = boundf(Minimum, Value, Maximum);
}

void EventAlways::ModifyAtomCore(AtomCore* core) const
{
	if (core)
	{
		LHPoint pos;
		core->CalculateGlobalPos(&pos);
		LHPoint movement;
		core->GetLastGlobalMovement(&movement);
		SpellEventInfo info(SPELL_EVENT_TYPE_ATOM, pos, movement);
		core->Collection->Manager->SpellEvent(info);
	}
}

void StartStopSoundOnCondition::ModifyAtomCore(AtomCore* core) const
{
	if (SoundCondition && !SoundCondition->TestConditionOnAtom(core))
	{
		PSysSound* sound = core->GetSoundOfAction(Sound.Action);
		if (sound)
		{
			if (FadeStep)
			{
				sound->FadeStep = FadeStep;
			}
			core->StopSound(sound);
		}
	}
	else if (!core->GetSoundOfAction(Sound.Action))
	{
		core->StartSound(Sound);
	}
}

void AddSoundToAtom::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (!data->SoundAdded && core->GetAtomAge() >= Delay)
	{
		if (SoundCondition == NULL || SoundCondition->TestConditionOnAtom(core))
		{
			if (StopOtherSoundsFirst)
			{
				core->StopAllSounds();
			}
			core->StartSound(Sound);
			data->SoundAdded = true;
			if (DoCameraShake)
			{
				LHPoint pos = core->GetLocalPos();
				core->LocalToGlobal(&pos);
				LH3DCameraChecker::Create(CameraShakeRadius, pos, 1.0f, (long)(CameraShakeDuration * 1000.0f), true);
			}
		}
	}
}

void RemoveSoundFromAtom::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (!data->SoundRemoved)
	{
		if (SoundCondition == NULL || SoundCondition->TestConditionOnAtom(core))
		{
			PSysSound* sound = core->GetSoundOfAction(Sound.Action);
			if (sound)
			{
				if (FadeStep)
				{
					sound->FadeStep = FadeStep;
				}
				core->StopSound(sound);
			}
			data->SoundRemoved = true;
		}
	}
}

void AR_SetAnimPlay::ModifyAtomCore(AtomCore* core) const
{
	core->AnimInfo.Loop = true;
}

void AR_GetColorFromParent::ModifyAtomCore(AtomCore* core) const
{
	AtomCore* parent = core->GetParentAtom();
	if (parent)
	{
		core->Colour = parent->Colour;
	}
}

unsigned long AtomCreateRule::NextGroupsGetSize()
{
	return NextGroups.Size;
}

void AtomCreateRule::NextGroupsSetSize(unsigned long size)
{
	NextGroups.SetSize(size);
}

long AtomCreateRule::NextGroupsGet(unsigned long index)
{
	return NextGroups[index];
}

void AtomCreateRule::NextGroupsSet(unsigned long index, long group)
{
	NextGroups[index] = group;
}

bool CreateRule_GameObjectRef::ModifyAtomCollection(AtomCollection* collection) const
{
	PSysManager* manager = collection->Manager;
	if (manager->Targets.GetNumObjects())
	{
		Object* object = dynamic_cast<Object*>(manager->Targets.TakeTargetObject());
		if (object)
		{
			AtomCore* core = AtomCore::Create();
			core->SetAlpha((uint8_t)Alpha);
			if (DoShower)
			{
				core->Particle = new (PSYS_MODIFIERS_FILE, 233) RenderParticleGoldenShower(object);
			}
			else
			{
				core->Particle = new (PSYS_MODIFIERS_FILE, 237) RenderParticleGameObjectRef(object);
			}
			collection->InitNewAtom(core, NextGroups);
		}
	}
	for (AtomCore* core = collection->Atoms.First; core; core = core->Next)
	{
		Object* object = core->Particle->GetGameObject();
		if (object)
		{
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, pos);
			pos.y += OffsetY;
			core->LocalPos = pos;
		}
	}
	return true;
}

void AtomCreateRule::SetNextGroup(long group)
{
	NextGroups.Clear();
	NextGroups.SetSize(1);
	NextGroups[0] = group;
}

bool CreateRuleSphere::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	float radius = Radius;
	if (RadiusScaleFP)
	{
		radius *= RadiusScaleFP->GetValue();
	}
	for (long i = 0; i < NumAtoms; i++)
	{
		AtomCore* core = AtomCore::Create();
		collection->InitNewAtom(core, NextGroups);
		core->Particle = PCreator->CreateParticle(core);
		if (InitScaleFP)
		{
			core->BaseScale *= InitScaleFP->GetValue();
		}
		if (SetInitFrameFromIndex)
		{
			core->SetFrame((NumAtoms - i - 1) % core->AnimInfo.FrameCount);
		}
		LHPoint offset(0.0f, 0.0f, 0.0f);
		if (radius != 0.0f)
		{
			PSysManager::PSysRandR3(&offset);
			offset *= radius;
		}
		offset += Centre;
		core->LocalPos = offset + core->LocalPos;
		SetInitialVelocity(core, i, NumAtoms);
		if (i == 0)
		{
			core->StartSound(SoundOfCreate);
		}
	}
	return false;
}

void CreateRuleSphere::SetInitialVelocity(AtomCore* core, long index, long count) const {}

void UR_SideSpin::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (data->FirstUpdate == true)
	{
		if (core->Collection->Manager->GetPlayer() == NULL)
		{
			return;
		}
		data->Spin = core->Collection->Manager->GetCurrentGestureAngularVel();
		data->Spin *= ScaleAngularVelocity;
		data->Spin = boundf(-MaxAngularVelocity, data->Spin, MaxAngularVelocity);
		float fraction = data->Spin / MaxAngularVelocity;
		data->FirstUpdate = false;
		data->Spin = fraction * fraction * data->Spin;
	}
	float    spin = GJUtils::Linterp(data->Spin, 0.0f, boundf(0.0f, core->GetAtomAge() / TimeToFade, 1.0f));
	LHMatrix rotation;
	rotation.SetRotationY(spin * PSysManager::TimeStep);
	LHPoint velocity = core->Velocity;
	rotation.TransformVector(velocity);
	core->Velocity = velocity;
}

void UR_InitialSpin::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (data->FirstUpdate == true)
	{
		if (core->Collection->Manager->GetPlayer() == NULL)
		{
			return;
		}
		data->Spin = core->Collection->Manager->GetCurrentGestureAngularVel();
		data->Spin *= ScaleAngularVelocity;
		data->Spin = boundf(-MaxAngularVelocity, data->Spin, MaxAngularVelocity);
		data->FirstUpdate = false;
	}
	float spin = GJUtils::Linterp(data->Spin, 0.0f, boundf(0.0f, core->GetAtomAge() / TimeToFade, 1.0f));
	core->RotationMatrix.RotateY(spin * PSysManager::TimeStep);
}

static const float MaxThrowSpeed = 200.0f;

float GetMaxThrowSpeed();
float GetThrowSpeed(float gesture_speed);
void  GetThrowDirection(const LHPoint* gesture_direction, LHPoint* direction);
void  GetThrowVelocity(const LHPoint* gesture_velocity, LHPoint* velocity);

float GetMaxThrowSpeed()
{
	return MaxThrowSpeed;
}

float GetThrowSpeed(float gesture_speed)
{
	float gestureSpeeds[3] = {0.0f, 50.0f, 450.0f};
	float throwSpeeds[3] = {0.0f, 50.0f, MaxThrowSpeed};
	if (gesture_speed >= gestureSpeeds[2])
	{
		return throwSpeeds[2];
	}
	int i = gesture_speed >= gestureSpeeds[1] ? 1 : 0;
	return GJUtils::Linterp(throwSpeeds[i], throwSpeeds[i + 1],
	                        (gesture_speed - gestureSpeeds[i]) / (gestureSpeeds[i + 1] - gestureSpeeds[i]));
}

void GetThrowDirection(const LHPoint* gesture_direction, LHPoint* direction)
{
	float yaw = atan2f(gesture_direction->z, gesture_direction->x);
	float pitch = atan2f(gesture_direction->y, sqrtf(gesture_direction->x * gesture_direction->x +
	                                                 gesture_direction->z * gesture_direction->z));
	pitch = boundf(-HALF_PI_F, pitch + 0.3f, HALF_PI_F);
	*direction = LHPoint(cosf(yaw) * cosf(pitch), sinf(pitch), sinf(yaw) * cosf(pitch));
}

void GetThrowVelocity(const LHPoint* gesture_velocity, LHPoint* velocity)
{
	GetThrowDirection(gesture_velocity, velocity);
	float speed = GetThrowSpeed(gesture_velocity->GetNorme());
	float px = velocity->x;
	float py = velocity->y;
	float pz = velocity->z;
	if (px != 0.0f || py != 0.0f || pz != 0.0f)
	{
		float scale = speed / sqrtf(pz * pz + py * py + px * px);
		velocity->x = scale * px;
		velocity->y = scale * py;
		velocity->z = scale * pz;
	}
}

CreateWithInitialDirection::CreateWithInitialDirection(PersistentOwner* owner) : OnceOnlyCreateRule(owner)
{
	InitScaleFP = NULL;
	Flags ^= 4;
	NumAtoms = 1;
	Elevation = PI_F * 0.15f;
	Elevate = false;
	PredictStartPos = false;
	PredictFraction = 1.0f;
	V_In_0 = 0.0f;
	V_In_1 = 50.0f;
	V_In_2 = 250.0f;
	V_Out_0 = 0.0f;
	V_Out_1 = 50.0f;
	V_Out_2 = 250.0f;
	VerticalScatterAtMinSpeed = VerticalScatterAtMaxSpeed = HorozScatterAtMinSpeed = HorozScatterAtMaxSpeed = 0.0f;
	SpeedRandomFrac = 0.2f;
}

bool CreateWithInitialDirection::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	PSysManager* manager = collection->Manager;
	LHPoint      startPos;
	manager->GetCurrentGesturePosn(&startPos);
	LHPoint direction;
	float   speed;
	if (!manager->IsHumanPlayerCasting())
	{
		float                    gravity = INITIAL_DIRECTION_DEFAULT_GRAVITY;
		const UpdateRuleGravity* gravityRule;
		collection->FindModifier(gravityRule);
		if (gravityRule)
		{
			gravity = gravityRule->GetGravity();
		}
		LHPoint target = *manager->GetOrigin();
		LHPoint offset = target - startPos;
		offset.y = 0.0f;
		if (offset.GetNormeSq() < INITIAL_DIRECTION_MIN_TARGET_DISTANCE_SQ)
		{
			target = startPos + LHPoint(INITIAL_DIRECTION_TARGET_NUDGE, 0.0f, INITIAL_DIRECTION_TARGET_NUDGE);
		}
		LHPoint aim;
		GJUtils::Linterp(startPos, target, INITIAL_DIRECTION_AIM_FRACTION, &aim);
		LHPoint delta = aim - startPos;
		LHPoint flat = delta;
		flat.y = 0.0f;
		float distance = flat.GetNorme();
		float time = distance / INITIAL_DIRECTION_HORIZONTAL_SPEED;
		if (time < INITIAL_DIRECTION_MIN_FLIGHT_TIME)
		{
			time = INITIAL_DIRECTION_MIN_FLIGHT_TIME;
		}
		LHPoint accel(0.0f, -gravity, 0.0f);
		LHPoint velocity = (aim - startPos) * (1.0f / time) - accel * (0.5f * time);
		if (velocity.GetNormeSq() > INITIAL_DIRECTION_MIN_SPEED_SQ)
		{
			float  maxElevation = INITIAL_DIRECTION_MAX_ELEVATION;
			double maxSlope = tan(maxElevation);
			if (velocity.y / sqrtf(velocity.x * velocity.x + velocity.z * velocity.z) > maxSlope)
			{
				float timeSq = (2.0f / -gravity) * (delta.y - distance * maxSlope);
				if (timeSq < 0.0f)
				{
					timeSq = INITIAL_DIRECTION_MIN_FLIGHT_TIME_SQ;
				}
				time = sqrtf(timeSq);
				velocity = (aim - startPos) * (1.0f / time) - accel * (0.5f * time);
			}
		}
		direction = velocity;
		float length = direction.Normalise();
		speed = length;
	}
	else
	{
		GetThrowDirection(&manager->InitialDirection, &direction);
		speed = GetThrowSpeed(manager->GetInitialSpeed());
	}
	PSysSoundAction sound = SoundOfCreate;
	float           speedFraction = speed / GetMaxThrowSpeed();
	speedFraction = boundf(0.0f, speedFraction, 1.0f);
	IMPACT_SOUND_LEVEL level =
		speedFraction > INITIAL_DIRECTION_HEAVY_SPEED_FRACTION
			? IMPACT_SOUND_LEVEL_HEAVY
			: (speedFraction > INITIAL_DIRECTION_MEDIUM_SPEED_FRACTION ? IMPACT_SOUND_LEVEL_MEDIUM
	                                                                   : IMPACT_SOUND_LEVEL_LIGHT);
	sound.Level = level;
	if (PredictStartPos)
	{
		startPos += manager->InitialVelocity * PSysManager::TimeStep * PredictFraction;
	}
	for (long i = 0; i < NumAtoms; i++)
	{
		LHPoint   atomDirection = direction;
		float     atomSpeed = speed;
		AtomCore* core = AtomCore::Create();
		collection->InitNewAtom(core, NextGroups);
		core->Particle = PCreator->CreateParticle(core);
		if (InitScaleFP)
		{
			core->BaseScale *= InitScaleFP->GetValue();
		}
		if (Elevate)
		{
			float yaw = atan2f(atomDirection.z, atomDirection.x);
			float pitch =
				atan2f(atomDirection.y, sqrtf(atomDirection.x * atomDirection.x + atomDirection.z * atomDirection.z));
			if (i >= 1)
			{
				float verticalScatter =
					GJUtils::Linterp(VerticalScatterAtMinSpeed, VerticalScatterAtMaxSpeed, speedFraction);
				float horizontalScatter =
					GJUtils::Linterp(HorozScatterAtMinSpeed, HorozScatterAtMaxSpeed, speedFraction);
				float angle = TWO_PI * (i - 1) / (NumAtoms - 1);
				pitch += verticalScatter * sinf(angle);
				yaw += horizontalScatter * cosf(angle);
				if (SpeedRandomFrac != 0.0f)
				{
					atomSpeed *= 1.0f - PSysManager::PSysFloatRand(SpeedRandomFrac);
				}
			}
			pitch = boundf(-HALF_PI_F, pitch, HALF_PI_F);
			atomDirection = LHPoint(cosf(yaw) * cosf(pitch), sinf(pitch), sinf(yaw) * cosf(pitch));
		}
		core->SetLocalPos(startPos);
		atomDirection *= atomSpeed;
		core->Velocity = atomDirection;
		if (manager->NetUnsafeIsMyInterfaceCasting())
		{
			core->SetDrawOffset(new (PSYS_MODIFIERS_FILE, 660) DrawOffsetDecay(manager->GetNetUnsafePos() - startPos));
		}
		core->StartSound(sound);
	}
	return false;
}

void AddSubCollectionsToAtom::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (!data->Added)
	{
		data->Added = true;
		core->AddSubCollections(NextGroups);
	}
}

unsigned long AddSubCollectionsToAtom::NextGroupsGetSize()
{
	return NextGroups.Size;
}

void AddSubCollectionsToAtom::NextGroupsSetSize(unsigned long size)
{
	NextGroups.SetSize(size);
}

long AddSubCollectionsToAtom::NextGroupsGet(unsigned long index)
{
	return NextGroups[index];
}

void AddSubCollectionsToAtom::NextGroupsSet(unsigned long index, long group)
{
	NextGroups[index] = group;
}

CreateRuleAnAtom::CreateRuleAnAtom(PersistentOwner* owner) : OnceOnlyCreateRule(owner)
{
	OffsetX = 0.0f;
	OffsetY = 0.0f;
	OffsetZ = 0.0f;
	InitScaleFP = NULL;
	SoundRadiusFP = NULL;
	SoundRadiusSmall = 200.0f;
	SoundRadiusMedium = 500.0f;
	SoundRadiusLarge = 1000.0f;
}

bool CreateRuleAnAtom::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	AtomCore* core = AtomCore::Create();
	collection->InitNewAtom(core, NextGroups);
	core->Particle = PCreator->CreateParticle(core);
	if (InitScaleFP)
	{
		core->BaseScale *= InitScaleFP->GetValue();
	}
	core->LocalPos = LHPoint(OffsetX, OffsetY, OffsetZ) + core->LocalPos;
	if (SoundRadiusFP)
	{
		PSysSoundAction sound = SoundOfCreate;
		float           radius = SoundRadiusFP->GetValue();
		if (radius < SoundRadiusSmall)
		{
			sound.Level = IMPACT_SOUND_LEVEL_LIGHT;
		}
		else if (radius < SoundRadiusMedium)
		{
			sound.Level = IMPACT_SOUND_LEVEL_MEDIUM;
		}
		else
		{
			sound.Level = IMPACT_SOUND_LEVEL_HEAVY;
		}
		core->StartSound(sound);
	}
	else
	{
		core->StartSound(SoundOfCreate);
	}
	return false;
}

bool SetInitialRandomOrientations::ModifyAtomCollection(AtomCollection* collection) const
{
	for (AtomCore* core = collection->Atoms.First; core; core = core->Next)
	{
		core->RotationMatrix.PostRotateY(PSysManager::PSysFloatRand(TWO_PI));
	}
	return false;
}

bool CreateRuleFusedSphericalExplode::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	if (MinSpeed == NULL)
	{
		return false;
	}
	if (MaxSpeed == NULL)
	{
		return false;
	}
	if (collection->GetAge() >= FuseTime)
	{
		float speed = MinSpeed->GetValue() + PSysManager::PSysFloatRand(MaxSpeed->GetValue() - MinSpeed->GetValue());
		for (long i = 0; i < NumAtoms; i++)
		{
			AtomCore* core = AtomCore::Create();
			core->Particle = PCreator->CreateParticle(core);
			collection->InitNewAtom(core, NextGroups);
			LHPoint direction;
			do
			{
				PSysManager::PSysRandR3(&direction);
			} while (direction.GetNormeSq() == 0.0f);
			if (OnlyHemisphere)
			{
				direction.y = (float)fabs(direction.y);
			}
			direction.FastNormalizeInline();
			direction *= speed;
			direction.y *= ScaleYSpeed;
			core->Velocity = direction;
			if (i == 0)
			{
				core->StartSound(SoundExplode);
			}
		}
		if (DisableParent && collection->ParentAtom)
		{
			collection->ParentAtom->InUse = false;
		}
		return false;
	}
	return true;
}

UR_FireWorkSimple::UR_FireWorkSimple(PersistentOwner* owner) : OnceOnlyCreateRule(owner)
{
	BangGroup = -1;
	SpeedMin = 15.0f;
	SpeedMax = 30.0f;
	FuseTimeMin = 2.0f;
	FuseTimeMax = 2.0f;
	NumAtomsMin = 20;
	NumAtomsMax = 20;
	PhiMin = 0.0f;
	PhiMax = 0.0f;
	ThetaRandomness = 0.0f;
	FracParentsVelocity = 0.0f;
}

static const uint32_t FireworkColours[] = {
	0xffeb02ff, //
	0xffffffff, //
	0xfff4ff20, //
	0xffff5050, //
	0xffff8d3a, //
	0xfffc97ff, //
};

uint32_t GetRandomFireworkColour();

uint32_t GetRandomFireworkColour()
{
	return FireworkColours[PSysManager::PSysRand(ARRAY_SIZE(FireworkColours))];
}

void UR_FireWorkSimple::ModifyAtomCore(AtomCore* core) const
{
	if (PCreator)
	{
		float fuseTime = GJUtils::Linterp(FuseTimeMin, FuseTimeMax, Noise::Perm(core->RandomSeed) * (1.0f / 255.0f));
		if (core->InUse && core->GetAtomAge() >= fuseTime)
		{
			core->InUse = false;
			core->AddSubCollection(BangGroup);
			core->StartSound(SoundExplode);
			AtomCollection* collection = core->SubCollections.First;
			if (collection)
			{
				LHPoint parentVelocity = core->Velocity;
				float   yaw = atan2f(parentVelocity.z, parentVelocity.x);
				float pitch = atan2f(parentVelocity.y,
				                     sqrtf(parentVelocity.x * parentVelocity.x + parentVelocity.z * parentVelocity.z));
				LHMatrix rotation;
				rotation.SetIdentity();
				rotation.PostRotateZ(HALF_PI_F - pitch);
				rotation.PostRotateY(yaw);
				float speed = SpeedMin + PSysManager::PSysFloatRand(SpeedMax - SpeedMin);
				long  numAtoms = NumAtomsMin;
				if (NumAtomsMax != NumAtomsMin)
				{
					numAtoms += PSysManager::PSysRand(NumAtomsMax - NumAtomsMin);
				}
				float    angleStep = 1.0f / (numAtoms - 1.0f);
				uint32_t colour = GetRandomFireworkColour() & 0x00ffffff;
				for (long i = 0; i < numAtoms; i++)
				{
					AtomCore* atom = AtomCore::Create();
					atom->Particle = PCreator->CreateParticle(atom);
					collection->InitNewAtom(atom, NextGroups);
					*(uint32_t*)&atom->Colour = (atom->Colour.a << 24) | colour;
					float theta = TWO_PI * (i * angleStep);
					if (ThetaRandomness != 0.0f)
					{
						theta += PSysManager::PSysFloatRand(TWO_PI * ThetaRandomness);
					}
					float phi = PhiMin;
					if (PhiMax != PhiMin)
					{
						phi += PSysManager::PSysFloatRand(PhiMax - PhiMin);
					}
					LHPoint velocity(cosf(phi) * cosf(theta), sinf(phi), cosf(phi) * sinf(theta));
					rotation.TransformVector(velocity);
					velocity *= speed;
					if (FracParentsVelocity != 0.0f)
					{
						velocity += parentVelocity * FracParentsVelocity;
					}
					atom->Velocity = velocity;
				}
			}
		}
	}
}

bool CreateRuleMakeChain::ModifyAtomCollection(AtomCollection* collection) const
{
	ParticleBaseChainCreator* creator = assert_cast<ParticleBaseChainCreator*>(PCreator);
	if (creator == NULL)
	{
		return false;
	}
	collection->ParticleChain = creator->CreateChain(NumAtoms);
	for (long i = 0; i < NumAtoms; i++)
	{
		AtomCore* core = AtomCore::Create();
		collection->InitNewAtom(core, -1);
		core->Particle = creator->CreateChainParticle(core, collection->ParticleChain, i);
	}
	return false;
}

void UR_FollowParent::ModifyAtomCore(AtomCore* core) const
{
	if (core->Collection)
	{
		core->LocalPos = *core->Collection->GetCurrentParentPos();
		core->Velocity = *core->Collection->GetCurrentParentVel();
		if (UseParentsDrawOffset && core->Offset == NULL)
		{
			AtomCore* parent = core->GetParentAtom();
			if (parent && parent->Offset)
			{
				core->Collection->InterpolateDrawPos = parent->Collection->InterpolateDrawPos;
				core->SetDrawOffset(parent->Offset);
			}
		}
	}
}

void UR_FollowCastPosn::ModifyAtomCore(AtomCore* core) const
{
	PSysManager* manager = core->Collection->Manager;
	LHPoint      pos;
	manager->GetCurrentGesturePosn(&pos);
	core->GlobalToLocal(&pos);
	core->LocalPos = pos;
	if (manager->NetUnsafeIsMyInterfaceCasting())
	{
		core->Collection->InterpolateDrawPos = false;
		if (core->Offset == NULL)
		{
			core->SetDrawOffset(new (PSYS_MODIFIERS_FILE, 1020) DrawOffsetLT);
		}
		if (core->Offset)
		{
			core->Offset->SetRefPos(pos, 1.0f);
		}
	}
}

UR_HandSprinkle::CollectionData::~CollectionData() {}

UR_HandSprinkle::UR_HandSprinkle(PersistentOwner* owner) : AtomCreateRule(owner)
{
	Flags ^= 4;
	InitSpeedYHumanPlayerCasting = 0.0f;
	HeightToRaise = 10.0f;
	AngleToRaise = HALF_PI_F;
	TotalTime = 3.0f;
	FracToCloseDownOn = 0.7f;
	GJArray<float> keyPoints;
	keyPoints.SetSize(8);
	keyPoints[0] = 0.0f;
	keyPoints[1] = 0.0f;
	keyPoints[2] = 0.2f;
	keyPoints[3] = 1.0f;
	keyPoints[4] = 0.8f;
	keyPoints[5] = 1.0f;
	keyPoints[6] = 1.0f;
	keyPoints[7] = 0.0f;
	KeyPoints.SetFromArray(keyPoints);
	ClampHand = false;
}

void UR_HandSprinkle::KeyPointsSetArray(const GJArray<float>& array)
{
	KeyPoints.SetFromArray(array);
}

void UR_HandSprinkle::KeyPointsGetArray(GJArray<float>* array)
{
	KeyPoints.CopyToArray(array);
}

static const float HandSprinkleMaxHeight = 58.0f;

bool UR_HandSprinkle::ModifyAtomCollection(AtomCollection* collection) const
{
	CollectionData* data;
	collection->GetModifierData(this, data);
	data->Age += PSysManager::TimeStep;
	PSysManager* manager = collection->Manager;
	LHPoint      pos;
	collection->Manager->GetCurrentGesturePosn(&pos);
	if (pos.y - LH3DIsland::GetAltitude(pos) > HandSprinkleMaxHeight)
	{
		pos.y = LH3DIsland::GetAltitude(pos);
		pos.y += HandSprinkleMaxHeight;
	}
	collection->GlobalToLocal(&pos);
	if (data->FirstUpdate)
	{
		data->FirstUpdate = false;
		if (manager->NetUnsafeIsMyInterfaceCasting() && HeightToRaise != 0.0f &&
		    !manager->IsInState(PSYS_MANAGER_STATE_CLOSE_DOWN))
		{
			HandStateGrain::StartTimedPour(ClampHand, TotalTime, HeightToRaise, AngleToRaise, POUR_TYPE_REPEAT);
		}
		if (PCreator == NULL)
		{
			return false;
		}
		AtomCore* core = AtomCore::Create();
		collection->InitNewAtom(core, NextGroups);
		core->Particle = PCreator->CreateParticle(core);
		core->LocalPos = pos;
	}
	bool isMine = manager->NetUnsafeIsMyInterfaceCasting();
	if (isMine)
	{
		collection->InterpolateDrawPos = false;
	}
	for (AtomCore* core = collection->Atoms.First; core; core = core->Next)
	{
		LHPoint velocity = (pos - core->LocalPos) * PSysManager::OneOverTimeStep;
		if (manager->IsHumanPlayerCasting())
		{
			velocity.y += InitSpeedYHumanPlayerCasting;
		}
		velocity.x = 0.0f;
		velocity.z = 0.0f;
		core->Velocity = velocity;
		core->LocalPos = pos;
		if (isMine)
		{
			if (core->Offset == NULL)
			{
				core->SetDrawOffset(new (PSYS_MODIFIERS_FILE, 1130) DrawOffsetLT());
			}
			if (core->Offset)
			{
				core->Offset->SetRefPos(pos, 1.0f);
			}
		}
	}
	return true;
}

bool UR_FollowTargets::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	SpellTargets* targets = &collection->Manager->Targets;
	if (!collection->Manager->IsInState(PSYS_MANAGER_STATE_CLOSE_DOWN))
	{
		if (targets->GetNumObjects() > 0)
		{
			GameThingWithPos* target;
			if ((RemoveTargetFromManager == true && (target = targets->TakeTargetObject()) != NULL) ||
			    (!RemoveTargetFromManager && (target = targets->GetTargetObject()) != NULL))
			{
				AtomCore* core = AtomCore::Create();
				core->Particle = PCreator->CreateParticle(core);
				collection->InitNewAtom(core, NextGroups);
				AtomData* data;
				core->GetModifierData(this, data);
				data->Target = target;
				core->Scale = target->GetScale();
				if (!SoundOneOnly || collection->Atoms.GetCount() == 1)
				{
					core->StartSound(SoundCreate);
				}
			}
		}
		else if (UseLHPointTargets && targets->GetNumPoints() > 0)
		{
			LHPoint point;
			if (RemoveTargetFromManager == true)
			{
				collection->Manager->Targets.TakeTarget(&point);
			}
			else
			{
				collection->Manager->Targets.GetNext(&point);
			}
			AtomCore* core = AtomCore::Create();
			core->Particle = PCreator->CreateParticle(core);
			collection->InitNewAtom(core, NextGroups);
			AtomData* data;
			core->GetModifierData(this, data);
			data->Target = NULL;
		}
	}
	AtomCore* next;
	for (AtomCore* core = collection->Atoms.First; core; core = next)
	{
		next = core->Next;
		AtomData* data;
		core->GetModifierData(this, data);
		if (data->Target.Pointer)
		{
			if (!data->Target.IsValid() && RemoveAtomWhenTargetDies)
			{
				collection->DeleteFromAtomList(core);
				continue;
			}
		}
		if (data->Target.Pointer)
		{
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(data->Target.Get()->Pos, pos);
			collection->GlobalToLocal(&pos);
			core->LocalPos = pos;
		}
	}
	return true;
}

UR_HealSpellChakra::UR_HealSpellChakra(PersistentOwner* owner) : AtomCreateRule(owner)
{
	Flags ^= 4;
	ScalePropObjectSize = false;
	TakeCentrePos = false;
	SoundSpacing = 0.2f;
	ScaleRadius = 1.0f;
	ScaleHeight = 1.0f;
	MaxAlpha = 255.0f;
	SpecularColorR = 0;
	SpecularColorG = 0;
	SpecularColorB = 0;
	AtomAgeMaxAlpha = 1.0f;
	AtomAgeZeroAlpha = 3.0f;
}

static LHLinkedList<Object*> ObjectsWithChakra;

inline long GetChakraIndex(Object* object)
{
	long index = 0;
	for (LHLinkedNode<Object*>* node = ObjectsWithChakra.head.Get(); node != NULL; node = node->next.Get())
	{
		if (node->payload == object)
		{
			return index;
		}
		index++;
	}
	return -1;
}

UR_HealSpellChakra::AtomData::AtomData(const AtomCollectionModifier* modifier) : BaseAtomModifierData(modifier)
{
	Target = NULL;
	Finished = false;
	FirstUpdate = true;
	SoundStarted = false;
	TargetRadius = 1.0f;
	TargetHeight = 1.0f;
}

UR_HealSpellChakra::AtomData::~AtomData()
{
	if (ListedTarget != NULL)
	{
		ObjectsWithChakra.Remove(ListedTarget);
	}
	if (Target.Pointer != NULL && Target.IsValid())
	{
		Target.Get()->SetSpecularColor(0);
	}
}

void UR_HealSpellChakra::AtomData::SetTarget(Object* target)
{
	Target = target;
	ListedTarget = target;
	ObjectsWithChakra.Add(target);
}

void UR_HealSpellChakra::GetTargetPos(Object* target, LHPoint* pos) const
{
	GLandscape::ConvertMapCoordToLandscapePoint(target->Pos, *pos);
	if (TakeCentrePos)
	{
		pos->y += target->GetHeight() * 0.5f;
	}
}

bool UR_HealSpellChakra::ModifyAtomCollection(AtomCollection* collection) const
{
	SpellTargets& targets = collection->Manager->Targets;
	while (targets.GetNumObjects() > 0)
	{
		Object* object = dynamic_cast<Object*>(targets.TakeTargetObject());
		if (object != NULL && object->Game3dObject != NULL && GetChakraIndex(object) == -1)
		{
			LHPoint pos;
			GetTargetPos(object, &pos);
			if (collection->Manager->OwnerSpell != NULL)
			{
				SpellEventInfo info(SPELL_EVENT_TYPE_HEAL, pos);
				info.Target = object;
				collection->Manager->SpellEvent(info);
			}
			AtomCore* core = AtomCore::Create();
			collection->InitNewAtom(core, NextGroups);
			core->Particle = PCreator->CreateParticle(core);
			AtomData* data;
			core->GetModifierData(this, data);
			data->SetTarget(object);
			data->TargetRadius = object->Get2DRadius();
			data->TargetHeight = object->GetHeight();
			core->LocalPos = pos;
		}
	}
	long      index = 0;
	AtomCore* next;
	for (AtomCore* core = collection->Atoms.First; core != NULL; core = next, index++)
	{
		next = core->Next;
		AtomData* data = NULL;
		for (GJDoubleLinkList<BaseAtomModifierData>::Iterator it(core->ModifierData); !it.IsFinished(); it++)
		{
			if (it->Modifier == this)
			{
				data = (AtomData*)it.GetRef();
				break;
			}
		}
		if (data != NULL)
		{
			if (index == 0 && !data->SoundStarted && core->GetAtomAge() > SoundSpacing * index)
			{
				data->SoundStarted = true;
				core->StartSound(SoundHeal);
			}
			if (data->Target.Pointer != NULL)
			{
				data->Target.IsValid();
			}
			Object* target = data->Target.Get();
			if (target != NULL && target->IsInMagicHand())
			{
				target = NULL;
			}
			if (target != NULL)
			{
				LHPoint pos;
				GetTargetPos(target, &pos);
				core->LocalPos = pos;
				if (ScalePropObjectSize)
				{
					core->Scale = target->Get2DRadius();
				}
			}
			else
			{
				data->Finished = true;
			}
			if (!data->Finished)
			{
				if (core->SubCollections.First == NULL)
				{
					return false;
				}
				ModifySubCollection(core->SubCollections.First, data);
				data->FirstUpdate = false;
			}
			if (data->Finished)
			{
				collection->DeleteFromAtomList(core);
			}
		}
	}
	return true;
}

void UR_HealSpellChakra::ModifySubCollection(AtomCollection* collection, AtomData* data) const
{
	if (collection->Atoms.Count == 0)
	{
		if (!data->FirstUpdate)
		{
			data->Finished = true;
		}
		return;
	}
	float age = collection->GetAge();
	float fraction;
	if (age < AtomAgeMaxAlpha)
	{
		fraction = age / AtomAgeMaxAlpha;
	}
	else
	{
		fraction = 1.0f - (age - AtomAgeMaxAlpha) / (AtomAgeZeroAlpha - AtomAgeMaxAlpha);
	}
	fraction = boundf(0.0f, fraction, 1.0f);
	uint8_t alpha = (uint8_t)(fraction * MaxAlpha);
	if (data->Target.Get() != NULL)
	{
		LH3DColor colour((uint8_t)(SpecularColorR * fraction), (uint8_t)(SpecularColorG * fraction),
		                 (uint8_t)(SpecularColorB * fraction));
		data->Target.Get()->SetSpecularColor(colour.GetColor());
	}
	for (AtomCore* core = collection->Atoms.First; core != NULL; core = core->Next)
	{
		core->SetAlpha(alpha);
	}
}

bool UR_HealInHand::ModifyAtomCollection(AtomCollection* collection) const
{
	LHPoint pos = *collection->GetCurrentParentPos();
	long    index = 0;
	for (AtomCore* core = collection->Atoms.First; core != NULL; core = core->Next)
	{
		float side = index % 2 == 1 ? -1.0f : 1.0f;
		core->LocalPos = pos * ((float)sin(collection->GetAge() * WiggleFreq * TWO_PI) * side);
		index++;
	}
	return true;
}

static const uint8_t LightningForkFlickerAlphas[LIGHTNING_FORK_FLICKER_NUM_ALPHAS] = {10, 30, 40, 200, 220, 255};

bool LightningForkFlicker::ModifyAtomCollection(AtomCollection* collection) const
{
	CollectionData* data;
	collection->GetModifierData(this, data);
	if (collection->Manager->GetAge() > data->NextFlickerTime)
	{
		long index = PSysManager::PSysRand(LIGHTNING_FORK_FLICKER_NUM_ALPHAS);
		index = index > 0 ? min(index, LIGHTNING_FORK_FLICKER_NUM_ALPHAS - 1) : 0;
		uint8_t alpha = LightningForkFlickerAlphas[index];
		data->NextFlickerTime = collection->Manager->GetAge() + PSysManager::PSysFloatRand(1.0f) / FlickerFreq;
		for (GJDoubleLinkList<AtomCore>::Iterator it(collection->Atoms); !it.IsFinished(); it++)
		{
			it->SetAlpha(alpha);
		}
	}
	return true;
}

void UR_UpdatePosnFromVelocity::ModifyAtomCore(AtomCore* core) const
{
	core->LocalPos = core->Velocity * PSysManager::TimeStep + core->LocalPos;
}

void UpdateRuleRotatePrincipalAxis::ModifyAtomCore(AtomCore* core) const
{
	switch (Axis)
	{
	case 0:
		core->RotationMatrix.PostRotateX(PSysManager::TimeStep * AngularVel);
		break;
	case 1:
		core->RotationMatrix.PostRotateY(PSysManager::TimeStep * AngularVel);
		break;
	case 2:
		core->RotationMatrix.PostRotateZ(PSysManager::TimeStep * AngularVel);
		break;
	}
}

void UR_BankedTurning::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
}

void UpdateRuleGravity::ModifyAtomCore(AtomCore* core) const
{
	float   timeStep = PSysManager::TimeStep;
	LHPoint velocity = core->Velocity;
	if (UseDamping)
	{
		velocity *= 1.0f - timeStep * Damping;
	}
	velocity.y -= Gravity * core->GetGravityScale() * boundf(0.0f, velocity.y + MaxSpeed, 1.0f) * timeStep;
	core->Velocity = velocity;
	core->SetLocalPos(velocity * timeStep + core->GetLocalPos());
}

UpdateRuleGravityWithFloor::UpdateRuleGravityWithFloor(PersistentOwner* owner) : UpdateRuleGravity(owner)
{
	DampingHorozontalBounce = 0.5f;
	DampingVerticalBounce = 0.5f;
	GroundDrag = 0.0f;
	ImpactSpeedSmall = 5.0f;
	ImpactSpeedMedium = 20.0f;
	ImpactSpeedLarge = 40.0f;
	ImpactSoundCondition = NULL;
	UseSurfaceForBounce = false;
	MakeRipples = true;
	RippleSpacing = 2.0f;
	CheckShieldDeflections = false;
	UseWind = true;
	MinAlphaForImpactSoundOrRipple = 60;
}

void UpdateRuleGravityWithFloor::CreateImpactSound(AtomCore* core, const LHPoint& pos, float speed) const
{
	if (core->GetAlpha() >= MinAlphaForImpactSoundOrRipple)
	{
		speed = (float)fabs(speed);
		if (ImpactSound.Action != PSYS_SOUND_ACTION_NONE && speed >= ImpactSpeedSmall &&
		    !core->HasActiveSoundOfAction(ImpactSound.Action))
		{
			if (ImpactSoundCondition == NULL || ImpactSoundCondition->TestConditionOnAtom(core))
			{
				{
					PSysSoundAction sound = ImpactSound;
					if (speed < ImpactSpeedMedium)
					{
						sound.Level = IMPACT_SOUND_LEVEL_LIGHT;
					}
					else if (speed < ImpactSpeedLarge)
					{
						sound.Level = IMPACT_SOUND_LEVEL_MEDIUM;
					}
					else
					{
						sound.Level = IMPACT_SOUND_LEVEL_HEAVY;
					}
					core->StartSound(sound);
				}
				if (MakeRipples && MapCoords(pos).IsWater())
				{
					AtomDataRipple* data;
					core->GetModifierData(this, data);
					if (data->RippleCentre.GetDistance2DSq(pos) > RippleSpacing * RippleSpacing)
					{
						data->RippleCentre = pos;
					}
				}
			}
		}
	}
}

static const float SurfaceBounceFactors[SOUND_SURFACE_TYPE_LAST] = {
	1.0f, //
	1.0f, //
	1.0f, //
	1.0f, //
	1.0f, //
	1.0f, //
	0.2f, //
	0.2f, //
	1.0f, //
};

static float GetSurfaceBounceFactor(int surface_type);

static float GetSurfaceBounceFactor(int surface_type)
{
	return SurfaceBounceFactors[surface_type];
}

bool UpdateRuleGravityWithFloor::ModifyAtomCollection(AtomCollection* collection) const
{
	bool  useDamping = UseDamping && (!DisableDampingForNonHuman || collection->Manager->IsHumanPlayerCasting());
	bool  useWind = UseWind && (!DisableWindForNonHuman || collection->Manager->IsHumanPlayerCasting());
	float timeStep = PSysManager::TimeStep;
	for (AtomCore* core = collection->Atoms.First; core; core = core->Next)
	{
		LHPoint velocity = core->Velocity;
		LHPoint pos;
		core->CalculateGlobalPos(&pos);
		if (useWind)
		{
			LHPoint wind = GClimate::GetWindAtPoint(&pos, true);
			velocity += (wind * WindMagnification * UPDATE_RULE_GRAVITY_WIND_SCALE - velocity) * Damping * timeStep;
		}
		else if (useDamping)
		{
			velocity *= 1.0f - timeStep * Damping;
		}
		core->Velocity = velocity;
		core->SetLocalPos(velocity * timeStep + core->GetLocalPos());
		LHMatrix matrix;
		core->CalculateGlobalPos(&matrix);
		LHPoint globalPos = matrix.GetPos();
		float   altitude = LH3DIsland::GetAltitude(globalPos);
		float   height = core->Particle ? core->Particle->GetLowestPoint(matrix) : globalPos.y;
		if (height >= altitude)
		{
			velocity.y -= Gravity * core->GetGravityScale() * boundf(0.0f, velocity.y + MaxSpeed, 1.0f) * timeStep;
		}
		else
		{
			globalPos.y += altitude - height;
			core->GlobalToLocal(&globalPos);
			core->SetLocalPos(globalPos);
			LHPoint normal;
			LH3DIsland::GetNormal(globalPos, &normal);
			float speed = normal.DotProductInline(velocity);
			if (speed < 0.0f)
			{
				CreateImpactSound(core, globalPos, speed);
				LHPoint normalVelocity = normal * speed;
				LHPoint tangentVelocity = velocity - normalVelocity;
				LHPoint direction = tangentVelocity;
				if (direction.GetNormeSq() < UPDATE_RULE_GRAVITY_MIN_SLIDE)
				{
					direction = LHPoint(UPDATE_RULE_GRAVITY_MIN_SLIDE, 0.0f, 0.0f);
				}
				float length = direction.Normalise();
				tangentVelocity -= direction * boundf(0.0f, PSysManager::TimeStep * GroundDrag, length);
				float horizontalDamping = DampingHorozontalBounce;
				if (UseSurfaceForBounce)
				{
					horizontalDamping *= GetSurfaceBounceFactor(GSoundMap::GetSurfaceType(MapCoords(globalPos)));
				}
				tangentVelocity *= horizontalDamping;
				normalVelocity *= -DampingVerticalBounce;
				velocity = normalVelocity + tangentVelocity;
			}
		}
		core->Velocity = velocity;
		if (CheckShieldDeflections)
		{
			DoAnyShieldDeflections(core, pos);
		}
	}
	return true;
}

static const float ShieldDeflectionRadiusScale = 1.25f;

void UpdateRuleGravityWithFloor::DoAnyShieldDeflections(AtomCore* core, const LHPoint& previous_pos)
{
	LHPoint pos;
	core->CalculateGlobalPos(&pos);
	DefensiveShield* shield = TDefensiveShields::HasCrossedIntoMagicalShield(
		previous_pos, pos, ShieldDeflectionRadiusScale * core->GetCombinedScale());
	if (shield)
	{
		LHPoint hitPoint;
		shield->FindIntersect(previous_pos, pos, ShieldDeflectionRadiusScale * core->GetCombinedScale(), &hitPoint);
		shield->SetHitPoint(hitPoint);
		LHPoint movement;
		core->GetLastGlobalMovement(&movement);
		SpellEventInfo info;
		info.Type = SPELL_EVENT_TYPE_SPELL;
		info.Pos = hitPoint;
		info.Velocity = movement;
		info.Strength = 1.0f;
		info.CheckShields = false;
		info.Target = NULL;
		info.Target = shield->GetOwnerSpell();
		PSysManager* manager = core->Collection->Manager;
		if (!manager->SpellEvent(info))
		{
			core->GlobalToLocal(&hitPoint);
			core->SetLocalPos(hitPoint);
			LHPoint velocity = core->Velocity;
			shield->DeflectOffShield(hitPoint, &velocity);
			core->Velocity = velocity;
		}
	}
}

bool UR_OrientSpriteWithRandomAngle::ModifyAtomCollection(AtomCollection* collection) const
{
	for (AtomCore* core = collection->Atoms.First; core; core = core->Next)
	{
		AtomData* data;
		core->GetModifierData(this, data);
		if (data->FirstUpdate)
		{
			data->FirstUpdate = false;
			data->Angle = (1.0f - PSysManager::PSysFloatRand(2.0f)) * RandomAngle + DefaultAngle;
		}
		core->SetAngleY(data->Angle);
	}
	return true;
}

void UR_OrientWithVelocity::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (data->FirstUpdate)
	{
		data->FirstUpdate = false;
		data->SmoothedVelocity = core->Velocity;
		data->SpinAngle = PSysManager::PSysFloatRand(TWO_PI);
	}
	data->SmoothedVelocity += (core->Velocity - data->SmoothedVelocity) * SmoothFactor;
	LHPoint up = LHPoint(0.0f, 1.0f, 0.0f) * ProportionDefault;
	LHPoint direction = up + data->SmoothedVelocity * -1.0f;
	if (direction.Normalise() != 0.0f)
	{
		float    yaw = atan2f(direction.z, direction.x);
		float    pitch = HALF_PI_F - atan2f(direction.y, sqrtf(direction.x * direction.x + direction.z * direction.z));
		LHMatrix matrix;
		matrix.SetIdentity();
		matrix.PostRotateZ(pitch);
		matrix.PostRotateY(yaw);
		matrix.RotateY(fmodf(core->GetAtomAge() * SpinSpeed + data->SpinAngle, TWO_PI));
		core->SetRotationMatrix(matrix);
	}
}

void CheckShieldDeflections::ModifyAtomCore(AtomCore* core) const
{
	LHPoint pos;
	core->CalculateGlobalPos(&pos);
	if (!core->HasBeenDeflected)
	{
		DefensiveShield* shield = TDefensiveShields::IsPointInAMagicalShield(pos, 0.0f);
		if (shield)
		{
			shield->SetHitPoint(pos);
			LHPoint movement;
			core->GetLastGlobalMovement(&movement);
			SpellEventInfo info;
			info.Type = SPELL_EVENT_TYPE_SPELL;
			info.Pos = pos;
			info.Velocity = movement;
			info.Strength = 1.0f;
			info.CheckShields = false;
			info.Target = NULL;
			info.Target = shield->GetOwnerSpell();
			PSysManager* manager = core->Collection->Manager;
			if (!manager->SpellEvent(info))
			{
				LHPoint velocity = core->Velocity;
				shield->DeflectOffShield(pos, &velocity);
				core->Velocity = velocity;
				if (SetDeflectedWhenDeflected)
				{
					core->HasBeenDeflected = true;
				}
				if (GroupToMoveToIfDeflected != -1)
				{
					core->MoveToBaseGroup(GroupToMoveToIfDeflected);
				}
				if (CloseDownSpellIfDeflected)
				{
					core->Collection->Manager->SetState(PSYS_MANAGER_STATE_CLOSE_DOWN);
				}
			}
		}
	}
}

void SetAtomHasBeenDeflected::ModifyAtomCore(AtomCore* core) const
{
	core->HasBeenDeflected = true;
}

void SetPSysCloseDown::ModifyAtomCore(AtomCore* core) const
{
	core->Collection->Manager->SetState(PSYS_MANAGER_STATE_CLOSE_DOWN);
}

void SetScale::ModifyAtomCore(AtomCore* core) const
{
	if (Scale)
	{
		core->Scale = Scale->GetValue();
	}
}

bool SetCollectionAlpha::ModifyAtomCollection(AtomCollection* collection) const
{
	if (Alpha == NULL)
	{
		return false;
	}
	collection->Alpha = (uint8_t)boundf(0.0f, Alpha->GetValue(), PSYS_MAX_ALPHA);
	return true;
}

void SetAtomAlpha::ModifyAtomCore(AtomCore* core) const
{
	if (Alpha)
	{
		core->SetAlpha((uint8_t)boundf(0.0f, Alpha->GetValue(), PSYS_MAX_ALPHA));
	}
}

void FollowOrigin::ModifyAtomCore(AtomCore* core) const
{
	core->LocalPos = *core->Collection->Manager->GetOrigin();
}

void ForceLandscapeHeight::ModifyAtomCore(AtomCore* core) const
{
	LHPoint pos;
	core->CalculateGlobalPos(&pos);
	pos.y = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
	core->GlobalToLocal(&pos);
	core->LocalPos = pos;
}

void ForceConstantAltitude::ModifyAtomCore(AtomCore* core) const
{
	LHPoint pos;
	core->CalculateGlobalPos(&pos);
	pos.y = Altitude;
	core->GlobalToLocal(&pos);
	core->LocalPos = pos;
}

void ForceConstantHeight::ModifyAtomCore(AtomCore* core) const
{
	LHPoint pos;
	core->CalculateGlobalPos(&pos);
	pos.y = Height + LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
	core->GlobalToLocal(&pos);
	core->LocalPos = pos;
}

void ForceMinimumHeight::ModifyAtomCore(AtomCore* core) const
{
	LHPoint pos;
	core->CalculateGlobalPos(&pos);
	float altitude = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
	if (pos.y - altitude < MinHeight)
	{
		pos.y = altitude + MinHeight;
		core->GlobalToLocal(&pos);
		core->LocalPos = pos;
	}
}

UR_AddDefensiveSphere::CollectionData::~CollectionData()
{
	if (Shield)
	{
		TDefensiveShields::Delete(Shield);
	}
}

bool UR_AddDefensiveSphere::ModifyAtomCollection(AtomCollection* collection) const
{
	CollectionData* data;
	collection->GetModifierData(this, data);
	if (data->FirstUpdate)
	{
		data->FirstUpdate = false;
		LHPoint pos = *collection->GetCurrentParentPos();
		data->Shield = TDefensiveShields::AddDefensiveSphere(collection->Manager, pos, SphereRadius->GetValue());
	}
	else if (data->Shield)
	{
		data->Shield->Sphere.Radius = SphereRadius->GetValue();
	}
	return true;
}

UpdateRuleShieldSpark::UpdateRuleShieldSpark(PersistentOwner* owner) : AtomCreateRule(owner)
{
	SphereRadius = NULL;
	MaxNumAtomsForCollection = -1;
	SparkLife = 3.0f;
	WiggleAmpl = 0.08f;
}

bool UpdateRuleShieldSpark::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	SpellTargets& targets = collection->Manager->Targets;
	while (targets.GetSize() > 0)
	{
		LHPoint pos;
		targets.TakeTarget(&pos);
		if (MaxNumAtomsForCollection == -1 || MaxNumAtomsForCollection > collection->Atoms.Count)
		{
			collection->GlobalToLocal(&pos);
			AtomCore* core = AtomCore::Create();
			core->Particle = PCreator->CreateParticle(core);
			collection->InitNewAtom(core, NextGroups);
			core->LocalPos = pos;
			core->StartSound(SoundSpark);
			AtomData* data;
			core->GetModifierData(this, data);
			data->RandomAngleX = PSysManager::PSysFloatRand(TWO_PI);
			data->RandomAngleY = PSysManager::PSysFloatRand(TWO_PI);
			data->RandomAngleZ = PSysManager::PSysFloatRand(TWO_PI);
			data->NumWiggles = (long)(PSysManager::PSysFloatRand(4.0f) + 2.0f);
			float yaw = atan2f(pos.z, pos.x);
			float elevation = atan2f(pos.y, sqrtf(pos.x * pos.x + pos.z * pos.z));
			data->Orientation.SetIdentity();
			data->Orientation.PostRotateZ(HALF_PI_F - elevation);
			data->Orientation.PostRotateY(yaw);
		}
	}
	AtomCore* next;
	for (AtomCore* core = collection->Atoms.First; core; core = next)
	{
		next = core->Next;
		AtomData* data;
		core->GetModifierData(this, data);
		if (core->GetAtomAge() > SparkLife)
		{
			collection->DeleteFromAtomList(core);
		}
		else if (core->SubCollections.First)
		{
			ModifySubCollection(core, core->SubCollections.First, data);
		}
	}
	return true;
}

bool UpdateRuleShieldSpark::ModifySubCollection(AtomCore* core, AtomCollection* collection, AtomData* data) const
{
	if (SphereRadius == NULL)
	{
		return false;
	}
	long numAtoms = collection->Atoms.Count;
	if (numAtoms == 0)
	{
		return true;
	}
	float oneOverNumAtoms = 1.0f / numAtoms;
	float age = core->GetAtomAge();
	float scale = 0.04f * (0.4f * (1.0f + sinf(data->RandomAngleZ - 6.0f * age)) + 1.5f);
	scale *= SphereRadius->GetValue();
	uint8_t alpha = (uint8_t)boundf(0.0f, 510.0f * (1.0f - age / SparkLife), PSYS_MAX_ALPHA);
	long    i = 0;
	for (AtomCore* atom = collection->Atoms.First; atom; atom = atom->Next, i++)
	{
		float   t = oneOverNumAtoms * (numAtoms - i);
		LHPoint pos;
		pos.x = sinf(4.0f * age + data->RandomAngleZ) * sinf(data->NumWiggles * t * PI_F) * WiggleAmpl;
		pos.y = t;
		pos.z = sinf(2.0f * age + data->RandomAngleZ) * sinf((data->NumWiggles + 1) * t * PI_F) * WiggleAmpl;
		pos *= SphereRadius->GetValue();
		data->Orientation.TransformVector(pos);
		atom->Scale = scale;
		LHPoint globalPos = pos;
		collection->LocalToGlobal(&globalPos);
		float height = globalPos.y - LH3DIsland::GetAltitude(globalPos);
		if (height < atom->GetCombinedScale())
		{
			pos.y += atom->GetCombinedScale() - height;
			collection->GlobalToLocal(&globalPos);
			pos = globalPos;
		}
		atom->Velocity = (pos - atom->LocalPos) * PSysManager::OneOverTimeStep;
		atom->LocalPos = pos;
		atom->SetAlpha(alpha);
	}
	return true;
}

void UR_SphereSurfaceTracer::ModifyAtomCore(AtomCore* core) const
{
	AtomCollection* collection = core->Collection;
	AtomData*       data;
	core->GetModifierData(this, data);
	if (data->FirstUpdate)
	{
		data->FirstUpdate = false;
		data->Theta = PSysManager::PSysFloatRand(TWO_PI);
		data->Phi = PSysManager::PSysFloatRand(TWO_PI);
		data->Psi = PSysManager::PSysFloatRand(TWO_PI);
	}
	float theta = fmodf(core->GetAtomAge() * ThetaSpeed + data->Theta, TWO_PI);
	float phi = fmodf(core->GetAtomAge() * PhiSpeed + data->Phi, TWO_PI);
	float radius = SphereRadius;
	if (ScaleSphereRadius)
	{
		radius *= ScaleSphereRadius->GetValue();
	}
	LHPoint pos =
		LHPoint(ScaleX * cosf(theta) * cosf(phi), ScaleY * sinf(phi), ScaleZ * sinf(theta) * cosf(phi)) * radius;
	if (collection->IsInGlobalCoords() == true)
	{
		pos += *collection->GetCurrentParentPos();
	}
	core->Velocity = (pos - core->LocalPos) * PSysManager::OneOverTimeStep;
	core->LocalPos = pos;
	uint8_t alpha = (uint8_t)Alpha;
	if (ScaleAlpha)
	{
		alpha = (uint8_t)boundf(0.0f, ScaleAlpha->GetValue() * alpha, PSYS_MAX_ALPHA);
	}
	core->SetAlpha(alpha);
	if (OrientToSurface)
	{
		core->SetAngleZ(HALF_PI_F - phi);
		core->RotationMatrix.PostRotateY(theta);
	}
}

UR_ForestPath::UR_ForestPath(PersistentOwner* owner) : UpdateRule(owner)
{
	ThetaSpeed = 1.0f;
	PhiSpeed = 1.0f;
	SphereRadius = 1.0f;
	ScaleSphereRadius = NULL;
	ScaleX = 1.0f;
	ScaleY = 1.0f;
	ScaleZ = 1.0f;
	RadiusSpline.SetSize(4);
	RadiusSpline.SetSP(0, 0.0f, 0.2f);
	RadiusSpline.SetSP(1, 5.0f, 1.0f);
	RadiusSpline.SetSP(2, 15.0f, 1.0f);
	RadiusSpline.SetSP(3, 20.0f, 0.2f);
	RadiusSpline.Comp();
	HeightSpline.SetSize(5);
	HeightSpline.SetSP(0, 0.0f, -1.0f);
	HeightSpline.SetSP(1, 5.0f, 6.0f);
	HeightSpline.SetSP(2, 30.0f, 6.0f);
	HeightSpline.SetSP(3, 33.0f, -5.2f);
	HeightSpline.Comp();
}

bool UR_ForestPath::ModifyAtomCollection(AtomCollection* collection) const
{
	float radius;
	RadiusSpline.EvalAtT(collection->GetAge(), &radius);
	float height;
	HeightSpline.EvalAtT(collection->GetAge(), &height);
	for (AtomCore* core = collection->Atoms.First; core; core = core->Next)
	{
		AtomData* data;
		core->GetModifierData(this, data);
		if (data->FirstUpdate)
		{
			data->FirstUpdate = false;
			data->InitialTheta = PSysManager::PSysFloatRand(TWO_PI);
			data->InitialPhi = PSysManager::PSysFloatRand(TWO_PI);
			data->InitialPsi = PSysManager::PSysFloatRand(TWO_PI);
		}
		float theta = (float)fmod(core->GetAtomAge() * ThetaSpeed + data->InitialTheta, TWO_PI);
		float phi = (float)fmod(core->GetAtomAge() * PhiSpeed + data->InitialPhi, TWO_PI);
		float sphereRadius = radius * SphereRadius;
		if (ScaleSphereRadius)
		{
			sphereRadius *= ScaleSphereRadius->GetValue();
		}
		LHPoint direction((float)cos(theta) * ScaleX * (float)cos(phi), (float)sin(phi) * ScaleY,
		                  (float)sin(theta) * ScaleZ * (float)cos(phi));
		LHPoint pos = direction * sphereRadius;
		if (collection->IsInGlobalCoords() == true)
		{
			pos += *collection->GetCurrentParentPos();
		}
		pos.y += height;
		core->Velocity = (pos - core->LocalPos) * PSysManager::OneOverTimeStep;
		core->LocalPos = pos;
	}
	return true;
}

void UR_VapourEndEffect::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (data && ScaleFactor)
	{
		float    timeStep = PSysManager::TimeStep;
		LHMatrix rotation = core->GetRotationMatrix();
		LHPoint  pos = *core->Collection->GetCurrentParentPos();
		if (data->FirstUpdate)
		{
			data->FirstUpdate = false;
			float heading = (float)atan2(pos.z, pos.x);
			float pitch = HALF_PI_F - (float)atan2(pos.y, (float)sqrt(pos.x * pos.x + pos.z * pos.z));
			rotation.PostRotateZ(pitch);
			rotation.PostRotateY(heading);
		}
		else
		{
			LHPoint movement = *core->Collection->GetCurrentParentVel() * timeStep;
			LHPoint previous = pos - movement;
			if (fabs(previous.x - pos.x) > VAPOUR_END_EFFECT_MIN_MOVEMENT ||
			    fabs(previous.y - pos.y) > VAPOUR_END_EFFECT_MIN_MOVEMENT ||
			    fabs(previous.z - pos.z) > VAPOUR_END_EFFECT_MIN_MOVEMENT)
			{
				float   cosAngle = (previous * pos) / (float)sqrt((previous * previous) * (pos * pos));
				LHPoint axis;
				axis.CrossProduct(previous, pos);
				GJUtils::PostRotateByQuaternion((float)acos(cosAngle), &axis, &rotation);
			}
		}
		core->SetLocalPos(pos);
		core->SetRotationMatrix(rotation);
		core->Scale = ScaleFactor->GetValue();
		core->SetAlpha((uint8_t)boundf(0.0f, core->GetAtomAge() * VAPOUR_END_EFFECT_FADE_IN_ALPHA_PER_SECOND, 255.0f));
	}
}

void RemoveRule::ModifyAtomCore(AtomCore* core) const
{
	AtomCollection* collection = core->Collection;
	if (ShouldRemove(collection, core))
	{
		core->Collection->DeleteFromAtomList(core);
	}
}

bool RemoveRuleOldAgeOnly::ShouldRemove(AtomCollection* collection, AtomCore* core) const
{
	return core->GetAtomAge() > DieAge;
}

bool RemoveRuleAfterCloseDown::ShouldRemove(AtomCollection* collection, AtomCore* core) const
{
	PSysManager* manager = collection->Manager;
	if (manager->IsInState(PSYS_MANAGER_STATE_CLOSE_DOWN) && manager->Age - manager->CloseDownAge > Delay)
	{
		return true;
	}
	return false;
}

bool RemoveRuleAfterConditionTrue::ShouldRemove(AtomCollection* collection, AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (data->ConditionMet == false)
	{
		if (ConditionForRemove == NULL || ConditionForRemove->TestConditionOnAtom(core))
		{
			data->ConditionMet = true;
			data->ConditionMetAge = core->GetAtomAge();
		}
	}
	if (data->ConditionMet == true && core->GetAtomAge() - data->ConditionMetAge > Delay)
	{
		return true;
	}
	return false;
}

bool RemoveRuleProb::ShouldRemove(AtomCollection* collection, AtomCore* core) const
{
	if (collection->Atoms.Count <= MinAtoms)
	{
		return false;
	}
	float random = PSysManager::PSysFloatRand(1.0f);
	return random < RemoveFreq * PSysManager::TimeStep;
}

UR_Trail::UR_Trail(PersistentOwner* owner) : AtomCreateRule(owner)
{
	UseParentsDrawOffset = false;
	NumAtoms = 5;
	NumGameTurnsToSpreadOver = 10;
	MaxTrailLength = 10.0f;
	TrailGroup = -1;
	HeadGroup = -1;
	UseNonLinearSpacing = true;
	UseAlpha = true;
	UseScaling = true;
	ModifyAlpha = true;
	ModifyScaling = true;
	UseParentAlpha = false;
	UseCombinedParentScale = false;
	FadeTailAlpha = 1.0f;
	FadeTailScale = 1.0f;
	InitTrailUsingVelocity = false;
	ScaleMaxTrailLengthWithParent = false;
}

bool UR_Trail::ModifyAtomCollection(AtomCollection* collection) const
{
	CollectionData* data;
	collection->GetModifierData(this, data);
	if (data->FirstUpdate == true)
	{
		data->FirstUpdate = false;
		MakeTrail(collection, data);
	}
	else
	{
		UpdateTrail(collection, data);
	}
	return true;
}

void UR_Trail::MakeTrail(AtomCollection* collection, CollectionData* data) const
{
	data->Trail.SetMaxSize(NumGameTurnsToSpreadOver);
	for (long i = 0; i < NumAtoms; i++)
	{
		AtomCore* core = AtomCore::Create();
		if (i != 0 && i != NumAtoms - 1)
		{
			collection->InitNewAtom(core, NextGroups);
		}
		else if (i == 0)
		{
			collection->InitNewAtom(core, HeadGroup);
		}
		else
		{
			collection->InitNewAtom(core, TrailGroup);
		}
		core->Particle = PCreator->CreateParticle(core);
		if (UseParentsDrawOffset && core->GetDrawOffset() == NULL)
		{
			AtomCore* parent = core->GetParentAtom();
			if (parent && parent->GetDrawOffset())
			{
				core->SetDrawOffset(parent->GetDrawOffset());
			}
		}
	}
}

template <class T> inline void FindInterpPos(float t, const GJCircularArray<T>& array, T* result);

template <class T> inline void FindInterpPos(float t, const GJCircularArray<T>& array, T* result)
{
	float pos = t * (array.GetNumFilled() - 1);
	long  index = (long)floor(pos);
	float fraction = pos - index;
	if (index >= 0 && index < array.GetNumFilled() && fraction >= 0.0f && fraction <= 1.0f)
	{
		if (index == array.GetNumFilled() - 1)
		{
			*result = array.Entry(array.GetNumFilled() - 1);
		}
		else
		{
			const T& from = array.Entry(index);
			GJUtils::Linterp(from, array.Entry(index + 1), fraction, result);
		}
	}
}

void UR_Trail::UpdateTrail(AtomCollection* collection, CollectionData* data) const
{
	AtomCore*                          parent = collection->GetParentAtom();
	GJCircularArray<PosScaleRotation>& trail = data->Trail;
	if (parent)
	{
		float            scale = UseCombinedParentScale ? parent->GetCombinedScale() : parent->GetScale();
		PosScaleRotation head(parent->GetLocalPos(), scale, parent->GetRotationMatrix());
		if (InitTrailUsingVelocity && trail.GetNumFilled() == 0)
		{
			LHPoint step = parent->Velocity * PSysManager::TimeStep;
			head.Position -= step * (float)trail.GetMaxSize();
			for (long i = 0; i < trail.GetMaxSize(); i++)
			{
				head.Position += step;
				trail.Add(head);
			}
		}
		else
		{
			trail.Add(head);
		}

		float fraction = 1.0f;
		float maxLength = ScaleMaxTrailLengthWithParent ? scale * MaxTrailLength : MaxTrailLength;
		float length = 0.0f;
		for (long i = 0; i < trail.GetNumFilled() - 1; i++)
		{
			LHPoint segment = trail.Entry(i).Position - trail.Entry(i + 1).Position;
			float   segmentLength = segment.GetNorme();
			if (length + segmentLength > maxLength)
			{
				fraction = (i + (maxLength - length) / segmentLength) / trail.GetNumFilled();
				break;
			}
			length += segmentLength;
		}

		long      index;
		AtomCore* core;
		if (UseNonLinearSpacing)
		{
			float last = collection->Atoms.Count - 1.0f;
			float area = last * last * 0.5f;
			index = 0;
			for (core = collection->Atoms.First; core; core = core->Next)
			{
				PosScaleRotation pos;
				FindInterpPos(fraction * (area - index * index * 0.5f) / area, trail, &pos);
				core->SetLocalPos(pos.Position);
				core->SetScale(pos.Scale);
				core->SetRotationMatrix(pos.Rotation);
				if (UseParentAlpha)
				{
					uint8_t parentAlpha = parent->GetAlpha();
					uint8_t collectionAlpha = parent->Collection->Alpha;
					core->SetAlpha((collectionAlpha * parentAlpha) >> 8);
				}
				else if (ModifyAlpha)
				{
					core->SetAlpha((uint8_t)PSYS_MAX_ALPHA);
				}
				index++;
			}
		}
		else
		{
			index = 0;
			for (core = collection->Atoms.First; core; core = core->Next)
			{
				PosScaleRotation pos;
				FindInterpPos(fraction * (collection->Atoms.Count - index) / collection->Atoms.Count, trail, &pos);
				core->SetLocalPos(pos.Position);
				core->SetScale(pos.Scale);
				core->SetRotationMatrix(pos.Rotation);
				if (UseParentAlpha)
				{
					uint8_t parentAlpha = parent->GetAlpha();
					uint8_t collectionAlpha = parent->Collection->Alpha;
					core->SetAlpha((collectionAlpha * parentAlpha) >> 8);
				}
				else if (ModifyAlpha)
				{
					core->SetAlpha((uint8_t)PSYS_MAX_ALPHA);
				}
				index++;
			}
		}

		index = 0;
		for (core = collection->Atoms.First; core; core = core->Next)
		{
			float t = index / (collection->Atoms.Count - 1.0f);
			if (UseScaling)
			{
				core->SetScale(t * FadeTailScale);
			}
			else if (ModifyScaling)
			{
				core->SetScale(core->GetScale() * FadeTailScale * t);
			}
			if (UseAlpha)
			{
				float maxAlpha = index == collection->Atoms.Count - 1 ? PSYS_MAX_ALPHA : FadeTailAlpha * PSYS_MAX_ALPHA;
				core->SetAlpha((uint8_t)boundf(0.0f, maxAlpha * t, PSYS_MAX_ALPHA));
			}
			else if (ModifyAlpha)
			{
				float maxAlpha = index == collection->Atoms.Count - 1 ? PSYS_MAX_ALPHA : FadeTailAlpha * PSYS_MAX_ALPHA;
				core->SetAlpha(
					(uint8_t)boundf(0.0f, maxAlpha * core->GetAlpha() * t * OneOverMaxAlpha, PSYS_MAX_ALPHA));
			}
			uint32_t specular = parent->Specular.GetColor();
			uint8_t  brightness = (uint8_t)(t * PSYS_MAX_ALPHA);
			*(uint32_t*)&core->Specular = ((((specular >> 24) * brightness) >> 8) << 24) |
			                              (((((specular >> 16) & 0xff) * brightness) >> 8) << 16) |
			                              (((((specular >> 8) & 0xff) * brightness) >> 8) << 8) |
			                              (((specular & 0xff) * brightness) >> 8);
			index++;
		}
	}
}

void CreateNewBaseAtom::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (!data->Created)
	{
		PSysManager* manager = core->Collection->Manager;
		AtomCore*    newCore = manager->CreateAtomInBaseGroup(BaseGroup, NextGroups);
		if (newCore)
		{
			if (PCreator)
			{
				newCore->Particle = PCreator->CreateParticle(newCore);
			}
			LHPoint pos;
			core->CalculateGlobalPos(&pos);
			newCore->GlobalToLocal(&pos);
			newCore->SetLocalPos(pos);
			newCore->StartSound(SoundCreation);
			data->Created = true;
		}
	}
}

void UR_MoveAtomToBaseGroup::ModifyAtomCore(AtomCore* core) const
{
	if (GroupToMoveTo != -1)
	{
		core->MoveToBaseGroup(GroupToMoveTo);
	}
}

void AppearanceRuleFadeOut::ModifyAtomCore(AtomCore* core) const
{
	core->Scale = boundf(0.0f, 1.0f - core->GetAtomAge() * 0.5f / VanishAge, 1.0f);
	core->SetAlpha((uint8_t)(boundf(0.0f, 1.0f - core->GetAtomAge() / VanishAge, 1.0f) * 255.0f));
}

void AR_FadeAlpha::ModifyAtomCore(AtomCore* core) const
{
	float age = core->GetAtomAge();
	if (age >= StartTime)
	{
		if (age <= StopTime)
		{
			core->SetAlpha((uint8_t)GJUtils::Linterp((float)StartAlpha, (float)StopAlpha,
			                                         (age - StartTime) / (StopTime - StartTime)));
		}
		else if (age - PSysManager::TimeStep <= StopTime)
		{
			core->SetAlpha((uint8_t)StopAlpha);
		}
	}
}

bool AR_FadeCollectionAlpha::ModifyAtomCollection(AtomCollection* collection) const
{
	float age;
	if (TimesAreAfterCloseDown)
	{
		PSysManager* manager = collection->Manager;
		if (!manager->IsInState(PSYS_MANAGER_STATE_CLOSE_DOWN))
		{
			return true;
		}
		age = manager->Age - manager->CloseDownAge;
		if (age < 0.0f)
		{
			age = 0.0f;
		}
	}
	else
	{
		age = collection->GetAge();
	}
	if (age >= StartTime && age <= StopTime)
	{
		uint8_t alpha =
			(uint8_t)GJUtils::Linterp((float)StartAlpha, (float)StopAlpha, (age - StartTime) / (StopTime - StartTime));
		if (age + PSysManager::TimeStep > StopTime)
		{
			alpha = (uint8_t)StopAlpha;
		}
		collection->Alpha = alpha;
	}
	else if (SetAlphaAfterStopTime && age > StopTime)
	{
		collection->Alpha = (uint8_t)StopAlpha;
	}
	return true;
}

static inline float InterpolateInRange(float value, float low, float high, float value_at_low, float value_at_high)
{
	if (value >= low && value <= high)
	{
		return value_at_low + (value - low) * (value_at_high - value_at_low) / (high - low);
	}
	else if (value >= low)
	{
		return value_at_high;
	}
	else
	{
		return value_at_low;
	}
}

void AR_FadeAlphaWithHeightAboveLandscape::ModifyAtomCore(AtomCore* core) const
{
	LHPoint pos;
	core->CalculateGlobalPos(&pos);
	float height = pos.y - LH3DIsland::GetAltitude(pos);
	float alpha = InterpolateInRange(height, 0.0f, RefHeight, (float)AlphaAtZero, (float)AlphaAtRefHeight);
	core->SetAlpha((uint8_t)boundf(0.0f, alpha, 255.0f));
}

void UR_ChangeScale::ModifyAtomCore(AtomCore* core) const
{
	float age = core->GetAtomAge();
	if (age >= StartTime)
	{
		if (age <= StopTime)
		{
			core->SetScale(GJUtils::Linterp(StartScale, StopScale, (age - StartTime) / (StopTime - StartTime)));
		}
		else if (age - PSysManager::TimeStep < StopTime)
		{
			core->SetScale(StopScale);
		}
	}
}

UR_KPStretchHeight::UR_KPStretchHeight(PersistentOwner* owner) : UpdateRule(owner)
{
	StartTime = 0.0f;
	StopTime = 5.0f;
	GJArray<float> keyPoints;
	keyPoints.SetSize(4);
	keyPoints[0] = 0.0f;
	keyPoints[1] = 1.0f;
	keyPoints[2] = 5.0f;
	keyPoints[3] = 1.0f;
	KeyPoints.SetFromArray(keyPoints);
}

void UR_KPStretchHeight::ModifyAtomCore(AtomCore* core) const
{
	float age = core->GetAtomAge();
	if (age >= StartTime && age <= StopTime)
	{
		if (PSysManager::TimeStep + age > StopTime)
		{
			age = StopTime;
		}
		float stretch;
		KeyPoints.EvalAtT(age, &stretch);
		core->StretchHeight = stretch;
	}
}

void UR_ChangeStretchHeight::ModifyAtomCore(AtomCore* core) const
{
	float age = core->GetAtomAge();
	if (age >= StartTime)
	{
		if (age <= StopTime)
		{
			core->SetStretchHeight(
				GJUtils::Linterp(StartStretch, StopStretch, (age - StartTime) / (StopTime - StartTime)));
		}
		else if (age - PSysManager::TimeStep <= StopTime)
		{
			core->SetStretchHeight(StopStretch);
		}
	}
}

void UR_ChangeScaleXYZ::ModifyAtomCore(AtomCore* core) const
{
	float age = core->GetAtomAge();
	if (age >= StartTime)
	{
		if (age <= StopTime)
		{
			float scaleXZ = GJUtils::Linterp(StartScaleXZ, StopScaleXZ, (age - StartTime) / (StopTime - StartTime));
			float scaleY = GJUtils::Linterp(StartScaleY, StopScaleY, (age - StartTime) / (StopTime - StartTime));
			core->SetScaleXYZ(scaleY, scaleXZ);
		}
		else if (age - PSysManager::TimeStep <= StopTime)
		{
			core->SetScaleXYZ(StopScaleY, StopScaleXZ);
		}
	}
}

ER_GlintsOnTarget::ER_GlintsOnTarget(PersistentOwner* owner) : AtomCreateRule(owner)
{
	MaxAtoms = 20;
	MaxAlpha = 40;
	PulseMagnitude = 1.0f;
	PulseSpeed = 1.0f;
	AtomAgeMaxSize = 0.25f;
	AtomAgeZeroSize = 2.0f;
	GlintGroup = -1;
	GlintCreator = NULL;
}

bool ER_GlintsOnTarget::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	PSysManager* manager = collection->Manager;
	if (manager->Targets.GetNumObjects())
	{
		GameThingWithPos* target = manager->Targets.TakeTargetObject();
		if (target)
		{
			AtomCore* core = AtomCore::Create();
			core->Particle = PCreator->CreateParticle(core);
			collection->InitNewAtom(core, GlintGroup);
			ParentAtomData* data;
			core->GetModifierData(this, data);
			data->Target = target;
		}
	}
	AtomCore* next;
	for (AtomCore* core = collection->Atoms.First; core; core = next)
	{
		next = core->Next;
		ParentAtomData* data;
		core->GetModifierData(this, data);
		if (data->Target.Pointer == NULL || !data->Target.IsValid())
		{
			collection->DeleteFromAtomList(core);
		}
		if (core->SubCollections.First)
		{
			ModifySubCollection(data, core->SubCollections.First);
		}
	}
	return true;
}

bool ER_GlintsOnTarget::ModifySubCollection(ParentAtomData* data, AtomCollection* collection) const
{
	if (GlintCreator == NULL)
	{
		return false;
	}
	if (data->FirstUpdate)
	{
		data->FirstUpdate = false;
	}
	float rate = (float)MaxAtoms / AtomAgeZeroSize;
	if (rate <= 0.0f)
	{
		return false;
	}
	data->NumToEmit += PSysManager::TimeStep * rate;
	long numVertices = data->Target->ForDrawFXGetNumVertices();
	if (numVertices > 0)
	{
		while (data->NumToEmit > data->NumEmitted && collection->Atoms.Count < MaxAtoms)
		{
			data->NumEmitted++;
			AtomCore* core = AtomCore::Create();
			collection->InitNewAtom(core, NextGroups);
			core->Particle = GlintCreator->CreateParticle(core);
			AtomData* atomData;
			core->GetModifierData(this, atomData);
			float baseScale = core->BaseScale;
			core->BaseScale = baseScale * data->Target->GetScale();
			atomData->VertexIndex = PSysManager::PSysRand(numVertices);
		}
	}
	AtomCore* next;
	for (AtomCore* core = collection->Atoms.First; core; core = next)
	{
		next = core->Next;
		AtomData* atomData;
		core->GetModifierData(this, atomData);
		LHPoint pos;
		if (data->Target->ForDrawFXGetVertexPos(atomData->VertexIndex, &pos))
		{
			core->LocalPos = pos;
		}
		float pulse = 1.0f + cosf(core->GetAtomAge() * PulseSpeed * TWO_PI) * PulseMagnitude * 0.5f;
		if (pulse < 0.0f)
		{
			pulse = 0.0f;
		}
		float age = core->GetAtomAge();
		float size = age < AtomAgeMaxSize ? age / AtomAgeMaxSize
		                                  : 1.0f - (age - AtomAgeMaxSize) / (AtomAgeZeroSize - AtomAgeMaxSize);
		core->SetScale(pulse * boundf(0.0f, size, 1.0f));
		core->SetAlpha((uint8_t)MaxAlpha);
		if (age > AtomAgeZeroSize)
		{
			collection->DeleteFromAtomList(core);
		}
	}
	return true;
}

ER_BurstFromParentAtom::ER_BurstFromParentAtom(PersistentOwner* owner) : AtomCreateRule(owner)
{
	MaxAtoms = 20;
	MaxAlpha = 40;
	PulseMagnitude = 1.0f;
	PulseSpeed = 1.0f;
	AtomAgeMaxSize = 0.25f;
	AtomAgeZeroSize = 2.0f;
}

bool ER_BurstFromParentAtom::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	AtomCore* parent = collection->GetParentAtom();
	if (parent == NULL)
	{
		return false;
	}
	CollectionData* data;
	collection->GetModifierData(this, data);
	if (data->FirstUpdate)
	{
		data->FirstUpdate = false;
	}
	float rate = (float)MaxAtoms / AtomAgeZeroSize;
	if (rate <= 0.0f)
	{
		return false;
	}
	data->NumToEmit += rate * PSysManager::TimeStep;
	while (data->NumToEmit > data->NumEmitted && collection->Atoms.Count < MaxAtoms)
	{
		data->NumEmitted++;
		AtomCore* core = AtomCore::Create();
		collection->InitNewAtom(core, NextGroups);
		core->Particle = PCreator->CreateParticle(core);
		LHPoint pos;
		parent->GetRandomSurfacePos(&pos);
		collection->GlobalToLocal(&pos);
		core->LocalPos = pos;
	}
	AtomCore* next;
	for (AtomCore* core = collection->Atoms.First; core; core = next)
	{
		next = core->Next;
		float pulse = 1.0f + cosf(core->GetAtomAge() * PulseSpeed * TWO_PI) * PulseMagnitude * 0.5f;
		if (pulse < 0.0f)
		{
			pulse = 0.0f;
		}
		float age = core->GetAtomAge();
		float size = age < AtomAgeMaxSize ? age / AtomAgeMaxSize
		                                  : 1.0f - (age - AtomAgeMaxSize) / (AtomAgeZeroSize - AtomAgeMaxSize);
		core->SetScale(pulse * boundf(0.0f, size, 1.0f));
		core->SetAlpha((uint8_t)MaxAlpha);
		if (age > AtomAgeZeroSize)
		{
			collection->DeleteFromAtomList(core);
		}
	}
	return true;
}

ER_EmitFromParentAtom::ER_EmitFromParentAtom(PersistentOwner* owner) : AtomCreateRule(owner)
{
	MaxAtoms = 20;
	MaxAlpha = 40;
	PulseMagnitude = 1.0f;
	PulseSpeed = 1.0f;
	AtomAgeMaxSize = 0.25f;
	AtomAgeZeroSize = 2.0f;
	EmitConditionOfParent = NULL;
	DoScaling = true;
	DeleteAtoms = true;
	EmitOnlyAboveLandscape = false;
}

bool ER_EmitFromParentAtom::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	AtomCore* parent = collection->GetParentAtom();
	if (parent == NULL)
	{
		return false;
	}
	CollectionData* data;
	collection->GetModifierData(this, data);
	if (data->FirstUpdate)
	{
		data->FirstUpdate = false;
	}
	float rate = (float)MaxAtoms / AtomAgeZeroSize;
	if (rate <= 0.0f)
	{
		return false;
	}
	if (EmitConditionOfParent == NULL || EmitConditionOfParent->TestConditionOnAtom(parent))
	{
		data->NumToEmit += PSysManager::TimeStep * rate;
		while (data->NumToEmit > data->NumEmitted && collection->Atoms.Count < MaxAtoms)
		{
			data->NumEmitted++;
			LHPoint pos;
			parent->GetRandomSurfacePos(&pos);
			if (!EmitOnlyAboveLandscape || LH3DIsland::GetAltitude(pos) < pos.y)
			{
				AtomCore* core = AtomCore::Create();
				collection->InitNewAtom(core, NextGroups);
				core->Particle = PCreator->CreateParticle(core);
				collection->GlobalToLocal(&pos);
				core->LocalPos = pos;
			}
		}
	}
	AtomCore* next;
	for (AtomCore* core = collection->Atoms.First; core; core = next)
	{
		next = core->Next;
		float age = core->GetAtomAge();
		if (DoScaling)
		{
			float pulse = 1.0f + cosf(core->GetAtomAge() * PulseSpeed * TWO_PI) * PulseMagnitude * 0.5f;
			if (pulse < 0.0f)
			{
				pulse = 0.0f;
			}
			float size = age < AtomAgeMaxSize ? age / AtomAgeMaxSize
			                                  : 1.0f - (age - AtomAgeMaxSize) / (AtomAgeZeroSize - AtomAgeMaxSize);
			core->SetScale(pulse * boundf(0.0f, size, 1.0f));
		}
		if (DeleteAtoms && age > AtomAgeZeroSize)
		{
			collection->DeleteFromAtomList(core);
		}
	}
	return true;
}

void UR_MoveAtom::ModifyAtomCore(AtomCore* core) const
{
	float age = core->GetAtomAge();
	if (age >= StartTime && age <= StopTime)
	{
		float t = (age - StartTime) / (StopTime - StartTime);
		if (PSysManager::TimeStep + age >= StopTime)
		{
			t = 1.0f;
		}
		if (MoveSmoothly)
		{
			t = t * t * (3.0f - 2.0f * t);
		}
		LHPoint pos;
		GJUtils::Linterp(Start, Stop, t, &pos);
		core->LocalPos = pos;
	}
}

UR_KPMoveAtoms::UR_KPMoveAtoms(PersistentOwner* owner) : UpdateRule(owner)
{
	MovePropAtomIndex = false;
	StartTime = 0.0f;
	StopTime = 5.0f;
	GJArray<float> keyPoints;
	keyPoints.SetSize(4);
	keyPoints[0] = 0.0f;
	keyPoints[1] = 0.0f;
	keyPoints[2] = 5.0f;
	keyPoints[3] = 0.0f;
	KeyPointsY.SetFromArray(keyPoints);
}

bool UR_KPMoveAtoms::ModifyAtomCollection(AtomCollection* collection) const
{
	float scale = 1.0f / ((float)collection->Atoms.Count - 1.0f);
	long  index = 0;
	for (AtomCore* core = collection->Atoms.First; core; core = core->Next, index++)
	{
		float   age = core->GetAtomAge();
		float   t = age;
		LHPoint offset(0.0f, 0.0f, 0.0f);
		if (age >= StartTime && age <= StopTime)
		{
			if (PSysManager::TimeStep + age > StopTime)
			{
				t = StopTime;
			}
			KeyPointsY.EvalAtT(t, &offset.y);
			if (MovePropAtomIndex)
			{
				offset *= (float)index * scale;
			}
			core->SetLocalPos(offset + *collection->GetCurrentParentPos());
		}
	}
	return true;
}

void AppearanceRuleTumble::ModifyAtomCore(AtomCore* core) const
{
	LHPoint velocity = core->Velocity;
	float   timeStep = PSysManager::TimeStep;
	float   angle = TumbleSpeed * velocity.GetNorme();
	if (RestrictMaxRotation)
	{
		if (angle > MaxTumbleSpeed)
		{
			angle = MaxTumbleSpeed;
		}
		else if (angle < -MaxTumbleSpeed)
		{
			angle = -MaxTumbleSpeed;
		}
	}
	angle *= timeStep;
	if (fabs(velocity.x) > fabs(velocity.z))
	{
		core->RotationMatrix.PostRotateZ(angle);
	}
	else
	{
		core->RotationMatrix.PostRotateX(angle);
	}
}

bool EmitterRule::ShouldEmit(AtomCollection* collection) const
{
	CollectionData* data;
	collection->GetModifierData(this, data);
	if (data->FirstUpdate == true)
	{
		data->FirstUpdate = false;
		data->NextEmitTime = collection->GetAge();
	}
	if (MaxTotalAtomsToEmit != -1 && data->NumEmitted >= MaxTotalAtomsToEmit)
	{
		return false;
	}
	float step = PSysManager::TimeStep;
	if (data->NextEmitTime < collection->GetAge() + step)
	{
		if (MaxAtoms >= 0 && collection->Atoms.Count > MaxAtoms)
		{
			return false;
		}
		float interval = 1.0f / EmissionFreq;
		if (Randomise)
		{
			interval *= PSysManager::PSysFloatRand(0.5f) + 0.5f;
		}
		data->NextEmitTime += interval;
		data->NumEmitted++;
		return true;
	}
	return false;
}

bool DiskEmitter::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	if (ShouldEmit(collection))
	{
		AtomCore* core = AtomCore::Create();
		collection->InitNewAtom(core, NextGroups);
		core->Particle = PCreator->CreateParticle(core);
		LHPoint offset;
		do
		{
			offset.x = PSysManager::PSysFloatRand(2.0f) - 1.0f;
			offset.z = PSysManager::PSysFloatRand(2.0f) - 1.0f;
		} while (offset.x * offset.x + offset.z * offset.z > 1.0f);
		float radius = PSysManager::PSysFloatRand(Radius);
		offset.y = 0.0f;
		offset.FastNormalizeInline();
		offset *= radius;
		offset.y = Height;
		core->LocalPos = core->LocalPos + offset;
	}
	return true;
}

bool SpreadingDiskEmitter::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	bool emit = true;
	while (ShouldEmit(collection) && emit)
	{
		emit = AllowMultipleEmits;
		AtomCore* core = AtomCore::Create();
		core->Particle = PCreator->CreateParticle(core);
		collection->InitNewAtom(core, NextGroups);
		float   radius = PSysManager::PSysFloatRand(StartRadius, StopRadius);
		float   angle = PSysManager::PSysFloatRand(TWO_PI);
		LHPoint direction((float)cos(angle), 0.0f, (float)sin(angle));
		LHPoint offset = direction * radius;
		offset.y = Height;
		core->LocalPos = core->LocalPos + offset;
	}
	return true;
}

bool EmitterRuleSimple::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	if (ShouldEmit(collection))
	{
		AtomCore* core = AtomCore::Create();
		core->Particle = PCreator->CreateParticle(core);
		collection->InitNewAtom(core, NextGroups);
		if (Speed != 0.0f)
		{
			LHPoint velocity;
			PSysManager::PSysRandR3(&velocity);
			float speed = PSysManager::PSysFloatRand(Speed);
			velocity.FastNormalizeInline();
			velocity *= speed;
			core->Velocity = velocity;
		}
		if (OrientWithParent && collection->ParentAtom)
		{
			core->SetRotationMatrix(collection->ParentAtom->RotationMatrix);
		}
		core->InUse = InitiallyVisible;
	}
	return true;
}

bool EmitterRuleLightningSprite::ShouldEmit(AtomCollection* collection, CollectionData* data) const
{
	if (data->FirstUpdate == true)
	{
		data->FirstUpdate = false;
		data->NextEmitTime = collection->GetAge();
	}
	if (MaxTotalAtomsToEmit != -1 && data->NumEmitted >= MaxTotalAtomsToEmit)
	{
		return false;
	}
	float step = PSysManager::TimeStep;
	if (data->NextEmitTime < collection->GetAge() + step)
	{
		if (MaxAtoms >= 0 && collection->Atoms.Count > MaxAtoms)
		{
			return false;
		}
		float interval = 1.0f / EmissionFreq;
		if (Randomise)
		{
			interval *= PSysManager::PSysFloatRand(0.75f) + 0.25f;
		}
		data->NextEmitTime += interval;
		data->NumEmitted++;
		return true;
	}
	return false;
}

bool EmitterRuleLightningSprite::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	CollectionData* data;
	collection->GetModifierData(this, data);
	if (ShouldEmit(collection, data))
	{
		data->Striking = true;
		data->StrikeTime = collection->GetAge();
		AtomCore* core = AtomCore::Create();
		core->Particle = PCreator->CreateParticle(core);
		collection->InitNewAtom(core, NextGroups);
	}
	if (data->Striking == true)
	{
		float     age = collection->GetAge() - data->StrikeTime;
		LH3DColor colour(200, 200, 255, 255);
		if (age > SpecLife)
		{
			colour = LH3DColor(0, 0, 0, 255);
			data->Striking = false;
		}
		else
		{
			uint8_t brightness = (uint8_t)((1.0f - age / SpecLife) * 255.0f);
			colour.a = (colour.a * brightness) >> 8;
			colour.r = (colour.r * brightness) >> 8;
			colour.g = (colour.g * brightness) >> 8;
			colour.b = (colour.b * brightness) >> 8;
		}
		AtomCore* parent = collection->ParentAtom;
		if (parent)
		{
			parent->Specular = colour;
		}
	}
	return true;
}

bool EmitterRuleConical::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	bool emit = true;
	while (ShouldEmit(collection) && emit)
	{
		emit = AllowMultipleEmits;
		AtomCore* core = AtomCore::Create();
		collection->InitNewAtom(core, NextGroups);
		core->Particle = PCreator->CreateParticle(core);
		float   spread = PSysManager::PSysFloatRand(Spread);
		float   angle = PSysManager::PSysFloatRand(TWO_PI);
		float   speed = PSysManager::PSysFloatRand(Speed * 0.33f) + Speed * 0.66f;
		float   horizontal = speed * (float)sin(spread);
		LHPoint velocity(horizontal * (float)cos(angle), speed * (float)cos(spread), horizontal * (float)sin(angle));
		if (Radius != 0.0f)
		{
			float offsetAngle = PSysManager::PSysFloatRand(TWO_PI);
			core->LocalPos = core->LocalPos + LHPoint((float)cos(offsetAngle), 0.0f, (float)sin(offsetAngle)) *
			                                      PSysManager::PSysFloatRand(Radius);
		}
		core->Velocity = velocity;
		core->InUse = InitiallyVisible;
		core->StartSound(SoundEmission);
	}
	return true;
}

UR_WillowWisp::UR_WillowWisp(PersistentOwner* owner) : AtomCreateRule(owner)
{
	AddCastVelToInitPos = false;
	DoDrawOffsets = false;
	EmitConditionOfParent = NULL;
	AdjustInitialScale = NULL;
	AdjustInitialRandomVel = NULL;
	Speed = 1.0f;
	MaxSpeed = 100.0f;
	RandomSpeed = 1.0f;
	RandomiseInitOrientation = false;
	SmoothingValue = 0.9f;
	AccelerationForCast = 1.0f;
	MaxAtoms = -1;
	DieAge = 1.0f;
	InitiallyVisible = true;
	DrawOnFirstUpdate = true;
	EmitDueToMovingDist = 10.0f;
	EmitDueToMoving = false;
	EmitDueToMovingMaxRate = 0.0f;
	RandomRadiusMin = 0.0f;
	RandomRadiusMax = 0.0f;
	UseParentScale = false;
	DeleteAtomsAtDieAge = true;
}

bool UR_WillowWisp::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	PSysManager*    manager = collection->Manager;
	CollectionData* data;
	collection->GetModifierData(this, data);
	if (DeleteAtomsAtDieAge)
	{
		AtomCore* next;
		for (AtomCore* core = collection->Atoms.First; core; core = next)
		{
			next = core->Next;
			if (core->GetAtomAge() > DieAge)
			{
				collection->DeleteFromAtomList(core);
			}
		}
	}
	LHPoint parentPos = *collection->GetCurrentParentPos();
	LHPoint velocity = *collection->GetCurrentParentVel();
	velocity *= Speed;
	float step = PSysManager::TimeStep;
	if (velocity.GetNormeSq() > MaxSpeed * MaxSpeed)
	{
		velocity.SetSize(MaxSpeed);
	}
	if (data->FirstUpdate)
	{
		data->LastParentPos = parentPos;
	}
	float     rate = MaxAtoms / DieAge;
	bool      doDrawOffsets = DoDrawOffsets && manager->NetUnsafeIsMyInterfaceCasting();
	AtomCore* parent = collection->ParentAtom;
	if (EmitConditionOfParent == NULL || (parent && EmitConditionOfParent->TestConditionOnAtom(parent)))
	{
		float numToEmit = PSysManager::TimeStep * rate;
		float oldNumToEmit = data->NumToEmit;
		if (EmitDueToMoving && EmitDueToMovingDist != 0.0f)
		{
			float distance = (parentPos - data->LastParentPos).GetNorme();
			if (AdjustInitialScale)
			{
				distance *= AdjustInitialScale->GetValue();
			}
			float numDueToMoving = distance / EmitDueToMovingDist;
			if (EmitDueToMovingMaxRate != 0.0f)
			{
				numDueToMoving = min(numDueToMoving / step, EmitDueToMovingMaxRate) * step;
			}
			numToEmit = max(numToEmit, numDueToMoving);
		}
		data->NumToEmit += numToEmit;
		float newNumToEmit = data->NumToEmit;
		while (data->NumEmitted < data->NumToEmit - 1.0f)
		{
			data->NumEmitted += 1.0f;
			AtomCore* core = AtomCore::Create();
			collection->InitNewAtom(core, NextGroups);
			core->Particle = PCreator->CreateParticle(core);
			LHPoint pos;
			if (newNumToEmit != oldNumToEmit)
			{
				GJUtils::Linterp(data->LastParentPos, parentPos,
				                 (data->NumEmitted - oldNumToEmit) / (newNumToEmit - oldNumToEmit), &pos);
				core->SetAtomAge((data->NumEmitted - oldNumToEmit) * PSysManager::TimeStep /
				                 (newNumToEmit - oldNumToEmit));
			}
			else
			{
				pos = parentPos;
			}
			if (RandomRadiusMax > 0.0f)
			{
				float angle = PSysManager::PSysFloatRand(TWO_PI);
				pos += LHPoint((float)cos(angle), 0.0f, (float)sin(angle)) *
				       PSysManager::PSysFloatRand(RandomRadiusMin, RandomRadiusMax);
			}
			LHPoint randomVelocity;
			PSysManager::PSysRandR3(&randomVelocity);
			randomVelocity *= PSysManager::PSysFloatRand(RandomSpeed);
			if (AdjustInitialRandomVel)
			{
				randomVelocity *= AdjustInitialRandomVel->GetValue();
			}
			core->Velocity = velocity + randomVelocity;
			if (AddCastVelToInitPos)
			{
				pos.x = parentPos.x;
				pos.z = parentPos.z;
				pos += core->Velocity * step;
			}
			core->LocalPos = pos;
			if (doDrawOffsets)
			{
				core->SetDrawOffset(new (PSYS_MODIFIERS_FILE, 3823) DrawOffsetDecay(manager->GetNetUnsafePos() - pos));
			}
			if (RandomiseInitOrientation)
			{
				core->RandomiseOrientation();
			}
			if (AdjustInitialScale)
			{
				core->BaseScale *= AdjustInitialScale->GetValue();
			}
			if (UseParentScale)
			{
				core->BaseScale *= parent->GetCombinedScale();
			}
			core->Flag0 = DrawOnFirstUpdate != false;
			core->StartSound(SoundEmission);
		}
	}
	data->FirstUpdate = false;
	data->LastParentPos = parentPos;
	return true;
}

void UR_GustyWind::ModifyAtomCore(AtomCore* core) const
{
	float   step = PSysManager::TimeStep;
	LHPoint wind(0.0f, 0.0f, 0.0f);
	Noise::VLNoise3to2(core->LocalPos * NoiseFreq, &wind.x, &wind.z);
	wind *= WindSpeed;
	if (SimWind)
	{
		LHPoint velocity = core->Velocity;
		LHPoint change = (wind - velocity) * Damping * step;
		change.y = 0.0f;
		core->Velocity = change + velocity;
	}
	else
	{
		core->Velocity = wind * step + core->Velocity;
	}
	core->LocalPos = core->Velocity * step + core->LocalPos;
}

ER_MultiPickup::ER_MultiPickup(PersistentOwner* owner) : AtomCreateRule(owner)
{
	RaiseTime = 1.0f;
	EmitRate = 8.0f;
	RandomiseOrientations = true;
	DefaultOrientation = 0.0f;
}

bool ER_MultiPickup::ModifyAtomCollection(AtomCollection* collection) const
{
	if (PCreator == NULL)
	{
		return false;
	}
	PSysManager*    manager = collection->Manager;
	CollectionData* data;
	collection->GetModifierData(this, data);
	LHPoint gesturePos;
	manager->GetCurrentGesturePosn(&gesturePos);
	if (manager->IsInState(PSYS_MANAGER_STATE_ENABLED))
	{
		data->NumToEmit += PSysManager::TimeStep * EmitRate;
		while (data->NumEmitted < data->NumToEmit)
		{
			data->NumEmitted++;
			AtomCore* core = AtomCore::Create();
			collection->InitNewAtom(core, NextGroups);
			core->Particle = PCreator->CreateParticle(core);
			if (RandomiseOrientations)
			{
				core->RandomiseOrientation();
			}
			else
			{
				core->SetAngleY(DefaultOrientation);
			}
			AtomData* atomData;
			core->GetModifierData(this, atomData);
			atomData->StartPos = gesturePos;
			atomData->StartPos.y = LH3DIsland::GetAltitude(atomData->StartPos);
		}
	}
	AtomCore* next;
	for (AtomCore* core = collection->Atoms.First; core; core = next)
	{
		next = core->Next;
		float age = core->GetAtomAge();
		if (age > RaiseTime)
		{
			collection->DeleteFromAtomList(core);
		}
		else
		{
			AtomData* atomData;
			core->GetModifierData(this, atomData);
			LHPoint pos = GJUtils::Linterp(atomData->StartPos, gesturePos, age / RaiseTime);
			core->Velocity = (pos - core->LocalPos) * PSysManager::OneOverTimeStep;
			core->LocalPos = pos;
		}
	}
	return true;
}

bool UR_ScaleByCameraDist::ModifyAtomCollection(AtomCollection* collection) const
{
	if (CameraDistMin == CameraDistMax)
	{
		return false;
	}
	if (collection->Manager->GetPlayer() == NULL)
	{
		return false;
	}
	for (AtomCore* core = collection->Atoms.First; core; core = core->Next)
	{
		LHPoint cameraPos = GGame::g_game->MyInterface()->status->CameraPos;
		LHPoint pos;
		core->CalculateGlobalPos(&pos);
		float dist = cameraPos.GetDistance(pos);
		float scale;
		if (dist < CameraDistMin)
		{
			scale = ScaleAtCameraDistMin;
		}
		else if (dist > CameraDistMax)
		{
			scale = ScaleAtCameraDistMax;
		}
		else
		{
			scale = GJUtils::Linterp(ScaleAtCameraDistMin, ScaleAtCameraDistMax,
			                         (dist - CameraDistMin) / (CameraDistMax - CameraDistMin));
		}
		core->Scale = scale;
	}
	return true;
}

void AR_FadeOutOnceConditionTrue::ModifyAtomCore(AtomCore* core) const
{
	AtomData* data;
	core->GetModifierData(this, data);
	if (!data->ConditionMet)
	{
		if (ConditionStartFadeOut == NULL || ConditionStartFadeOut->TestConditionOnAtom(core))
		{
			data->ConditionMet = true;
			data->StartTime = core->GetAtomAge();
			data->StartScale = core->GetScale();
			data->StartAlpha = core->GetAlpha();
		}
	}
	if (data->ConditionMet == true)
	{
		if (FadeAlpha || ShrinkScale)
		{
			float t = boundf(0.0f, (core->GetAtomAge() - data->StartTime) / TimeToFadeOut, 1.0f);
			if (FadeAlpha)
			{
				core->SetAlpha((uint8_t)GJUtils::Linterp(data->StartAlpha, 0.0f, t));
			}
			if (ShrinkScale)
			{
				core->Scale = GJUtils::Linterp(data->StartScale, 0.0f, t);
			}
		}
	}
}
