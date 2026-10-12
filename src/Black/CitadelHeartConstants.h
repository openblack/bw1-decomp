#ifndef BW1_DECOMP_CITADEL_HEART_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_CONSTANTS_INCLUDED_H

// TODO: The original emits the int constants below into .rdata although nothing references them; MSVC6 only
// emits an unreferenced const int whose address is taken, so they are missing from this build.
const float DestructionPlasmaStartTime = 0.0f;
const float DestructionPlasmaDuration = 14.0f;
const float DestructionPlasmaEndSpeed = 1.5f;
const float DestructionPlasmaStartSpeed = 1.0f;
const float DestructionPlasmaEndAlpha = 200.0f;
const float DestructionPlasmaStartAlpha = 50.0f;
const float DestructionPlasmaStartInterval = 0.4f;
const float DestructionPlasmaEndInterval = 0.2f;
const float DestructionPlasmaEndWidth = 0.7f;
const float DestructionPlasmaStartWidth = 3.0f;
const float DestructionMagicFXTime = 10.0f;
const float DestructionMagicFXDuration = 6.0f;
const float DestructionExplodeTime = 21.5f;
const float DestructionExplosionDuration = 15.0f;
const float DestructionShockwaveDelay = 0.3f;
const float DestructionSmokeDelay = 0.5f;
const float DestructionSmokeDuration = 7.5f;
const float DestructionFadeStartTime = 14.0f;
const float DestructionFadeDuration = 4.0f;
const float DestructionSpecularStartTime = 3.5f;
const float DestructionMinSpecular = 10.0f;
const float DestructionMaxSpecular = 60.0f;
const float DestructionSpecularFadeInDuration = 3.0f;
const float DestructionVolFXDelay = 0.5f;
const int   DestructionStageCount = 6;
const float DestructionMaxParticleStrength = 1.0f;
const float DestructionMinParticleStrength = 0.25f;
const int   CreaturePenSpriteCount = 10;
const int   CreaturePenSpriteFrames = 1;
const float CreaturePenCollisionRadius = 1.0f;
const float CreaturePenXSpinSpeed = 0.1f;
const float CreaturePenZSpinSpeed = 1.0f;
const float CreaturePenUVSpeed = 0.5f;
const float CreaturePenFrameRate = 10.0f;
const int   CreaturePenColourKey = 0x6e37;
const float DestructionVolFXScale = 0.3f;
const float DestructionVolFXUSpeed = 0.6f;
const float DestructionVolFXVSpeed = 0.2f;
const float DestructionVolFXField14 = 0.7f;
const float DestructionVolFXField18 = 0.1f;
const int   DestructionVolFXFrameCount = 20;
const float ImpactDamageScale = 0.000005f;
const float HeartRouteSize = 21.5f;
const float TransferedEffectPlasmaWidth = 2.0f;
const float TransferedEffectPlasmaSpeed = 1.5f;
const float TransferedEffectPlasmaAlpha = 70.0f;
const float TransferedDamagePlasmaEndWidth = 3.0f;
const float TransferedDamagePlasmaStartWidth = 0.4f;
const float TransferedDamagePlasmaEndAlpha = 20.0f;
const float TransferedDamagePlasmaStartAlpha = 100.0f;
const float CollideRadius = 21.5f;
const float CollideSphereScale = 1.4f;

#endif /* BW1_DECOMP_CITADEL_HEART_CONSTANTS_INCLUDED_H */
