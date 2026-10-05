#ifndef BW1_DECOMP_P_SYS_RULES_INCLUDED_H
#define BW1_DECOMP_P_SYS_RULES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <string>   /* For std::string */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST, enum ANIM_LIST */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For LHPoint */

#include "KPSplineInterpolator.h" /* For KPSplineInterpolator */
#include "PSysBaseModifiers.h"    /* For the rule base classes */
#include "PSysSoundAction.h"      /* For class PSysSoundAction */

// Forward Declares

class AtomCollection;
class AtomCore;
class FloatProvider;
class ParticleCreator;
class PropertyList;
class TEventCondition;

class RemoveSoundFromAtom : public AppearanceUpdateRule
{
public:
	RemoveSoundFromAtom(PersistentOwner* owner) : AppearanceUpdateRule(owner)
	{
		SoundCondition = NULL;
		FadeStep = 0;
	}

	// BW1W120 006ab4b0 BW1M119 01473ad0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069ddd0 BW1M119 0143edf0
	virtual void ModifyAtomCore(AtomCore* core) const;

	PSysSoundAction  Sound;
	TEventCondition* SoundCondition;
	long             FadeStep;
};
static_assert(sizeof(RemoveSoundFromAtom) == 0x40, "Data type is of wrong size");

class AddSoundToAtom : public AppearanceUpdateRule
{
public:
	AddSoundToAtom(PersistentOwner* owner) : AppearanceUpdateRule(owner)
	{
		SoundCondition = NULL;
		StopOtherSoundsFirst = false;
		Delay = 0.0f;
		DoCameraShake = false;
		CameraShakeRadius = 100.0f;
		CameraShakeDuration = 2.0f;
	}

	// BW1W120 006ab600 BW1M119 014738e0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069dca0 BW1M119 0143ef80
	virtual void ModifyAtomCore(AtomCore* core) const;

	PSysSoundAction  Sound;
	TEventCondition* SoundCondition;
	bool             StopOtherSoundsFirst;
	uint8_t          field_0x3d;
	uint8_t          field_0x3e;
	uint8_t          field_0x3f;
	float            Delay;
	bool             DoCameraShake;
	uint8_t          field_0x45;
	uint8_t          field_0x46;
	uint8_t          field_0x47;
	float            CameraShakeRadius;
	float            CameraShakeDuration;
};
static_assert(sizeof(AddSoundToAtom) == 0x50, "Data type is of wrong size");

class StartStopSoundOnCondition : public AppearanceUpdateRule
{
public:
	StartStopSoundOnCondition(PersistentOwner* owner) : AppearanceUpdateRule(owner)
	{
		SoundCondition = NULL;
		FadeStep = 0;
	}

	// BW1W120 006ab7b0 BW1M119 01473730
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069dc40 BW1M119 0143f170
	virtual void ModifyAtomCore(AtomCore* core) const;

	PSysSoundAction  Sound;
	TEventCondition* SoundCondition;
	long             FadeStep;
};
static_assert(sizeof(StartStopSoundOnCondition) == 0x40, "Data type is of wrong size");

class AppearanceRuleFadeOut : public AppearanceUpdateRule
{
public:
	AppearanceRuleFadeOut(PersistentOwner* owner) : AppearanceUpdateRule(owner) { VanishAge = 10.0f; }

	// BW1W120 006ab900 BW1M119 01473600
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a4b80 BW1M119 01435420
	virtual void ModifyAtomCore(AtomCore* core) const;

	float VanishAge;
};
static_assert(sizeof(AppearanceRuleFadeOut) == 0x24, "Data type is of wrong size");

class AR_SetAnimPlay : public AppearanceUpdateRule
{
public:
	AR_SetAnimPlay(PersistentOwner* owner) : AppearanceUpdateRule(owner) {}

	// BW1W120 006ab930 BW1M119 014734d0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069de90 BW1M119 0143eda0
	virtual void ModifyAtomCore(AtomCore* core) const;
};
static_assert(sizeof(AR_SetAnimPlay) == 0x20, "Data type is of wrong size");

class AR_FadeAlpha : public AppearanceUpdateRule
{
public:
	AR_FadeAlpha(PersistentOwner* owner) : AppearanceUpdateRule(owner)
	{
		StartTime = 0.0f;
		StopTime = 5.0f;
		StartAlpha = 0;
		StopAlpha = 255;
	}

	// BW1W120 006ab940 BW1M119 01473360
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a4c40 BW1M119 0103a490
	virtual void ModifyAtomCore(AtomCore* core) const;

	float StartTime;
	float StopTime;
	long  StartAlpha;
	long  StopAlpha;
};
static_assert(sizeof(AR_FadeAlpha) == 0x30, "Data type is of wrong size");

class AR_FadeCollectionAlpha : public AppearanceUpdateRule
{
public:
	AR_FadeCollectionAlpha(PersistentOwner* owner) : AppearanceUpdateRule(owner)
	{
		StartTime = 0.0f;
		StopTime = 5.0f;
		StartAlpha = 0;
		StopAlpha = 255;
		TimesAreAfterCloseDown = false;
		SetAlphaAfterStopTime = false;
	}

	// BW1W120 006ab9b0 BW1M119 014731c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a4d00 BW1M119 0107c8c0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float   StartTime;
	float   StopTime;
	long    StartAlpha;
	long    StopAlpha;
	bool    TimesAreAfterCloseDown;
	bool    SetAlphaAfterStopTime;
	uint8_t field_0x32;
	uint8_t field_0x33;
};
static_assert(sizeof(AR_FadeCollectionAlpha) == 0x34, "Data type is of wrong size");

class AR_FadeOutOnceConditionTrue : public AppearanceUpdateRule
{
public:
	AR_FadeOutOnceConditionTrue(PersistentOwner* owner) : AppearanceUpdateRule(owner)
	{
		TimeToFadeOut = 2.0f;
		ConditionStartFadeOut = NULL;
		FadeAlpha = true;
		ShrinkScale = false;
	}

	// BW1W120 006aba40 BW1M119 01473000
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a7cf0 BW1M119 01022300
	virtual void ModifyAtomCore(AtomCore* core) const;

	float            TimeToFadeOut;
	TEventCondition* ConditionStartFadeOut;
	bool             FadeAlpha;
	bool             ShrinkScale;
	uint8_t          field_0x2a;
	uint8_t          field_0x2b;
};
static_assert(sizeof(AR_FadeOutOnceConditionTrue) == 0x2c, "Data type is of wrong size");

class AR_FadeAlphaWithHeightAboveLandscape : public AppearanceUpdateRule
{
public:
	AR_FadeAlphaWithHeightAboveLandscape(PersistentOwner* owner) : AppearanceUpdateRule(owner)
	{
		AlphaAtZero = 255;
		AlphaAtRefHeight = 255;
		RefHeight = 100.0f;
	}

	// BW1W120 006abba0 BW1M119 01472e90
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a4de0 BW1M119 01435160
	virtual void ModifyAtomCore(AtomCore* core) const;

	long  AlphaAtZero;
	long  AlphaAtRefHeight;
	float RefHeight;
};
static_assert(sizeof(AR_FadeAlphaWithHeightAboveLandscape) == 0x2c, "Data type is of wrong size");

class AR_GetColorFromParent : public AppearanceUpdateRule
{
public:
	AR_GetColorFromParent(PersistentOwner* owner) : AppearanceUpdateRule(owner) {}

	// BW1W120 006abc00 BW1M119 01472d60
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069dea0 BW1M119 0143ed20
	virtual void ModifyAtomCore(AtomCore* core) const;
};
static_assert(sizeof(AR_GetColorFromParent) == 0x20, "Data type is of wrong size");

class AppearanceRuleTumble : public AppearanceUpdateRule
{
public:
	AppearanceRuleTumble(PersistentOwner* owner) : AppearanceUpdateRule(owner)
	{
		RestrictMaxRotation = false;
		TumbleSpeed = 0.0f;
		MaxTumbleSpeed = 0.0f;
	}

	// BW1W120 006abc10 BW1M119 01472c00
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a6200 BW1M119 014332b0
	virtual void ModifyAtomCore(AtomCore* core) const;

	bool    RestrictMaxRotation;
	uint8_t field_0x21;
	uint8_t field_0x22;
	uint8_t field_0x23;
	float   TumbleSpeed;
	float   MaxTumbleSpeed;
};
static_assert(sizeof(AppearanceRuleTumble) == 0x2c, "Data type is of wrong size");

class EventAlways : public AtomCollectionModifier
{
public:
	EventAlways(PersistentOwner* owner) : AtomCollectionModifier(owner) {}

	// BW1W120 006abc80 BW1M119 014729a0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069dbb0 BW1M119 0143f260
	virtual void ModifyAtomCore(AtomCore* core) const;
};
static_assert(sizeof(EventAlways) == 0x20, "Data type is of wrong size");

class UR_UpdatePosnFromVelocity : public UpdateRule
{
public:
	UR_UpdatePosnFromVelocity(PersistentOwner* owner) : UpdateRule(owner) {}

	// BW1W120 006abc90 BW1M119 01472870
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a10f0 BW1M119 0143a290
	virtual void ModifyAtomCore(AtomCore* core) const;
};
static_assert(sizeof(UR_UpdatePosnFromVelocity) == 0x20, "Data type is of wrong size");

class UR_Articulate : public UpdateRule
{
public:
	UR_Articulate(PersistentOwner* owner) : UpdateRule(owner)
	{
		K_Spring = 1.0f;
		field_0x24 = 1.0f;
	}

	// BW1W120 006abca0 BW1M119 01472740
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00684e60 BW1M119 01407e10
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float K_Spring;
	float field_0x24;
};
static_assert(sizeof(UR_Articulate) == 0x28, "Data type is of wrong size");

class UR_Flocking : public UpdateRule
{
public:
	// BW1W120 00683470 BW1M119 0140a370
	UR_Flocking(PersistentOwner* owner);

	// BW1W120 006abcd0 BW1M119 01471ff0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00683580 BW1M119 01409720
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	// BW1W120 006ac0c0 BW1M119 01472700
	long GetAccnType() { return AccnType; }
	// BW1W120 006ac0d0 BW1M119 014726b0
	void SetAccnType(long type)
	{
		if (type >= 0 && type <= 2)
		{
			AccnType = type;
		}
	}
	// BW1W120 006ac0f0 BW1M119 01472670
	long GetNeighbourAccnType() { return NeighbourAccnType; }
	// BW1W120 006ac100 BW1M119 01472610
	void SetNeighbourAccnType(long type)
	{
		if (type >= 0 && type <= 2)
		{
			NeighbourAccnType = type;
		}
	}
	// BW1W120 006ac120 BW1M119 014725d0
	long GetIdealVelAccnType() { return IdealVelAccnType; }
	// BW1W120 006ac130 BW1M119 01472570
	void SetIdealVelAccnType(long type)
	{
		if (type >= 0 && type <= 2)
		{
			IdealVelAccnType = type;
		}
	}

