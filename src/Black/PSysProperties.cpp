// The iostream initialisers precede the point, year-length and logarithm initialisers.
#include <iostream>

#include <Lionhead/LH3DLib/development/LHPoint.h>

// The name is a guess, but not a free one. cl6 orders .bss by a hash of the symbol name, and
// statics inside a namespace by the namespace's name, so <iostream>'s _Wios_init and _Ios_init
// both sort as "std". The target needs this point after SecondsPerYear and ahead of them;
// "PSysZeroPoint" sorted after them, "ParticleZeroPoint" sorts between. Renaming it will move it:
// re-check this unit's .bss first.
// BW1W120 00d4ed98 BW1M119 01b42abc
static const LHPoint ParticleZeroPoint(0.0f, 0.0f, 0.0f);

#include "GameTimeConstants.h"

// BW1W120 00d4ed90
static float OneOverLogHalf = 1.0f / (float)log(0.5);

// fabricated: an unreferenced 4-byte .bss slot at 0x00d4eda8, after the iostream guards and
// ahead of the _Nilrefs COMDAT. Nothing names it; this name hashes after "std".
static float unused;

#include "PSysProperties.h"

#include "GJProperty.h"        /* For class PropertyList */
#include "ParticleCreator.h"   /* For the particle creators */
#include "PSysBaseModifiers.h" /* For the rule base classes and float providers */
#include "PSysEvents.h"        /* For the event conditions */
#include "PSysFileData.h"      /* For class PSysFileData */
#include "PSysRules.h"         /* For the concrete rules */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>         /* For LHFileLength, LHLoadData */
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For class LHReleasedOSFile */

#if defined(VERSION_BW1W100)
#define PSYS_PROPERTIES_FILE "C:\\dev\\black\\PSysProperties.cpp"
#elif defined(VERSION_BW1W110)
#define PSYS_PROPERTIES_FILE "C:\\dev\\Black\\PSysProperties.cpp"
#else
#define PSYS_PROPERTIES_FILE "C:\\dev\\MP\\Black\\PSysProperties.cpp"
#endif

void PSysFileData::DefineProperties(PropertyList* list)
{
	list->AddBoolArrayProperty("InitiallyCreated", this, &PSysFileData::GetMaxGroups, &PSysFileData::SetMaxGroups,
	                           &PSysFileData::GetInitiallyCreated, &PSysFileData::SetInitiallyCreated);
	list->AddBoolArrayProperty("Hierarchies", this, &PSysFileData::GetMaxGroups, &PSysFileData::SetMaxGroups,
	                           &PSysFileData::GetTransformHierarchy, &PSysFileData::SetTransformHierarchy);
	list->AddBoolProperty("DeleteOnCloseDown", &DeleteOnCloseDown);
	list->AddFloatProperty("MaxSpellAge", &MaxSpellAge, -1.0f, 20.0f);
}

void ConstFloatProvider::DefineProperties(PropertyList* list)
{
	list->AddFloatProperty("ConstValue", &ConstValue, 0.0f, 100.0f);
}

void FloatProvider_ParentAtomScale::DefineProperties(PropertyList* list)
{
	list->AddFloatProperty("Scale", &Scale, 0.0f, 100.0f);
}

void MagnitudeFloatProvider::DefineProperties(PropertyList* list)
{
	list->AddFloatProperty("ScaleBy", &ScaleBy, 0.0f, 100.0f);
	list->AddFloatProperty("Minimum", &Minimum, 0.0f, 100.0f);
	list->AddFloatProperty("Maximum", &Maximum, 0.0f, 100.0f);
}

void StrengthFloatProvider::DefineProperties(PropertyList* list)
{
	list->AddFloatProperty("ScaleBy", &ScaleBy, 0.0f, 100.0f);
	list->AddFloatProperty("Minimum", &Minimum, 0.0f, 100.0f);
	list->AddFloatProperty("Maximum", &Maximum, 0.0f, 100.0f);
}

void MagnitudeTimesStrengthFloatProvider::DefineProperties(PropertyList* list)
{
	list->AddFloatProperty("ScaleBy", &ScaleBy, 0.0f, 100.0f);
	list->AddFloatProperty("Minimum", &Minimum, 0.0f, 100.0f);
	list->AddFloatProperty("Maximum", &Maximum, 0.0f, 100.0f);
}

void RenderHandScaleFloatProvider::DefineProperties(PropertyList* list)
{
	list->AddFloatProperty("ScaleBy", &ScaleBy, 0.0f, 10.0f);
}

void RenderHandScaleTimesStrengthFloatProvider::DefineProperties(PropertyList* list)
{
	list->AddFloatProperty("ScaleBy", &ScaleBy, 0.0f, 10.0f);
}

void AtomCollectionModifier::DefineProperties(PropertyList* list)
{
	list->AddBoolProperty("RemoveOnCloseDown", &RemoveOnCloseDown);
	list->AddIntegerProperty("Group", &Group, -1, 25);
	list->AddPointerProperty("Condition", &Condition);
}

void TEventCondition::DefineProperties(PropertyList* list)
{
	list->AddBoolProperty("InvertResponse", &InvertResponse);
}

void AppearanceUpdateRule::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
}

void RemoveSoundFromAtom::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddSoundActionProperty("Sound", &Sound);
	list->AddPointerProperty("SoundCondition", &SoundCondition);
	list->AddIntegerProperty("FadeStep", &FadeStep, 0, 30);
}

void AddSoundToAtom::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddSoundActionProperty("Sound", &Sound);
	list->AddPointerProperty("SoundCondition", &SoundCondition);
	list->AddBoolProperty("StopOtherSoundsFirst", &StopOtherSoundsFirst);
	list->AddFloatProperty("Delay", &Delay, 0.0f, 10.0f);
	list->AddBoolProperty("DoCameraShake", &DoCameraShake);
	list->AddFloatProperty("CameraShakeRadius", &CameraShakeRadius, 0.0f, 100.0f);
	list->AddFloatProperty("CameraShakeDuration", &CameraShakeDuration, 0.0f, 10.0f);
}

void StartStopSoundOnCondition::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddSoundActionProperty("Sound", &Sound);
	list->AddPointerProperty("SoundCondition", &SoundCondition);
	list->AddIntegerProperty("FadeStep", &FadeStep, 0, 30);
}

void AppearanceRuleFadeOut::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddFloatProperty("VanishAge", &VanishAge, 0.0f, 100.0f);
}

void AR_SetAnimPlay::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
}

void AR_FadeAlpha::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
	list->AddIntegerProperty("StartAlpha", &StartAlpha, 0, 255);
	list->AddIntegerProperty("StopAlpha", &StopAlpha, 0, 255);
}

void AR_FadeCollectionAlpha::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
	list->AddIntegerProperty("StartAlpha", &StartAlpha, 0, 255);
	list->AddIntegerProperty("StopAlpha", &StopAlpha, 0, 255);
	list->AddBoolProperty("TimesAreAfterCloseDown", &TimesAreAfterCloseDown);
	list->AddBoolProperty("SetAlphaAfterStopTime", &SetAlphaAfterStopTime);
}

void AR_FadeOutOnceConditionTrue::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddFloatProperty("TimeToFadeOut", &TimeToFadeOut, 0.0f, 10.0f);
	list->AddBoolProperty("FadeAlpha", &FadeAlpha);
	list->AddBoolProperty("ShrinkScale", &ShrinkScale);
	list->AddPointerProperty("ConditionStartFadeOut", &ConditionStartFadeOut);
}

void AR_FadeAlphaWithHeightAboveLandscape::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddFloatProperty("RefHeight", &RefHeight, 0.0f, 100.0f);
	list->AddIntegerProperty("AlphaAtZero", &AlphaAtZero, 0, 255);
	list->AddIntegerProperty("AlphaAtRefHeight", &AlphaAtRefHeight, 0, 255);
}

void AR_GetColorFromParent::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
}

void AppearanceRuleTumble::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddFloatProperty("TumbleSpeed", &TumbleSpeed, 0.0f, 10.0f);
	list->AddFloatProperty("MaxTumbleSpeed", &MaxTumbleSpeed, 0.0f, 100.0f);
	list->AddBoolProperty("RestrictMaxRotation", &RestrictMaxRotation);
}

void UpdateRule::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
}

void EventAlways::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
}

void UR_UpdatePosnFromVelocity::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
}

void UR_Articulate::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("K_Spring", &K_Spring, 0.0f, 5.0f);
}

void UR_Flocking::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("K_VelocityMatching", &K_VelocityMatching, 0.0f, 5.0f);
	list->AddFloatProperty("K_CentralAttraction", &K_CentralAttraction, 0.0f, 5.0f);
	list->AddFloatProperty("K_NeighbourAvoidance", &K_NeighbourAvoidance, 0.0f, 5.0f);
	list->AddFloatProperty("K_NeighbourAccn", &K_NeighbourAccn, 0.0f, 5.0f);
	list->AddFloatProperty("K_Damping", &K_Damping, 0.0f, 5.0f);
	list->AddFloatProperty("K_FlockDamping", &K_FlockDamping, 0.0f, 5.0f);
	list->AddFloatProperty("K_IdealVel", &K_IdealVel, 0.0f, 5.0f);
	list->AddFloatProperty("F_MaxAccn", &F_MaxAccn, 0.0f, 20.0f);
	list->AddFloatProperty("F_MaxVel", &F_MaxVel, 0.0f, 100.0f);
	list->AddFloatProperty("ScaleModifier", &ScaleModifier, 0.0f, 10.0f);
	list->AddBoolProperty("NeighbourAccnInvert", &NeighbourAccnInvert);
	list->AddGetSetIntegerProperty("AxisChosen", this, &UR_Flocking::GetAccnType, &UR_Flocking::SetAccnType, 0, 2);
	list->AddGetSetIntegerProperty("NeghbourAccnType", this, &UR_Flocking::GetNeighbourAccnType,
	                               &UR_Flocking::SetNeighbourAccnType, 0, 2);
	list->AddBoolProperty("F_InvertAccn", &F_InvertAccn);
	list->AddFloatProperty("GravityForBanking", &GravityForBanking, 0.0f, 20.0f);
	list->AddFloatProperty("ReducePitchBy", &ReducePitchBy, 0.0f, 5.0f);
	list->AddBoolProperty("SpriteRotation", &SpriteRotation);
	list->AddGetSetIntegerProperty("IdealVelAccnType", this, &UR_Flocking::GetIdealVelAccnType,
	                               &UR_Flocking::SetIdealVelAccnType, 0, 2);
	list->AddBoolProperty("F_InvertAccnIdealVel", &F_InvertAccnIdealVel);
	list->AddPointerProperty("LocalScaleFP", &LocalScaleFP);
}

void UR_RingSpin::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("AngularVelocity", &AngularVelocity, 0.0f, 1.0f);
	list->AddFloatProperty("PercentToUse", &PercentToUse, 0.0f, 100.0f);
	list->AddIntegerProperty("NRevols", &NRevols, 0, 10);
}

void UpdateRuleGravity::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("MaxSpeed", &MaxSpeed, 0.0f, 20.0f);
	list->AddFloatProperty("Damping", &Damping, 0.0f, 1.0f);
	list->AddBoolProperty("UseDamping", &UseDamping);
	list->AddGetSetFloatProperty("Gravity", this, &UpdateRuleGravity::GetGravity, &UpdateRuleGravity::SetGravity, 0.0f,
	                             20.0f);
	list->AddBoolProperty("UseWind", &UseWind);
	list->AddFloatProperty("WindMagnification", &WindMagnification, 0.0f, 100.0f);
	list->AddBoolProperty("DisableDampingForNonHuman", &DisableDampingForNonHuman);
	list->AddBoolProperty("DisableWindForNonHuman", &DisableWindForNonHuman);
}

void UpdateRuleGravityWithFloor::DefineProperties(PropertyList* list)
{
	UpdateRuleGravity::DefineProperties(list);
	list->AddFloatProperty("DampingHorozontalBounce", &DampingHorozontalBounce, 0.0f, 1.0f);
	list->AddFloatProperty("DampingVerticalBounce", &DampingVerticalBounce, 0.0f, 1.0f);
	list->AddFloatProperty("GroundDrag", &GroundDrag, 0.0f, 10.0f);
	list->AddFloatProperty("ImpactSpeedSmall", &ImpactSpeedSmall, 0.0f, 10.0f);
	list->AddFloatProperty("ImpactSpeedMedium", &ImpactSpeedMedium, 0.0f, 30.0f);
	list->AddFloatProperty("ImpactSpeedLarge", &ImpactSpeedLarge, 0.0f, 60.0f);
	list->AddSoundActionProperty("ImpactSound", &ImpactSound);
	list->AddPointerProperty("ImpactSoundCondition", &ImpactSoundCondition);
	list->AddBoolProperty("UseSurfaceForBounce", &UseSurfaceForBounce);
	list->AddBoolProperty("CheckShieldDeflections", &CheckShieldDeflections);
	list->AddIntegerProperty("MinAlphaForImpactSoundOrRipple", &MinAlphaForImpactSoundOrRipple, 0, 255);
}

void UR_OrientWithVelocity::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddIntegerProperty("AlignAxis", &AlignAxis, 0, 2);
	list->AddFloatProperty("SpinSpeed", &SpinSpeed, 0.0f, 2.0f);
	list->AddFloatProperty("SmoothFactor", &SmoothFactor, 0.0f, 1.0f);
	list->AddFloatProperty("ProportionDefault", &ProportionDefault, 0.0f, 1.0f);
}

void UR_OrientSpriteWithVelocity::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("SmoothFactor", &SmoothFactor, 0.0f, 1.0f);
	list->AddFloatProperty("ProportionDefault", &ProportionDefault, 0.0f, 1.0f);
}

void UR_OrientSpriteWithRandomAngle::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("RandomAngle", &RandomAngle, 0.0f, 3.1415927f);
	list->AddFloatProperty("DefaultAngle", &DefaultAngle, -3.1415927f, 3.1415927f);
}

void UR_GustyWind::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("NoiseFreq", &NoiseFreq, 0.0f, 10.0f);
	list->AddFloatProperty("WindSpeed", &WindSpeed, 0.0f, 10.0f);
	list->AddFloatProperty("Damping", &Damping, 0.0f, 10.0f);
	list->AddBoolProperty("SimWind", &SimWind);
}

void SetInitialRandomOrientations::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
}

void ForceLandscapeHeight::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
}

void UpdateRuleRotatePrincipalAxis::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("AngularVel", &AngularVel, 0.0f, 10.0f);
	list->AddGetSetIntegerProperty("AxisChosen", this, &UpdateRuleRotatePrincipalAxis::GetAxis,
	                               &UpdateRuleRotatePrincipalAxis::SetAxis, 0, 2);
}

void FollowOrigin::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
}

void SetScale::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddPointerProperty("Scale", &Scale);
}

void SetCollectionAlpha::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddPointerProperty("Alpha", &Alpha);
}

void SetAtomAlpha::DefineProperties(PropertyList* list)
{
	AppearanceUpdateRule::DefineProperties(list);
	list->AddPointerProperty("Alpha", &Alpha);
}

void SetPSysCloseDown::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
}

void SetAtomHasBeenDeflected::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
}

void ForceConstantAltitude::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("Altitude", &Altitude, 0.0f, 200.0f);
}

void ForceConstantHeight::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("Height", &Height, 0.0f, 200.0f);
}

