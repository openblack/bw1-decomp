#include "ParticleConstants.h"

#include "GameTimeConstants.h"

#include <iostream>

#include "HalfLifeConstants.h"

#include "Chain.h"
#include "GameOSFile.h"
#include "JPSysInterface.h"
#include "PSysAtomCore.h"
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

bool32_t PSysBase::Save(GameOSFile& file)
{
	return GameThing::Save(file) != false;
}

bool32_t GJPSysInterface::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveSafe(file, (PSysBase*&)manager);
		return true;
	}
	return false;
}

bool32_t PSysManager::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveIt(file, field_0x14);
		SaveSafe(file, Player);
		SaveList(file, Collections);
		SaveSafe(file, ProcessInfo);
		SaveIt(file, Origin);
		SaveIt(file, Alpha);
		SaveIt(file, Age);
		SaveIt(file, State);
		SaveIt(file, field_0x78);
		SaveIt(file, InitialVelocity);
		SaveIt(file, InitialDirection);
		SaveIt(file, InitialSpeed);
		SaveIt(file, Magnitude);
		SaveIt(file, CloseDownAge);
		SaveSafe(file, OwnerSpell);
		SaveIt(file, field_0xac);
		SaveIt(file, field_0xad);
		SaveSafe(file, field_0xb4);
		file.WriteSafe(Targets);
		return true;
	}
	return false;
}

bool32_t BaseAtomModifierData::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveSafe(file, Modifier);
		return true;
	}
	return false;
}

bool32_t BaseCollectionModifierData::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveSafe(file, Modifier);
		return true;
	}
	return false;
}

bool32_t AtomCore::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		file.WriteSafe(SubCollections);
		file.WriteSafe(ModifierData);
		file.WriteSafe(Sounds);
		SaveIt(file, Velocity);
		SaveIt(file, BirthTime);
		SaveIt(file, RotationMatrix);
		SaveIt(file, BaseScale);
		SaveIt(file, Scale);
		SaveIt(file, StretchHeight);
		SaveIt(file, LocalPos);
		SaveIt(file, Colour);
		SaveIt(file, Specular);
		SaveIt(file, Flags);
		SaveSafe(file, DrawPosInfo);
		SaveSafe(file, LastDrawPosInfo);
		SaveIt(file, field_0x108);
		SaveIt(file, FrameTime);
		SaveSafe(file, AnimInfo);
		SaveIt(file, GravityScale);
		SaveSafe(file, Collection);
		SaveSafe(file, (PSysBase*&)Offset);
		SaveSafe(file, (PSysBase*&)Particle);
		SaveIt(file, RandomSeed);
		return true;
	}
	return false;
}

bool32_t AtomCollection::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveList(file, Modifiers);
		file.WriteSafe(ModifierData);
		SaveIt(file, BirthTime);
		SaveSafe(file, (PSysBase*&)Manager);
		SaveIt(file, Group);
		SaveIt(file, Flags);
		SaveSafe(file, ParentAtom);
		file.WriteSafe(Atoms);
		SaveSafe(file, (PSysBase*&)ParticleChain);
		SaveIt(file, TransmitsTransform);
		SaveIt(file, Alpha);
		return true;
	}
	return false;
}

bool32_t DrawOffset::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveIt(file, ReferenceCount);
		return true;
	}
	return false;
}

bool32_t DrawOffsetLT::Save(GameOSFile& file)
{
	if (DrawOffset::Save(file))
	{
		SaveIt(file, Amount);
		SaveIt(file, RefPos);
		return true;
	}
	return false;
}

bool32_t DrawOffsetDecay::Save(GameOSFile& file)
{
	if (DrawOffset::Save(file))
	{
		SaveIt(file, StartOffset);
		SaveIt(file, CurrentOffset);
		SaveIt(file, Age);
		SaveIt(file, DecayRate);
		return true;
	}
	return false;
}

bool32_t RenderParticle::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveIt(file, Enabled);
		return true;
	}
	return false;
}