	float          K_VelocityMatching;
	float          K_CentralAttraction;
	float          K_NeighbourAccn;
	float          K_NeighbourAvoidance;
	float          K_Damping;
	float          K_FlockDamping;
	float          K_IdealVel;
	float          F_MaxAccn;
	float          F_MaxVel;
	float          GravityForBanking;
	float          ReducePitchBy;
	float          ScaleModifier;
	long           AccnType;
	long           NeighbourAccnType;
	long           IdealVelAccnType;
	bool           F_InvertAccnIdealVel;
	bool           F_InvertAccn;
	bool           SpriteRotation;
	bool           NeighbourAccnInvert;
	FloatProvider* LocalScaleFP;
};
static_assert(sizeof(UR_Flocking) == 0x64, "Data type is of wrong size");

class UR_RingSpin : public UpdateRule
{
public:
	UR_RingSpin(PersistentOwner* owner) : UpdateRule(owner)
	{
		AngularVelocity = 0.1f;
		PercentToUse = 100.0f;
		NRevols = 1;
	}

	// BW1W120 006ac150 BW1M119 01471e90
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00687660 BW1M119 0140aa10
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float AngularVelocity;
	float PercentToUse;
	long  NRevols;
};
static_assert(sizeof(UR_RingSpin) == 0x2c, "Data type is of wrong size");

class UpdateRuleGravity : public UpdateRule
{
public:
	UpdateRuleGravity(PersistentOwner* owner) : UpdateRule(owner)
	{
		MaxSpeed = 100.0f;
		WindMagnification = 100.0f;
		UseDamping = false;
		Damping = 0.0f;
		UseWind = false;
		DisableDampingForNonHuman = false;
		DisableWindForNonHuman = false;
		Gravity = 10.0f;
	}

	// BW1W120 006ac1b0 BW1M119 01471b90
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a1410 BW1M119 010520c0
	virtual void ModifyAtomCore(AtomCore* core) const;

	// BW1W120 006ac380 BW1M119 01471e50
	float GetGravity() const { return Gravity; }
	// BW1W120 006ac390 BW1M119 01471e10
	void SetGravity(float gravity) { Gravity = gravity; }

	float MaxSpeed;
	float Gravity;
	float Damping;
	float WindMagnification;
	bool  UseDamping;
	bool  UseWind;
	bool  DisableWindForNonHuman;
	bool  DisableDampingForNonHuman;
};
static_assert(sizeof(UpdateRuleGravity) == 0x34, "Data type is of wrong size");

class UpdateRuleGravityWithFloor : public UpdateRuleGravity
{
public:
	// BW1W120 006a1510 BW1M119 01439ea0
	UpdateRuleGravityWithFloor(PersistentOwner* owner);

	// BW1W120 006ac3a0 BW1M119 014717c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a1880 BW1M119 010799c0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float            DampingHorozontalBounce;
	float            DampingVerticalBounce;
	float            GroundDrag;
	uint32_t         field_0x40;
	PSysSoundAction  ImpactSound;
	TEventCondition* ImpactSoundCondition;
	float            ImpactSpeedSmall;
	float            ImpactSpeedMedium;
	float            ImpactSpeedLarge;
	long             MinAlphaForImpactSoundOrRipple;
	bool             UseSurfaceForBounce;
	uint8_t          field_0x71;
	bool             CheckShieldDeflections;
	uint8_t          field_0x73;
};
static_assert(sizeof(UpdateRuleGravityWithFloor) == 0x74, "Data type is of wrong size");

class UR_OrientWithVelocity : public UpdateRule
{
public:
	UR_OrientWithVelocity(PersistentOwner* owner) : UpdateRule(owner)
	{
		SmoothFactor = 0.8f;
		AlignAxis = 0;
		SpinSpeed = 0.5f;
		ProportionDefault = 0.0f;
	}

	// BW1W120 006ac5a0 BW1M119 01471640
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a21d0 BW1M119 014390c0
	virtual void ModifyAtomCore(AtomCore* core) const;

	float SmoothFactor;
	long  AlignAxis;
	float SpinSpeed;
	float ProportionDefault;
};
static_assert(sizeof(UR_OrientWithVelocity) == 0x30, "Data type is of wrong size");

class UR_OrientSpriteWithVelocity : public UpdateRule
{
public:
	UR_OrientSpriteWithVelocity(PersistentOwner* owner) : UpdateRule(owner)
	{
		SmoothFactor = 0.8f;
		ProportionDefault = 0.0f;
	}

	// BW1W120 006ac610 BW1M119 014714f0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069a790 BW1M119 0142dcc0
	virtual void ModifyAtomCore(AtomCore* core) const;

	float SmoothFactor;
	float ProportionDefault;
};
static_assert(sizeof(UR_OrientSpriteWithVelocity) == 0x28, "Data type is of wrong size");

class UR_OrientSpriteWithRandomAngle : public UpdateRule
{
public:
	UR_OrientSpriteWithRandomAngle(PersistentOwner* owner) : UpdateRule(owner)
	{
		RandomAngle = 1.5707964f;
		DefaultAngle = -1.5707964f;
	}

	// BW1W120 006ac660 BW1M119 01471390
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a2100 BW1M119 01439720
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float RandomAngle;
	float DefaultAngle;
};
static_assert(sizeof(UR_OrientSpriteWithRandomAngle) == 0x28, "Data type is of wrong size");

class UR_GustyWind : public UpdateRule
{
public:
	UR_GustyWind(PersistentOwner* owner) : UpdateRule(owner)
	{
		NoiseFreq = 1.0f;
		WindSpeed = 1.0f;
		Damping = 0.1f;
		SimWind = false;
	}

	// BW1W120 006ac6b0 BW1M119 01471220
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a7500 BW1M119 01051e80
	virtual void ModifyAtomCore(AtomCore* core) const;

	float   NoiseFreq;
	float   WindSpeed;
	float   Damping;
	bool    SimWind;
	uint8_t field_0x2d;
	uint8_t field_0x2e;
	uint8_t field_0x2f;
};
static_assert(sizeof(UR_GustyWind) == 0x30, "Data type is of wrong size");

class SetInitialRandomOrientations : public UpdateRule
{
public:
	SetInitialRandomOrientations(PersistentOwner* owner) : UpdateRule(owner) {}

	// BW1W120 006ac720 BW1M119 014710e0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006c0e70 BW1M119 014752c0
	virtual void DeleteReference(AtomCollection* collection) const { ReferenceCount--; }
	// BW1W120 0069f540 BW1M119 0143ce30
	virtual void ModifyAtomCollection(AtomCollection* collection) const;
};
static_assert(sizeof(SetInitialRandomOrientations) == 0x20, "Data type is of wrong size");

class ForceLandscapeHeight : public UpdateRule
{
public:
	ForceLandscapeHeight(PersistentOwner* owner) : UpdateRule(owner) {}

	// BW1W120 006ac730 BW1M119 01470fb0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a2810 BW1M119 01438a70
	virtual void ModifyAtomCore(AtomCore* core) const;
};
static_assert(sizeof(ForceLandscapeHeight) == 0x20, "Data type is of wrong size");

class UpdateRuleRotatePrincipalAxis : public UpdateRule
{
public:
	UpdateRuleRotatePrincipalAxis(PersistentOwner* owner) : UpdateRule(owner)
	{
		AngularVel = 0.0f;
		Axis = 1;
	}

	// BW1W120 006ac740 BW1M119 01470ce0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a1150 BW1M119 01035100
	virtual void ModifyAtomCore(AtomCore* core) const;

	// BW1W120 006ac890 BW1M119 01470f60
	long GetAxis() { return Axis; }
	// BW1W120 006ac8a0 BW1M119 01470f00
	void SetAxis(long axis)
	{
		if (axis >= 0 && axis <= 2)
		{
			Axis = axis;
		}
	}

	long  Axis;
	float AngularVel;
};
static_assert(sizeof(UpdateRuleRotatePrincipalAxis) == 0x28, "Data type is of wrong size");

class FollowOrigin : public UpdateRule
{
public:
	FollowOrigin(PersistentOwner* owner) : UpdateRule(owner) {}

	// BW1W120 006ac8c0 BW1M119 01470bb0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a27e0 BW1M119 01438b60
	virtual void ModifyAtomCore(AtomCore* core) const;
};
static_assert(sizeof(FollowOrigin) == 0x20, "Data type is of wrong size");

class SetScale : public UpdateRule
{
public:
	SetScale(PersistentOwner* owner) : UpdateRule(owner) { Scale = NULL; }

	// BW1W120 006ac8d0 BW1M119 01470a40
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a2700 BW1M119 0101ba90
	virtual void ModifyAtomCore(AtomCore* core) const;

	FloatProvider* Scale;
};
static_assert(sizeof(SetScale) == 0x24, "Data type is of wrong size");

class SetCollectionAlpha : public AppearanceUpdateRule
{
public:
	SetCollectionAlpha(PersistentOwner* owner) : AppearanceUpdateRule(owner) { Alpha = NULL; }

	// BW1W120 006aca00 BW1M119 014708c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a2720 BW1M119 01438ca0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	FloatProvider* Alpha;
};
static_assert(sizeof(SetCollectionAlpha) == 0x24, "Data type is of wrong size");

class SetAtomAlpha : public AppearanceUpdateRule
{
public:
	SetAtomAlpha(PersistentOwner* owner) : AppearanceUpdateRule(owner) { Alpha = NULL; }

	// BW1W120 006acb30 BW1M119 01470740
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a2780 BW1M119 01438bf0
	virtual void ModifyAtomCore(AtomCore* core) const;

	FloatProvider* Alpha;
};
static_assert(sizeof(SetAtomAlpha) == 0x24, "Data type is of wrong size");

class SetPSysCloseDown : public AtomCollectionModifier
{
public:
	SetPSysCloseDown(PersistentOwner* owner) : AtomCollectionModifier(owner) {}

	// BW1W120 006acc60 BW1M119 01470610
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a26d0 BW1M119 01438e20
	virtual void ModifyAtomCore(AtomCore* core) const;
};
static_assert(sizeof(SetPSysCloseDown) == 0x20, "Data type is of wrong size");

class SetAtomHasBeenDeflected : public AtomCollectionModifier
{
public:
	SetAtomHasBeenDeflected(PersistentOwner* owner) : AtomCollectionModifier(owner) {}

	// BW1W120 006acc70 BW1M119 014704e0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a26c0 BW1M119 01438e90
	virtual void ModifyAtomCore(AtomCore* core) const;
};
static_assert(sizeof(SetAtomHasBeenDeflected) == 0x20, "Data type is of wrong size");