void ForceMinimumHeight::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("MinHeight", &MinHeight, 0.0f, 200.0f);
}

void UR_CloudMoverNew::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("WindDamping", &WindDamping, 0.0f, 1.0f);
	list->AddFloatProperty("WindMagnification", &WindMagnification, 0.0f, 250.0f);
	list->AddFloatProperty("DelayBeforeMove", &DelayBeforeMove, 0.0f, 10.0f);
}

void UR_CloudGather::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("WindMaxSpeed", &WindMaxSpeed, 0.0f, 250.0f);
	list->AddFloatProperty("WindMinSpeed", &WindMinSpeed, 0.0f, 250.0f);
	list->AddFloatProperty("MagnitudeForWindMaxSpeed", &MagnitudeForWindMaxSpeed, 0.0f, 250.0f);
	list->AddFloatProperty("MagnitudeForWindMinSpeed", &MagnitudeForWindMinSpeed, 0.0f, 250.0f);
	list->AddFloatProperty("MaxRadius", &MaxRadius, 0.0f, 250.0f);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 1, 25);
	list->AddFloatProperty("TimeToForm", &TimeToForm, 5.0f, 25.0f);
	list->AddFloatProperty("MaxAngularSpeed", &MaxAngularSpeed, 0.0f, 1.0f);
	list->AddFloatProperty("FracToMaxSize", &FracToMaxSize, 0.0f, 1.0f);
	list->AddIntegerProperty("MaxColor", &MaxColor, 0, 255);
	list->AddIntegerProperty("MinColor", &MinColor, 0, 255);
	list->AddPointerProperty("RadiusFloatProvider", &RadiusFloatProvider);
	list->AddPointerProperty("ScaleFloatProvider", &ScaleFloatProvider);
	list->AddPointerProperty("CloudHeight", &CloudHeight);
	list->AddFloatProperty("MinScaleFactor", &MinScaleFactor, 0.0f, 1.0f);
	list->AddFloatProperty("MaxScaleFactor", &MaxScaleFactor, 0.0f, 1.0f);
	list->AddIntegerProperty("MinAlpha", &MinAlpha, 0, 255);
	list->AddIntegerProperty("MaxAlpha", &MaxAlpha, 0, 255);
	list->AddFloatProperty("SpecLife", &SpecLife, 0.0f, 1.0f);
	list->AddIntegerProperty("LightningGroup", &LightningGroup, -1, 24);
	list->AddIntegerProperty("TornadoGroup", &TornadoGroup, -1, 24);
	list->AddFloatProperty("LightningLife", &LightningLife, 0.0f, 1.0f);
	list->AddFloatProperty("LightningDelay", &LightningDelay, 0.0f, 10.0f);
	list->AddFloatProperty("SwitchLife", &SwitchLife, 0.0f, 1.0f);
	list->AddBoolProperty("CreateAllAtOnce", &CreateAllAtOnce);
	list->AddFloatProperty("HeightVaryAmount", &HeightVaryAmount, 0.0f, 10.0f);
	list->AddFloatProperty("CloudRatioMaxCollection", &CloudRatioMaxCollection, 0.0f, 10.0f);
	list->AddFloatProperty("CollectionRadiusInitialScale", &CollectionRadiusInitialScale, 0.0f, 10.0f);
	list->AddFloatProperty("MaxCloudRatio", &MaxCloudRatio, 0.0f, 10.0f);
	list->AddFloatProperty("MinCloudRatio", &MinCloudRatio, 0.0f, 10.0f);
	list->AddSoundActionProperty("SoundLightning", &SoundLightning);
	list->AddFloatProperty("MaxRadiusSmallSound", &MaxRadiusSmallSound, 10.0f, 100.0f);
	list->AddFloatProperty("MaxRadiusMediumSound", &MaxRadiusMediumSound, 10.0f, 100.0f);
}

void UR_VortexAttract::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("RadialSpeed", &RadialSpeed, 0.0f, 25.0f);
	list->AddFloatProperty("ThetaSpeed", &ThetaSpeed, 0.0f, 25.0f);
	list->AddFloatProperty("DeletionRadius", &DeletionRadius, 0.0f, 25.0f);
	list->AddFloatProperty("BlendTime", &BlendTime, 0.0f, 25.0f);
	list->AddFloatProperty("BlendTimeVel", &BlendTimeVel, 0.0f, 25.0f);
	list->AddFloatProperty("MinRadius", &MinRadius, 0.0f, 25.0f);
	list->AddFloatProperty("YParam_YOffset", &YParam_YOffset, 0.0f, 25.0f);
	list->AddFloatProperty("YParam_RZeroHeight", &YParam_RZeroHeight, 0.0f, 25.0f);
}

void UR_StormCast::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 10, 50);
	list->AddFloatProperty("ThetaDotMaxRadius", &ThetaDotMaxRadius, 0.0f, 10.0f);
	list->AddFloatProperty("ThetaDotMinRadius", &ThetaDotMinRadius, 0.0f, 10.0f);
	list->AddFloatProperty("MaxRadius", &MaxRadius, 0.0f, 10.0f);
	list->AddFloatProperty("MinRadius", &MinRadius, 0.0f, 10.0f);
	list->AddFloatProperty("RadiusDot", &RadiusDot, 0.0f, 10.0f);
	list->AddFloatProperty("InitHeight", &InitHeight, 0.0f, 10.0f);
	list->AddFloatProperty("ThetaDotSpread", &ThetaDotSpread, 0.0f, 1.0f);
	list->AddFloatProperty("InitScaleSpread", &InitScaleSpread, 0.0f, 1.0f);
	list->AddFloatProperty("InitRadiusSpread", &InitRadiusSpread, 0.0f, 1.0f);
	list->AddFloatProperty("DispersalAge", &DispersalAge, 0.0f, 10.0f);
	list->AddFloatProperty("AccnStartTime", &AccnStartTime, 0.0f, 10.0f);
	list->AddFloatProperty("AccnEndTime", &AccnEndTime, 0.0f, 10.0f);
	list->AddFloatProperty("FadeOutTime", &FadeOutTime, 0.0f, 10.0f);
	list->AddFloatProperty("MaxSpeed", &MaxSpeed, 0.0f, 50.0f);
}

void UR_Tornado::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("TopHeight", &TopHeight, 0.0f, 250.0f);
	list->AddIntegerProperty("WiggleCount", &WiggleCount, 1, 25);
	list->AddFloatProperty("WiggleAmplitude", &WiggleAmplitude, 0.0f, 25.0f);
	list->AddFloatProperty("BaseRadius", &BaseRadius, 0.0f, 10.0f);
	list->AddFloatProperty("FadeOutTime", &FadeOutTime, 0.0f, 20.0f);
	list->AddFloatProperty("FadeInTime", &FadeInTime, 0.0f, 20.0f);
	list->AddFloatProperty("TopRadius", &TopRadius, 0.0f, 100.0f);
	list->AddFloatProperty("BaseScale", &BaseScale, 0.0f, 5.0f);
	list->AddFloatProperty("TopScale", &TopScale, 0.0f, 10.0f);
	list->AddFloatProperty("BaseThetaDot", &BaseThetaDot, 0.0f, 10.0f);
	list->AddFloatProperty("TopThetaDot", &TopThetaDot, 0.0f, 10.0f);
	list->AddFloatProperty("ThetaBias", &ThetaBias, 0.0f, 1.0f);
	list->AddFloatProperty("FunnelBendParameter", &FunnelBendParameter, 0.0f, 1.0f);
	list->AddFloatProperty("MaxSearchDistance", &MaxSearchDistance, 0.0f, 100.0f);
	list->AddFloatProperty("MaxSearchDistanceWhenNoTargets", &MaxSearchDistanceWhenNoTargets, 0.0f, 100.0f);
	list->AddFloatProperty("LocalSearchDistance", &LocalSearchDistance, 0.0f, 100.0f);
	list->AddFloatProperty("PauseBeforeAffectsGameObjects", &PauseBeforeAffectsGameObjects, 0.0f, 10.0f);
	list->AddBoolProperty("UseTornadoStrength", &UseTornadoStrength);
	list->AddIntegerProperty("NumAtomsToCreate", &NumAtomsToCreate, 10, 200);
	list->AddIntegerProperty("GroupToMoveToOnceDone", &GroupToMoveToOnceDone, -1, 24);
	list->AddIntegerProperty("GroupToMoveToOnCloseDown", &GroupToMoveToOnCloseDown, -1, 24);
	list->AddIntegerProperty("GroupMesh", &GroupMesh, -1, 24);
	list->AddIntegerProperty("GroupDebris", &GroupDebris, -1, 24);
	list->AddIntegerProperty("GroupFlying", &GroupFlying, -1, 24);
	list->AddFloatProperty("K1_Accn", &K1_Accn, 0.0f, 1.0f);
	list->AddBoolProperty("ShowVelocityField", &ShowVelocityField);
	list->AddFloatProperty("ScaleWhipUp", &ScaleWhipUp, 0.0f, 1.0f);
	list->AddFloatProperty("TopMoveFreq", &TopMoveFreq, 0.0f, 2.0f);
	list->AddFloatProperty("TopMoveAmp", &TopMoveAmp, 0.0f, 50.0f);
	list->AddPointerProperty("TornadoScaleFloatProvider", &TornadoScaleFloatProvider);
	list->AddFloatProperty("DebrisSpeed", &DebrisSpeed, 0.0f, 50.0f);
	list->AddFloatProperty("DebrisEmitRate", &DebrisEmitRate, 0.0f, 15.0f);
	list->AddFloatProperty("DebrisSpreadAngle", &DebrisSpreadAngle, 0.0f, 1.5707964f);
	list->AddFloatProperty("DebrisRadius", &DebrisRadius, 0.0f, 50.0f);
	list->AddFloatProperty("DebrisHeight", &DebrisHeight, 0.0f, 50.0f);
	list->AddFloatProperty("PretendSpeed", &PretendSpeed, 0.0f, 50.0f);
	list->AddFloatProperty("PretendEmitRate", &PretendEmitRate, 0.0f, 15.0f);
	list->AddFloatProperty("PretendSpreadAngle", &PretendSpreadAngle, 0.0f, 1.5707964f);
	list->AddFloatProperty("PretendRadius", &PretendRadius, 0.0f, 50.0f);
	list->AddFloatProperty("PretendHeight", &PretendHeight, 0.0f, 50.0f);
	list->AddFloatProperty("PretendGravity", &PretendGravity, 0.0f, 10.0f);
	list->AddFloatProperty("PretendBlendTime", &PretendBlendTime, 0.0f, 10.0f);
	list->AddFloatProperty("DelayBeforeMove", &DelayBeforeMove, 0.0f, 50.0f);
	list->AddFloatProperty("Damping", &Damping, 0.0f, 1.0f);
	list->AddPointerProperty("SpriteCreator", &SpriteCreator);
	list->AddPointerProperty("DebrisSpriteCreator", &DebrisSpriteCreator);
	list->AddPointerProperty("PretendObjectCreatorSmall", &PretendObjectCreatorSmall);
	list->AddPointerProperty("PretendObjectCreatorMedium", &PretendObjectCreatorMedium);
	list->AddPointerProperty("PretendObjectCreatorLarge", &PretendObjectCreatorLarge);
	list->AddFloatProperty("MeshThetaDot", &MeshThetaDot, 0.0f, 10.0f);
	list->AddSoundActionProperty("SoundTornado", &SoundTornado);
	list->AddFloatProperty("ResourceAmountRemoveMin", &ResourceAmountRemoveMin, 0.0f, 100.0f);
	list->AddFloatProperty("ResourceAmountRemoveMax", &ResourceAmountRemoveMax, 0.0f, 200.0f);
}

void UR_ChangeScale::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
	list->AddFloatProperty("StartScale", &StartScale, 0.0f, 10.0f);
	list->AddFloatProperty("StopScale", &StopScale, 0.0f, 10.0f);
}

void UR_ChangeScaleXYZ::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
	list->AddFloatProperty("StartScaleXZ", &StartScaleXZ, 0.0f, 10.0f);
	list->AddFloatProperty("StopScaleXZ", &StopScaleXZ, 0.0f, 10.0f);
	list->AddFloatProperty("StartScaleY", &StartScaleY, 0.0f, 10.0f);
	list->AddFloatProperty("StopScaleY", &StopScaleY, 0.0f, 10.0f);
}

void UR_ChangeStretchHeight::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
	list->AddFloatProperty("StartStretch", &StartStretch, 0.0f, 10.0f);
	list->AddFloatProperty("StopStretch", &StopStretch, 0.0f, 10.0f);
}

void UR_KPStretchHeight::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
	list->AddFloatArrayProperty("KeyPoints", this, &UR_KPStretchHeight::KeyPointsGetArray,
	                            &UR_KPStretchHeight::KeyPointsSetArray);
}

void UR_KPStretchHeight::KeyPointsGetArray(GJArray<float>* array)
{
	array->SetSize(KeyPoints.Elements.GetSize() * 2);
	for (long i = 0; i < KeyPoints.Elements.GetSize(); i++)
	{
		(*array)[i * 2] = KeyPoints.Elements[i].T;
		(*array)[i * 2 + 1] = KeyPoints.Elements[i].Value;
	}
}

void UR_KPStretchHeight::KeyPointsSetArray(const GJArray<float>& array)
{
	KeyPoints.SetFromArray(array);
}

void UR_MoveAtom::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
	list->AddBoolProperty("MoveSmoothly", &MoveSmoothly);
	list->AddGetSetFloatProperty("StartX", this, &UR_MoveAtom::GetStartX, &UR_MoveAtom::SetStartX, 0.0f, 20.0f);
	list->AddGetSetFloatProperty("StartY", this, &UR_MoveAtom::GetStartY, &UR_MoveAtom::SetStartY, 0.0f, 20.0f);
	list->AddGetSetFloatProperty("StartZ", this, &UR_MoveAtom::GetStartZ, &UR_MoveAtom::SetStartZ, 0.0f, 20.0f);
	list->AddGetSetFloatProperty("StopX", this, &UR_MoveAtom::GetStopX, &UR_MoveAtom::SetStopX, 0.0f, 20.0f);
	list->AddGetSetFloatProperty("StopY", this, &UR_MoveAtom::GetStopY, &UR_MoveAtom::SetStopY, 0.0f, 20.0f);
	list->AddGetSetFloatProperty("StopZ", this, &UR_MoveAtom::GetStopZ, &UR_MoveAtom::SetStopZ, 0.0f, 20.0f);
}

void UR_KPMoveAtoms::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
	list->AddBoolProperty("MovePropAtomIndex", &MovePropAtomIndex);
	list->AddFloatArrayProperty("KeyPointsY", this, &UR_KPMoveAtoms::KeyPointsYGetArray,
	                            &UR_KPMoveAtoms::KeyPointsYSetArray);
}

void UR_KPMoveAtoms::KeyPointsYGetArray(GJArray<float>* array)
{
	array->SetSize(KeyPointsY.Elements.GetSize() * 2);
	for (long i = 0; i < KeyPointsY.Elements.GetSize(); i++)
	{
		(*array)[i * 2] = KeyPointsY.Elements[i].T;
		(*array)[i * 2 + 1] = KeyPointsY.Elements[i].Value;
	}
}

void UR_KPMoveAtoms::KeyPointsYSetArray(const GJArray<float>& array)
{
	KeyPointsY.SetFromArray(array);
}