bool32_t Particle3DPnt::Save(GameOSFile& file)
{
	return RenderParticle::Save(file) != false;
}

bool32_t RenderParticleMist::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		SaveSafe(file, Creator);
		SaveIt(file, field_0x1c);
		SaveIt(file, field_0x20);
		SaveIt(file, field_0x2c);
		SaveIt(file, field_0x30);
		SaveIt(file, field_0x3c);
		return true;
	}
	return false;
}

bool32_t ParticleLightMap::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		SaveSafe(file, Creator);
		SaveIt(file, field_0x1c);
		SaveIt(file, field_0x20);
		SaveIt(file, field_0x24);
		SaveIt(file, field_0x28);
		SaveIt(file, field_0x34);
		SaveIt(file, field_0x38);
		SaveIt(file, field_0x44);
		return true;
	}
	return false;
}

bool32_t Particle3DObj::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		SaveSafe(file, Creator);
		SaveIt(file, field_0x24);
		return true;
	}
	return false;
}

bool32_t Particle3DAnim::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		SaveSafe(file, Creator);
		SaveIt(file, field_0x1c);
		SaveIt(file, field_0x20);
		SaveIt(file, field_0x24);
		SaveIt(file, field_0x28);
		return true;
	}
	return false;
}

bool32_t Particle3DAnimWithCamera::Save(GameOSFile& file)
{
	if (Particle3DAnim::Save(file))
	{
		SaveSafe(file, field_0x30);
		SaveIt(file, field_0x34);
		SaveIt(file, field_0x35);
		SaveIt(file, field_0x36);
		SaveIt(file, field_0x38);
		SaveIt(file, field_0x3c);
		return true;
	}
	return false;
}

bool32_t Particle3DObjAnimTextured::Save(GameOSFile& file)
{
	if (Particle3DObj::Save(file))
	{
		SaveIt(file, field_0x28);
		SaveIt(file, field_0x2c);
		SaveIt(file, field_0x30);
		SaveIt(file, field_0x31);
		SaveIt(file, field_0x32);
		SaveIt(file, field_0x34);
		return true;
	}
	return false;
}

bool32_t RenderParticleCreatureRef::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		file.WriteSafe(field_0x18);
		return true;
	}
	return false;
}

bool32_t RenderParticleGameObjectRef::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		file.WriteSafe(GameObject);
		return true;
	}
	return false;
}

bool32_t RenderParticleGoldenShower::Save(GameOSFile& file)
{
	return RenderParticleGameObjectRef::Save(file) != false;
}

bool32_t ParticlePlayerSymbol::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		SaveIt(file, field_0x1c);
		return true;
	}
	return false;
}

bool32_t RenderParticleGameObject::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		file.WriteSafe(field_0x18);
		SaveSafe(file, field_0x20);
		SaveIt(file, field_0x24);
		SaveIt(file, field_0x54);
		return true;
	}
	return false;
}

bool32_t ParticleChainJoint::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		SaveSafe(file, (PSysBase*&)ParentChain);
		SaveIt(file, JointIndex);
		SaveIt(file, RandJitter);
		SaveIt(file, JitterEnabled);
		return true;
	}
	return false;
}

bool32_t Particle3DSprite::Save(GameOSFile& file)
{
	if (RenderParticle::Save(file))
	{
		SaveIt(file, Alpha);
		SaveSafe(file, Creator);
		SaveIt(file, FrameOffset);
		SaveIt(file, Flags);
		SaveIt(file, PreviousScale);
		SaveIt(file, Scale);
		return true;
	}
	return false;
}

bool32_t Chain::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveSafe(file, field_0x14);
		SaveIt(file, field_0x18);
		SaveIt(file, field_0x1c);
		file.WriteIt(field_0x20);
		SaveIt(file, field_0x24);
		SaveIt(file, field_0x28);
		SaveIt(file, field_0x2c);
		SaveIt(file, field_0x30);
		SaveIt(file, field_0x34);
		SaveIt(file, field_0x38);
		SaveIt(file, field_0x3c);
		file.WriteSafe(Joints);
		SaveIt(file, field_0x4c);
		SaveIt(file, field_0x40);
		return true;
	}
	return false;
}