class ForceConstantAltitude : public UpdateRule
{
public:
	ForceConstantAltitude(PersistentOwner* owner) : UpdateRule(owner) { Altitude = 0.0f; }

	// BW1W120 006acc80 BW1M119 014703b0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a28a0 BW1M119 014389c0
	virtual void ModifyAtomCore(AtomCore* core) const;

	float Altitude;
};
static_assert(sizeof(ForceConstantAltitude) == 0x24, "Data type is of wrong size");

class ForceConstantHeight : public UpdateRule
{
public:
	ForceConstantHeight(PersistentOwner* owner) : UpdateRule(owner) { Height = 10.0f; }

	// BW1W120 006accb0 BW1M119 01470280
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a28f0 BW1M119 014388c0
	virtual void ModifyAtomCore(AtomCore* core) const;

	float Height;
};
static_assert(sizeof(ForceConstantHeight) == 0x24, "Data type is of wrong size");

class ForceMinimumHeight : public UpdateRule
{
public:
	ForceMinimumHeight(PersistentOwner* owner) : UpdateRule(owner) { MinHeight = 10.0f; }

	// BW1W120 006acce0 BW1M119 01470150
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a2980 BW1M119 014387b0
	virtual void ModifyAtomCore(AtomCore* core) const;

	float MinHeight;
};
static_assert(sizeof(ForceMinimumHeight) == 0x24, "Data type is of wrong size");

class UR_CloudMoverNew : public UpdateRule
{
public:
	// BW1W120 006d4150 BW1M119 01491ef0
	UR_CloudMoverNew(PersistentOwner* owner);

	// BW1W120 006acd10 BW1M119 0146fff0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006d41c0 BW1M119 014919a0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float DelayBeforeMove;
	float WindDamping;
	float WindMagnification;
};
static_assert(sizeof(UR_CloudMoverNew) == 0x2c, "Data type is of wrong size");

class UR_CloudGather : public AtomCreateRule
{
public:
	// BW1W120 006d4700 BW1M119 014917f0
	UR_CloudGather(PersistentOwner* owner);

	// BW1W120 006acd70 BW1M119 0146f940
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006d4a70 BW1M119 01490460
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float           MaxRadius;
	long            NumAtoms;
	float           MaxAngularSpeed;
	float           TimeToForm;
	float           FracToMaxSize;
	long            MaxColor;
	long            MinColor;
	float           MinScaleFactor;
	float           MaxScaleFactor;
	long            MinAlpha;
	long            MaxAlpha;
	long            LightningGroup;
	float           SpecLife;
	float           LightningLife;
	float           LightningDelay;
	float           SwitchLife;
	float           HeightVaryAmount;
	float           CloudRatioMaxCollection;
	float           CollectionRadiusInitialScale;
	float           MaxCloudRatio;
	float           MinCloudRatio;
	bool            CreateAllAtOnce;
	uint8_t         field_0x81;
	uint8_t         field_0x82;
	uint8_t         field_0x83;
	long            TornadoGroup;
	float           WindMaxSpeed;
	float           WindMinSpeed;
	float           MagnitudeForWindMaxSpeed;
	float           MagnitudeForWindMinSpeed;
	FloatProvider*  RadiusFloatProvider;
	FloatProvider*  ScaleFloatProvider;
	FloatProvider*  CloudHeight;
	PSysSoundAction SoundLightning;
	float           MaxRadiusSmallSound;
	float           MaxRadiusMediumSound;
};
static_assert(sizeof(UR_CloudGather) == 0xc4, "Data type is of wrong size");

class UR_VortexAttract : public AtomCreateRule
{
public:
	// BW1W120 006d3910 BW1M119 014929d0
	UR_VortexAttract(PersistentOwner* owner);

	// BW1W120 006ad310 BW1M119 0146f5c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006d39c0 BW1M119 01491fa0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float    RadialSpeed;
	float    ThetaSpeed;
	float    DeletionRadius;
	float    MinRadius;
	float    BlendTime;
	float    BlendTimeVel;
	float    YParam_YOffset;
	float    YParam_RZeroHeight;
	uint32_t field_0x4c;
};
static_assert(sizeof(UR_VortexAttract) == 0x50, "Data type is of wrong size");

class UR_StormCast : public AtomCreateRule
{
public:
	UR_StormCast(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		Flags ^= 4;
		NumAtoms = 30;
		MaxRadius = 1.0f;
		RadiusDot = 2.0f;
		MinRadius = 0.2f;
		ThetaDotMinRadius = 1.0f;
		ThetaDotMaxRadius = 1.0f;
		InitHeight = 5.0f;
		ThetaDotSpread = 0.5f;
		InitScaleSpread = 0.5f;
		InitRadiusSpread = 0.7f;
		DispersalAge = 6.0f;
		AccnStartTime = 1.0f;
		AccnEndTime = 4.0f;
		FadeOutTime = 2.0f;
		MaxSpeed = 20.0f;
	}

	// BW1W120 006ad3e0 BW1M119 0146f190
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006d59b0 BW1M119 0148fa30
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long  NumAtoms;
	float MaxRadius;
	float MinRadius;
	float ThetaDotMinRadius;
	float ThetaDotMaxRadius;
	float RadiusDot;
	float InitHeight;
	float ThetaDotSpread;
	float InitScaleSpread;
	float InitRadiusSpread;
	float DispersalAge;
	float AccnStartTime;
	float AccnEndTime;
	float FadeOutTime;
	float MaxSpeed;
};
static_assert(sizeof(UR_StormCast) == 0x68, "Data type is of wrong size");

class UR_Tornado : public AtomCreateRule
{
public:
	// BW1W120 006d1680 BW1M119 01495460
	UR_Tornado(PersistentOwner* owner);

	// BW1W120 006ad550 BW1M119 0146e820
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006d18b0 BW1M119 01494eb0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float            TopHeight;
	long             WiggleCount;
	float            WiggleAmplitude;
	float            FadeOutTime;
	float            FadeInTime;
	float            BaseRadius;
	float            TopRadius;
	float            BaseScale;
	float            TopScale;
	float            BaseThetaDot;
	float            TopThetaDot;
	float            MeshThetaDot;
	uint32_t         field_0x5c;
	uint32_t         field_0x60;
	float            ThetaBias;
	float            FunnelBendParameter;
	float            PauseBeforeAffectsGameObjects;
	float            MaxSearchDistance;
	float            MaxSearchDistanceWhenNoTargets;
	float            LocalSearchDistance;
	float            TopMoveFreq;
	float            TopMoveAmp;
	bool             UseTornadoStrength;
	uint8_t          field_0x85;
	uint8_t          field_0x86;
	uint8_t          field_0x87;
	long             NumAtomsToCreate;
	long             GroupFlying;
	long             GroupDebris;
	long             GroupMesh;
	long             GroupToMoveToOnceDone;
	long             GroupToMoveToOnCloseDown;
	bool             ShowVelocityField;
	uint8_t          field_0xa1;
	uint8_t          field_0xa2;
	uint8_t          field_0xa3;
	float            K1_Accn;
	float            ScaleWhipUp;
	FloatProvider*   TornadoScaleFloatProvider;
	float            DelayBeforeMove;
	float            Damping;
	float            DebrisRadius;
	float            DebrisHeight;
	float            DebrisSpeed;
	float            DebrisEmitRate;
	float            DebrisSpreadAngle;
	float            PretendRadius;
	float            PretendHeight;
	float            PretendSpeed;
	float            PretendEmitRate;
	float            PretendSpreadAngle;
	float            PretendGravity;
	float            PretendBlendTime;
	float            ResourceAmountRemoveMin;
	float            ResourceAmountRemoveMax;
	ParticleCreator* SpriteCreator;
	ParticleCreator* DebrisSpriteCreator;
	ParticleCreator* PretendObjectCreatorSmall;
	ParticleCreator* PretendObjectCreatorMedium;
	ParticleCreator* PretendObjectCreatorLarge;
	PSysSoundAction  SoundTornado;
};
static_assert(sizeof(UR_Tornado) == 0x11c, "Data type is of wrong size");

class UR_ChangeScale : public UpdateRule
{
public:
	UR_ChangeScale(PersistentOwner* owner) : UpdateRule(owner)
	{
		StartTime = 0.0f;
		StopTime = 5.0f;
		StartScale = 1.0f;
		StopScale = 1.0f;
	}

	// BW1W120 006addf0 BW1M119 0146e6a0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a4ee0 BW1M119 0103a1c0
	virtual void ModifyAtomCore(AtomCore* core) const;

	float StartTime;
	float StopTime;
	float StartScale;
	float StopScale;
};
static_assert(sizeof(UR_ChangeScale) == 0x30, "Data type is of wrong size");

class UR_ChangeScaleXYZ : public UpdateRule
{
public:
	UR_ChangeScaleXYZ(PersistentOwner* owner) : UpdateRule(owner)
	{
		StartTime = 0.0f;
		StopTime = 5.0f;
		StartScaleXZ = 1.0f;
		StopScaleXZ = 1.0f;
		StartScaleY = 1.0f;
		StopScaleY = 1.0f;
	}

	// BW1W120 006ade60 BW1M119 0146e4f0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a5240 BW1M119 01434c60
	virtual void ModifyAtomCore(AtomCore* core) const;

	float StartTime;
	float StopTime;
	float StartScaleXZ;
	float StopScaleXZ;
	float StartScaleY;
	float StopScaleY;
};
static_assert(sizeof(UR_ChangeScaleXYZ) == 0x38, "Data type is of wrong size");

class UR_ChangeStretchHeight : public UpdateRule
{
public:
	UR_ChangeStretchHeight(PersistentOwner* owner) : UpdateRule(owner)
	{
		StartTime = 0.0f;
		StopTime = 5.0f;
		StartStretch = 1.0f;
		StopStretch = 1.0f;
	}

	// BW1W120 006adf00 BW1M119 0146e370
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a51d0 BW1M119 01434dc0
	virtual void ModifyAtomCore(AtomCore* core) const;

	float StartTime;
	float StopTime;
	float StartStretch;
	float StopStretch;
};
static_assert(sizeof(UR_ChangeStretchHeight) == 0x30, "Data type is of wrong size");

class UR_KPStretchHeight : public UpdateRule
{
public:
	// BW1W120 006a4f50 BW1M119 01434f80
	UR_KPStretchHeight(PersistentOwner* owner);

	// BW1W120 006adf70 BW1M119 0146e070
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a50c0 BW1M119 01434eb0
	virtual void ModifyAtomCore(AtomCore* core) const;

	// BW1W120 006ae0d0 BW1M119 0146e300
	void KeyPointsGetArray(GJArray<float>* array);
	// BW1W120 006ae170 BW1M119 0146e290
	void KeyPointsSetArray(const GJArray<float>& array);