void UR_AddDefensiveSphere::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddPointerProperty("SphereRadius", &SphereRadius);
	list->AddBoolProperty("IsMagical", &IsMagical);
}

void UpdateRuleShieldSpark::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddPointerProperty("SphereRadius", &SphereRadius);
	list->AddFloatProperty("SparkLife", &SparkLife, 0.0f, 5.0f);
	list->AddFloatProperty("WiggleAmpl", &WiggleAmpl, 0.0f, 1.0f);
	list->AddIntegerProperty("MaxNumAtomsForCollection", &MaxNumAtomsForCollection, -1, 10);
	list->AddSoundActionProperty("SoundSpark", &SoundSpark);
}

void UR_HealInHand::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("WiggleFreq", &WiggleFreq, 0.0f, 5.0f);
}

void UR_SphereSurfaceTracer::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("ThetaSpeed", &ThetaSpeed, -5.0f, 5.0f);
	list->AddFloatProperty("PhiSpeed", &PhiSpeed, -5.0f, 5.0f);
	list->AddFloatProperty("SphereRadius", &SphereRadius, 5.0f, 50.0f);
	list->AddPointerProperty("ScaleSphereRadius", &ScaleSphereRadius);
	list->AddPointerProperty("ScaleAlpha", &ScaleAlpha);
	list->AddIntegerProperty("Alpha", &Alpha, 0, 255);
	list->AddFloatProperty("ScaleX", &ScaleX, 0.0f, 10.0f);
	list->AddFloatProperty("ScaleY", &ScaleY, 0.0f, 10.0f);
	list->AddFloatProperty("ScaleZ", &ScaleZ, 0.0f, 10.0f);
	list->AddBoolProperty("OrientToSurface", &OrientToSurface);
}

void UR_ForestPath::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("ThetaSpeed", &ThetaSpeed, -5.0f, 5.0f);
	list->AddFloatProperty("PhiSpeed", &PhiSpeed, -5.0f, 5.0f);
	list->AddFloatProperty("SphereRadius", &SphereRadius, 5.0f, 50.0f);
	list->AddPointerProperty("ScaleSphereRadius", &ScaleSphereRadius);
	list->AddFloatProperty("ScaleX", &ScaleX, 0.0f, 10.0f);
	list->AddFloatProperty("ScaleY", &ScaleY, 0.0f, 10.0f);
	list->AddFloatProperty("ScaleZ", &ScaleZ, 0.0f, 10.0f);
	list->AddFloatArrayProperty("RadiusSpline", this, &UR_ForestPath::RadiusSplineGetArray,
	                            &UR_ForestPath::RadiusSplineSetArray);
	list->AddFloatArrayProperty("HeightSpline", this, &UR_ForestPath::HeightSplineGetArray,
	                            &UR_ForestPath::HeightSplineSetArray);
}

void UR_ForestPath::RadiusSplineGetArray(GJArray<float>* array)
{
	array->SetSize(RadiusSpline.Elements.GetSize() * 2);
	for (long i = 0; i < RadiusSpline.Elements.GetSize(); i++)
	{
		(*array)[i * 2] = RadiusSpline.Elements[i].T;
		(*array)[i * 2 + 1] = RadiusSpline.Elements[i].Value;
	}
}

void UR_ForestPath::RadiusSplineSetArray(const GJArray<float>& array)
{
	RadiusSpline.SetFromArray(array);
}

void UR_ForestPath::HeightSplineGetArray(GJArray<float>* array)
{
	array->SetSize(HeightSpline.Elements.GetSize() * 2);
	for (long i = 0; i < HeightSpline.Elements.GetSize(); i++)
	{
		(*array)[i * 2] = HeightSpline.Elements[i].T;
		(*array)[i * 2 + 1] = HeightSpline.Elements[i].Value;
	}
}

void UR_ForestPath::HeightSplineSetArray(const GJArray<float>& array)
{
	HeightSpline.SetFromArray(array);
}

void UR_VapourEndEffect::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddPointerProperty("ScaleFactor", &ScaleFactor);
}

void CheckShieldDeflections::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddIntegerProperty("GroupToMoveToIfDeflected", &GroupToMoveToIfDeflected, -1, 24);
	list->AddBoolProperty("CloseDownSpellIfDeflected", &CloseDownSpellIfDeflected);
	list->AddBoolProperty("SetDeflectedWhenDeflected", &SetDeflectedWhenDeflected);
	list->AddBoolProperty("CheckMovementOnly", &CheckMovementOnly);
}

void AddSubCollectionsToAtom::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
	list->AddIntegerArrayProperty("NextGroups", this, &AddSubCollectionsToAtom::NextGroupsGetSize,
	                              &AddSubCollectionsToAtom::NextGroupsSetSize, &AddSubCollectionsToAtom::NextGroupsGet,
	                              &AddSubCollectionsToAtom::NextGroupsSet, -1, 24);
}

void AtomCreateRule::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
	list->AddPointerProperty("PCreator", &PCreator);
	list->AddIntegerArrayProperty("NextGroups", this, &AtomCreateRule::NextGroupsGetSize,
	                              &AtomCreateRule::NextGroupsSetSize, &AtomCreateRule::NextGroupsGet,
	                              &AtomCreateRule::NextGroupsSet, -1, 24);
}

void EmitterRule::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("EmissionFreq", &EmissionFreq, 0.0f, 10.0f);
	list->AddIntegerProperty("MaxAtoms", &MaxAtoms, 0, 500);
	list->AddIntegerProperty("MaxTotalAtomsToEmit", &MaxTotalAtomsToEmit, 0, 500);
	list->AddBoolProperty("InitiallyVisible", &InitiallyVisible);
	list->AddBoolProperty("Randomise", &Randomise);
	list->AddBoolProperty("AllowMultipleEmits", &AllowMultipleEmits);
	list->AddSoundActionProperty("SoundEmission", &SoundEmission);
}

void EmitterRuleSimple::DefineProperties(PropertyList* list)
{
	EmitterRule::DefineProperties(list);
	list->AddFloatProperty("Speed", &Speed, 0.0f, 10.0f);
	list->AddBoolProperty("OrientWithParent", &OrientWithParent);
}

void EmitterRuleLightningSprite::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("SpecLife", &SpecLife, 0.0f, 1.0f);
	list->AddFloatProperty("EmissionFreq", &EmissionFreq, 0.0f, 10.0f);
	list->AddIntegerProperty("MaxAtoms", &MaxAtoms, 0, 500);
	list->AddIntegerProperty("MaxTotalAtomsToEmit", &MaxTotalAtomsToEmit, 0, 500);
	list->AddBoolProperty("Randomise", &Randomise);
}

void DiskEmitter::DefineProperties(PropertyList* list)
{
	EmitterRule::DefineProperties(list);
	list->AddFloatProperty("Radius", &Radius, 0.0f, 100.0f);
	list->AddFloatProperty("Height", &Height, 0.0f, 100.0f);
}

void SpreadingDiskEmitter::DefineProperties(PropertyList* list)
{
	EmitterRule::DefineProperties(list);
	list->AddFloatProperty("StartRadius", &StartRadius, 0.0f, 50.0f);
	list->AddFloatProperty("StopRadius", &StopRadius, 0.0f, 50.0f);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 20.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 20.0f);
	list->AddFloatProperty("Height", &Height, 0.0f, 100.0f);
}

void EmitterRuleConical::DefineProperties(PropertyList* list)
{
	EmitterRule::DefineProperties(list);
	list->AddFloatProperty("Speed", &Speed, 0.0f, 10.0f);
	list->AddFloatProperty("Spread", &Spread, 0.0f, 1.5707964f);
	list->AddFloatProperty("Radius", &Radius, 0.0f, 20.0f);
}

void ER_EmitFromParentAtom::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("MaxAtoms", &MaxAtoms, 0, 100);
	list->AddIntegerProperty("MaxAlpha", &MaxAlpha, 0, 255);
	list->AddFloatProperty("PulseMagnitude", &PulseMagnitude, 0.0f, 1.0f);
	list->AddFloatProperty("PulseSpeed", &PulseSpeed, 0.0f, 1.0f);
	list->AddFloatProperty("AtomAgeMaxSize", &AtomAgeMaxSize, 0.0f, 5.0f);
	list->AddFloatProperty("AtomAgeZeroSize", &AtomAgeZeroSize, 0.0f, 5.0f);
	list->AddPointerProperty("EmitConditionOfParent", &EmitConditionOfParent);
	list->AddBoolProperty("DoScaling", &DoScaling);
	list->AddBoolProperty("DeleteAtoms", &DeleteAtoms);
	list->AddBoolProperty("EmitOnlyAboveLandscape", &EmitOnlyAboveLandscape);
}

void UR_AtomsAtEPTarget::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("NumExtraPoints", &NumExtraPoints, 0, 10);
}

void UR_WillowWisp::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddBoolProperty("AddCastVelToInitPos", &AddCastVelToInitPos);
	list->AddBoolProperty("DoDrawOffsets", &DoDrawOffsets);
	list->AddFloatProperty("Speed", &Speed, 0.0f, 10.0f);
	list->AddFloatProperty("MaxSpeed", &MaxSpeed, 0.0f, 100.0f);
	list->AddFloatProperty("RandomSpeed", &RandomSpeed, 0.0f, 10.0f);
	list->AddFloatProperty("SmoothingValue", &SmoothingValue, 0.0f, 1.0f);
	list->AddFloatProperty("AccelerationForCast", &AccelerationForCast, 0.0f, 10.0f);
	list->AddBoolProperty("RandomiseInitOrientation", &RandomiseInitOrientation);
	list->AddIntegerProperty("MaxAtoms", &MaxAtoms, 0, 200);
	list->AddFloatProperty("DieAge", &DieAge, 0.0f, 10.0f);
	list->AddBoolProperty("InitiallyVisible", &InitiallyVisible);
	list->AddBoolProperty("DrawOnFirstUpdate", &DrawOnFirstUpdate);
	list->AddSoundActionProperty("SoundEmission", &SoundEmission);
	list->AddPointerProperty("EmitConditionOfParent", &EmitConditionOfParent);
	list->AddPointerProperty("AdjustInitialScale", &AdjustInitialScale);
	list->AddPointerProperty("AdjustInitialRandomVel", &AdjustInitialRandomVel);
	list->AddFloatProperty("EmitDueToMovingMaxRate", &EmitDueToMovingMaxRate, 0.0f, 10.0f);
	list->AddFloatProperty("EmitDueToMovingDist", &EmitDueToMovingDist, 0.0f, 10.0f);
	list->AddBoolProperty("EmitDueToMoving", &EmitDueToMoving);
	list->AddFloatProperty("RandomRadiusMin", &RandomRadiusMin, 0.0f, 10.0f);
	list->AddFloatProperty("RandomRadiusMax", &RandomRadiusMax, 0.0f, 10.0f);
	list->AddBoolProperty("UseParentScale", &UseParentScale);
	list->AddBoolProperty("DeleteAtomsAtDieAge", &DeleteAtomsAtDieAge);
}

void ZR_ChainGesture::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddBoolProperty("PredictNextPosition", &PredictNextPosition);
	list->AddFloatProperty("DieAge", &DieAge, 0.0f, 10.0f);
	list->AddFloatProperty("MinEmitDist", &MinEmitDist, 0.0f, 100.0f);
	list->AddBoolProperty("DrawOnFirstUpdate", &DrawOnFirstUpdate);
	list->AddPointerProperty("AdjustInitialScale", &AdjustInitialScale);
	list->AddBoolProperty("InTestMode", &InTestMode);
}

void UR_LightSheetOnObject::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("DefaultRadius", &DefaultRadius, 0.0f, 100.0f);
	list->AddPointerProperty("RadiusFP", &RadiusFP);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 1, 10);
}

void UR_VolFXOnObject::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("MatInd", &MatInd, 0, 6);
	list->AddFloatProperty("AnimSpeedU", &AnimSpeedU, -2.0f, 2.0f);
	list->AddFloatProperty("AnimSpeedV", &AnimSpeedV, -2.0f, 2.0f);
	list->AddFloatProperty("ZoomProportionMin", &ZoomProportionMin, 0.0f, 10.0f);
	list->AddFloatProperty("ZoomProportionMax", &ZoomProportionMax, 0.0f, 10.0f);
	list->AddFloatProperty("TextFracU", &TextFracU, 0.01f, 1.0f);
	list->AddFloatProperty("TextFracV", &TextFracV, 0.01f, 1.0f);
	list->AddIntegerProperty("Alpha", &Alpha, 0, 255);
	list->AddBoolProperty("UsePlayerColor", &UsePlayerColor);
	list->AddBoolProperty("SetAlphaFromStrength", &SetAlphaFromStrength);
}

void UR_GesturingRecognised::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("SparkleGroup", &SparkleGroup, -1, 24);
	list->AddFloatProperty("LightSheetHeightScale", &LightSheetHeightScale, 0.0f, 10.0f);
	list->AddFloatProperty("TimeToIdeal", &TimeToIdeal, 0.0f, 10.0f);
	list->AddFloatProperty("HeightOffset", &HeightOffset, 0.0f, 10.0f);
	list->AddFloatProperty("InterpGain", &InterpGain, 0.0f, 1.0f);
	list->AddFloatProperty("DieAge", &DieAge, 0.0f, 5.0f);
	list->AddFloatProperty("LightSheetDieAge", &LightSheetDieAge, 0.0f, 5.0f);
	list->AddBoolProperty("GoToIdeal", &GoToIdeal);
	list->AddBoolProperty("DoTransition", &DoTransition);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 10, 100);
	list->AddPointerProperty("SpriteCreator", &SpriteCreator);
	list->AddFloatProperty("MaxAlpha", &MaxAlpha, 0.0f, 255.0f);
	list->AddFloatProperty("WiggleFreq", &WiggleFreq, 0.0f, 1.0f);
	list->AddFloatProperty("WiggleMag", &WiggleMag, 0.0f, 1.0f);
	list->AddFloatProperty("WiggleMagY", &WiggleMagY, 0.0f, 1.0f);
	list->AddFloatProperty("WiggleSpeed", &WiggleSpeed, 0.0f, 1.0f);
	list->AddFloatProperty("WigglePhaseSpeed", &WigglePhaseSpeed, 0.0f, 1.0f);
	list->AddFloatProperty("DispersalTime", &DispersalTime, 0.0f, 5.0f);
	list->AddFloatProperty("ExplodeFactor", &ExplodeFactor, 0.0f, 5.0f);
	list->AddFloatProperty("ExplodePause", &ExplodePause, 0.0f, 5.0f);
	list->AddIntegerProperty("CollectionAlphaPulse", &CollectionAlphaPulse, 0, 255);
	list->AddIntegerProperty("CollectionAlphaInit", &CollectionAlphaInit, 0, 255);
	list->AddFloatProperty("ShrinkTimeAfterDispersal", &ShrinkTimeAfterDispersal, 0.0f, 5.0f);
	list->AddFloatProperty("HandPulseDuration", &HandPulseDuration, 0.0f, 5.0f);
}

