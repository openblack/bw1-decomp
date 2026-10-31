#include "ParticleConstants.h"

#include "GameTimeConstants.h"

#include <iostream>

#include "HalfLifeConstants.h"

#include "PSysAtomCore.h"
#include "Chain.h"
#include "GameOSFile.h"
#include "JPSysInterface.h"
#include "DefensiveShield.h"
#include "DefensiveSphere.h"
#include "PSysBase.h"
#include "PSysPCreator.h"
#include "PSysRules.h"
#include "PSysManager.h"
#include "PSysModifiers.h"
#include "PSysProperties.h"
#include "PSysRenderParticle.h"
#include "PSysSound.h"
#include "ParticleCreator.h"
#include "Particle3DAnim.h"
#include "Particle3DAnimWithCamera.h"
#include "Particle3DObj.h"
#include "Particle3DObjAnimTextured.h"
#include "Particle3DPnt.h"
#include "Particle3DSprite.h"
#include "ParticleChainJoint.h"
#include "ParticleLightMap.h"
#include "ParticlePlayerSymbol.h"
#include "SpellPointInf.h"

bool32_t PSysBase::Load(GameOSFile& file)
{
	return GameThing::Load(file) != false;
}

bool32_t GJPSysInterface::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadSafe(file, (PSysBase*&)manager);
		return true;
	}
	return false;
}

bool32_t PSysManager::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadIt(file, field_0x14);
		LoadSafe(file, Player);
		LoadList(file, Collections);
		LoadSafe(file, ProcessInfo);
		LoadIt(file, Origin);
		LoadIt(file, Alpha);
		LoadIt(file, Age);
		LoadIt(file, State);
		LoadIt(file, field_0x78);
		LoadIt(file, InitialVelocity);
		LoadIt(file, InitialDirection);
		LoadIt(file, InitialSpeed);
		LoadIt(file, Magnitude);
		LoadIt(file, CloseDownAge);
		LoadSafe(file, OwnerSpell);
		LoadIt(file, field_0xac);
		LoadIt(file, field_0xad);
		LoadSafe(file, field_0xb4);
		file.ReadSafe(Targets);
		return true;
	}
	return false;
}

bool32_t BaseAtomModifierData::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadSafe(file, Modifier);
		return true;
	}
	return false;
}

bool32_t BaseCollectionModifierData::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadSafe(file, Modifier);
		return true;
	}
	return false;
}

bool32_t AtomCore::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		file.ReadSafe(SubCollections);
		file.ReadSafe(ModifierData);
		file.ReadSafe(Sounds);
		LoadIt(file, Velocity);
		LoadIt(file, BirthTime);
		LoadIt(file, RotationMatrix);
		LoadIt(file, BaseScale);
		LoadIt(file, Scale);
		LoadIt(file, StretchHeight);
		LoadIt(file, LocalPos);
		LoadIt(file, Colour);
		LoadIt(file, Specular);
		LoadIt(file, Flags);
		file.ReadSafe(DrawPosInfo);
		file.ReadSafe(LastDrawPosInfo);
		LoadIt(file, field_0x108);
		LoadIt(file, FrameTime);
		file.ReadSafe(AnimInfo);
		LoadIt(file, GravityScale);
		LoadSafe(file, Collection);
		LoadSafe(file, (PSysBase*&)Offset);
		LoadSafe(file, (PSysBase*&)Particle);
		LoadIt(file, RandomSeed);
		return true;
	}
	return false;
}

bool32_t AtomCollection::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadList(file, Modifiers);
		file.ReadSafe(ModifierData);
		LoadIt(file, BirthTime);
		LoadSafe(file, (PSysBase*&)Manager);
		LoadIt(file, Group);
		LoadIt(file, Flags);
		LoadSafe(file, ParentAtom);
		file.ReadSafe(Atoms);
		LoadSafe(file, (PSysBase*&)ParticleChain);
		LoadIt(file, TransmitsTransform);
		LoadIt(file, Alpha);
		return true;
	}
	return false;
}

bool32_t DrawOffset::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadIt(file, ReferenceCount);
		return true;
	}
	return false;
}

bool32_t DrawOffsetLT::Load(GameOSFile& file)
{
	if (DrawOffset::Load(file))
	{
		LoadIt(file, Amount);
		LoadIt(file, RefPos);
		return true;
	}
	return false;
}