	KPSplineInterpolator<float> KeyPoints;
	float                       StartTime;
	float                       StopTime;
};
static_assert(sizeof(UR_KPStretchHeight) == 0x34, "Data type is of wrong size");

class UR_MoveAtom : public UpdateRule
{
public:
	UR_MoveAtom(PersistentOwner* owner) : UpdateRule(owner)
	{
		Start = LHPoint(0.0f, 0.0f, 0.0f);
		Stop = LHPoint(0.0f, 0.0f, 0.0f);
		StartTime = 0.0f;
		StopTime = 5.0f;
		MoveSmoothly = false;
	}

	// BW1W120 006ae240 BW1M119 0146d700
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a5e50 BW1M119 01433910
	virtual void ModifyAtomCore(AtomCore* core) const;

	// BW1W120 006ae520 BW1M119 0146e030
	float GetStartX() const { return Start.x; }
	// BW1W120 006ae530 BW1M119 0146dff0
	void SetStartX(float value) { Start.x = value; }
	// BW1W120 006ae540 BW1M119 0146dfb0
	float GetStartY() const { return Start.y; }
	// BW1W120 006ae550 BW1M119 0146df70
	void SetStartY(float value) { Start.y = value; }
	// BW1W120 006ae560 BW1M119 0146df30
	float GetStartZ() const { return Start.z; }
	// BW1W120 006ae570 BW1M119 0146def0
	void SetStartZ(float value) { Start.z = value; }
	// BW1W120 006ae580 BW1M119 0146deb0
	float GetStopX() const { return Stop.x; }
	// BW1W120 006ae590 BW1M119 0146de70
	void SetStopX(float value) { Stop.x = value; }
	// BW1W120 006ae5a0 BW1M119 0146de30
	float GetStopY() const { return Stop.y; }
	// BW1W120 006ae5b0 BW1M119 0146ddf0
	void SetStopY(float value) { Stop.y = value; }
	// BW1W120 006ae5c0 BW1M119 0146ddb0
	float GetStopZ() const { return Stop.z; }
	// BW1W120 006ae5d0 BW1M119 0146dd70
	void SetStopZ(float value) { Stop.z = value; }

	float   StartTime;
	float   StopTime;
	bool    MoveSmoothly;
	LHPoint Start;
	LHPoint Stop;
};
static_assert(sizeof(UR_MoveAtom) == 0x44, "Data type is of wrong size");

class UR_KPMoveAtoms : public UpdateRule
{
public:
	// BW1W120 006a5f40 BW1M119 014337f0
	UR_KPMoveAtoms(PersistentOwner* owner);

	// BW1W120 006ae5e0 BW1M119 0146d400
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a60b0 BW1M119 01433610
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	// BW1W120 006ae750 BW1M119 0146d690
	void KeyPointsYGetArray(GJArray<float>* array);
	// BW1W120 006ae7f0 BW1M119 0146d620
	void KeyPointsYSetArray(const GJArray<float>& array);

	float                       StartTime;
	float                       StopTime;
	KPSplineInterpolator<float> KeyPointsY;
	bool                        MovePropAtomIndex;
};
static_assert(sizeof(UR_KPMoveAtoms) == 0x38, "Data type is of wrong size");

class UR_AddDefensiveSphere : public UpdateRule
{
public:
	UR_AddDefensiveSphere(PersistentOwner* owner) : UpdateRule(owner)
	{
		SphereRadius = NULL;
		IsMagical = true;
	}

	// BW1W120 006ae8c0 BW1M119 0146d270
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a2a60 BW1M119 01438530
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	FloatProvider* SphereRadius;
	bool           IsMagical;
	uint8_t        field_0x25;
	uint8_t        field_0x26;
	uint8_t        field_0x27;
};
static_assert(sizeof(UR_AddDefensiveSphere) == 0x28, "Data type is of wrong size");

class UpdateRuleShieldSpark : public AtomCreateRule
{
public:
	// BW1W120 006a2b40 BW1M119 01438440
	UpdateRuleShieldSpark(PersistentOwner* owner);

	// BW1W120 006aea00 BW1M119 0146cee0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a2bf0 BW1M119 01437e40
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	FloatProvider*  SphereRadius;
	long            MaxNumAtomsForCollection;
	float           SparkLife;
	float           WiggleAmpl;
	PSysSoundAction SoundSpark;
};
static_assert(sizeof(UpdateRuleShieldSpark) == 0x54, "Data type is of wrong size");

class UR_HealInHand : public UpdateRule
{
public:
	UR_HealInHand(PersistentOwner* owner) : UpdateRule(owner) { WiggleFreq = 1.0f; }

	// BW1W120 006aeb80 BW1M119 0146cdb0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a0f40 BW1M119 0143a520
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float WiggleFreq;
};
static_assert(sizeof(UR_HealInHand) == 0x24, "Data type is of wrong size");

class UR_SphereSurfaceTracer : public UpdateRule
{
public:
	UR_SphereSurfaceTracer(PersistentOwner* owner) : UpdateRule(owner)
	{
		ThetaSpeed = 1.0f;
		PhiSpeed = 1.0f;
		SphereRadius = 1.0f;
		ScaleX = 1.0f;
		ScaleY = 1.0f;
		ScaleZ = 1.0f;
		Alpha = 255;
		ScaleAlpha = NULL;
		ScaleSphereRadius = NULL;
		OrientToSurface = false;
	}

	// BW1W120 006aebb0 BW1M119 0146cb10
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a32b0 BW1M119 014374d0
	virtual void ModifyAtomCore(AtomCore* core) const;

	float          ThetaSpeed;
	float          PhiSpeed;
	float          SphereRadius;
	FloatProvider* ScaleSphereRadius;
	FloatProvider* ScaleAlpha;
	float          ScaleX;
	float          ScaleY;
	float          ScaleZ;
	long           Alpha;
	bool           OrientToSurface;
	uint8_t        field_0x45;
	uint8_t        field_0x46;
	uint8_t        field_0x47;
};
static_assert(sizeof(UR_SphereSurfaceTracer) == 0x48, "Data type is of wrong size");

class UR_ForestPath : public UpdateRule
{
public:
	// BW1W120 006a35e0 BW1M119 01437320
	UR_ForestPath(PersistentOwner* owner);

	// BW1W120 006aee60 BW1M119 0146c5b0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a3770 BW1M119 01436f80
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float          ThetaSpeed;
	float          PhiSpeed;
	float          SphereRadius;
	FloatProvider* ScaleSphereRadius;
	float          ScaleX;
	float          ScaleY;
	float          ScaleZ;

	// BW1W120 006af130 BW1M119 0146caa0
	void RadiusSplineGetArray(GJArray<float>* array);
	// BW1W120 006af1d0 BW1M119 0146ca30
	void RadiusSplineSetArray(const GJArray<float>& array);
	// BW1W120 006af2a0 BW1M119 0146c9c0
	void HeightSplineGetArray(GJArray<float>* array);
	// BW1W120 006af340 BW1M119 0146c950
	void HeightSplineSetArray(const GJArray<float>& array);

	KPSplineInterpolator<float> RadiusSpline;
	KPSplineInterpolator<float> HeightSpline;
};
static_assert(sizeof(UR_ForestPath) == 0x54, "Data type is of wrong size");

class UR_VapourEndEffect : public UpdateRule
{
public:
	UR_VapourEndEffect(PersistentOwner* owner) : UpdateRule(owner) { ScaleFactor = NULL; }

	// BW1W120 006af410 BW1M119 0146c430
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a39e0 BW1M119 01436930
	virtual void ModifyAtomCore(AtomCore* core) const;

	FloatProvider* ScaleFactor;
};
static_assert(sizeof(UR_VapourEndEffect) == 0x24, "Data type is of wrong size");

class CheckShieldDeflections : public UpdateRule
{
public:
	CheckShieldDeflections(PersistentOwner* owner) : UpdateRule(owner)
	{
		GroupToMoveToIfDeflected = -1;
		CloseDownSpellIfDeflected = false;
		SetDeflectedWhenDeflected = false;
		CheckMovementOnly = true;
	}

	// BW1W120 006af540 BW1M119 0146c2b0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a2570 BW1M119 01438ef0
	virtual void ModifyAtomCore(AtomCore* core) const;

	long    GroupToMoveToIfDeflected;
	bool    CloseDownSpellIfDeflected;
	bool    SetDeflectedWhenDeflected;
	bool    CheckMovementOnly;
	uint8_t field_0x27;
};
static_assert(sizeof(CheckShieldDeflections) == 0x28, "Data type is of wrong size");

class AddSubCollectionsToAtom : public AtomCollectionModifier
{
public:
	AddSubCollectionsToAtom(PersistentOwner* owner) : AtomCollectionModifier(owner) {}

	// BW1W120 006af5a0 BW1M119 0146c050
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069f220 BW1M119 0143d480
	virtual void ModifyAtomCore(AtomCore* core) const;

	// BW1W120 0069f2b0 BW1M119 0143d430
	unsigned long NextGroupsGetSize();
	// BW1W120 0069f2c0 BW1M119 0143d3c0
	void NextGroupsSetSize(unsigned long size);
	// BW1W120 0069f320 BW1M119 0143d370
	long NextGroupsGet(unsigned long index);
	// BW1W120 0069f330 BW1M119 0143d320
	void NextGroupsSet(unsigned long index, long group);

	GJArray<long> NextGroups;
};
static_assert(sizeof(AddSubCollectionsToAtom) == 0x28, "Data type is of wrong size");

class EmitterRuleSimple : public EmitterRule
{
public:
	EmitterRuleSimple(PersistentOwner* owner) : EmitterRule(owner)
	{
		Speed = 1.0f;
		OrientWithParent = false;
	}

	// BW1W120 006af980 BW1M119 0146b980
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a6700 BW1M119 01432e40
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float   Speed;
	bool    OrientWithParent;
	uint8_t field_0x59;
	uint8_t field_0x5a;
	uint8_t field_0x5b;
};
static_assert(sizeof(EmitterRuleSimple) == 0x5c, "Data type is of wrong size");

class EmitterRuleLightningSprite : public AtomCreateRule
{
public:
	EmitterRuleLightningSprite(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		SpecLife = 0.5f;
		EmissionFreq = 0.001f;
		MaxAtoms = -1;
		MaxTotalAtomsToEmit = -1;
		Randomise = true;
	}

	// BW1W120 006af9c0 BW1M119 0146b640
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a6910 BW1M119 014329f0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float   SpecLife;
	float   EmissionFreq;
	long    MaxAtoms;
	long    MaxTotalAtomsToEmit;
	bool    Randomise;
	uint8_t field_0x3d;
	uint8_t field_0x3e;
	uint8_t field_0x3f;
};
static_assert(sizeof(EmitterRuleLightningSprite) == 0x40, "Data type is of wrong size");