void ER_BurstFromParentAtom::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("MaxAtoms", &MaxAtoms, 0, 100);
	list->AddIntegerProperty("MaxAlpha", &MaxAlpha, 0, 255);
	list->AddFloatProperty("PulseMagnitude", &PulseMagnitude, 0.0f, 1.0f);
	list->AddFloatProperty("PulseSpeed", &PulseSpeed, 0.0f, 1.0f);
	list->AddFloatProperty("AtomAgeMaxSize", &AtomAgeMaxSize, 0.0f, 5.0f);
	list->AddFloatProperty("AtomAgeZeroSize", &AtomAgeZeroSize, 0.0f, 5.0f);
}

void ER_GlintsOnTarget::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("MaxAtoms", &MaxAtoms, 0, 100);
	list->AddIntegerProperty("MaxAlpha", &MaxAlpha, 0, 255);
	list->AddFloatProperty("PulseMagnitude", &PulseMagnitude, 0.0f, 1.0f);
	list->AddFloatProperty("PulseSpeed", &PulseSpeed, 0.0f, 1.0f);
	list->AddFloatProperty("AtomAgeMaxSize", &AtomAgeMaxSize, 0.0f, 5.0f);
	list->AddFloatProperty("AtomAgeZeroSize", &AtomAgeZeroSize, 0.0f, 5.0f);
	list->AddIntegerProperty("GlintGroup", &GlintGroup, -1, 24);
	list->AddPointerProperty("GlintCreator", &GlintCreator);
}

void ER_MultiPickup::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("EmitRate", &EmitRate, 0.0f, 10.0f);
	list->AddFloatProperty("RaiseTime", &RaiseTime, 0.0f, 10.0f);
	list->AddBoolProperty("RandomiseOrientations", &RandomiseOrientations);
	list->AddFloatProperty("DefaultOrientation", &DefaultOrientation, -3.1415927f, 3.1415927f);
}

void OnceOnlyCreateRule::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
}

void CreateRuleMakeChain::DefineProperties(PropertyList* list)
{
	OnceOnlyCreateRule::DefineProperties(list);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 0, 20);
}

void UR_Explosion::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("InitialDelay", &InitialDelay, 0.0f, 20.0f);
	list->AddFloatProperty("BeamDelay", &BeamDelay, 0.0f, 20.0f);
	list->AddFloatProperty("SmokeDelay", &SmokeDelay, 0.0f, 20.0f);
	list->AddFloatProperty("BlastSpeed", &BlastSpeed, 0.0f, 200.0f);
	list->AddFloatProperty("SpreadSpeed", &SpreadSpeed, 0.0f, 200.0f);
	list->AddFloatProperty("MaxDistance", &MaxDistance, 0.0f, 200.0f);
	list->AddFloatProperty("TimeToDoEventsFor", &TimeToDoEventsFor, 0.0f, 20.0f);
	list->AddIntegerProperty("MaxObjectsToDelete", &MaxObjectsToDelete, 0, 50);
	list->AddIntegerProperty("MaxObjectsToExplode", &MaxObjectsToExplode, 0, 50);
}

void UR_ExplodeObject::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("RandomFactor", &RandomFactor, 0.0f, 200.0f);
	list->AddIntegerProperty("MaxTrigsPerFrag", &MaxTrigsPerFrag, 0, 50);
}

void UR_ExplodeObject2::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("RandomFactor", &RandomFactor, 0.0f, 200.0f);
	list->AddIntegerProperty("MaxDepth", &MaxDepth, 0, 5);
}

void CreateRuleSphere::DefineProperties(PropertyList* list)
{
	OnceOnlyCreateRule::DefineProperties(list);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 0, 20);
	list->AddFloatProperty("Radius", &Radius, 0.0f, 20.0f);
	list->AddSoundActionProperty("SoundOfCreate", &SoundOfCreate);
	list->AddBoolProperty("SetInitFrameFromIndex", &SetInitFrameFromIndex);
	list->AddPointerProperty("InitScaleFP", &InitScaleFP);
	list->AddPointerProperty("RadiusScaleFP", &RadiusScaleFP);
}

void CreateRuleAnAtom::DefineProperties(PropertyList* list)
{
	OnceOnlyCreateRule::DefineProperties(list);
	list->AddFloatProperty("OffsetX", &OffsetX, -50.0f, 50.0f);
	list->AddFloatProperty("OffsetY", &OffsetY, -50.0f, 50.0f);
	list->AddFloatProperty("OffsetZ", &OffsetZ, -50.0f, 50.0f);
	list->AddSoundActionProperty("SoundOfCreate", &SoundOfCreate);
	list->AddPointerProperty("SoundRadiusFP", &SoundRadiusFP);
	list->AddFloatProperty("SoundRadiusSmall", &SoundRadiusSmall, 0.0f, 1000.0f);
	list->AddFloatProperty("SoundRadiusMedium", &SoundRadiusMedium, 0.0f, 1000.0f);
	list->AddFloatProperty("SoundRadiusLarge", &SoundRadiusLarge, 0.0f, 1000.0f);
	list->AddPointerProperty("InitScaleFP", &InitScaleFP);
}

void CreateNewBaseAtom::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("BaseGroup", &BaseGroup, -1, 24);
	list->AddSoundActionProperty("SoundCreation", &SoundCreation);
}

void UR_MoveAtomToBaseGroup::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddIntegerProperty("GroupToMoveTo", &GroupToMoveTo, -1, 24);
}

void AttatchFireBallToAtom::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
}

void CreateWithInitialDirection::DefineProperties(PropertyList* list)
{
	OnceOnlyCreateRule::DefineProperties(list);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 0, 20);
	list->AddSoundActionProperty("SoundOfCreate", &SoundOfCreate);
	list->AddFloatProperty("Elevation", &Elevation, 0.0f, 0.7853982f);
	list->AddFloatProperty("PredictFraction", &PredictFraction, 0.0f, 2.0f);
	list->AddBoolProperty("Elevate", &Elevate);
	list->AddBoolProperty("PredictStartPos", &PredictStartPos);
	list->AddFloatProperty("V_In_0", &V_In_0, 0.0f, 100.0f);
	list->AddFloatProperty("V_In_1", &V_In_1, 0.0f, 100.0f);
	list->AddFloatProperty("V_In_2", &V_In_2, 0.0f, 100.0f);
	list->AddFloatProperty("V_Out_0", &V_Out_0, 0.0f, 100.0f);
	list->AddFloatProperty("V_Out_1", &V_Out_1, 0.0f, 100.0f);
	list->AddFloatProperty("V_Out_2", &V_Out_2, 0.0f, 100.0f);
	list->AddFloatProperty("VerticalScatterAtMinSpeed", &VerticalScatterAtMinSpeed, 0.0f, 0.7853982f);
	list->AddFloatProperty("VerticalScatterAtMaxSpeed", &VerticalScatterAtMaxSpeed, 0.0f, 0.7853982f);
	list->AddFloatProperty("HorozScatterAtMinSpeed", &HorozScatterAtMinSpeed, 0.0f, 0.7853982f);
	list->AddFloatProperty("HorozScatterAtMaxSpeed", &HorozScatterAtMaxSpeed, 0.0f, 0.7853982f);
	list->AddFloatProperty("SpeedRandomFrac", &SpeedRandomFrac, 0.0f, 0.5f);
	list->AddPointerProperty("InitScaleFP", &InitScaleFP);
}

void UR_SideSpin::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("ScaleAngularVelocity", &ScaleAngularVelocity, 0.0f, 1.0f);
	list->AddFloatProperty("TimeToFade", &TimeToFade, 0.0f, 1.0f);
	list->AddFloatProperty("MaxAngularVelocity", &MaxAngularVelocity, 0.0f, 1.0f);
}

void UR_InitialSpin::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("ScaleAngularVelocity", &ScaleAngularVelocity, 0.0f, 1.0f);
	list->AddFloatProperty("TimeToFade", &TimeToFade, 0.0f, 1.0f);
	list->AddFloatProperty("MaxAngularVelocity", &MaxAngularVelocity, 0.0f, 1.0f);
}

void CreateRuleFusedSphericalExplode::DefineProperties(PropertyList* list)
{
	OnceOnlyCreateRule::DefineProperties(list);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 0, 20);
	list->AddFloatProperty("FuseTime", &FuseTime, 0.0f, 20.0f);
	list->AddFloatProperty("ScaleYSpeed", &ScaleYSpeed, 0.0f, 2.0f);
	list->AddBoolProperty("OnlyHemisphere", &OnlyHemisphere);
	list->AddPointerProperty("MinSpeed", &MinSpeed);
	list->AddPointerProperty("MaxSpeed", &MaxSpeed);
	list->AddSoundActionProperty("SoundExplode", &SoundExplode);
	list->AddBoolProperty("DisableParent", &DisableParent);
}

void UR_FireWorkSimple::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("BangGroup", &BangGroup, -1, 24);
	list->AddIntegerProperty("NumAtomsMin", &NumAtomsMin, 0, 20);
	list->AddIntegerProperty("NumAtomsMax", &NumAtomsMax, 0, 20);
	list->AddFloatProperty("FuseTimeMin", &FuseTimeMin, 0.1f, 5.0f);
	list->AddFloatProperty("FuseTimeMax", &FuseTimeMax, 0.1f, 5.0f);
	list->AddFloatProperty("SpeedMin", &SpeedMin, 2.0f, 20.0f);
	list->AddFloatProperty("SpeedMax", &SpeedMax, 2.0f, 20.0f);
	list->AddFloatProperty("PhiMin", &PhiMin, -1.5707964f, 1.5707964f);
	list->AddFloatProperty("PhiMax", &PhiMax, -1.5707964f, 1.5707964f);
	list->AddFloatProperty("PhiMax", &PhiMax, -1.5707964f, 1.5707964f);
	list->AddFloatProperty("ThetaRandomness", &ThetaRandomness, 0.0f, 1.0f);
	list->AddFloatProperty("FracParentsVelocity", &FracParentsVelocity, 0.0f, 1.0f);
	list->AddSoundActionProperty("SoundExplode", &SoundExplode);
}

void CreateRule_GameObjectRef::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddBoolProperty("DoShower", &DoShower);
	list->AddIntegerProperty("Alpha", &Alpha, 0, 255);
	list->AddFloatProperty("OffsetY", &OffsetY, 0.0f, 10.0f);
}

void UR_FollowParent::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddBoolProperty("UseParentsDrawOffset", &UseParentsDrawOffset);
}

void UR_FollowCastPosn::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
}

void UR_HandSprinkle::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatArrayProperty("KeyPoints", this, &UR_HandSprinkle::KeyPointsGetArray,
	                            &UR_HandSprinkle::KeyPointsSetArray);
	list->AddFloatProperty("InitSpeedYHumanPlayerCasting", &InitSpeedYHumanPlayerCasting, -20.0f, 10.0f);
	list->AddFloatProperty("HeightToRaise", &HeightToRaise, 0.0f, 10.0f);
	list->AddFloatProperty("AngleToRaise", &AngleToRaise, 0.0f, 10.0f);
	list->AddFloatProperty("TotalTime", &TotalTime, 0.0f, 10.0f);
	list->AddFloatProperty("FracToCloseDownOn", &FracToCloseDownOn, 0.0f, 1.0f);
	list->AddBoolProperty("ClampHand", &ClampHand);
}

void UR_FollowLocalHand::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddBoolProperty("UseGraspPos", &UseGraspPos);
}

void UR_CreatureSpell::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddSoundActionProperty("SoundCreatureSpell", &SoundCreatureSpell);
	list->AddSoundActionProperty("SoundCreatureSpellCast", &SoundCreatureSpellCast);
}

void UR_CreatureSpellItch::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 0, 40);
	list->AddFloatProperty("PauseBeforeGotoCreature", &PauseBeforeGotoCreature, 0.0f, 10.0f);
	list->AddFloatProperty("OrbitSpeed", &OrbitSpeed, 0.0f, 5.0f);
}

void UR_CreatureSpellFreeze::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("MaxAtoms", &MaxAtoms, 0, 100);
	list->AddFloatProperty("DieAge", &DieAge, 0.0f, 10.0f);
	list->AddFloatProperty("InitSpeed", &InitSpeed, 0.0f, 10.0f);
	list->AddFloatProperty("MinHeight", &MinHeight, 0.0f, 10.0f);
}

void UR_CreatureSpellGeneric::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 0, 10);
	list->AddFloatProperty("ThetaSpeed", &ThetaSpeed, 0.0f, 10.0f);
	list->AddFloatProperty("PhiSpeed", &PhiSpeed, 0.0f, 10.0f);
	list->AddFloatProperty("DelayBeforeEmit", &DelayBeforeEmit, 0.0f, 10.0f);
	list->AddFloatProperty("EmitDuration", &EmitDuration, 0.0f, 10.0f);
	list->AddFloatProperty("TaperFrac", &TaperFrac, 0.0f, 10.0f);
}

void UR_CreatureSpellCompassion::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("MaxAtoms", &MaxAtoms, 0, 100);
	list->AddFloatProperty("DieAge", &DieAge, 0.0f, 10.0f);
	list->AddFloatProperty("InitSpeed", &InitSpeed, 0.0f, 10.0f);
}

void UR_FollowTargets::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddBoolProperty("RemoveTargetFromManager", &RemoveTargetFromManager);
	list->AddBoolProperty("RemoveAtomWhenTargetDies", &RemoveAtomWhenTargetDies);
	list->AddBoolProperty("UseLHPointTargets", &UseLHPointTargets);
	list->AddBoolProperty("SoundOneOnly", &SoundOneOnly);
	list->AddSoundActionProperty("SoundCreate", &SoundCreate);
}

void UR_HealSpellChakra::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddBoolProperty("ScalePropObjectSize", &ScalePropObjectSize);
	list->AddBoolProperty("TakeCentrePos", &TakeCentrePos);
	list->AddSoundActionProperty("SoundHeal", &SoundHeal);
	list->AddFloatProperty("SoundSpacing", &SoundSpacing, 0.0f, 1.0f);
	list->AddFloatProperty("ScaleRadius", &ScaleRadius, 0.0f, 50.0f);
	list->AddFloatProperty("ScaleHeight", &ScaleHeight, 0.0f, 50.0f);
	list->AddFloatProperty("MaxAlpha", &MaxAlpha, 0.0f, 255.0f);
	list->AddIntegerProperty("SpecularColorR", &SpecularColorR, 0, 255);
	list->AddIntegerProperty("SpecularColorG", &SpecularColorG, 0, 255);
	list->AddIntegerProperty("SpecularColorB", &SpecularColorB, 0, 255);
	list->AddFloatProperty("AtomAgeMaxAlpha", &AtomAgeMaxAlpha, 0.0f, 5.0f);
	list->AddFloatProperty("AtomAgeZeroAlpha", &AtomAgeZeroAlpha, 0.0f, 5.0f);
}