bool32_t DrawOffsetDecay::Load(GameOSFile& file)
{
	if (DrawOffset::Load(file))
	{
		LoadIt(file, StartOffset);
		LoadIt(file, CurrentOffset);
		LoadIt(file, Age);
		LoadIt(file, DecayRate);
		return true;
	}
	return false;
}

bool32_t RenderParticle::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadIt(file, Enabled);
		return true;
	}
	return false;
}

bool32_t Particle3DPnt::Load(GameOSFile& file)
{
	return RenderParticle::Load(file) != false;
}

bool32_t RenderParticleMist::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		LoadSafe(file, Creator);
		LoadIt(file, field_0x1c);
		LoadIt(file, field_0x20);
		LoadIt(file, field_0x2c);
		LoadIt(file, field_0x30);
		LoadIt(file, field_0x3c);
		return true;
	}
	return false;
}

bool32_t ParticleLightMap::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		LoadSafe(file, Creator);
		LoadIt(file, field_0x1c);
		LoadIt(file, field_0x20);
		LoadIt(file, field_0x24);
		LoadIt(file, field_0x28);
		LoadIt(file, field_0x34);
		LoadIt(file, field_0x38);
		LoadIt(file, field_0x44);
		return true;
	}
	return false;
}

bool32_t Particle3DObj::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		LoadSafe(file, Creator);
		LoadIt(file, field_0x24);
		return true;
	}
	return false;
}

bool32_t Particle3DAnim::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		LoadSafe(file, Creator);
		LoadIt(file, field_0x1c);
		LoadIt(file, field_0x20);
		LoadIt(file, field_0x24);
		LoadIt(file, field_0x28);
		return true;
	}
	return false;
}

bool32_t Particle3DAnimWithCamera::Load(GameOSFile& file)
{
	if (Particle3DAnim::Load(file))
	{
		LoadSafe(file, field_0x30);
		LoadIt(file, field_0x34);
		LoadIt(file, field_0x35);
		LoadIt(file, field_0x36);
		LoadIt(file, field_0x38);
		LoadIt(file, field_0x3c);
		return true;
	}
	return false;
}

bool32_t Particle3DObjAnimTextured::Load(GameOSFile& file)
{
	if (Particle3DObj::Load(file))
	{
		LoadIt(file, field_0x28);
		LoadIt(file, field_0x2c);
		LoadIt(file, field_0x30);
		LoadIt(file, field_0x31);
		LoadIt(file, field_0x32);
		LoadIt(file, field_0x34);
		return true;
	}
	return false;
}

bool32_t RenderParticleCreatureRef::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		file.ReadSafe(field_0x18);
		return true;
	}
	return false;
}

bool32_t RenderParticleGameObjectRef::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		file.ReadSafe(GameObject);
		return true;
	}
	return false;
}

bool32_t RenderParticleGoldenShower::Load(GameOSFile& file)
{
	return RenderParticleGameObjectRef::Load(file) != false;
}

bool32_t ParticlePlayerSymbol::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		LoadIt(file, field_0x1c);
		return true;
	}
	return false;
}

bool32_t RenderParticleGameObject::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		file.ReadSafe(field_0x18);
		LoadSafe(file, field_0x20);
		LoadIt(file, field_0x24);
		LoadIt(file, field_0x54);
		return true;
	}
	return false;
}

bool32_t ParticleChainJoint::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		LoadSafe(file, (PSysBase*&)ParentChain);
		LoadIt(file, JointIndex);
		LoadIt(file, RandJitter);
		LoadIt(file, JitterEnabled);
		return true;
	}
	return false;
}

bool32_t Particle3DSprite::Load(GameOSFile& file)
{
	if (RenderParticle::Load(file))
	{
		LoadIt(file, Alpha);
		LoadSafe(file, Creator);
		LoadIt(file, FrameOffset);
		LoadIt(file, Flags);
		LoadIt(file, PreviousScale);
		LoadIt(file, Scale);
		return true;
	}
	return false;
}

bool32_t Chain::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadSafe(file, field_0x14);
		LoadIt(file, field_0x18);
		LoadIt(file, field_0x1c);
		file.ReadIt(field_0x20);
		LoadIt(file, field_0x24);
		LoadIt(file, field_0x28);
		LoadIt(file, field_0x2c);
		LoadIt(file, field_0x30);
		LoadIt(file, field_0x34);
		LoadIt(file, field_0x38);
		LoadIt(file, field_0x3c);
		file.ReadSafe(Joints);
		LoadIt(file, field_0x4c);
		LoadIt(file, field_0x40);
		return true;
	}
	return false;
}