class DiskEmitter : public EmitterRule
{
public:
	DiskEmitter(PersistentOwner* owner) : EmitterRule(owner)
	{
		Radius = 1.0f;
		Height = 0.0f;
	}

	// BW1W120 006afa40 BW1M119 0146b570
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a64d0 BW1M119 0106f890
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float Radius;
	float Height;
};
static_assert(sizeof(DiskEmitter) == 0x5c, "Data type is of wrong size");

class SpreadingDiskEmitter : public EmitterRule
{
public:
	SpreadingDiskEmitter(PersistentOwner* owner) : EmitterRule(owner)
	{
		StartRadius = 1.0f;
		StopRadius = 1.0f;
		StartTime = 0.0f;
		StopTime = 5.0f;
		Height = 0.0f;
	}

	// BW1W120 006afa90 BW1M119 0146b450
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a6610 BW1M119 01433060
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float StartRadius;
	float StopRadius;
	float StartTime;
	float StopTime;
	float Height;
};
static_assert(sizeof(SpreadingDiskEmitter) == 0x68, "Data type is of wrong size");

class EmitterRuleConical : public EmitterRule
{
public:
	EmitterRuleConical(PersistentOwner* owner) : EmitterRule(owner)
	{
		Speed = 1.0f;
		Spread = 0.5235988f;
		Radius = 0.0f;
	}

	// BW1W120 006afb20 BW1M119 0146b360
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a6a60 BW1M119 01432770
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float Speed;
	float Spread;
	float Radius;
};
static_assert(sizeof(EmitterRuleConical) == 0x60, "Data type is of wrong size");

class ER_EmitFromParentAtom : public AtomCreateRule
{
public:
	// BW1W120 006a5b00 BW1M119 01433e20
	ER_EmitFromParentAtom(PersistentOwner* owner);

	// BW1W120 006afb80 BW1M119 0146af70
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a5ba0 BW1M119 01433a20
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long             MaxAtoms;
	long             MaxAlpha;
	float            PulseMagnitude;
	float            PulseSpeed;
	float            AtomAgeMaxSize;
	float            AtomAgeZeroSize;
	TEventCondition* EmitConditionOfParent;
	bool             DoScaling;
	bool             DeleteAtoms;
	bool             EmitOnlyAboveLandscape;
	uint8_t          field_0x4b;
};
static_assert(sizeof(ER_EmitFromParentAtom) == 0x4c, "Data type is of wrong size");

class UR_AtomsAtEPTarget : public AtomCreateRule
{
public:
	UR_AtomsAtEPTarget(PersistentOwner* owner) : AtomCreateRule(owner) { NumExtraPoints = 0; }

	// BW1W120 006afd70 BW1M119 0146ac90
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069a960 BW1M119 0142d920
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long NumExtraPoints;
};
static_assert(sizeof(UR_AtomsAtEPTarget) == 0x30, "Data type is of wrong size");

class UR_WillowWisp : public AtomCreateRule
{
public:
	// BW1W120 006a6c20 BW1M119 01432630
	UR_WillowWisp(PersistentOwner* owner);

	// BW1W120 006afda0 BW1M119 0146a700
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a6d20 BW1M119 01075690
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float            Speed;
	float            MaxSpeed;
	float            RandomSpeed;
	float            SmoothingValue;
	float            AccelerationForCast;
	float            DieAge;
	float            RandomRadiusMin;
	float            RandomRadiusMax;
	long             MaxAtoms;
	PSysSoundAction  SoundEmission;
	TEventCondition* EmitConditionOfParent;
	FloatProvider*   AdjustInitialScale;
	FloatProvider*   AdjustInitialRandomVel;
	float            EmitDueToMovingDist;
	float            EmitDueToMovingMaxRate;
	bool             EmitDueToMoving;
	bool             RandomiseInitOrientation;
	bool             InitiallyVisible;
	bool             DrawOnFirstUpdate;
	bool             DoDrawOffsets;
	bool             UseParentScale;
	bool             AddCastVelToInitPos;
	bool             DeleteAtomsAtDieAge;
};
static_assert(sizeof(UR_WillowWisp) == 0x84, "Data type is of wrong size");

class ZR_ChainGesture : public AtomCreateRule
{
public:
	// BW1W120 00689ff0 BW1M119 014109f0
	ZR_ChainGesture(PersistentOwner* owner);

	// BW1W120 006b0170 BW1M119 0146a370
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0068a080 BW1M119 01075350
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float          DieAge;
	float          MinEmitDist;
	FloatProvider* AdjustInitialScale;
	bool           PredictNextPosition;
	bool           DrawOnFirstUpdate;
	bool           InTestMode;
	uint8_t        field_0x3b;
};
static_assert(sizeof(ZR_ChainGesture) == 0x3c, "Data type is of wrong size");

class UR_LightSheetOnObject : public AtomCreateRule
{
public:
	// BW1W120 0069c8b0 BW1M119 0142f8a0
	UR_LightSheetOnObject(PersistentOwner* owner);

	// BW1W120 006b0300 BW1M119 0146a010
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069c940 BW1M119 0142f430
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	FloatProvider* RadiusFP;
	float          DefaultRadius;
	long           NumAtoms;
};
static_assert(sizeof(UR_LightSheetOnObject) == 0x38, "Data type is of wrong size");

class UR_VolFXOnObject : public AtomCreateRule
{
public:
	// BW1W120 0069cda0 BW1M119 0142f170
	UR_VolFXOnObject(PersistentOwner* owner);

	// BW1W120 006b0460 BW1M119 01469c70
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069cee0 BW1M119 0142ebb0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long    MatInd;
	float   AnimSpeedU;
	float   AnimSpeedV;
	float   ZoomProportionMin;
	float   ZoomProportionMax;
	float   TextFracU;
	float   TextFracV;
	long    Alpha;
	bool    UsePlayerColor;
	bool    SetAlphaFromStrength;
	uint8_t field_0x4e;
	uint8_t field_0x4f;
};
static_assert(sizeof(UR_VolFXOnObject) == 0x50, "Data type is of wrong size");

class UR_GesturingRecognised : public AtomCreateRule
{
public:
	// BW1W120 006883e0 BW1M119 014127e0
	UR_GesturingRecognised(PersistentOwner* owner);

	// BW1W120 006b0560 BW1M119 01469720
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006884f0 BW1M119 0107ef00
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float            LightSheetHeightScale;
	float            TimeToIdeal;
	float            HeightOffset;
	float            InterpGain;
	float            DieAge;
	float            LightSheetDieAge;
	float            MaxAlpha;
	long             NumAtoms;
	ParticleCreator* SpriteCreator;
	float            WiggleFreq;
	float            WiggleMag;
	float            WiggleMagY;
	float            WiggleSpeed;
	float            WigglePhaseSpeed;
	float            DispersalTime;
	float            ExplodeFactor;
	float            ExplodePause;
	long             CollectionAlphaPulse;
	long             CollectionAlphaInit;
	float            ShrinkTimeAfterDispersal;
	float            HandPulseDuration;
	uint32_t         field_0x80;
	uint32_t         field_0x84;
	uint32_t         field_0x88;
	long             SparkleGroup;
	bool             GoToIdeal;
	bool             DoTransition;
	uint8_t          field_0x92;
	uint8_t          field_0x93;
};
static_assert(sizeof(UR_GesturingRecognised) == 0x94, "Data type is of wrong size");

class ER_BurstFromParentAtom : public AtomCreateRule
{
public:
	// BW1W120 006a5810 BW1M119 014342a0
	ER_BurstFromParentAtom(PersistentOwner* owner);

	// BW1W120 006b0880 BW1M119 014693c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a58b0 BW1M119 01433f10
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long  MaxAtoms;
	long  MaxAlpha;
	float PulseMagnitude;
	float PulseSpeed;
	float AtomAgeMaxSize;
	float AtomAgeZeroSize;
};
static_assert(sizeof(ER_BurstFromParentAtom) == 0x44, "Data type is of wrong size");

class ER_GlintsOnTarget : public AtomCreateRule
{
public:
	// BW1W120 006a5300 BW1M119 01434b80
	ER_GlintsOnTarget(PersistentOwner* owner);

	// BW1W120 006b0920 BW1M119 01468ff0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a53a0 BW1M119 01434860
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long             MaxAtoms;
	long             MaxAlpha;
	long             GlintGroup;
	ParticleCreator* GlintCreator;
	float            PulseMagnitude;
	float            PulseSpeed;
	float            AtomAgeMaxSize;
	float            AtomAgeZeroSize;
};
static_assert(sizeof(ER_GlintsOnTarget) == 0x4c, "Data type is of wrong size");

class ER_MultiPickup : public AtomCreateRule
{
public:
	// BW1W120 006a7730 BW1M119 014320f0
	ER_MultiPickup(PersistentOwner* owner);

	// BW1W120 006b0ae0 BW1M119 01468cd0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a77c0 BW1M119 01431c00
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float   RaiseTime;
	float   EmitRate;
	float   DefaultOrientation;
	bool    RandomiseOrientations;
	uint8_t field_0x39;
	uint8_t field_0x3a;
	uint8_t field_0x3b;
};
static_assert(sizeof(ER_MultiPickup) == 0x3c, "Data type is of wrong size");

class CreateRuleMakeChain : public OnceOnlyCreateRule
{
public:
	CreateRuleMakeChain(PersistentOwner* owner) : OnceOnlyCreateRule(owner) { NumAtoms = 1; }

	// BW1W120 006b0b60 BW1M119 01468730
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069fd10 BW1M119 0143c210
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long NumAtoms;
};
static_assert(sizeof(CreateRuleMakeChain) == 0x30, "Data type is of wrong size");

class UR_Explosion : public AtomCreateRule
{
public:
	// BW1W120 0067e090 BW1M119 01401d20
	UR_Explosion(PersistentOwner* owner);

	// BW1W120 006b0b90 BW1M119 01468390
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067ece0 BW1M119 014007f0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long  MaxObjectsToDelete;
	long  MaxObjectsToExplode;
	float MaxDistance;
	float BlastSpeed;
	float SpreadSpeed;
	float TimeToDoEventsFor;
	float InitialDelay;
	float SmokeDelay;
	float BeamDelay;
};
static_assert(sizeof(UR_Explosion) == 0x50, "Data type is of wrong size");

class UR_ExplodeObject : public AtomCreateRule
{
public:
	UR_ExplodeObject(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		MaxTrigsPerFrag = 15;
		RandomFactor = 0.3f;
	}

	// BW1W120 006b0c70 BW1M119 014680a0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006814e0 BW1M119 0108c3b0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long  MaxTrigsPerFrag;
	float RandomFactor;
};
static_assert(sizeof(UR_ExplodeObject) == 0x34, "Data type is of wrong size");