void UR_Trail::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("MaxTrailLength", &MaxTrailLength, 0.0f, 50.0f);
	list->AddIntegerProperty("NumAtoms", &NumAtoms, 0, 40);
	list->AddIntegerProperty("NumGameTurnsToSpreadOver", &NumGameTurnsToSpreadOver, 0, 40);
	list->AddIntegerProperty("HeadGroup", &HeadGroup, -1, 24);
	list->AddIntegerProperty("TrailGroup", &TrailGroup, -1, 24);
	list->AddBoolProperty("UseNonLinearSpacing", &UseNonLinearSpacing);
	list->AddBoolProperty("UseAlpha", &UseAlpha);
	list->AddBoolProperty("UseScaling", &UseScaling);
	list->AddBoolProperty("InitTrailUsingVelocity", &InitTrailUsingVelocity);
	list->AddFloatProperty("FadeTailAlpha", &FadeTailAlpha, 0.0f, 1.0f);
	list->AddFloatProperty("FadeTailScale", &FadeTailScale, 0.0f, 1.0f);
	list->AddBoolProperty("ModifyAlpha", &ModifyAlpha);
	list->AddBoolProperty("ModifyScaling", &ModifyScaling);
	list->AddBoolProperty("UseCombinedParentScale", &UseCombinedParentScale);
	list->AddBoolProperty("UseParentAlpha", &UseParentAlpha);
	list->AddBoolProperty("ScaleMaxTrailLengthWithParent", &ScaleMaxTrailLengthWithParent);
	list->AddBoolProperty("UseParentsDrawOffset", &UseParentsDrawOffset);
}

void UR_ManaPathNew::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("GlowPosSpeed", &GlowPosSpeed, 0.0f, 1.0f);
	list->AddFloatProperty("GlowLength", &GlowLength, 0.0f, 20.0f);
	list->AddFloatProperty("NoiseFrequency", &NoiseFrequency, 0.0f, 10.0f);
	list->AddFloatProperty("NoiseAmplitude", &NoiseAmplitude, 0.0f, 10.0f);
	list->AddFloatProperty("Gain", &Gain, 0.0f, 1.0f);
	list->AddBoolProperty("UseConstantSpeed", &UseConstantSpeed);
	list->AddFloatProperty("Height", &Height, 0.0f, 2.0f);
	list->AddFloatProperty("TimeToTravel", &TimeToTravel, 0.0f, 2.0f);
}

void UR_BeliefSprite::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("RiseSpeed", &RiseSpeed, 0.0f, 20.0f);
	list->AddFloatProperty("DieAge", &DieAge, 0.0f, 20.0f);
	list->AddFloatProperty("MaxWiggleOffset", &MaxWiggleOffset, 0.0f, 20.0f);
	list->AddFloatProperty("AgeAtMaxOffset", &AgeAtMaxOffset, 0.0f, 20.0f);
	list->AddFloatProperty("NoiseFreq", &NoiseFreq, 0.0f, 20.0f);
	list->AddBoolProperty("UseLinearNoise", &UseLinearNoise);
	list->AddFloatProperty("ScaleMax", &ScaleMax, 0.0f, 2.0f);
	list->AddFloatProperty("ScaleMin", &ScaleMin, 0.0f, 2.0f);
	list->AddFloatProperty("ScaleFreq", &ScaleFreq, 0.0f, 10.0f);
	list->AddSoundActionProperty("SoundOfBelief", &SoundOfBelief);
	list->AddIntegerProperty("AlphaMin", &AlphaMin, 0, 255);
	list->AddIntegerProperty("AlphaMax", &AlphaMax, 0, 255);
	list->AddIntegerProperty("ValueAlphaMin", &ValueAlphaMin, 0, 100);
	list->AddIntegerProperty("ValueAlphaMax", &ValueAlphaMax, 0, 100);
	list->AddFloatProperty("FadeTimeStart", &FadeTimeStart, 0.0f, 5.0f);
	list->AddFloatProperty("FadeTimeEnd", &FadeTimeEnd, 0.0f, 5.0f);
}

void UR_TownCentreBelief::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("RadiusAt0", &RadiusAt0, 0.0f, 10.0f);
	list->AddFloatProperty("RadiusAt1", &RadiusAt1, 0.0f, 10.0f);
	list->AddFloatProperty("SpeedAt0", &SpeedAt0, 0.0f, 10.0f);
	list->AddFloatProperty("SpeedAt1", &SpeedAt1, 0.0f, 10.0f);
	list->AddFloatProperty("AngleSpeedPhaseSpeed", &AngleSpeedPhaseSpeed, 0.0f, 10.0f);
	list->AddFloatProperty("ScaleAt0", &ScaleAt0, 0.0f, 10.0f);
	list->AddFloatProperty("ScaleAt1", &ScaleAt1, 0.0f, 10.0f);
	list->AddFloatProperty("HeightAt0", &HeightAt0, 0.0f, 10.0f);
	list->AddFloatProperty("HeightAt1", &HeightAt1, 0.0f, 10.0f);
	list->AddFloatProperty("HeightPerLevel", &HeightPerLevel, 0.0f, 10.0f);
	list->AddFloatProperty("FixedScale", &FixedScale, 0.0f, 2.0f);
	list->AddBoolProperty("UseFixedScale", &UseFixedScale);
	list->AddFloatProperty("TimeBetweenFightsAt0", &TimeBetweenFightsAt0, 0.0f, 10.0f);
	list->AddFloatProperty("TimeBetweenFightsAt1", &TimeBetweenFightsAt1, 0.0f, 10.0f);
	list->AddFloatProperty("FightDurationAt0", &FightDurationAt0, 0.0f, 2.0f);
	list->AddFloatProperty("FightDurationAt1", &FightDurationAt1, 0.0f, 2.0f);
	list->AddFloatProperty("SpeedUpDuringFight", &SpeedUpDuringFight, 1.0f, 4.0f);
	list->AddFloatProperty("FightFracWhenEmitting", &FightFracWhenEmitting, 0.0f, 1.0f);
	list->AddIntegerProperty("GroupFightSparkle", &GroupFightSparkle, -1, 25);
	list->AddIntegerProperty("GroupPlayerSymbol", &GroupPlayerSymbol, -1, 25);
}

void LightningForkFlicker::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
	list->AddFloatProperty("FlickerFreq", &FlickerFreq, 0.0f, 10.0f);
}

void UR_Lightning::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("ForkGroup", &ForkGroup, -1, 25);
	list->AddIntegerProperty("CommonGlowGroup", &CommonGlowGroup, -1, 25);
	list->AddIntegerProperty("MaxLightningObjects", &MaxLightningObjects, 1, 30);
	list->AddIntegerProperty("MaxLightningObjectsAtOnce", &MaxLightningObjectsAtOnce, 1, 30);
	list->AddIntegerProperty("MinLightningObjects", &MinLightningObjects, 1, 30);
	list->AddIntegerProperty("MaxJointsPerFork", &MaxJointsPerFork, 1, 20);
	list->AddPointerProperty("SearchRadius", &SearchRadius);
	list->AddFloatProperty("DefaultSearchRadius", &DefaultSearchRadius, 0.0f, 100.0f);
	list->AddFloatProperty("SplitAngle", &SplitAngle, 0.0f, 3.1415927f);
	list->AddFloatProperty("RandomFrac", &RandomFrac, 0.0f, 0.2f);
	list->AddFloatProperty("ForkScale", &ForkScale, 0.0f, 5.0f);
	list->AddPointerProperty("FP_ForkScale", &FP_ForkScale);
	list->AddPointerProperty("PCreatorLightMapAtom", &PCreatorLightMapAtom);
	list->AddIntegerProperty("LightMapGroup", &LightMapGroup, -1, 25);
	list->AddFloatProperty("AverageLightmapLife", &AverageLightmapLife, 0.0f, 2.0f);
	list->AddBoolProperty("CastingFromHand", &CastingFromHand);
	list->AddBoolProperty("RenewTargetsOnMove", &RenewTargetsOnMove);
	list->AddFloatProperty("RenewTargetsOnMoveFrac", &RenewTargetsOnMoveFrac, 0.0f, 2.0f);
	list->AddIntegerProperty("NumTexturesToTile", &NumTexturesToTile, -1, 10);
	list->AddBoolProperty("TakeTargetsFromManager", &TakeTargetsFromManager);
	list->AddFloatProperty("RenewSearchEvery", &RenewSearchEvery, 0.0f, 2.0f);
	list->AddSoundActionProperty("SoundLightning", &SoundLightning);
}

void UR_LightningStrike::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddSoundActionProperty("SoundLightning", &SoundLightning);
}

void UR_SimpleBeam::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("BeamGroup", &BeamGroup, -1, 25);
	list->AddIntegerProperty("MaxJointsPerFork", &MaxJointsPerFork, 1, 20);
	list->AddIntegerProperty("NumSplinePoints", &NumSplinePoints, 1, 10);
	list->AddIntegerProperty("NumBeams", &NumBeams, 1, 10);
	list->AddFloatProperty("WiggleFreq", &WiggleFreq, 0.0f, 10.0f);
	list->AddFloatProperty("WiggleSpeed", &WiggleSpeed, 0.0f, 10.0f);
	list->AddFloatProperty("SpeedV", &SpeedV, 0.0f, 1.0f);
	list->AddFloatProperty("MinHeight", &MinHeight, 0.0f, 5.0f);
	list->AddFloatProperty("RandomFrac", &RandomFrac, 0.0f, 0.2f);
	list->AddFloatProperty("ForkScaleMin", &ForkScaleMin, 0.0f, 5.0f);
	list->AddFloatProperty("ForkScaleMax", &ForkScaleMax, 0.0f, 5.0f);
}

void UR_Rope::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("RopeLength", &RopeLength, 0.0f, 100.0f);
	list->AddFloatProperty("Stiffness", &Stiffness, 0.0f, 2.0f);
	list->AddFloatProperty("Damping", &Damping, 0.0f, 2.0f);
	list->AddFloatProperty("Gravity", &Gravity, 0.0f, 10.0f);
	list->AddFloatProperty("AverageDirections", &AverageDirections, 0.0f, 1.0f);
	list->AddFloatProperty("TimeSlowdown", &TimeSlowdown, 0.0f, 10.0f);
}

void UR_ObjectArcer::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("RandomFrac", &RandomFrac, 0.0f, 0.2f);
	list->AddFloatProperty("ScaleTangents", &ScaleTangents, 0.0f, 5.0f);
	list->AddFloatProperty("RandomTangents", &RandomTangents, 0.0f, 0.8f);
	list->AddIntegerProperty("JointsPerArc", &JointsPerArc, 5, 20);
	list->AddIntegerProperty("AverageTicksPerUpdate", &AverageTicksPerUpdate, 0, 50);
	list->AddPointerProperty("ChainCreator", &ChainCreator);
}

void UR_Plasma::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddFloatProperty("ScaleTangents", &ScaleTangents, 0.0f, 5.0f);
	list->AddFloatProperty("RandomTangents", &RandomTangents, 0.0f, 0.8f);
	list->AddIntegerProperty("JointsPerArc", &JointsPerArc, 5, 20);
	list->AddPointerProperty("ChainCreator", &ChainCreator);
	list->AddIntegerProperty("MaxAlpha", &MaxAlpha, 50, 255);
	list->AddIntegerProperty("BeamGroup", &BeamGroup, -1, 25);
	list->AddIntegerProperty("NumSplinePoints", &NumSplinePoints, 1, 10);
	list->AddIntegerProperty("NumBeams", &NumBeams, 1, 10);
	list->AddFloatProperty("WiggleFreq", &WiggleFreq, 0.0f, 10.0f);
	list->AddFloatProperty("WiggleSpeed", &WiggleSpeed, 0.0f, 10.0f);
	list->AddFloatProperty("SpeedV", &SpeedV, 0.0f, 1.0f);
	list->AddFloatProperty("RandomFrac", &RandomFrac, 0.0f, 0.2f);
	list->AddFloatProperty("ForkScaleMin", &ForkScaleMin, 0.0f, 5.0f);
	list->AddFloatProperty("ForkScaleMax", &ForkScaleMax, 0.0f, 5.0f);
}

void ZR_SurfRevol::DefineProperties(PropertyList* list)
{
	AtomCreateRule::DefineProperties(list);
	list->AddIntegerProperty("FunctionIndex", &FunctionIndex, 0, 2);
	list->AddFileNameProperty("TextureFileName", &TextureFileName, "raw");
	list->AddBoolProperty("UseAdditiveAlpha", &UseAdditiveAlpha);
	list->AddBoolProperty("MaterialUpdateZBuffer", &MaterialUpdateZBuffer);
	list->AddBoolProperty("MaterialSetDoubleSided", &MaterialSetDoubleSided);
	list->AddBoolProperty("MaterialUseTextureAlpha", &MaterialUseTextureAlpha);
	list->AddIntegerProperty("TextureHeight", &TextureHeight, 0, 256);
	list->AddIntegerProperty("TextureWidth", &TextureWidth, 0, 256);
	list->AddFloatProperty("SpeedU", &SpeedU, 0.0f, 2.0f);
	list->AddFloatProperty("SpeedV", &SpeedV, 0.0f, 2.0f);
	list->AddIntegerProperty("NumU", &NumU, 0, 20);
	list->AddIntegerProperty("NumV", &NumV, 0, 20);
	list->AddBoolProperty("UseSphere", &UseSphere);
	list->AddBoolProperty("FadeAlphas", &FadeAlphas);
	list->AddBoolProperty("ChangeSpecColor", &ChangeSpecColor);
	list->AddBoolProperty("UseLighting", &UseLighting);
	list->AddFloatProperty("MaxUVChange", &MaxUVChange, 0.0f, 2.0f);
	list->AddFloatProperty("MaxVertexChange", &MaxVertexChange, 0.0f, 2.0f);
	list->AddBoolProperty("ClampToLandscape", &ClampToLandscape);
	list->AddFloatProperty("HeightAboveLandscape", &HeightAboveLandscape, 0.0f, 2.0f);
	list->AddBoolProperty("DoRaiseAboveLandscape", &DoRaiseAboveLandscape);
	list->AddFloatProperty("HeightAboveLandscape", &HeightAboveLandscape, 0.0f, 2.0f);
	list->AddFloatProperty("RaiseAboveLandscapeRadius", &RaiseAboveLandscapeRadius, 0.0f, 2.0f);
	list->AddFloatProperty("AlphaFadeIn", &AlphaFadeIn, 0.0f, 1.0f);
	list->AddFloatProperty("AlphaFadeOut", &AlphaFadeOut, 0.0f, 1.0f);
	list->AddFloatProperty("Scale", &Scale, 0.0f, 2.0f);
	list->AddIntegerProperty("ColorA", &ColorA, 0, 255);
	list->AddIntegerProperty("ColorR", &ColorR, 0, 255);
	list->AddIntegerProperty("ColorG", &ColorG, 0, 255);
	list->AddIntegerProperty("ColorB", &ColorB, 0, 255);
	list->AddIntegerProperty("SpecColorR", &SpecColorR, 0, 255);
	list->AddIntegerProperty("SpecColorG", &SpecColorG, 0, 255);
	list->AddIntegerProperty("SpecColorB", &SpecColorB, 0, 255);
}

void UR_ScaleByCameraDist::DefineProperties(PropertyList* list)
{
	UpdateRule::DefineProperties(list);
	list->AddFloatProperty("CameraDistMin", &CameraDistMin, 0.0f, 100.0f);
	list->AddFloatProperty("CameraDistMax", &CameraDistMax, 0.0f, 100.0f);
	list->AddFloatProperty("ScaleAtCameraDistMin", &ScaleAtCameraDistMin, 0.0f, 10.0f);
	list->AddFloatProperty("ScaleAtCameraDistMax", &ScaleAtCameraDistMax, 0.0f, 10.0f);
}

void RemoveRule::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
}

void RemoveRuleOldAgeOnly::DefineProperties(PropertyList* list)
{
	RemoveRule::DefineProperties(list);
	list->AddIntegerProperty("MinAtoms", &MinAtoms, 0, 500);
	list->AddFloatProperty("DieAge", &DieAge, 0.0f, 100.0f);
}