bool32_t UR_BeliefSprite::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, field_0x20);
		LoadIt(file, field_0x2c);
		return true;
	}
	return false;
}

bool32_t UR_ManaPathNew::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		file.ReadIt(field_0x20);
		file.ReadIt(field_0x2c);
		file.ReadIt(field_0x38);
		file.ReadSafe(Path);
		LoadIt(file, field_0x74);
		LoadIt(file, field_0x78);
		LoadIt(file, field_0x7c);
		LoadIt(file, field_0x80);
		LoadIt(file, PathIndex);
		return true;
	}
	return false;
}

bool32_t UR_PlasmaInf::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadIt(file, Start);
		LoadIt(file, End);
		LoadIt(file, StartNormal);
		LoadIt(file, StartNormal);
		LoadIt(file, EndNormal);
		LoadIt(file, Width);
		LoadIt(file, Speed);
		LoadIt(file, Alpha);
		return true;
	}
	return false;
}

bool32_t UR_Plasma::SubCollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		file.ReadSafe(Spline);
		LoadIt(file, Index);
		LoadIt(file, Active);
		return true;
	}
	return false;
}

bool32_t UR_Plasma::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, field_0x20);
		LoadIt(file, field_0x2c);
		LoadIt(file, field_0x38);
		LoadIt(file, field_0x44);
		LoadIt(file, field_0x50);
		LoadIt(file, field_0x54);
		LoadIt(file, field_0x58);
		return true;
	}
	return false;
}

bool32_t UR_VolFXOnObject::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		file.ReadSafe(field_0x2c);
		return true;
	}
	return false;
}

bool32_t UR_LightSheetOnObject::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, field_0x2c);
		return true;
	}
	return false;
}

bool32_t UR_LightSheetOnObject::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_SimpleBeam::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		file.ReadSafe(Target);
		LoadIt(file, field_0x28);
		LoadIt(file, field_0x34);
		return true;
	}
	return false;
}

bool32_t UR_OrientSpriteWithVelocity::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadSafe(file, Velocity);
		return true;
	}
	return false;
}

bool32_t AttatchFireBallToAtom::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadSafe(file, FireBall);
		return true;
	}
	return false;
}

bool32_t AR_FadeOutOnceConditionTrue::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, ConditionMet);
		LoadIt(file, StartTime);
		LoadIt(file, StartAlpha);
		LoadIt(file, StartScale);
		return true;
	}
	return false;
}

bool32_t AddSoundToAtom::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, SoundAdded);
		return true;
	}
	return false;
}

bool32_t RemoveSoundFromAtom::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, SoundRemoved);
		return true;
	}
	return false;
}

bool32_t UpdateRuleGravityWithFloor::AtomDataRipple::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, RippleCentre);
		return true;
	}
	return false;
}

bool32_t UR_BankedTurning::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UpdateRuleShieldSpark::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, RandomAngleX);
		LoadIt(file, RandomAngleY);
		LoadIt(file, RandomAngleZ);
		LoadIt(file, NumWiggles);
		LoadIt(file, Orientation);
		return true;
	}
	return false;
}

bool32_t UR_VapourEndEffect::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t AddSubCollectionsToAtom::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, Added);
		return true;
	}
	return false;
}

bool32_t CreateNewBaseAtom::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, Created);
		return true;
	}
	return false;
}

bool32_t ER_GlintsOnTarget::ParentAtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, NumEmitted);
		file.ReadSafe(Target);
		return true;
	}
	return false;
}

bool32_t ER_GlintsOnTarget::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, VertexIndex);
		return true;
	}
	return false;
}

bool32_t UR_HealSpellChakra::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		file.ReadSafe(Target);
		LoadIt(file, Finished);
		LoadIt(file, SoundStarted);
		LoadIt(file, FirstUpdate);
		LoadIt(file, TargetRadius);
		LoadIt(file, TargetHeight);
		return true;
	}
	return false;
}

bool32_t UR_OrientSpriteWithRandomAngle::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, Angle);
		return true;
	}
	return false;
}

bool32_t UR_SideSpin::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, Spin);
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_InitialSpin::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, Spin);
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t RemoveRuleAfterConditionTrue::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, ConditionMet);
		LoadIt(file, ConditionMetAge);
		return true;
	}
	return false;
}

bool32_t UR_OrientWithVelocity::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, SmoothedVelocity);
		LoadIt(file, SpinAngle);
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_FollowTargets::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		file.ReadSafe(Target);
		return true;
	}
	return false;
}