class UR_ExplodeObject2 : public AtomCreateRule
{
public:
	UR_ExplodeObject2(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		RandomFactor = 0.3f;
		MaxDepth = 4;
	}

	// BW1W120 006b0cb0 BW1M119 01467db0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00681560 BW1M119 0108c530
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float RandomFactor;
	long  MaxDepth;
};
static_assert(sizeof(UR_ExplodeObject2) == 0x34, "Data type is of wrong size");

class CreateRuleSphere : public OnceOnlyCreateRule
{
public:
	CreateRuleSphere(PersistentOwner* owner) : OnceOnlyCreateRule(owner)
	{
		NumAtoms = 1;
		Centre = LHPoint(0.0f, 0.0f, 0.0f);
		Radius = 0.0f;
		SetInitFrameFromIndex = false;
		RadiusScaleFP = NULL;
		InitScaleFP = NULL;
	}

	// BW1W120 006b0cf0 BW1M119 014679d0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069e160 BW1M119 0108a150
	virtual void ModifyAtomCollection(AtomCollection* collection) const;
	// BW1W120 0069e2f0 BW1M119 0109a6c0
	virtual void SetInitialVelocity(AtomCore* core, long index, long count) const;

	// Not exposed as a property; name and meaning unconfirmed.
	LHPoint         Centre;
	long            NumAtoms;
	float           Radius;
	PSysSoundAction SoundOfCreate;
	bool            SetInitFrameFromIndex;
	uint8_t         field_0x59;
	uint8_t         field_0x5a;
	uint8_t         field_0x5b;
	FloatProvider*  InitScaleFP;
	FloatProvider*  RadiusScaleFP;
};
static_assert(sizeof(CreateRuleSphere) == 0x64, "Data type is of wrong size");

class CreateRuleAnAtom : public OnceOnlyCreateRule
{
public:
	// BW1W120 0069f350 BW1M119 0143d210
	CreateRuleAnAtom(PersistentOwner* owner);

	// BW1W120 006b0f20 BW1M119 014675a0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069f410 BW1M119 0109ad30
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float           OffsetX;
	float           OffsetY;
	float           OffsetZ;
	PSysSoundAction SoundOfCreate;
	FloatProvider*  SoundRadiusFP;
	float           SoundRadiusSmall;
	float           SoundRadiusMedium;
	float           SoundRadiusLarge;
	FloatProvider*  InitScaleFP;
};
static_assert(sizeof(CreateRuleAnAtom) == 0x64, "Data type is of wrong size");

class CreateNewBaseAtom : public AtomCreateRule
{
public:
	CreateNewBaseAtom(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		Flags ^= 4;
		BaseGroup = -1;
	}

	// BW1W120 006b11b0 BW1M119 014672b0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a4a60 BW1M119 014355f0
	virtual void ModifyAtomCore(AtomCore* core) const;

	long            BaseGroup;
	PSysSoundAction SoundCreation;
};
static_assert(sizeof(CreateNewBaseAtom) == 0x48, "Data type is of wrong size");

class UR_MoveAtomToBaseGroup : public UpdateRule
{
public:
	UR_MoveAtomToBaseGroup(PersistentOwner* owner) : UpdateRule(owner) { GroupToMoveTo = -1; }

	// BW1W120 006b11f0 BW1M119 01467160
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a4b60 BW1M119 01435570
	virtual void ModifyAtomCore(AtomCore* core) const;

	long GroupToMoveTo;
};
static_assert(sizeof(UR_MoveAtomToBaseGroup) == 0x24, "Data type is of wrong size");

class AttatchFireBallToAtom : public UpdateRule
{
public:
	AttatchFireBallToAtom(PersistentOwner* owner) : UpdateRule(owner) {}

	// BW1W120 006b1220 BW1M119 01467030
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00682fd0 BW1M119 014061a0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;
};
static_assert(sizeof(AttatchFireBallToAtom) == 0x20, "Data type is of wrong size");

class CreateWithInitialDirection : public OnceOnlyCreateRule
{
public:
	// BW1W120 0069e820 BW1M119 0143e180
	CreateWithInitialDirection(PersistentOwner* owner);

	// BW1W120 006b1230 BW1M119 01466b70
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069e950 BW1M119 0143d5d0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long            NumAtoms;
	PSysSoundAction SoundOfCreate;
	float           Elevation;
	float           V_In_0;
	float           V_In_1;
	float           V_In_2;
	float           V_Out_0;
	float           V_Out_1;
	float           V_Out_2;
	float           PredictFraction;
	float           VerticalScatterAtMinSpeed;
	float           VerticalScatterAtMaxSpeed;
	float           HorozScatterAtMinSpeed;
	float           HorozScatterAtMaxSpeed;
	float           SpeedRandomFrac;
	FloatProvider*  InitScaleFP;
	bool            Elevate;
	bool            PredictStartPos;
	uint8_t         field_0x82;
	uint8_t         field_0x83;
};
static_assert(sizeof(CreateWithInitialDirection) == 0x84, "Data type is of wrong size");

class UR_SideSpin : public UpdateRule
{
public:
	UR_SideSpin(PersistentOwner* owner) : UpdateRule(owner)
	{
		ScaleAngularVelocity = 1.0f;
		MaxAngularVelocity = 1.0f;
		TimeToFade = 2.0f;
	}

	// BW1W120 006b14c0 BW1M119 01466a10
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069e300 BW1M119 0143e590
	virtual void ModifyAtomCore(AtomCore* core) const;

	float ScaleAngularVelocity;
	float MaxAngularVelocity;
	float TimeToFade;
};
static_assert(sizeof(UR_SideSpin) == 0x2c, "Data type is of wrong size");

class UR_InitialSpin : public UpdateRule
{
public:
	UR_InitialSpin(PersistentOwner* owner) : UpdateRule(owner)
	{
		ScaleAngularVelocity = 1.0f;
		MaxAngularVelocity = 1.0f;
		TimeToFade = 2.0f;
	}

	// BW1W120 006b1520 BW1M119 014668b0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069e490 BW1M119 0143e2d0
	virtual void ModifyAtomCore(AtomCore* core) const;

	float ScaleAngularVelocity;
	float MaxAngularVelocity;
	float TimeToFade;
};
static_assert(sizeof(UR_InitialSpin) == 0x2c, "Data type is of wrong size");

class CreateRuleFusedSphericalExplode : public OnceOnlyCreateRule
{
public:
	CreateRuleFusedSphericalExplode(PersistentOwner* owner) : OnceOnlyCreateRule(owner)
	{
		NumAtoms = 100;
		MinSpeed = NULL;
		MaxSpeed = NULL;
		FuseTime = 1.0f;
		ScaleYSpeed = 1.0f;
		OnlyHemisphere = false;
		DisableParent = true;
	}

	// BW1W120 006b1580 BW1M119 01466490
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069f610 BW1M119 0143cb60
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	uint32_t        field_0x2c;
	uint32_t        field_0x30;
	uint32_t        field_0x34;
	long            NumAtoms;
	FloatProvider*  MinSpeed;
	FloatProvider*  MaxSpeed;
	float           FuseTime;
	float           ScaleYSpeed;
	bool            OnlyHemisphere;
	bool            DisableParent;
	uint8_t         field_0x4e;
	uint8_t         field_0x4f;
	PSysSoundAction SoundExplode;
};
static_assert(sizeof(CreateRuleFusedSphericalExplode) == 0x68, "Data type is of wrong size");

class UR_FireWorkSimple : public OnceOnlyCreateRule
{
public:
	// BW1W120 0069f810 BW1M119 0143c970
	UR_FireWorkSimple(PersistentOwner* owner);

	// BW1W120 006b17e0 BW1M119 014660a0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069f900 BW1M119 0143c320
	virtual void ModifyAtomCore(AtomCore* core) const;

	PSysSoundAction SoundExplode;
	long            NumAtomsMin;
	long            NumAtomsMax;
	long            BangGroup;
	float           SpeedMin;
	float           SpeedMax;
	float           FuseTimeMin;
	float           FuseTimeMax;
	float           PhiMin;
	float           PhiMax;
	float           ThetaRandomness;
	float           FracParentsVelocity;
};
static_assert(sizeof(UR_FireWorkSimple) == 0x70, "Data type is of wrong size");

class CreateRule_GameObjectRef : public AtomCreateRule
{
public:
	CreateRule_GameObjectRef(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		Flags ^= 4;
		DoShower = false;
		Alpha = 255;
		OffsetY = 0.0f;
	}

	// BW1W120 006b1930 BW1M119 01465d90
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069ded0 BW1M119 0143eaa0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	// Not exposed as a property; the constructor shows a PSysSoundAction.
	PSysSoundAction Sound;
	bool            DoShower;
	uint8_t         field_0x45;
	uint8_t         field_0x46;
	uint8_t         field_0x47;
	long            Alpha;
	float           OffsetY;
};
static_assert(sizeof(CreateRule_GameObjectRef) == 0x50, "Data type is of wrong size");

class UR_FollowParent : public UpdateRule
{
public:
	UR_FollowParent(PersistentOwner* owner) : UpdateRule(owner) { UseParentsDrawOffset = false; }

	// BW1W120 006b1990 BW1M119 01465c50
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069fd80 BW1M119 0143c0f0
	virtual void ModifyAtomCore(AtomCore* core) const;

	bool    UseParentsDrawOffset;
	uint8_t field_0x21;
	uint8_t field_0x22;
	uint8_t field_0x23;
};
static_assert(sizeof(UR_FollowParent) == 0x24, "Data type is of wrong size");

class UR_FollowCastPosn : public UpdateRule
{
public:
	UR_FollowCastPosn(PersistentOwner* owner) : UpdateRule(owner) {}

	// BW1W120 006b19c0 BW1M119 01465b20
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069fe30 BW1M119 01025910
	virtual void ModifyAtomCore(AtomCore* core) const;
};
static_assert(sizeof(UR_FollowCastPosn) == 0x20, "Data type is of wrong size");

class UR_HandSprinkle : public AtomCreateRule
{
public:
	// BW1W120 0069ff00 BW1M119 0143be80
	UR_HandSprinkle(PersistentOwner* owner);

	// BW1W120 006b19d0 BW1M119 01465700
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a0220 BW1M119 0143b960
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float TotalTime;
	float HeightToRaise;
	float AngleToRaise;
	float FracToCloseDownOn;
	float InitSpeedYHumanPlayerCasting;
	bool  ClampHand;

	// BW1W120 006a0180 BW1M119 0143bda0
	void KeyPointsGetArray(GJArray<float>* array);
	// BW1W120 006a00b0 BW1M119 0143be10
	void KeyPointsSetArray(const GJArray<float>& array);

	KPSplineInterpolator<float> KeyPoints;
};
static_assert(sizeof(UR_HandSprinkle) == 0x50, "Data type is of wrong size");