bool32_t UR_BeliefSprite::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, field_0x20);
		SaveIt(file, field_0x2c);
		return true;
	}
	return false;
}

bool32_t UR_ManaPathNew::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		file.WriteIt(field_0x20);
		file.WriteIt(field_0x2c);
		file.WriteIt(field_0x38);
		file.WriteSafe(Path);
		SaveIt(file, field_0x74);
		SaveIt(file, field_0x78);
		SaveIt(file, field_0x7c);
		SaveIt(file, field_0x80);
		SaveIt(file, PathIndex);
		return true;
	}
	return false;
}

bool32_t UR_PlasmaInf::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveIt(file, Start);
		SaveIt(file, End);
		SaveIt(file, StartNormal);
		SaveIt(file, StartNormal);
		SaveIt(file, EndNormal);
		SaveIt(file, Width);
		SaveIt(file, Speed);
		SaveIt(file, Alpha);
		return true;
	}
	return false;
}

bool32_t UR_Plasma::SubCollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		file.WriteSafe(Spline);
		SaveIt(file, Index);
		SaveIt(file, Active);
		return true;
	}
	return false;
}

bool32_t UR_Plasma::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, field_0x20);
		SaveIt(file, field_0x2c);
		SaveIt(file, field_0x38);
		SaveIt(file, field_0x44);
		SaveIt(file, field_0x50);
		SaveIt(file, field_0x54);
		SaveIt(file, field_0x58);
		return true;
	}
	return false;
}

bool32_t UR_VolFXOnObject::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		file.WriteSafe(field_0x2c);
		return true;
	}
	return false;
}

bool32_t UR_LightSheetOnObject::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, field_0x2c);
		return true;
	}
	return false;
}

bool32_t UR_LightSheetOnObject::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_SimpleBeam::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		file.WriteSafe(Target);
		SaveIt(file, field_0x28);
		SaveIt(file, field_0x34);
		return true;
	}
	return false;
}

bool32_t UR_OrientSpriteWithVelocity::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveSafe(file, Velocity);
		return true;
	}
	return false;
}

bool32_t AttatchFireBallToAtom::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveSafe(file, FireBall);
		return true;
	}
	return false;
}

bool32_t AR_FadeOutOnceConditionTrue::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, ConditionMet);
		SaveIt(file, StartTime);
		SaveIt(file, StartAlpha);
		SaveIt(file, StartScale);
		return true;
	}
	return false;
}

bool32_t AddSoundToAtom::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, SoundAdded);
		return true;
	}
	return false;
}

bool32_t RemoveSoundFromAtom::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, SoundRemoved);
		return true;
	}
	return false;
}

bool32_t UpdateRuleGravityWithFloor::AtomDataRipple::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, RippleCentre);
		return true;
	}
	return false;
}

bool32_t UR_BankedTurning::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UpdateRuleShieldSpark::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, RandomAngleX);
		SaveIt(file, RandomAngleY);
		SaveIt(file, RandomAngleZ);
		SaveIt(file, NumWiggles);
		SaveIt(file, Orientation);
		return true;
	}
	return false;
}

bool32_t UR_VapourEndEffect::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t AddSubCollectionsToAtom::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, Added);
		return true;
	}
	return false;
}

bool32_t CreateNewBaseAtom::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, Created);
		return true;
	}
	return false;
}

bool32_t ER_GlintsOnTarget::ParentAtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, NumEmitted);
		file.WriteSafe(Target);
		return true;
	}
	return false;
}

bool32_t ER_GlintsOnTarget::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, VertexIndex);
		return true;
	}
	return false;
}

bool32_t UR_HealSpellChakra::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		file.WriteSafe(Target);
		SaveIt(file, Finished);
		SaveIt(file, SoundStarted);
		SaveIt(file, FirstUpdate);
		SaveIt(file, TargetRadius);
		SaveIt(file, TargetHeight);
		return true;
	}
	return false;
}