void RemoveRuleProb::DefineProperties(PropertyList* list)
{
	RemoveRule::DefineProperties(list);
	list->AddIntegerProperty("MinAtoms", &MinAtoms, 0, 100);
	list->AddFloatProperty("RemoveFreq", &RemoveFreq, 0.0f, 10.0f);
}

void RemoveRuleAfterCloseDown::DefineProperties(PropertyList* list)
{
	RemoveRule::DefineProperties(list);
	list->AddFloatProperty("Delay", &Delay, 0.0f, 10.0f);
}

void RemoveRuleAfterConditionTrue::DefineProperties(PropertyList* list)
{
	RemoveRule::DefineProperties(list);
	list->AddFloatProperty("Delay", &Delay, 0.0f, 10.0f);
	list->AddPointerProperty("ConditionForRemove", &ConditionForRemove);
}

void ParticleCreator::DefineProperties(PropertyList* list)
{
	list->AddBoolProperty("UsePlayerColor", &UsePlayerColor);
	list->AddFloatProperty("UsePlayerColorBlend", &UsePlayerColorBlend, 0.0f, 1.0f);
	list->AddBoolProperty("LoopAnim", &LoopAnim);
	list->AddIntegerProperty("ColorA", &ColorA, 0, 255);
	list->AddIntegerProperty("ColorR", &ColorR, 0, 255);
	list->AddIntegerProperty("ColorG", &ColorG, 0, 255);
	list->AddIntegerProperty("ColorB", &ColorB, 0, 255);
	list->AddIntegerProperty("SpecColorR", &SpecColorR, 0, 255);
	list->AddIntegerProperty("SpecColorG", &SpecColorG, 0, 255);
	list->AddIntegerProperty("SpecColorB", &SpecColorB, 0, 255);
	list->AddFloatProperty("InitialScale", &InitialScale, 0.0f, 5.0f);
}

void ParticlePointCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
}

void ParticleVolBlendMeshCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
	list->AddFileNameProperty("MeshFileName1", &MeshFileName1, "l3d");
	list->AddFileNameProperty("MeshFileName2", &MeshFileName2, "l3d");
	list->AddBoolProperty("MeshChangeMaterialProps", &MeshChangeMaterialProps);
	list->AddBoolProperty("UseAdditiveAlpha", &UseAdditiveAlpha);
	list->AddBoolProperty("MaterialUpdateZBuffer", &MaterialUpdateZBuffer);
	list->AddBoolProperty("MaterialSetDoubleSided", &MaterialSetDoubleSided);
	list->AddIntegerProperty("NumFrames", &NumFrames, 1, 64);
	list->AddFloatProperty("FrameRate", &FrameRate, 0.0f, 50.0f);
	list->AddBoolProperty("PlayAnim", &PlayAnim);
}

void ParticleBaseMeshCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
	list->AddFileNameProperty("MeshFileName", &MeshFileName, "l3d");
	list->AddMeshEnumProperty("MeshEnum", &MeshEnum);
	list->AddBoolProperty("FaceCamera", &FaceCamera);
	list->AddBoolProperty("FaceCameraSprite", &FaceCameraSprite);
	list->AddFloatProperty("HeightStretch", &HeightStretch, 0.0f, 5.0f);
	list->AddBoolProperty("UseScriptHightlightPulse", &UseScriptHightlightPulse);
}

void ParticleMeshCreator::DefineProperties(PropertyList* list)
{
	ParticleBaseMeshCreator::DefineProperties(list);
	list->AddBoolProperty("MeshChangeMaterialProps", &MeshChangeMaterialProps);
	list->AddBoolProperty("UseAdditiveAlpha", &UseAdditiveAlpha);
	list->AddBoolProperty("MaterialUpdateZBuffer", &MaterialUpdateZBuffer);
	list->AddBoolProperty("MaterialSetDoubleSided", &MaterialSetDoubleSided);
	list->AddBoolProperty("UseGlobalAlpha", &UseGlobalAlpha);
	list->AddBoolProperty("DrawWithLandscapeColor", &DrawWithLandscapeColor);
	list->AddBoolProperty("NeverClip", &NeverClip);
	list->AddBoolProperty("UseDynamicLighting", &UseDynamicLighting);
	list->AddBoolProperty("CastHumanShadow", &CastHumanShadow);
	list->AddBoolProperty("DrawCutByPlane", &DrawCutByPlane);
}

void ParticleMeshCreatorAnimTextured::DefineProperties(PropertyList* list)
{
	ParticleBaseMeshCreator::DefineProperties(list);
	list->AddBoolProperty("MeshChangeMaterialProps", &MeshChangeMaterialProps);
	list->AddBoolProperty("UseAdditiveAlpha", &UseAdditiveAlpha);
	list->AddBoolProperty("MaterialUpdateZBuffer", &MaterialUpdateZBuffer);
	list->AddBoolProperty("MaterialSetDoubleSided", &MaterialSetDoubleSided);
	list->AddBoolProperty("UseGlobalAlpha", &UseGlobalAlpha);
	list->AddBoolProperty("NeverClip", &NeverClip);
	list->AddBoolProperty("UseDynamicLighting", &UseDynamicLighting);
	list->AddIntegerProperty("TextureHeight", &TextureHeight, 0, 128);
	list->AddIntegerProperty("TextureWidth", &TextureWidth, 0, 128);
	list->AddBoolProperty("SlideU", &SlideU);
	list->AddBoolProperty("SlideV", &SlideV);
	list->AddBoolProperty("DrawMelted", &DrawMelted);
	list->AddBoolProperty("RandomiseInitFrame", &RandomiseInitFrame);
	list->AddBoolProperty("RandomiseFrameRate", &RandomiseFrameRate);
	list->AddFloatProperty("FrameRateMax", &FrameRateMax, 0.0f, 50.0f);
	list->AddIntegerProperty("NumFrames", &NumFrames, 1, 64);
	list->AddFloatProperty("FrameRate", &FrameRate, 0.0f, 50.0f);
	list->AddBoolProperty("PlayAnim", &PlayAnim);
	list->AddFloatProperty("InitialOffsetFrac", &InitialOffsetFrac, 0.0f, 1.0f);
	list->AddFloatProperty("StretchY", &StretchY, 0.0f, 50.0f);
	list->AddBoolProperty("DrawWithLandscapeColor", &DrawWithLandscapeColor);
}

void ParticleGJMeshCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
	list->AddFileNameProperty("MeshFileName", &MeshFileName, "l3d");
	list->AddBoolProperty("UseAdditiveAlpha", &UseAdditiveAlpha);
	list->AddBoolProperty("MaterialUpdateZBuffer", &MaterialUpdateZBuffer);
	list->AddBoolProperty("MaterialSetDoubleSided", &MaterialSetDoubleSided);
}

void ParticleMistCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
	list->AddBoolProperty("RandomiseScale", &RandomiseScale);
	list->AddBoolProperty("IsShadowMap", &IsShadowMap);
	list->AddBoolProperty("LoadLightMap", &LoadLightMap);
	list->AddBoolProperty("TakeRatioFromMatrix", &TakeRatioFromMatrix);
	list->AddFileNameProperty("TextureFileName", &TextureFileName, "raw");
	list->AddIntegerProperty("Pitch", &Pitch, 1, 12);
	list->AddIntegerProperty("NumFramesInUse", &NumFramesInUse, 1, 32);
	list->AddIntegerProperty("NumFramesInFile", &NumFramesInFile, 1, 32);
	list->AddFloatProperty("InitialScaleMin", &InitialScaleMin, 0.0f, 5.0f);
	list->AddFloatProperty("Ratio", &Ratio, 0.0f, 5.0f);
}

void ParticleAnimCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
	list->AddFloatProperty("SpeedUpFactor", &SpeedUpFactor, 0.0f, 5.0f);
	list->AddMeshEnumProperty("MeshEnum", &MeshEnum);
	list->AddFileNameProperty("MeshFileName", &MeshFileName, "l3d");
	list->AddFileNameProperty("MeshFileName1", &MeshFileName1, "l3d");
	list->AddFileNameProperty("MeshFileName2", &MeshFileName2, "l3d");
	list->AddFileNameProperty("AnimFileName", &AnimFileName, "anm");
	list->AddAnimEnumProperty("AnimEnum", &AnimEnum);
	list->AddBoolProperty("UseAdditiveAlpha", &UseAdditiveAlpha);
	list->AddBoolProperty("MaterialUpdateZBuffer", &MaterialUpdateZBuffer);
	list->AddBoolProperty("MaterialSetDoubleSided", &MaterialSetDoubleSided);
	list->AddBoolProperty("PlayAnim", &PlayAnim);
	list->AddBoolProperty("RandomiseInitFrame", &RandomiseInitFrame);
	list->AddBoolProperty("NeverClip", &NeverClip);
	list->AddBoolProperty("UseDynamicLighting", &UseDynamicLighting);
	list->AddBoolProperty("UseGlobalAlpha", &UseGlobalAlpha);
	list->AddBoolProperty("UseSuperSortedPolys", &UseSuperSortedPolys);
	list->AddFloatProperty("FrameToStartBlend", &FrameToStartBlend, 0.0f, 1000.0f);
	list->AddFloatProperty("FrameToEndBlend", &FrameToEndBlend, 0.0f, 1000.0f);
}

void ParticleGoodEvilCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
	list->AddFloatProperty("AlignmentSwitch", &AlignmentSwitch, -1.0f, 1.0f);
	list->AddPointerProperty("PCreatorEvil", &PCreatorEvil);
	list->AddPointerProperty("PCreatorGood", &PCreatorGood);
}

void ParticleAnimWithCameraCreator::DefineProperties(PropertyList* list)
{
	ParticleAnimCreator::DefineProperties(list);
	list->AddFloatProperty("PauseBeforePlay", &PauseBeforePlay, 0.0f, 10.0f);
	list->AddFileNameProperty("CameraFileName", &CameraFileName, "anm");
}

void ParticleSpriteCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
	list->AddBoolProperty("UseLandscapeColor", &UseLandscapeColor);
	list->AddFloatProperty("FrameRate", &FrameRate, 0.0f, 50.0f);
	list->AddBoolProperty("PlayAnim", &PlayAnim);
	list->AddBoolProperty("UseAdditiveAlpha", &UseAdditiveAlpha);
	list->AddBoolProperty("MaterialUpdateZBuffer", &MaterialUpdateZBuffer);
	list->AddBoolProperty("MaterialSetDoubleSided", &MaterialSetDoubleSided);
	list->AddIntegerProperty("NumFrames", &NumFrames, 1, 32);
	list->AddIntegerProperty("InitFrame", &InitFrame, 1, 32);
	list->AddIntegerProperty("FileOffset", &FileOffset, 1, 64);
	list->AddFileNameProperty("TextureFileName", &TextureFileName, "raw");
	list->AddBoolProperty("RandomiseScale", &RandomiseScale);
	list->AddBoolProperty("RandomiseInitFrame", &RandomiseInitFrame);
	list->AddBoolProperty("SetHorozontal", &SetHorozontal);
	list->AddBoolProperty("SetVertical", &SetVertical);
	list->AddBoolProperty("CentreAtBase", &CentreAtBase);
	list->AddBoolProperty("RandomiseFrameDirection", &RandomiseFrameDirection);
	list->AddBoolProperty("IgnoreRotation", &IgnoreRotation);
	list->AddFloatProperty("StretchVertically", &StretchVertically, 0.0f, 5.0f);
	list->AddFloatProperty("SpriteOriginX", &SpriteOriginX, -1.0f, 1.0f);
	list->AddFloatProperty("SpriteOriginY", &SpriteOriginY, -1.0f, 1.0f);
	list->AddIntegerProperty("NumSpritesPerRow", &NumSpritesPerRow, 1, 16);
	list->AddIntegerProperty("ScaleAlpha", &ScaleAlpha, 1, 255);
}

void ParticleSymbolSpriteCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
}

void ParticleLightMapCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
	list->AddFileNameProperty("TextureFileName", &TextureFileName, "raw");
	list->AddIntegerProperty("Pitch", &Pitch, 1, 12);
	list->AddIntegerProperty("NumFramesInUse", &NumFramesInUse, 1, 32);
	list->AddIntegerProperty("NumFramesInFile", &NumFramesInFile, 1, 32);
	list->AddFloatProperty("RandJitter", &RandJitter, 0.0f, 10.0f);
	list->AddBoolProperty("UseRandJitter", &UseRandJitter);
	list->AddFloatProperty("FrameRate", &FrameRate, 0.0f, 50.0f);
	list->AddBoolProperty("PlayAnim", &PlayAnim);
	list->AddFloatProperty("ShiftX", &ShiftX, -5.0f, 5.0f);
	list->AddFloatProperty("ShiftZ", &ShiftZ, -5.0f, 5.0f);
}

void ParticleChainCreator::DefineProperties(PropertyList* list)
{
	ParticleCreator::DefineProperties(list);
	list->AddFileNameProperty("TextureFileName", &TextureFileName, "raw");
	list->AddIntegerProperty("NumTexturesForWholeChain", &NumTexturesForWholeChain, -1, 32);
	list->AddIntegerProperty("FrameOfHead", &FrameOfHead, 0, 32);
	list->AddIntegerProperty("FrameOfTail", &FrameOfTail, 0, 32);
	list->AddIntegerProperty("FileOffset", &FileOffset, 0, 32);
	list->AddBoolProperty("UseAdditiveAlpha", &UseAdditiveAlpha);
	list->AddBoolProperty("MaterialUpdateZBuffer", &MaterialUpdateZBuffer);
	list->AddBoolProperty("MaterialSetDoubleSided", &MaterialSetDoubleSided);
	list->AddBoolProperty("UseDynamicLighting", &UseDynamicLighting);
	list->AddIntegerProperty("FrameHeight", &FrameHeight, 1, 256);
	list->AddIntegerProperty("FrameWidth", &FrameWidth, 1, 256);
}

void EventConditionTrueOnCloseDown::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EventConditionTrueWhenEnabled::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EC_DeflectionInAtomsHierarchy::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EC_CollectionShouldBeEmitting::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EC_DeflectionInCollectionsHierarchy::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EventConditionNever::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EventConditionCollectionDelay::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddFloatProperty("DelayTime", &DelayTime, 0.0f, 100.0f);
}

void EventConditionCollectionLimitedTime::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
}

void EventConditionAtomDelay::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddFloatProperty("DelayTime", &DelayTime, 0.0f, 100.0f);
}

void EventConditionAtomNearVillagers::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EventConditionAtomBelowHeight::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddFloatProperty("CutOffHeight", &CutOffHeight, -20.0f, 20.0f);
}

void EC_AtomAlphaAbove::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddIntegerProperty("AlphaValue", &AlphaValue, 0, 255);
}

void EventConditionAtomCloseWater::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddFloatProperty("CutOffHeight", &CutOffHeight, -20.0f, 20.0f);
}

void EventConditionFireBallSteam::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EventConditionAtomBelowSpeed::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddFloatProperty("CutOffSpeed", &CutOffSpeed, 0.0f, 20.0f);
}

void EventConditionAtomInUse::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EventConditionAtomHasBeenDeflected::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
}

void EventConditionAtomLimitedTime::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddFloatProperty("StartTime", &StartTime, 0.0f, 10.0f);
	list->AddFloatProperty("StopTime", &StopTime, 0.0f, 10.0f);
}