bool32_t UR_SimpleBeam::SubCollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		file.ReadSafe(Spline);
		LoadIt(file, Index);
		LoadIt(file, Active);
		return true;
	}
	return false;
}

bool32_t UR_AtomsAtEPTarget::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		file.ReadSafe(Target);
		return true;
	}
	return false;
}

bool32_t UR_Lightning_CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadSafe(file, field_0x20);
		LoadSafe(file, field_0x24);
		LoadIt(file, field_0x30);
		LoadIt(file, field_0x3c);
		LoadIt(file, field_0x48);
		LoadIt(file, field_0x54);
		LoadIt(file, field_0x58);
		LoadIt(file, field_0x59);
		LoadIt(file, field_0x5a);
		LoadIt(file, field_0x5c);
		LoadIt(file, field_0x60);
		file.ReadIt(field_0x64);
		file.ReadIt(field_0x68);
		file.ReadSafe(field_0x6c);
		file.ReadSafe(field_0x80);
		LoadIt(file, field_0x88);
		file.ReadSafe(field_0x8c);
		LoadIt(file, field_0xa0);
		LoadSafe(file, field_0xa4);
		LoadSafe(file, field_0xa8);
		LoadIt(file, field_0xac);
		LoadIt(file, field_0xb0);
		LoadIt(file, field_0xb4);
		return true;
	}
	return false;
}

bool32_t UR_AddDefensiveSphere::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadSafe(file, (PSysBase*&)Shield);
		return true;
	}
	return false;
}

bool32_t UR_CloudMoverNew::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellCompassion::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, NumEmitted);
		LoadIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellGeneric::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, Theta);
		LoadIt(file, Phi);
		LoadIt(file, ThetaSpeed);
		LoadIt(file, PhiSpeed);
		LoadIt(file, BaseScale);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellGeneric::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, Start);
		LoadIt(file, End);
		LoadIt(file, FirstUpdate);
		LoadIt(file, NumEmitted);
		LoadIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpell::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		file.ReadSafe(Target);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellItch::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellFreeze::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, FirstUpdate);
		LoadIt(file, NumEmitted);
		LoadIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t SpellPointInf::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadIt(file, Colour);
		LoadIt(file, To);
		LoadIt(file, From);
		LoadIt(file, Speed);
		return true;
	}
	return false;
}

bool32_t UR_VortexAttract::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, StartHeight);
		LoadIt(file, Centre);
		LoadIt(file, Indestructible);
		LoadIt(file, WasPaper);
		LoadIt(file, WasDisappearing);
		LoadIt(file, Importance);
		LoadSafe(file, (GameThing*&)OutVortex);
		return true;
	}
	return false;
}

bool32_t UR_Explosion::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, field_0x20);
		LoadIt(file, field_0x21);
		LoadIt(file, field_0x24);
		LoadIt(file, field_0x30);
		file.ReadSafe(field_0x34);
		LoadIt(file, field_0x48);
		LoadIt(file, field_0x4c);
		LoadIt(file, field_0x50);
		LoadIt(file, field_0x51);
		file.ReadSafe(field_0x54);
		LoadIt(file, field_0x52);
		return true;
	}
	return false;
}

bool32_t UR_Explosion::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_Flocking::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, Centre);
		return true;
	}
	return false;
}

bool32_t UR_SphereSurfaceTracer::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, Theta);
		LoadIt(file, Phi);
		LoadIt(file, Psi);
		return true;
	}
	return false;
}

bool32_t CheckShieldDeflections::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, field_0x24);
		return true;
	}
	return false;
}

bool32_t UR_ForestPath::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, InitialTheta);
		LoadIt(file, InitialPhi);
		LoadIt(file, InitialPsi);
		return true;
	}
	return false;
}

bool32_t UR_CloudGather::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, Heading);
		LoadIt(file, NumToEmit);
		LoadIt(file, NumEmitted);
		LoadIt(file, FirstUpdate);
		LoadIt(file, EmitRate);
		LoadIt(file, NextLightningTime);
		LoadIt(file, LightningEndTime);
		LoadIt(file, SpinDirection);
		LoadSafe(file, LightningCollection);
		LoadSafe(file, LightningAtom);
		LoadIt(file, LightningDetached);
		LoadIt(file, LightningEnabled);
		LoadIt(file, RainEnabled);
		LoadIt(file, StormEnabled);
		return true;
	}
	return false;
}