bool32_t UR_OrientSpriteWithRandomAngle::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, Angle);
		return true;
	}
	return false;
}

bool32_t UR_SideSpin::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, Spin);
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_InitialSpin::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, Spin);
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t RemoveRuleAfterConditionTrue::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, ConditionMet);
		SaveIt(file, ConditionMetAge);
		return true;
	}
	return false;
}

bool32_t UR_OrientWithVelocity::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, SmoothedVelocity);
		SaveIt(file, SpinAngle);
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_FollowTargets::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		file.WriteSafe(Target);
		return true;
	}
	return false;
}

bool32_t UR_SimpleBeam::SubCollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		file.WriteSafe(Spline);
		SaveIt(file, Index);
		SaveIt(file, Active);
		return true;
	}
	return false;
}

bool32_t UR_AtomsAtEPTarget::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		file.WriteSafe(Target);
		return true;
	}
	return false;
}

bool32_t UR_Lightning_CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveSafe(file, field_0x20);
		SaveSafe(file, field_0x24);
		SaveIt(file, field_0x30);
		SaveIt(file, field_0x3c);
		SaveIt(file, field_0x48);
		SaveIt(file, field_0x54);
		SaveIt(file, field_0x58);
		SaveIt(file, field_0x59);
		SaveIt(file, field_0x5a);
		SaveIt(file, field_0x5c);
		SaveIt(file, field_0x60);
		SaveIt(file, field_0x64);
		SaveIt(file, field_0x68);
		file.WriteSafe(field_0x6c);
		file.WriteSafe(field_0x80);
		SaveIt(file, field_0x88);
		file.WriteSafe(field_0x8c);
		SaveIt(file, field_0xa0);
		SaveSafe(file, field_0xa4);
		SaveSafe(file, field_0xa8);
		SaveIt(file, field_0xac);
		SaveIt(file, field_0xb0);
		SaveIt(file, field_0xb4);
		return true;
	}
	return false;
}

bool32_t UR_AddDefensiveSphere::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveSafe(file, (PSysBase*&)Shield);
		return true;
	}
	return false;
}

bool32_t UR_CloudMoverNew::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellCompassion::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, NumEmitted);
		SaveIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellGeneric::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, Theta);
		SaveIt(file, Phi);
		SaveIt(file, ThetaSpeed);
		SaveIt(file, PhiSpeed);
		SaveIt(file, BaseScale);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellGeneric::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, Start);
		SaveIt(file, End);
		SaveIt(file, FirstUpdate);
		SaveIt(file, NumEmitted);
		SaveIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpell::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		file.WriteSafe(Target);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellItch::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_CreatureSpellFreeze::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, FirstUpdate);
		SaveIt(file, NumEmitted);
		SaveIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t SpellPointInf::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveIt(file, Colour);
		SaveIt(file, To);
		SaveIt(file, From);
		SaveIt(file, Speed);
		return true;
	}
	return false;
}

bool32_t UR_VortexAttract::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, StartHeight);
		SaveIt(file, Centre);
		SaveIt(file, Indestructible);
		SaveIt(file, WasPaper);
		SaveIt(file, WasDisappearing);
		SaveIt(file, Importance);
		SaveSafe(file, (GameThing*&)OutVortex);
		return true;
	}
	return false;
}

bool32_t UR_Explosion::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, field_0x20);
		SaveIt(file, field_0x21);
		SaveIt(file, field_0x24);
		SaveIt(file, field_0x30);
		file.WriteSafe(field_0x34);
		SaveIt(file, field_0x48);
		SaveIt(file, field_0x4c);
		SaveIt(file, field_0x50);
		SaveIt(file, field_0x51);
		SaveSafe(file, field_0x54);
		SaveIt(file, field_0x52);
		return true;
	}
	return false;
}

bool32_t UR_Explosion::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_Flocking::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, Centre);
		return true;
	}
	return false;
}