void EventConditionRandom::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddFloatProperty("Freq", &Freq, 0.0f, 10.0f);
}

void EventConditionFrameTime::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddIntegerProperty("StartFrame", &StartFrame, -1, 255);
	list->AddIntegerProperty("StopFrame", &StopFrame, -1, 255);
}

void EventConditionParentFrameTime::DefineProperties(PropertyList* list)
{
	TEventCondition::DefineProperties(list);
	list->AddIntegerProperty("StartFrame", &StartFrame, -1, 255);
	list->AddIntegerProperty("StopFrame", &StopFrame, -1, 255);
}

void LandscapeCollide::DefineProperties(PropertyList* list)
{
	AtomCollectionModifier::DefineProperties(list);
	list->AddBoolProperty("SendEvent", &SendEvent);
}

// fabricated
// TODO: cl6 queues the template functions it emits after the last ordinary function by the
// order in which non-template code names them. In the target, std::string's default constructor
// (BW1W120 006c0f10) leads that queue, so some non-template code ahead of
// RegisterParticleCreators names it directly; reaching it only through inlined map::operator[]
// puts it after the _Tree helpers. The same IL also decides a register tie-break in
// RegisterModifiers. This unreferenced helper (never emitted) stands in for the unknown original
// reference.
#if defined(VERSION_BW1W100)
static std::string EmptyString()
{
	return std::string();
}
#else
static void EmptyString()
{
	std::string text[2];
}
#endif

bool PSysFileData::LoadFromFile(PARTICLE_TYPE type, const char* filename)
{
	ParticleType = type;
	bool32_t failed = 0;
	Clear();
	if (filename != NULL)
	{
		uint32_t length;
		LHFileLength(filename, &length);
		char*    buffer = new (PSYS_PROPERTIES_FILE, 1996) char[length + 2];
		uint32_t read = 0;
		if (LHLoadData((char*)filename, buffer, length, &read))
		{
			failed = 1;
		}
		buffer[length] = '\0';
		std::string       text(buffer);
		std::stringstream stream;
		stream.str(text);
		delete buffer;

		PersistenceStreamer streamer;
		failed |= !streamer.ReadProperties(&stream, this);
		Persistent* object;
		do
		{
			failed |= !streamer.Read(&stream, this, &object);
		} while (object != NULL);
	}
	SetName(filename);
	OnLoaded();
	return !failed;
}

#if !defined(VERSION_BW1W100)
bool32_t PSysFileData::SaveToFile(const char* filename)
{
	std::stringstream   stream;
	PersistenceStreamer streamer;
	bool32_t            failed = !streamer.WriteProperties(&stream, this);
	for (LHLinkedNode<Persistent*>* node = Objects.GetStart(); node != NULL; node = node->next.Get())
	{
		failed |= !streamer.Write(&stream, node->payload);
	}
	{
		LHReleasedOSFile file;
		if (file.Open(filename, LH_FILE_MODE_READ_WRITE) != LH_FILE_RESULT_OK)
		{
			return false;
		}
		uint32_t size = stream.str().size();
		uint32_t written = 0;
		if (file.Write(stream.str().c_str(), size, &written) != LH_FILE_RESULT_OK)
		{
			failed = 1;
		}
		file.Close();
	}
	return !failed;
}

bool32_t PSysFileData::SaveAsCode(const char* filename)
{
	std::stringstream   stream;
	PersistenceStreamer streamer;
	bool32_t            failed = !streamer.WritePropertiesAsCode(&stream, this);
	for (LHLinkedNode<Persistent*>* node = Objects.GetStart(); node != NULL; node = node->next.Get())
	{
		failed |= !streamer.WriteAsCode(&stream, node->payload);
	}
	{
		LHReleasedOSFile file;
		if (file.Open(filename, LH_FILE_MODE_READ_WRITE) != LH_FILE_RESULT_OK)
		{
			return false;
		}
		uint32_t size = stream.str().size();
		uint32_t written = 0;
		if (file.Write(stream.str().c_str(), size, &written) != LH_FILE_RESULT_OK)
		{
			failed = 1;
		}
		file.Close();
	}
	return !failed;
}
#endif

#define DECLARE_PARTICLE_CREATOR(CLASS, LINE)                                                                          \
	static Persistent* StaticCreate_##CLASS(PersistentOwner* owner)                                                    \
	{                                                                                                                  \
		return new (PSYS_PROPERTIES_FILE, LINE) CLASS(owner);                                                          \
	}                                                                                                                  \
	static ParticleCreator* PCreator_##CLASS(PersistentOwner* owner)                                                   \
	{                                                                                                                  \
		return new (PSYS_PROPERTIES_FILE, LINE) CLASS(owner);                                                          \
	}

#define REGISTER_PARTICLE_CREATOR(CLASS)                                                                               \
	{                                                                                                                  \
		StaticCreators[typeid(CLASS)] = StaticCreate_##CLASS;                                                          \
		Names[typeid(CLASS)] = #CLASS;                                                                                 \
		ParticleCreatorCreators[typeid(CLASS)] = PCreator_##CLASS;                                                     \
	}

// clang-format off
DECLARE_PARTICLE_CREATOR(ParticleSpriteCreator, 2189)
DECLARE_PARTICLE_CREATOR(ParticleSymbolSpriteCreator, 2190)
DECLARE_PARTICLE_CREATOR(ParticleLightMapCreator, 2191)
DECLARE_PARTICLE_CREATOR(ParticleChainCreator, 2192)
DECLARE_PARTICLE_CREATOR(ParticlePointCreator, 2193)
DECLARE_PARTICLE_CREATOR(ParticleMeshCreator, 2194)
DECLARE_PARTICLE_CREATOR(ParticleVolBlendMeshCreator, 2195)
DECLARE_PARTICLE_CREATOR(ParticleGJMeshCreator, 2196)
DECLARE_PARTICLE_CREATOR(ParticleMeshCreatorAnimTextured, 2197)
DECLARE_PARTICLE_CREATOR(ParticleMistCreator, 2198)
DECLARE_PARTICLE_CREATOR(ParticleAnimCreator, 2199)
DECLARE_PARTICLE_CREATOR(ParticleGoodEvilCreator, 2200)
DECLARE_PARTICLE_CREATOR(ParticleAnimWithCameraCreator, 2201)
// clang-format on

void RegisterPersistent::RegisterParticleCreators()
{
	REGISTER_PARTICLE_CREATOR(ParticleSpriteCreator);
	REGISTER_PARTICLE_CREATOR(ParticleSymbolSpriteCreator);
	REGISTER_PARTICLE_CREATOR(ParticleLightMapCreator);
	REGISTER_PARTICLE_CREATOR(ParticleChainCreator);
	REGISTER_PARTICLE_CREATOR(ParticlePointCreator);
	REGISTER_PARTICLE_CREATOR(ParticleMeshCreator);
	REGISTER_PARTICLE_CREATOR(ParticleVolBlendMeshCreator);
	REGISTER_PARTICLE_CREATOR(ParticleGJMeshCreator);
	REGISTER_PARTICLE_CREATOR(ParticleMeshCreatorAnimTextured);
	REGISTER_PARTICLE_CREATOR(ParticleMistCreator);
	REGISTER_PARTICLE_CREATOR(ParticleAnimCreator);
	REGISTER_PARTICLE_CREATOR(ParticleGoodEvilCreator);
	REGISTER_PARTICLE_CREATOR(ParticleAnimWithCameraCreator);
}

#define DECLARE_CONDITION(CLASS, LINE)                                                                                 \
	static Persistent* StaticCreate_##CLASS(PersistentOwner* owner)                                                    \
	{                                                                                                                  \
		return new (PSYS_PROPERTIES_FILE, LINE) CLASS(owner);                                                          \
	}                                                                                                                  \
	static TEventCondition* ConditionCreate_##CLASS(PersistentOwner* owner)                                            \
	{                                                                                                                  \
		return new (PSYS_PROPERTIES_FILE, LINE) CLASS(owner);                                                          \
	}

#define REGISTER_CONDITION(CLASS)                                                                                      \
	{                                                                                                                  \
		StaticCreators[typeid(CLASS)] = StaticCreate_##CLASS;                                                          \
		Names[typeid(CLASS)] = #CLASS;                                                                                 \
		ConditionCreators[typeid(CLASS)] = ConditionCreate_##CLASS;                                                    \
	}

// clang-format off
DECLARE_CONDITION(EventConditionCollectionDelay, 2226)
DECLARE_CONDITION(EventConditionTrueOnCloseDown, 2227)
DECLARE_CONDITION(EventConditionTrueWhenEnabled, 2228)
DECLARE_CONDITION(EC_DeflectionInAtomsHierarchy, 2229)
DECLARE_CONDITION(EC_CollectionShouldBeEmitting, 2230)
DECLARE_CONDITION(EC_DeflectionInCollectionsHierarchy, 2231)
DECLARE_CONDITION(EventConditionNever, 2232)
DECLARE_CONDITION(EventConditionCollectionLimitedTime, 2233)
DECLARE_CONDITION(EventConditionAtomDelay, 2234)
DECLARE_CONDITION(EventConditionAtomNearVillagers, 2235)
DECLARE_CONDITION(EventConditionAtomLimitedTime, 2236)
DECLARE_CONDITION(EventConditionRandom, 2237)
DECLARE_CONDITION(EventConditionParentFrameTime, 2238)
DECLARE_CONDITION(EventConditionFrameTime, 2239)
DECLARE_CONDITION(EventConditionAtomBelowHeight, 2240)
DECLARE_CONDITION(EC_AtomAlphaAbove, 2241)
DECLARE_CONDITION(EventConditionAtomCloseWater, 2242)
DECLARE_CONDITION(EventConditionFireBallSteam, 2243)
DECLARE_CONDITION(EventConditionAtomInUse, 2244)
DECLARE_CONDITION(EventConditionAtomBelowSpeed, 2245)
DECLARE_CONDITION(EventConditionAtomHasBeenDeflected, 2246)
// clang-format on

void RegisterPersistent::RegisterConditions()
{
	REGISTER_CONDITION(EventConditionCollectionDelay);
	REGISTER_CONDITION(EventConditionTrueOnCloseDown);
	REGISTER_CONDITION(EventConditionTrueWhenEnabled);
	REGISTER_CONDITION(EC_DeflectionInAtomsHierarchy);
	REGISTER_CONDITION(EC_CollectionShouldBeEmitting);
	REGISTER_CONDITION(EC_DeflectionInCollectionsHierarchy);
	REGISTER_CONDITION(EventConditionNever);
	REGISTER_CONDITION(EventConditionCollectionLimitedTime);
	REGISTER_CONDITION(EventConditionAtomDelay);
	REGISTER_CONDITION(EventConditionAtomNearVillagers);
	REGISTER_CONDITION(EventConditionAtomLimitedTime);
	REGISTER_CONDITION(EventConditionRandom);
	REGISTER_CONDITION(EventConditionParentFrameTime);
	REGISTER_CONDITION(EventConditionFrameTime);
	REGISTER_CONDITION(EventConditionAtomBelowHeight);
	REGISTER_CONDITION(EC_AtomAlphaAbove);
	REGISTER_CONDITION(EventConditionAtomCloseWater);
	REGISTER_CONDITION(EventConditionFireBallSteam);
	REGISTER_CONDITION(EventConditionAtomInUse);
	REGISTER_CONDITION(EventConditionAtomBelowSpeed);
	REGISTER_CONDITION(EventConditionAtomHasBeenDeflected);
}

#define DECLARE_FLOAT_PROVIDER(CLASS, LINE)                                                                            \
	static Persistent* StaticCreate_##CLASS(PersistentOwner* owner)                                                    \
	{                                                                                                                  \
		return new (PSYS_PROPERTIES_FILE, LINE) CLASS(owner);                                                          \
	}                                                                                                                  \
	static FloatProvider* FloatProviderCreate_##CLASS(PersistentOwner* owner)                                          \
	{                                                                                                                  \
		return new (PSYS_PROPERTIES_FILE, LINE) CLASS(owner);                                                          \
	}

#define REGISTER_FLOAT_PROVIDER(CLASS)                                                                                 \
	{                                                                                                                  \
		StaticCreators[typeid(CLASS)] = StaticCreate_##CLASS;                                                          \
		Names[typeid(CLASS)] = #CLASS;                                                                                 \
		FloatProviderCreators[typeid(CLASS)] = FloatProviderCreate_##CLASS;                                            \
	}

// clang-format off
DECLARE_FLOAT_PROVIDER(ConstFloatProvider, 2279)
DECLARE_FLOAT_PROVIDER(FloatProvider_ParentAtomScale, 2280)
DECLARE_FLOAT_PROVIDER(StrengthFloatProvider, 2281)
DECLARE_FLOAT_PROVIDER(MagnitudeFloatProvider, 2282)
DECLARE_FLOAT_PROVIDER(MagnitudeTimesStrengthFloatProvider, 2283)
DECLARE_FLOAT_PROVIDER(RenderHandScaleFloatProvider, 2284)
DECLARE_FLOAT_PROVIDER(RenderHandScaleTimesStrengthFloatProvider, 2285)
// clang-format on

void RegisterPersistent::RegisterFloatProviders()
{
	REGISTER_FLOAT_PROVIDER(ConstFloatProvider);
	REGISTER_FLOAT_PROVIDER(FloatProvider_ParentAtomScale);
	REGISTER_FLOAT_PROVIDER(StrengthFloatProvider);
	REGISTER_FLOAT_PROVIDER(MagnitudeFloatProvider);
	REGISTER_FLOAT_PROVIDER(MagnitudeTimesStrengthFloatProvider);
	REGISTER_FLOAT_PROVIDER(RenderHandScaleFloatProvider);
	REGISTER_FLOAT_PROVIDER(RenderHandScaleTimesStrengthFloatProvider);
}

#define DECLARE_MODIFIER(CLASS, LINE)                                                                                  \
	static Persistent* StaticCreate_##CLASS(PersistentOwner* owner)                                                    \
	{                                                                                                                  \
		return new (PSYS_PROPERTIES_FILE, LINE) CLASS(owner);                                                          \
	}                                                                                                                  \
	static AtomCollectionModifier* ModifierCreate_##CLASS(PersistentOwner* owner)                                      \
	{                                                                                                                  \
		return new (PSYS_PROPERTIES_FILE, LINE) CLASS(owner);                                                          \
	}