bool32_t UR_CloudGather::AtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, Radius);
		LoadIt(file, Theta);
		LoadIt(file, UnusedSavedValue);
		LoadIt(file, SpecActive);
		LoadIt(file, SpecStartAge);
		LoadIt(file, HeightOffset);
		return true;
	}
	return false;
}

bool32_t UR_Tornado::DebrisCollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, NumEmitted);
		LoadIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t UR_Tornado::FlyingCollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, NumEmitted);
		LoadIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t UR_Tornado::FlyingAtomData::Load(GameOSFile& file)
{
	if (BaseAtomModifierData::Load(file))
	{
		LoadIt(file, State);
		LoadIt(file, TargetHeight);
		LoadIt(file, ThetaDotScale);
		return true;
	}
	return false;
}

bool32_t UR_Tornado::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, Point0);
		LoadIt(file, Point1);
		LoadIt(file, Point2);
		LoadIt(file, Point3);
		LoadIt(file, Point4);
		LoadIt(file, Scale0);
		LoadIt(file, Scale1);
		LoadIt(file, Flag0);
		LoadIt(file, Scale2);
		LoadIt(file, Flag1);
		return true;
	}
	return false;
}

bool32_t EmitterRule::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, NextEmitTime);
		LoadIt(file, NumEmitted);
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_WillowWisp::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, LastParentPos);
		LoadIt(file, NumToEmit);
		LoadIt(file, NumEmitted);
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t ER_BurstFromParentAtom::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, NumToEmit);
		LoadIt(file, NumEmitted);
		return true;
	}
	return false;
}

bool32_t ER_EmitFromParentAtom::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, NumToEmit);
		LoadIt(file, NumEmitted);
		return true;
	}
	return false;
}

bool32_t UR_FollowTargets::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_Trail::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		if (GameOSFile::ReadEnabled)
		{
			long numFilled;
			file.ReadIt(numFilled);
			long maxSize;
			file.ReadIt(maxSize);
			Trail.SetMaxSize(maxSize);
			for (long i = 0; i < numFilled; ++i)
			{
				PosScaleRotation value;
				file.ReadSafe(value);
				Trail.Add(value);
			}
		}
		return true;
	}
	return false;
}

bool32_t LightningForkFlicker::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, NextFlickerTime);
		return true;
	}
	return false;
}

bool32_t EmitterRuleLightningSprite::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, StrikeTime);
		LoadIt(file, Striking);
		LoadIt(file, NextEmitTime);
		LoadIt(file, NumEmitted);
		LoadIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_HandSprinkle::CollectionData::Load(GameOSFile& file)
{
	if (BaseCollectionModifierData::Load(file))
	{
		LoadIt(file, FirstUpdate);
		LoadIt(file, Age);
		return true;
	}
	return false;
}

bool32_t DefensiveShield::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		LoadSafe(file, (PSysBase*&)Manager);
		return true;
	}
	return false;
}

bool32_t DefensiveSphere::Load(GameOSFile& file)
{
	if (DefensiveShield::Load(file))
	{
		LoadSafe(file, Sphere);
		return true;
	}
	return false;
}

void AtomCollection::ResolveLoad()
{
	for (LHLinkedNode<const AtomCollectionModifier*>* node = Modifiers.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		node->payload->AddReference(this);
	}
#if defined(VERSION_BW1WCI)
	CreatureIsleVirtual0x108();
#endif
}

void Particle3DObj::ResolveLoad()
{
	if (Object3D == NULL && Creator != NULL)
	{
		Object3D = Creator->CreateLH3DObject();
	}
#if defined(VERSION_BW1WCI)
	CreatureIsleVirtual0x108();
#endif
}

void Particle3DAnim::ResolveLoad()
{
	if (Object3D == NULL && Creator != NULL)
	{
		Object3D = Creator->CreateLH3DObject();
	}
}

void RenderParticleMist::ResolveLoad()
{
	if (Mist == NULL && Creator != NULL)
	{
		Mist = ((ParticleMistCreator*)Creator)->CreateLH3DMist();
	}
}

void Particle3DSprite::ResolveLoad()
{
	if (Sprite == NULL && Creator != NULL)
	{
		Sprite = Creator->CreateSprite();
	}
}

void ParticleLightMap::ResolveLoad()
{
	if (Bitmap == NULL && Creator != NULL)
	{
		Bitmap = Creator->GetBitmap();
	}
}