bool32_t UR_SphereSurfaceTracer::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, Theta);
		SaveIt(file, Phi);
		SaveIt(file, Psi);
		return true;
	}
	return false;
}

bool32_t CheckShieldDeflections::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, field_0x24);
		return true;
	}
	return false;
}

bool32_t UR_ForestPath::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, InitialTheta);
		SaveIt(file, InitialPhi);
		SaveIt(file, InitialPsi);
		return true;
	}
	return false;
}

bool32_t UR_CloudGather::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, Heading);
		SaveIt(file, NumToEmit);
		SaveIt(file, NumEmitted);
		SaveIt(file, FirstUpdate);
		SaveIt(file, EmitRate);
		SaveIt(file, NextLightningTime);
		SaveIt(file, LightningEndTime);
		SaveIt(file, SpinDirection);
		SaveSafe(file, LightningCollection);
		SaveSafe(file, LightningAtom);
		SaveIt(file, LightningDetached);
		SaveIt(file, LightningEnabled);
		SaveIt(file, RainEnabled);
		SaveIt(file, StormEnabled);
		return true;
	}
	return false;
}

bool32_t UR_CloudGather::AtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, Radius);
		SaveIt(file, Theta);
		SaveIt(file, UnusedSavedValue);
		SaveIt(file, SpecActive);
		SaveIt(file, SpecStartAge);
		SaveIt(file, HeightOffset);
		return true;
	}
	return false;
}

bool32_t UR_Tornado::DebrisCollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, NumEmitted);
		SaveIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t UR_Tornado::FlyingCollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, NumEmitted);
		SaveIt(file, EmitTime);
		return true;
	}
	return false;
}

bool32_t UR_Tornado::FlyingAtomData::Save(GameOSFile& file)
{
	if (BaseAtomModifierData::Save(file))
	{
		SaveIt(file, State);
		SaveIt(file, TargetHeight);
		SaveIt(file, ThetaDotScale);
		return true;
	}
	return false;
}

bool32_t UR_Tornado::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, Point0);
		SaveIt(file, Point1);
		SaveIt(file, Point2);
		SaveIt(file, Point3);
		SaveIt(file, Point4);
		SaveIt(file, Scale0);
		SaveIt(file, Scale1);
		SaveIt(file, Flag0);
		SaveIt(file, Scale2);
		SaveIt(file, Flag1);
		return true;
	}
	return false;
}

bool32_t EmitterRule::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, NextEmitTime);
		SaveIt(file, NumEmitted);
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_WillowWisp::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, LastParentPos);
		SaveIt(file, NumToEmit);
		SaveIt(file, NumEmitted);
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t ER_BurstFromParentAtom::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, NumToEmit);
		SaveIt(file, NumEmitted);
		return true;
	}
	return false;
}

bool32_t ER_EmitFromParentAtom::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, NumToEmit);
		SaveIt(file, NumEmitted);
		return true;
	}
	return false;
}

bool32_t UR_FollowTargets::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_Trail::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		file.WriteSafe(Trail);
		return true;
	}
	return false;
}

bool32_t LightningForkFlicker::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, NextFlickerTime);
		return true;
	}
	return false;
}

bool32_t EmitterRuleLightningSprite::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, StrikeTime);
		SaveIt(file, Striking);
		SaveIt(file, NextEmitTime);
		SaveIt(file, NumEmitted);
		SaveIt(file, FirstUpdate);
		return true;
	}
	return false;
}

bool32_t UR_HandSprinkle::CollectionData::Save(GameOSFile& file)
{
	if (BaseCollectionModifierData::Save(file))
	{
		SaveIt(file, FirstUpdate);
		SaveIt(file, Age);
		return true;
	}
	return false;
}

bool32_t DefensiveShield::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		SaveSafe(file, (PSysBase*&)Manager);
		return true;
	}
	return false;
}

bool32_t DefensiveSphere::Save(GameOSFile& file)
{
	if (DefensiveShield::Save(file))
	{
		SaveSafe(file, Sphere);
		return true;
	}
	return false;
}