class UR_FollowLocalHand : public UpdateRule
{
public:
	UR_FollowLocalHand(PersistentOwner* owner) : UpdateRule(owner) { UseGraspPos = true; }

	// BW1W120 006b1b90 BW1M119 014655c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069a6a0 BW1M119 0142e000
	virtual void ModifyAtomCore(AtomCore* core) const;

	bool    UseGraspPos;
	uint8_t field_0x21;
	uint8_t field_0x22;
	uint8_t field_0x23;
};
static_assert(sizeof(UR_FollowLocalHand) == 0x24, "Data type is of wrong size");

class UR_CreatureSpell : public AtomCreateRule
{
public:
	// BW1W120 00677e70 BW1M119 013f4d50
	UR_CreatureSpell(PersistentOwner* owner);

	// BW1W120 006b1bc0 BW1M119 014652e0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00677f90 BW1M119 013f4980
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	PSysSoundAction SoundCreatureSpell;
	PSysSoundAction SoundCreatureSpellCast;
};
static_assert(sizeof(UR_CreatureSpell) == 0x5c, "Data type is of wrong size");

class UR_CreatureSpellItch : public AtomCreateRule
{
public:
	UR_CreatureSpellItch(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		NumAtoms = 5;
		PauseBeforeGotoCreature = 5.0f;
		OrbitSpeed = 1.0f;
	}

	// BW1W120 006b1c00 BW1M119 01464fd0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006781a0 BW1M119 013f43b0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long  NumAtoms;
	float PauseBeforeGotoCreature;
	float OrbitSpeed;
};
static_assert(sizeof(UR_CreatureSpellItch) == 0x38, "Data type is of wrong size");

class UR_CreatureSpellFreeze : public AtomCreateRule
{
public:
	UR_CreatureSpellFreeze(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		Flags ^= 4;
		MaxAtoms = 20;
		DieAge = 5.0f;
		InitSpeed = 10.0f;
		MinHeight = 5.0f;
	}

	// BW1W120 006b1c60 BW1M119 01464ca0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00678610 BW1M119 013f3df0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long  MaxAtoms;
	float DieAge;
	float InitSpeed;
	float MinHeight;
};
static_assert(sizeof(UR_CreatureSpellFreeze) == 0x3c, "Data type is of wrong size");

class UR_CreatureSpellGeneric : public AtomCreateRule
{
public:
	UR_CreatureSpellGeneric(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		Flags ^= 4;
		NumAtoms = 10;
		ThetaSpeed = 2.0f;
		PhiSpeed = 1.0f;
		EmitDuration = 2.0f;
		field_0x3c = 2.0f;
		DelayBeforeEmit = 1.0f;
		TaperFrac = 1.0f;
		field_0x48 = 0.2f;
		field_0x4c = 1.0f;
	}

	// BW1W120 006b1cd0 BW1M119 01464940
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00678d50 BW1M119 013f2ba0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long  NumAtoms;
	float EmitDuration;
	float PhiSpeed;
	float ThetaSpeed;
	float field_0x3c;
	float DelayBeforeEmit;
	float TaperFrac;
	float field_0x48;
	float field_0x4c;
};
static_assert(sizeof(UR_CreatureSpellGeneric) == 0x50, "Data type is of wrong size");

class UR_CreatureSpellCompassion : public AtomCreateRule
{
public:
	UR_CreatureSpellCompassion(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		Flags ^= 4;
		MaxAtoms = 20;
		DieAge = 5.0f;
		InitSpeed = 10.0f;
	}

	// BW1W120 006b1d70 BW1M119 01464620
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00678a50 BW1M119 013f3960
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long  MaxAtoms;
	float DieAge;
	float InitSpeed;
};
static_assert(sizeof(UR_CreatureSpellCompassion) == 0x38, "Data type is of wrong size");

class UR_FollowTargets : public AtomCreateRule
{
public:
	UR_FollowTargets(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		Flags ^= 4;
		RemoveTargetFromManager = true;
		RemoveAtomWhenTargetDies = false;
		UseLHPointTargets = false;
		SoundOneOnly = true;
	}

	// BW1W120 006b1dd0 BW1M119 01464310
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a04b0 BW1M119 0143b3a0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	bool            RemoveTargetFromManager;
	bool            RemoveAtomWhenTargetDies;
	bool            UseLHPointTargets;
	bool            SoundOneOnly;
	PSysSoundAction SoundCreate;
};
static_assert(sizeof(UR_FollowTargets) == 0x48, "Data type is of wrong size");

class UR_HealSpellChakra : public AtomCreateRule
{
public:
	// BW1W120 006a0810 BW1M119 0143b280
	UR_HealSpellChakra(PersistentOwner* owner);

	// BW1W120 006b1e40 BW1M119 01463f40
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a0b20 BW1M119 0143a950
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	bool            ScalePropObjectSize;
	bool            TakeCentrePos;
	uint8_t         field_0x2e;
	uint8_t         field_0x2f;
	PSysSoundAction SoundHeal;
	float           SoundSpacing;
	float           ScaleRadius;
	float           ScaleHeight;
	float           MaxAlpha;
	float           AtomAgeMaxAlpha;
	float           AtomAgeZeroAlpha;
	long            SpecularColorR;
	long            SpecularColorG;
	long            SpecularColorB;
};
static_assert(sizeof(UR_HealSpellChakra) == 0x6c, "Data type is of wrong size");

class UR_Trail : public AtomCreateRule
{
public:
	// BW1W120 006a4030 BW1M119 01436350
	UR_Trail(PersistentOwner* owner);

	// BW1W120 006b1f60 BW1M119 01463b40
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a40f0 BW1M119 014361d0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float   MaxTrailLength;
	long    NumAtoms;
	long    NumGameTurnsToSpreadOver;
	long    TrailGroup;
	long    HeadGroup;
	bool    UseNonLinearSpacing;
	bool    UseAlpha;
	bool    UseScaling;
	bool    UseCombinedParentScale;
	bool    UseParentAlpha;
	bool    ModifyAlpha;
	bool    ModifyScaling;
	bool    InitTrailUsingVelocity;
	bool    ScaleMaxTrailLengthWithParent;
	bool    UseParentsDrawOffset;
	uint8_t field_0x4a;
	uint8_t field_0x4b;
	float   FadeTailAlpha;
	float   FadeTailScale;
};
static_assert(sizeof(UR_Trail) == 0x54, "Data type is of wrong size");

class UR_ManaPathNew : public AtomCreateRule
{
public:
	UR_ManaPathNew(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		NoiseFrequency = 1.0f;
		NoiseAmplitude = 1.0f;
		GlowPosSpeed = 0.2f;
		GlowLength = 10.0f;
		TimeToTravel = 2.0f;
		Gain = 0.5f;
		UseConstantSpeed = true;
		Height = 0.3f;
	}

	// BW1W120 006b20b0 BW1M119 014637c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069acd0 BW1M119 01081bc0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float   GlowPosSpeed;
	float   GlowLength;
	float   NoiseFrequency;
	float   NoiseAmplitude;
	float   Gain;
	float   Height;
	float   TimeToTravel;
	bool    UseConstantSpeed;
	uint8_t field_0x49;
	uint8_t field_0x4a;
	uint8_t field_0x4b;
};
static_assert(sizeof(UR_ManaPathNew) == 0x4c, "Data type is of wrong size");

class UR_BeliefSprite : public AtomCreateRule
{
public:
	UR_BeliefSprite(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		RiseSpeed = 10.0f;
		MaxWiggleOffset = 10.0f;
		NoiseFreq = 1.0f;
		ScaleMax = 1.0f;
		ScaleFreq = 1.0f;
		AgeAtMaxOffset = 2.0f;
		UseLinearNoise = true;
		ScaleMin = 0.3f;
		AlphaMin = 20;
		AlphaMax = 150;
		ValueAlphaMin = 10;
		ValueAlphaMax = 100;
		FadeTimeStart = 1.5f;
		FadeTimeEnd = 2.5f;
	}

	// BW1W120 006b2180 BW1M119 01463390
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069b750 BW1M119 01082650
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float           RiseSpeed;
	float           DieAge;
	float           MaxWiggleOffset;
	float           AgeAtMaxOffset;
	float           NoiseFreq;
	float           ScaleMax;
	float           ScaleMin;
	float           ScaleFreq;
	float           FadeTimeStart;
	float           FadeTimeEnd;
	long            AlphaMin;
	long            AlphaMax;
	long            ValueAlphaMin;
	long            ValueAlphaMax;
	bool            UseLinearNoise;
	uint8_t         field_0x65;
	uint8_t         field_0x66;
	uint8_t         field_0x67;
	PSysSoundAction SoundOfBelief;
};
static_assert(sizeof(UR_BeliefSprite) == 0x80, "Data type is of wrong size");

class UR_TownCentreBelief : public AtomCreateRule
{
public:
	UR_TownCentreBelief(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		// Assignment order from the BW1M119 constructor (inlined into 0144df00).
		Flags ^= 4;
		AngleSpeedPhaseSpeed = 0.2f;
		GroupFightSparkle = -1;
		GroupPlayerSymbol = -1;
		FixedScale = 1.0f;
		UseFixedScale = true;
		RadiusAt0 = 10.0f;
		RadiusAt1 = 2.0f;
		SpeedAt0 = 2.0f;
		SpeedAt1 = 10.0f;
		ScaleAt0 = 0.0f;
		ScaleAt1 = 1.0f;
		HeightAt0 = 20.0f;
		HeightAt1 = 0.0f;
		HeightPerLevel = 2.0f;
		TimeBetweenFightsAt0 = 10.0f;
		TimeBetweenFightsAt1 = 5.0f;
		FightDurationAt0 = 1.0f;
		FightDurationAt1 = 2.0f;
		SpeedUpDuringFight = 2.0f;
		FightFracWhenEmitting = 0.2f;
	}

	// BW1W120 006b22f0 BW1M119 01462ef0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069bf30 BW1M119 010592d0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float   RadiusAt0;
	float   RadiusAt1;
	float   SpeedAt0;
	float   SpeedAt1;
	float   ScaleAt0;
	float   ScaleAt1;
	float   HeightAt0;
	float   HeightAt1;
	float   HeightPerLevel;
	float   FixedScale;
	bool    UseFixedScale;
	uint8_t field_0x55;
	uint8_t field_0x56;
	uint8_t field_0x57;
	float   TimeBetweenFightsAt0;
	float   TimeBetweenFightsAt1;
	float   FightDurationAt0;
	float   FightDurationAt1;
	float   FightFracWhenEmitting;
	float   AngleSpeedPhaseSpeed;
	float   SpeedUpDuringFight;
	long    GroupFightSparkle;
	long    GroupPlayerSymbol;
};
static_assert(sizeof(UR_TownCentreBelief) == 0x7c, "Data type is of wrong size");