#define REGISTER_MODIFIER(CLASS)                                                                                       \
	{                                                                                                                  \
		StaticCreators[typeid(CLASS)] = StaticCreate_##CLASS;                                                          \
		Names[typeid(CLASS)] = #CLASS;                                                                                 \
		ModifierCreators[typeid(CLASS)] = static_cast<ModifierCreateFunc>(ModifierCreate_##CLASS);                     \
	}

// clang-format off
DECLARE_MODIFIER(UpdateRuleGravity, 2302)
DECLARE_MODIFIER(UR_Flocking, 2303)
DECLARE_MODIFIER(UR_RingSpin, 2304)
DECLARE_MODIFIER(UR_Articulate, 2305)
DECLARE_MODIFIER(AppearanceRuleFadeOut, 2307)
DECLARE_MODIFIER(AddSoundToAtom, 2308)
DECLARE_MODIFIER(StartStopSoundOnCondition, 2309)
DECLARE_MODIFIER(RemoveSoundFromAtom, 2310)
DECLARE_MODIFIER(AR_SetAnimPlay, 2311)
DECLARE_MODIFIER(AR_FadeAlpha, 2312)
DECLARE_MODIFIER(AR_FadeCollectionAlpha, 2313)
DECLARE_MODIFIER(AR_FadeOutOnceConditionTrue, 2314)
DECLARE_MODIFIER(AR_FadeAlphaWithHeightAboveLandscape, 2315)
DECLARE_MODIFIER(AR_GetColorFromParent, 2316)
DECLARE_MODIFIER(AppearanceRuleTumble, 2317)
DECLARE_MODIFIER(UR_UpdatePosnFromVelocity, 2318)
DECLARE_MODIFIER(EventAlways, 2319)
DECLARE_MODIFIER(UpdateRuleGravityWithFloor, 2320)
DECLARE_MODIFIER(UR_OrientWithVelocity, 2321)
DECLARE_MODIFIER(UR_OrientSpriteWithVelocity, 2322)
DECLARE_MODIFIER(UR_OrientSpriteWithRandomAngle, 2323)
DECLARE_MODIFIER(UR_GustyWind, 2324)
DECLARE_MODIFIER(FollowOrigin, 2325)
DECLARE_MODIFIER(SetScale, 2326)
DECLARE_MODIFIER(SetCollectionAlpha, 2327)
DECLARE_MODIFIER(SetAtomAlpha, 2328)
DECLARE_MODIFIER(SetPSysCloseDown, 2329)
DECLARE_MODIFIER(SetAtomHasBeenDeflected, 2330)
DECLARE_MODIFIER(ForceConstantAltitude, 2331)
DECLARE_MODIFIER(ForceConstantHeight, 2332)
DECLARE_MODIFIER(ForceMinimumHeight, 2333)
DECLARE_MODIFIER(ForceLandscapeHeight, 2334)
DECLARE_MODIFIER(UpdateRuleRotatePrincipalAxis, 2335)
DECLARE_MODIFIER(UR_Tornado, 2336)
DECLARE_MODIFIER(UR_StormCast, 2337)
DECLARE_MODIFIER(UR_VortexAttract, 2338)
DECLARE_MODIFIER(UR_CloudGather, 2339)
DECLARE_MODIFIER(UR_CloudMoverNew, 2340)
DECLARE_MODIFIER(UR_ChangeScale, 2341)
DECLARE_MODIFIER(UR_ChangeScaleXYZ, 2342)
DECLARE_MODIFIER(UR_ChangeStretchHeight, 2343)
DECLARE_MODIFIER(UR_KPStretchHeight, 2344)
DECLARE_MODIFIER(UR_MoveAtom, 2345)
DECLARE_MODIFIER(UR_KPMoveAtoms, 2346)
DECLARE_MODIFIER(UR_AddDefensiveSphere, 2347)
DECLARE_MODIFIER(UpdateRuleShieldSpark, 2348)
DECLARE_MODIFIER(UR_HealInHand, 2349)
DECLARE_MODIFIER(UR_SphereSurfaceTracer, 2350)
DECLARE_MODIFIER(UR_ForestPath, 2351)
DECLARE_MODIFIER(UR_VapourEndEffect, 2352)
DECLARE_MODIFIER(CheckShieldDeflections, 2353)
DECLARE_MODIFIER(AddSubCollectionsToAtom, 2354)
DECLARE_MODIFIER(EmitterRuleSimple, 2357)
DECLARE_MODIFIER(EmitterRuleLightningSprite, 2358)
DECLARE_MODIFIER(DiskEmitter, 2359)
DECLARE_MODIFIER(SpreadingDiskEmitter, 2360)
DECLARE_MODIFIER(EmitterRuleConical, 2361)
DECLARE_MODIFIER(UR_WillowWisp, 2362)
DECLARE_MODIFIER(ZR_ChainGesture, 2363)
DECLARE_MODIFIER(UR_AtomsAtEPTarget, 2364)
DECLARE_MODIFIER(UR_GesturingRecognised, 2365)
DECLARE_MODIFIER(UR_LightSheetOnObject, 2366)
DECLARE_MODIFIER(UR_VolFXOnObject, 2367)
DECLARE_MODIFIER(ER_EmitFromParentAtom, 2369)
DECLARE_MODIFIER(ER_BurstFromParentAtom, 2370)
DECLARE_MODIFIER(ER_GlintsOnTarget, 2371)
DECLARE_MODIFIER(ER_MultiPickup, 2372)
DECLARE_MODIFIER(UR_FollowCastPosn, 2373)
DECLARE_MODIFIER(UR_HandSprinkle, 2374)
DECLARE_MODIFIER(UR_FollowLocalHand, 2375)
DECLARE_MODIFIER(CreateRuleMakeChain, 2377)
DECLARE_MODIFIER(UR_Explosion, 2378)
DECLARE_MODIFIER(UR_ExplodeObject, 2379)
DECLARE_MODIFIER(UR_ExplodeObject2, 2380)
DECLARE_MODIFIER(UR_MoveAtomToBaseGroup, 2381)
DECLARE_MODIFIER(AttatchFireBallToAtom, 2382)
DECLARE_MODIFIER(CreateNewBaseAtom, 2383)
DECLARE_MODIFIER(CreateRuleSphere, 2384)
DECLARE_MODIFIER(CreateRuleAnAtom, 2385)
DECLARE_MODIFIER(CreateWithInitialDirection, 2386)
DECLARE_MODIFIER(UR_SideSpin, 2387)
DECLARE_MODIFIER(UR_InitialSpin, 2388)
DECLARE_MODIFIER(CreateRuleFusedSphericalExplode, 2389)
DECLARE_MODIFIER(UR_FireWorkSimple, 2390)
DECLARE_MODIFIER(CreateRule_GameObjectRef, 2391)
DECLARE_MODIFIER(LightningForkFlicker, 2392)
DECLARE_MODIFIER(UR_FollowParent, 2393)
DECLARE_MODIFIER(UR_FollowTargets, 2394)
DECLARE_MODIFIER(UR_HealSpellChakra, 2395)
DECLARE_MODIFIER(UR_CreatureSpell, 2396)
DECLARE_MODIFIER(UR_CreatureSpellItch, 2397)
DECLARE_MODIFIER(UR_CreatureSpellFreeze, 2398)
DECLARE_MODIFIER(UR_CreatureSpellGeneric, 2399)
DECLARE_MODIFIER(UR_CreatureSpellCompassion, 2400)
DECLARE_MODIFIER(UR_Trail, 2401)
DECLARE_MODIFIER(UR_ManaPathNew, 2402)
DECLARE_MODIFIER(UR_BeliefSprite, 2403)
DECLARE_MODIFIER(UR_TownCentreBelief, 2404)
DECLARE_MODIFIER(UR_Lightning, 2405)
DECLARE_MODIFIER(UR_LightningStrike, 2406)
DECLARE_MODIFIER(UR_SimpleBeam, 2407)
DECLARE_MODIFIER(UR_Rope, 2408)
DECLARE_MODIFIER(UR_ObjectArcer, 2409)
DECLARE_MODIFIER(UR_Plasma, 2410)
DECLARE_MODIFIER(UR_ScaleByCameraDist, 2411)
DECLARE_MODIFIER(ZR_SurfRevol, 2412)
DECLARE_MODIFIER(RemoveRuleOldAgeOnly, 2413)
DECLARE_MODIFIER(RemoveRuleProb, 2414)
DECLARE_MODIFIER(RemoveRuleAfterCloseDown, 2415)
DECLARE_MODIFIER(RemoveRuleAfterConditionTrue, 2416)
DECLARE_MODIFIER(LandscapeCollide, 2417)
DECLARE_MODIFIER(SetInitialRandomOrientations, 2418)
// clang-format on

void RegisterPersistent::RegisterModifiers()
{
	REGISTER_MODIFIER(AR_FadeAlpha);
	REGISTER_MODIFIER(AR_FadeCollectionAlpha);
	REGISTER_MODIFIER(AR_FadeOutOnceConditionTrue);
	REGISTER_MODIFIER(AR_FadeAlphaWithHeightAboveLandscape);
	REGISTER_MODIFIER(AR_GetColorFromParent);
	REGISTER_MODIFIER(AppearanceRuleFadeOut);
	REGISTER_MODIFIER(AppearanceRuleTumble);
	REGISTER_MODIFIER(SetScale);
	REGISTER_MODIFIER(SetCollectionAlpha);
	REGISTER_MODIFIER(SetAtomAlpha);
	REGISTER_MODIFIER(UR_ScaleByCameraDist);
	REGISTER_MODIFIER(UpdateRuleRotatePrincipalAxis);
	REGISTER_MODIFIER(UR_UpdatePosnFromVelocity);
	REGISTER_MODIFIER(UpdateRuleGravity);
	REGISTER_MODIFIER(UpdateRuleGravityWithFloor);
	REGISTER_MODIFIER(UR_OrientWithVelocity);
	REGISTER_MODIFIER(UR_OrientSpriteWithVelocity);
	REGISTER_MODIFIER(UR_OrientSpriteWithRandomAngle);
	REGISTER_MODIFIER(ForceConstantAltitude);
	REGISTER_MODIFIER(ForceConstantHeight);
	REGISTER_MODIFIER(ForceMinimumHeight);
	REGISTER_MODIFIER(ForceLandscapeHeight);
	REGISTER_MODIFIER(UR_MoveAtom);
	REGISTER_MODIFIER(UR_KPMoveAtoms);
	REGISTER_MODIFIER(UR_SideSpin);
	REGISTER_MODIFIER(UR_InitialSpin);
	REGISTER_MODIFIER(UR_CloudMoverNew);
	REGISTER_MODIFIER(EmitterRuleSimple);
	REGISTER_MODIFIER(EmitterRuleLightningSprite);
	REGISTER_MODIFIER(DiskEmitter);
	REGISTER_MODIFIER(SpreadingDiskEmitter);
	REGISTER_MODIFIER(EmitterRuleConical);
	REGISTER_MODIFIER(CreateNewBaseAtom);
	REGISTER_MODIFIER(CreateRuleSphere);
	REGISTER_MODIFIER(CreateRuleAnAtom);
	REGISTER_MODIFIER(CreateWithInitialDirection);
	REGISTER_MODIFIER(CreateRuleMakeChain);
	REGISTER_MODIFIER(RemoveRuleOldAgeOnly);
	REGISTER_MODIFIER(RemoveRuleProb);
	REGISTER_MODIFIER(RemoveRuleAfterCloseDown);
	REGISTER_MODIFIER(RemoveRuleAfterConditionTrue);
	REGISTER_MODIFIER(LandscapeCollide);
	REGISTER_MODIFIER(EventAlways);
	REGISTER_MODIFIER(AddSoundToAtom);
	REGISTER_MODIFIER(StartStopSoundOnCondition);
	REGISTER_MODIFIER(RemoveSoundFromAtom);
	REGISTER_MODIFIER(AR_SetAnimPlay);
	REGISTER_MODIFIER(SetPSysCloseDown);
	REGISTER_MODIFIER(SetAtomHasBeenDeflected);
	REGISTER_MODIFIER(UR_AddDefensiveSphere);
	REGISTER_MODIFIER(CheckShieldDeflections);
	REGISTER_MODIFIER(UR_Flocking);
	REGISTER_MODIFIER(UR_RingSpin);
	REGISTER_MODIFIER(UR_Articulate);
	REGISTER_MODIFIER(UR_GustyWind);
	REGISTER_MODIFIER(FollowOrigin);
	REGISTER_MODIFIER(UR_Tornado);
	REGISTER_MODIFIER(UR_StormCast);
	REGISTER_MODIFIER(UR_VortexAttract);
	REGISTER_MODIFIER(UR_CloudGather);
	REGISTER_MODIFIER(UR_ChangeScale);
	REGISTER_MODIFIER(UR_ChangeScaleXYZ);
	REGISTER_MODIFIER(UR_ChangeStretchHeight);
	REGISTER_MODIFIER(UR_KPStretchHeight);
	REGISTER_MODIFIER(UpdateRuleShieldSpark);
	REGISTER_MODIFIER(UR_SphereSurfaceTracer);
	REGISTER_MODIFIER(UR_ForestPath);
	REGISTER_MODIFIER(UR_HealInHand);
	REGISTER_MODIFIER(UR_VapourEndEffect);
	REGISTER_MODIFIER(UR_WillowWisp);
	REGISTER_MODIFIER(ZR_ChainGesture);
	REGISTER_MODIFIER(UR_AtomsAtEPTarget);
	REGISTER_MODIFIER(UR_GesturingRecognised);
	REGISTER_MODIFIER(UR_LightSheetOnObject);
	REGISTER_MODIFIER(UR_VolFXOnObject);
	REGISTER_MODIFIER(ER_EmitFromParentAtom);
	REGISTER_MODIFIER(ER_BurstFromParentAtom);
	REGISTER_MODIFIER(ER_GlintsOnTarget);
	REGISTER_MODIFIER(ER_MultiPickup);
	REGISTER_MODIFIER(UR_Explosion);
	REGISTER_MODIFIER(UR_ExplodeObject);
	REGISTER_MODIFIER(UR_ExplodeObject2);
	REGISTER_MODIFIER(UR_MoveAtomToBaseGroup);
	REGISTER_MODIFIER(AttatchFireBallToAtom);
	REGISTER_MODIFIER(CreateRuleFusedSphericalExplode);
	REGISTER_MODIFIER(UR_FireWorkSimple);
	REGISTER_MODIFIER(CreateRule_GameObjectRef);
	REGISTER_MODIFIER(LightningForkFlicker);
	REGISTER_MODIFIER(UR_HealSpellChakra);
	REGISTER_MODIFIER(UR_CreatureSpell);
	REGISTER_MODIFIER(UR_CreatureSpellItch);
	REGISTER_MODIFIER(UR_CreatureSpellFreeze);
	REGISTER_MODIFIER(UR_CreatureSpellGeneric);
	REGISTER_MODIFIER(UR_CreatureSpellCompassion);
	REGISTER_MODIFIER(UR_FollowTargets);
	REGISTER_MODIFIER(UR_FollowParent);
	REGISTER_MODIFIER(UR_FollowCastPosn);
	REGISTER_MODIFIER(UR_HandSprinkle);
	REGISTER_MODIFIER(UR_FollowLocalHand);
	REGISTER_MODIFIER(UR_Trail);
	REGISTER_MODIFIER(UR_ManaPathNew);
	REGISTER_MODIFIER(UR_BeliefSprite);
	REGISTER_MODIFIER(UR_TownCentreBelief);
	REGISTER_MODIFIER(UR_Lightning);
	REGISTER_MODIFIER(UR_LightningStrike);
	REGISTER_MODIFIER(UR_SimpleBeam);
	REGISTER_MODIFIER(UR_Rope);
	REGISTER_MODIFIER(UR_ObjectArcer);
	REGISTER_MODIFIER(UR_Plasma);
	REGISTER_MODIFIER(ZR_SurfRevol);
	REGISTER_MODIFIER(SetInitialRandomOrientations);
	REGISTER_MODIFIER(AddSubCollectionsToAtom);
}

void RegisterPersistent::RegisterPersistentClasses()
{
	RegisterParticleCreators();
	RegisterFloatProviders();
	RegisterConditions();
	RegisterModifiers();
}