class LightningForkFlicker : public AtomCollectionModifier
{
public:
	LightningForkFlicker(PersistentOwner* owner) : AtomCollectionModifier(owner) { FlickerFreq = 1.0f; }

	// BW1W120 006b24d0 BW1M119 01462dc0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a1000 BW1M119 0143a340
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float FlickerFreq;
};
static_assert(sizeof(LightningForkFlicker) == 0x24, "Data type is of wrong size");

class UR_Lightning : public AtomCreateRule
{
public:
	// BW1W120 006900b0 BW1M119 0141dd30
	UR_Lightning(PersistentOwner* owner);

	// BW1W120 006b2500 BW1M119 01462820
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006914b0 BW1M119 0141c4e0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long             MaxLightningObjects;
	long             MinLightningObjects;
	long             MaxLightningObjectsAtOnce;
	long             LightMapGroup;
	long             MaxJointsPerFork;
	long             ForkGroup;
	long             CommonGlowGroup;
	long             NumTexturesToTile;
	float            AverageLightmapLife;
	float            SplitAngle;
	float            RandomFrac;
	float            ForkScale;
	uint32_t         field_0x5c;
	uint32_t         field_0x60;
	FloatProvider*   FP_ForkScale;
	FloatProvider*   SearchRadius;
	float            DefaultSearchRadius;
	ParticleCreator* PCreatorLightMapAtom;
	bool             TakeTargetsFromManager;
	bool             CastingFromHand;
	bool             RenewTargetsOnMove;
	uint8_t          field_0x77;
	float            RenewTargetsOnMoveFrac;
	float            RenewSearchEvery;
	PSysSoundAction  SoundLightning;
};
static_assert(sizeof(UR_Lightning) == 0x98, "Data type is of wrong size");

class UR_LightningStrike : public AtomCreateRule
{
public:
	// BW1W120 00693650 BW1M119 01419b50
	UR_LightningStrike(PersistentOwner* owner);

	// BW1W120 006b28b0 BW1M119 01462550
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006937a0 BW1M119 01082da0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	PSysSoundAction SoundLightning;
};
static_assert(sizeof(UR_LightningStrike) == 0x44, "Data type is of wrong size");

class UR_SimpleBeam : public AtomCreateRule
{
public:
	// BW1W120 00675c50 BW1M119 013f0e70
	UR_SimpleBeam(PersistentOwner* owner);

	// BW1W120 006b28e0 BW1M119 01462180
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006760e0 BW1M119 013f03a0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long     MaxJointsPerFork;
	uint32_t field_0x30;
	long     NumSplinePoints;
	long     NumBeams;
	long     BeamGroup;
	float    WiggleFreq;
	float    WiggleSpeed;
	float    SpeedV;
	float    MinHeight;
	float    RandomFrac;
	float    ForkScaleMin;
	float    ForkScaleMax;
};
static_assert(sizeof(UR_SimpleBeam) == 0x5c, "Data type is of wrong size");

class UR_Rope : public UpdateRule
{
public:
	UR_Rope(PersistentOwner* owner) : UpdateRule(owner)
	{
		RopeLength = 50.0f;
		Stiffness = 0.1f;
		Damping = 0.1f;
		Gravity = 10.0f;
		AverageDirections = 0.2f;
		TimeSlowdown = 1.0f;
	}

	// BW1W120 00684440 BW1M119 01409080
	virtual void OnLoaded();
	// BW1W120 006b29f0 BW1M119 01461fe0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006844a0 BW1M119 01408710
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float RopeLength;
	float Stiffness;
	float Damping;
	float Gravity;
	float AverageDirections;
	float TimeSlowdown;
};
static_assert(sizeof(UR_Rope) == 0x38, "Data type is of wrong size");

class UR_ObjectArcer : public AtomCreateRule
{
public:
	UR_ObjectArcer(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		AverageTicksPerUpdate = 10;
		RandomFrac = 0.1f;
		ScaleTangents = 1.0f;
		RandomTangents = 0.2f;
		JointsPerArc = 19;
		ChainCreator = NULL;
	}

	// BW1W120 006b2a90 BW1M119 01461c40
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006933e0 BW1M119 010821b0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	long             AverageTicksPerUpdate;
	float            RandomFrac;
	float            ScaleTangents;
	float            RandomTangents;
	long             JointsPerArc;
	ParticleCreator* ChainCreator;
};
static_assert(sizeof(UR_ObjectArcer) == 0x44, "Data type is of wrong size");

class UR_Plasma : public AtomCreateRule
{
public:
	// BW1W120 00676460 BW1M119 013f01d0
	UR_Plasma(PersistentOwner* owner);

	// BW1W120 006b2c30 BW1M119 014617e0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00676530 BW1M119 013efd10
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float            ScaleTangents;
	float            RandomTangents;
	long             JointsPerArc;
	ParticleCreator* ChainCreator;
	uint32_t         field_0x3c;
	long             NumSplinePoints;
	long             NumBeams;
	long             BeamGroup;
	long             MaxAlpha;
	float            WiggleFreq;
	float            WiggleSpeed;
	float            SpeedV;
	float            RandomFrac;
	float            ForkScaleMin;
	float            ForkScaleMax;
};
static_assert(sizeof(UR_Plasma) == 0x68, "Data type is of wrong size");

class ZR_SurfRevol : public AtomCreateRule
{
public:
	// BW1W120 00686200 BW1M119 0140b900
	ZR_SurfRevol(PersistentOwner* owner);

	// BW1W120 006b2e80 BW1M119 01461240
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00686370 BW1M119 0140afd0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	std::string TextureFileName;
	bool        UseAdditiveAlpha;
	bool        MaterialUpdateZBuffer;
	bool        MaterialSetDoubleSided;
	uint8_t     field_0x3f;
	bool        MaterialUseTextureAlpha;
	uint8_t     field_0x41;
	uint8_t     field_0x42;
	uint8_t     field_0x43;
	long        TextureHeight;
	long        TextureWidth;
	float       SpeedU;
	float       SpeedV;
	long        NumU;
	long        NumV;
	bool        UseSphere;
	bool        FadeAlphas;
	bool        ChangeSpecColor;
	uint8_t     field_0x5f;
	float       MaxUVChange;
	float       MaxVertexChange;
	uint32_t    field_0x68;
	bool        ClampToLandscape;
	bool        DoRaiseAboveLandscape;
	uint8_t     field_0x6e;
	uint8_t     field_0x6f;
	float       HeightAboveLandscape;
	float       RaiseAboveLandscapeRadius;
	float       AlphaFadeIn;
	float       AlphaFadeOut;
	uint32_t    field_0x80;
	float       Scale;
	bool        UseLighting;
	uint8_t     field_0x89;
	uint8_t     field_0x8a;
	uint8_t     field_0x8b;
	long        FunctionIndex;
	long        ColorA;
	long        ColorR;
	long        ColorG;
	long        ColorB;
	long        SpecColorR;
	long        SpecColorG;
	long        SpecColorB;
};
static_assert(sizeof(ZR_SurfRevol) == 0xac, "Data type is of wrong size");

class UR_ScaleByCameraDist : public UpdateRule
{
public:
	UR_ScaleByCameraDist(PersistentOwner* owner) : UpdateRule(owner)
	{
		CameraDistMin = 10.0f;
		CameraDistMax = 100.0f;
		ScaleAtCameraDistMin = 0.1f;
		ScaleAtCameraDistMax = 1.0f;
	}

	// BW1W120 006b3240 BW1M119 014610c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a7be0 BW1M119 014319f0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;

	float CameraDistMin;
	float CameraDistMax;
	float ScaleAtCameraDistMin;
	float ScaleAtCameraDistMax;
};
static_assert(sizeof(UR_ScaleByCameraDist) == 0x30, "Data type is of wrong size");

class RemoveRuleOldAgeOnly : public RemoveRule
{
public:
	RemoveRuleOldAgeOnly(PersistentOwner* owner) : RemoveRule(owner)
	{
		DieAge = 0.0f;
		MinAtoms = 0;
	}

	// BW1W120 006b32c0 BW1M119 01460e40
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a3e90 BW1M119 01039920
	virtual bool ShouldRemove(AtomCollection* collection, AtomCore* core) const;

	long  MinAtoms;
	float DieAge;
};
static_assert(sizeof(RemoveRuleOldAgeOnly) == 0x28, "Data type is of wrong size");

class RemoveRuleProb : public RemoveRule
{
public:
	RemoveRuleProb(PersistentOwner* owner) : RemoveRule(owner)
	{
		RemoveFreq = 0.0f;
		MinAtoms = 0;
	}

	// BW1W120 006b3310 BW1M119 01460cf0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a3fe0 BW1M119 01436450
	virtual bool ShouldRemove(AtomCollection* collection, AtomCore* core) const;

	long  MinAtoms;
	float RemoveFreq;
};
static_assert(sizeof(RemoveRuleProb) == 0x28, "Data type is of wrong size");

class RemoveRuleAfterCloseDown : public RemoveRule
{
public:
	RemoveRuleAfterCloseDown(PersistentOwner* owner) : RemoveRule(owner) { Delay = 0.0f; }

	// BW1W120 006b3350 BW1M119 01460bb0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a3ec0 BW1M119 0102d5c0
	virtual bool ShouldRemove(AtomCollection* collection, AtomCore* core) const;

	float Delay;
};
static_assert(sizeof(RemoveRuleAfterCloseDown) == 0x24, "Data type is of wrong size");

class RemoveRuleAfterConditionTrue : public RemoveRule
{
public:
	RemoveRuleAfterConditionTrue(PersistentOwner* owner) : RemoveRule(owner)
	{
		Delay = 0.0f;
		ConditionForRemove = NULL;
	}

	// BW1W120 006b3380 BW1M119 01460a10
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a3f10 BW1M119 01436510
	virtual bool ShouldRemove(AtomCollection* collection, AtomCore* core) const;

	float            Delay;
	TEventCondition* ConditionForRemove;
};
static_assert(sizeof(RemoveRuleAfterConditionTrue) == 0x28, "Data type is of wrong size");

class LandscapeCollide : public AtomCollectionModifier
{
public:
	LandscapeCollide(PersistentOwner* owner) : AtomCollectionModifier(owner)
	{
		Flags |= 0x60;
		SendEvent = true;
	}

	// BW1W120 006b4c10 BW1M119 0145d6d0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d6e0 BW1M119 013fd0d0
	virtual void ModifyAtomCore(AtomCore* core) const;

	bool    SendEvent;
	uint8_t field_0x21;
	uint8_t field_0x22;
	uint8_t field_0x23;
};
static_assert(sizeof(LandscapeCollide) == 0x24, "Data type is of wrong size");

#endif /* BW1_DECOMP_P_SYS_RULES_INCLUDED_H */
