#ifndef BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H
#define BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */
#include "PSysModifiers.h" /* For struct BaseAtomModifierData, struct BaseCollectionModifierData */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class AR_FadeOutOnceConditionTrue__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055f640 BW1M100 inlined AR_FadeOutOnceConditionTrue::AtomData::_dt( (void))
    virtual ~AR_FadeOutOnceConditionTrue__AtomData();
    // BW1W120 0055f630 BW1M100 inlined AR_FadeOutOnceConditionTrue::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696b00 BW1M100 inlined AR_FadeOutOnceConditionTrue::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd660 BW1M100 inlined AR_FadeOutOnceConditionTrue::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f620 BW1M100 inlined AR_FadeOutOnceConditionTrue::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class AddSoundToAtom__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055f6c0 BW1M100 inlined AddSoundToAtom::AtomData::_dt( (void))
    virtual ~AddSoundToAtom__AtomData();
    // BW1W120 0055f6b0 BW1M100 inlined AddSoundToAtom::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696c10 BW1M100 inlined AddSoundToAtom::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd770 BW1M100 inlined AddSoundToAtom::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f6a0 BW1M100 inlined AddSoundToAtom::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class AddSubCollectionsToAtom__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055fc10 BW1M100 inlined AddSubCollectionsToAtom::AtomData::_dt( (void))
    virtual ~AddSubCollectionsToAtom__AtomData();
    // BW1W120 0055fc00 BW1M100 inlined AddSubCollectionsToAtom::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696f30 BW1M100 inlined AddSubCollectionsToAtom::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cdaa0 BW1M100 inlined AddSubCollectionsToAtom::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055fbf0 BW1M100 inlined AddSubCollectionsToAtom::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class AttatchFireBallToAtom__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055f7c0 BW1M100 inlined AttatchFireBallToAtom::AtomData::_dt( (void))
    virtual ~AttatchFireBallToAtom__AtomData();
    // BW1W120 0055f7b0 BW1M100 inlined AttatchFireBallToAtom::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696a50 BW1M100 inlined AttatchFireBallToAtom::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd5b0 BW1M100 inlined AttatchFireBallToAtom::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f7a0 BW1M100 inlined AttatchFireBallToAtom::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class CheckShieldDeflections__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055fd10 BW1M100 inlined CheckShieldDeflections::AtomData::_dt( (void))
    virtual ~CheckShieldDeflections__AtomData();
    // BW1W120 0055fd00 BW1M100 inlined CheckShieldDeflections::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698980 BW1M100 inlined CheckShieldDeflections::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cf460 BW1M100 inlined CheckShieldDeflections::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055fcf0 BW1M100 inlined CheckShieldDeflections::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class CreateNewBaseAtom__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055fc90 BW1M100 inlined CreateNewBaseAtom::AtomData::_dt( (void))
    virtual ~CreateNewBaseAtom__AtomData();
    // BW1W120 0055fc80 BW1M100 inlined CreateNewBaseAtom::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696f90 BW1M100 inlined CreateNewBaseAtom::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cdb00 BW1M100 inlined CreateNewBaseAtom::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055fc70 BW1M100 inlined CreateNewBaseAtom::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class ER_BurstFromParentAtom__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0055ff10 BW1M100 inlined ER_BurstFromParentAtom::CollectionData::_dt( (void))
    virtual ~ER_BurstFromParentAtom__CollectionData();
    // BW1W120 0055ff00 BW1M100 inlined ER_BurstFromParentAtom::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006995c0 BW1M100 inlined ER_BurstFromParentAtom::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006d00d0 BW1M100 inlined ER_BurstFromParentAtom::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055fef0 BW1M100 inlined ER_BurstFromParentAtom::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class ER_EmitFromParentAtom__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560090 BW1M100 inlined ER_EmitFromParentAtom::CollectionData::_dt( (void))
    virtual ~ER_EmitFromParentAtom__CollectionData();
    // BW1W120 00560080 BW1M100 inlined ER_EmitFromParentAtom::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006996a0 BW1M100 inlined ER_EmitFromParentAtom::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006d01b0 BW1M100 inlined ER_EmitFromParentAtom::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560070 BW1M100 inlined ER_EmitFromParentAtom::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class ER_GlintsOnTarget__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560010 BW1M100 inlined ER_GlintsOnTarget::AtomData::_dt( (void))
    virtual ~ER_GlintsOnTarget__AtomData();
    // BW1W120 0055ffd0 BW1M100 inlined ER_GlintsOnTarget::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006970e0 BW1M100 inlined ER_GlintsOnTarget::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cdc50 BW1M100 inlined ER_GlintsOnTarget::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055ffc0 BW1M100 inlined ER_GlintsOnTarget::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class ER_GlintsOnTarget__ParentAtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055ffe0 BW1M100 inlined ER_GlintsOnTarget::ParentAtomData::_dt( (void))
    virtual ~ER_GlintsOnTarget__ParentAtomData();
    // BW1W120 0055ff80 BW1M100 inlined ER_GlintsOnTarget::ParentAtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696ff0 BW1M100 inlined ER_GlintsOnTarget::ParentAtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cdb60 BW1M100 inlined ER_GlintsOnTarget::ParentAtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055ff70 BW1M100 inlined ER_GlintsOnTarget::ParentAtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class ER_MultiPickup__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 006a7bb0 BW1M100 inlined ER_MultiPickup::AtomData::_dt( (void))
    virtual ~ER_MultiPickup__AtomData();
};

class ER_MultiPickup__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 006a7b80 BW1M100 inlined ER_MultiPickup::CollectionData::_dt( (void))
    virtual ~ER_MultiPickup__CollectionData();
};

class EmitterRule__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0055fd90 BW1M100 inlined EmitterRule::CollectionData::_dt( (void))
    virtual ~EmitterRule__CollectionData();
    // BW1W120 0055fd80 BW1M100 inlined EmitterRule::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006993d0 BW1M100 inlined EmitterRule::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cfee0 BW1M100 inlined EmitterRule::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055fd70 BW1M100 inlined EmitterRule::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class EmitterRuleLightningSprite__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0055fe10 BW1M100 inlined EmitterRuleLightningSprite::CollectionData::_dt( (void))
    virtual ~EmitterRuleLightningSprite__CollectionData();
    // BW1W120 0055fe00 BW1M100 inlined EmitterRuleLightningSprite::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00699ac0 BW1M100 inlined EmitterRuleLightningSprite::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006d0490 BW1M100 inlined EmitterRuleLightningSprite::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055fdf0 BW1M100 inlined EmitterRuleLightningSprite::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class LightningForkFlicker__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 005603b0 BW1M100 inlined LightningForkFlicker::CollectionData::_dt( (void))
    virtual ~LightningForkFlicker__CollectionData();
    // BW1W120 005603a0 BW1M100 inlined LightningForkFlicker::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00699a60 BW1M100 inlined LightningForkFlicker::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006d0430 BW1M100 inlined LightningForkFlicker::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560390 BW1M100 inlined LightningForkFlicker::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class RemoveRuleAfterConditionTrue__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560430 BW1M100 inlined RemoveRuleAfterConditionTrue::AtomData::_dt( (void))
    virtual ~RemoveRuleAfterConditionTrue__AtomData();
    // BW1W120 00560420 BW1M100 inlined RemoveRuleAfterConditionTrue::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697480 BW1M100 inlined RemoveRuleAfterConditionTrue::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cdff0 BW1M100 inlined RemoveRuleAfterConditionTrue::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560410 BW1M100 inlined RemoveRuleAfterConditionTrue::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class RemoveSoundFromAtom__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055f740 BW1M100 inlined RemoveSoundFromAtom::AtomData::_dt( (void))
    virtual ~RemoveSoundFromAtom__AtomData();
    // BW1W120 0055f730 BW1M100 inlined RemoveSoundFromAtom::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696c70 BW1M100 inlined RemoveSoundFromAtom::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd7d0 BW1M100 inlined RemoveSoundFromAtom::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f720 BW1M100 inlined RemoveSoundFromAtom::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_AddDefensiveSphere__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0055f9a0 BW1M100 inlined UR_AddDefensiveSphere::CollectionData::_dt( (void))
    virtual ~UR_AddDefensiveSphere__CollectionData();
    // BW1W120 0055f990 BW1M100 inlined UR_AddDefensiveSphere::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697bb0 BW1M100 inlined UR_AddDefensiveSphere::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce6a0 BW1M100 inlined UR_AddDefensiveSphere::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f980 BW1M100 inlined UR_AddDefensiveSphere::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Articulate__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00685620 BW1M100 inlined UR_Articulate::AtomData::_dt( (void))
    virtual ~UR_Articulate__AtomData();
};

class UR_Articulate__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 006855f0 BW1M100 inlined UR_Articulate::CollectionData::_dt( (void))
    virtual ~UR_Articulate__CollectionData();
};

class UR_AtomsAtEPTarget__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560e90 BW1M100 inlined UR_AtomsAtEPTarget::CollectionData::_dt( (void))
    virtual ~UR_AtomsAtEPTarget__CollectionData();
    // BW1W120 00560e80 BW1M100 inlined UR_AtomsAtEPTarget::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697800 BW1M100 inlined UR_AtomsAtEPTarget::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce340 BW1M100 inlined UR_AtomsAtEPTarget::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560e70 BW1M100 inlined UR_AtomsAtEPTarget::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_BankedTurning__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055f8b0 BW1M100 inlined UR_BankedTurning::AtomData::_dt( (void))
    virtual ~UR_BankedTurning__AtomData();
    // BW1W120 0055f8a0 BW1M100 inlined UR_BankedTurning::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696d30 BW1M100 inlined UR_BankedTurning::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd890 BW1M100 inlined UR_BankedTurning::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f890 BW1M100 inlined UR_BankedTurning::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_BeliefSprite__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055f540 BW1M100 inlined UR_BeliefSprite::AtomData::_dt( (void))
    virtual ~UR_BeliefSprite__AtomData();
    // BW1W120 0055f530 BW1M100 inlined UR_BeliefSprite::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00695f20 BW1M100 inlined UR_BeliefSprite::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cca70 BW1M100 inlined UR_BeliefSprite::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f520 BW1M100 inlined UR_BeliefSprite::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_CloudGather__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560be0 BW1M100 inlined UR_CloudGather::AtomData::_dt( (void))
    virtual ~UR_CloudGather__AtomData();
    // BW1W120 00560bb0 BW1M100 inlined UR_CloudGather::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698da0 BW1M100 inlined UR_CloudGather::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cf870 BW1M100 inlined UR_CloudGather::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560ba0 BW1M100 inlined UR_CloudGather::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_CloudGather__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560bc0 BW1M100 inlined UR_CloudGather::CollectionData::_dt( (void))
    virtual ~UR_CloudGather__CollectionData();
    // BW1W120 00560b50 BW1M100 inlined UR_CloudGather::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698b30 BW1M100 inlined UR_CloudGather::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cf610 BW1M100 inlined UR_CloudGather::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560b40 BW1M100 inlined UR_CloudGather::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_CloudMoverNew__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560c60 BW1M100 inlined UR_CloudMoverNew::CollectionData::_dt( (void))
    virtual ~UR_CloudMoverNew__CollectionData();
    // BW1W120 00560c50 BW1M100 inlined UR_CloudMoverNew::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697c20 BW1M100 inlined UR_CloudMoverNew::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce710 BW1M100 inlined UR_CloudMoverNew::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560c40 BW1M100 inlined UR_CloudMoverNew::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_CreatureSpell__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 005605b0 BW1M100 inlined UR_CreatureSpell::CollectionData::_dt( (void))
    virtual ~UR_CreatureSpell__CollectionData();
    // BW1W120 005605a0 BW1M100 inlined UR_CreatureSpell::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698030 BW1M100 inlined UR_CreatureSpell::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ceb40 BW1M100 inlined UR_CreatureSpell::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560590 BW1M100 inlined UR_CreatureSpell::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_CreatureSpellCompassion__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560870 BW1M100 inlined UR_CreatureSpellCompassion::CollectionData::_dt( (void))
    virtual ~UR_CreatureSpellCompassion__CollectionData();
    // BW1W120 00560860 BW1M100 inlined UR_CreatureSpellCompassion::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697c80 BW1M100 inlined UR_CreatureSpellCompassion::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce770 BW1M100 inlined UR_CreatureSpellCompassion::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560850 BW1M100 inlined UR_CreatureSpellCompassion::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_CreatureSpellFreeze__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 005606b0 BW1M100 inlined UR_CreatureSpellFreeze::CollectionData::_dt( (void))
    virtual ~UR_CreatureSpellFreeze__CollectionData();
    // BW1W120 005606a0 BW1M100 inlined UR_CreatureSpellFreeze::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698140 BW1M100 inlined UR_CreatureSpellFreeze::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cec50 BW1M100 inlined UR_CreatureSpellFreeze::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560690 BW1M100 inlined UR_CreatureSpellFreeze::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_CreatureSpellGeneric__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 005607f0 BW1M100 inlined UR_CreatureSpellGeneric::AtomData::_dt( (void))
    virtual ~UR_CreatureSpellGeneric__AtomData();
    // BW1W120 005607b0 BW1M100 inlined UR_CreatureSpellGeneric::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697d60 BW1M100 inlined UR_CreatureSpellGeneric::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce850 BW1M100 inlined UR_CreatureSpellGeneric::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 005607a0 BW1M100 inlined UR_CreatureSpellGeneric::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_CreatureSpellGeneric__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 005607c0 BW1M100 inlined UR_CreatureSpellGeneric::CollectionData::_dt( (void))
    virtual ~UR_CreatureSpellGeneric__CollectionData();
    // BW1W120 00560750 BW1M100 inlined UR_CreatureSpellGeneric::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697ea0 BW1M100 inlined UR_CreatureSpellGeneric::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce9a0 BW1M100 inlined UR_CreatureSpellGeneric::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560740 BW1M100 inlined UR_CreatureSpellGeneric::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_CreatureSpellItch__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560630 BW1M100 inlined UR_CreatureSpellItch::CollectionData::_dt( (void))
    virtual ~UR_CreatureSpellItch__CollectionData();
    // BW1W120 00560620 BW1M100 inlined UR_CreatureSpellItch::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006980e0 BW1M100 inlined UR_CreatureSpellItch::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cebf0 BW1M100 inlined UR_CreatureSpellItch::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560610 BW1M100 inlined UR_CreatureSpellItch::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Explosion__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560d90 BW1M100 inlined UR_Explosion::AtomData::_dt( (void))
    virtual ~UR_Explosion__AtomData();
    // BW1W120 00560d80 BW1M100 inlined UR_Explosion::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698770 BW1M100 inlined UR_Explosion::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cf250 BW1M100 inlined UR_Explosion::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560d70 BW1M100 inlined UR_Explosion::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Explosion__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0067e1b0 BW1M100 inlined UR_Explosion::CollectionData::_dt( (void))
    virtual ~UR_Explosion__CollectionData();
    // BW1W120 0067e1a0 BW1M100 inlined UR_Explosion::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006984d0 BW1M100 inlined UR_Explosion::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cf000 BW1M100 inlined UR_Explosion::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0067e190 BW1M100 inlined UR_Explosion::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Flocking__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560f10 BW1M100 inlined UR_Flocking::CollectionData::_dt( (void))
    virtual ~UR_Flocking__CollectionData();
    // BW1W120 00560f00 BW1M100 inlined UR_Flocking::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006987d0 BW1M100 inlined UR_Flocking::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cf2b0 BW1M100 inlined UR_Flocking::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560ef0 BW1M100 inlined UR_Flocking::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_FollowTargets__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560290 BW1M100 inlined UR_FollowTargets::AtomData::_dt( (void))
    virtual ~UR_FollowTargets__AtomData();
    // BW1W120 00560250 BW1M100 inlined UR_FollowTargets::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697600 BW1M100 inlined UR_FollowTargets::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce170 BW1M100 inlined UR_FollowTargets::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560240 BW1M100 inlined UR_FollowTargets::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_FollowTargets__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560260 BW1M100 inlined UR_FollowTargets::CollectionData::_dt( (void))
    virtual ~UR_FollowTargets__CollectionData();
    // BW1W120 00560200 BW1M100 inlined UR_FollowTargets::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00699780 BW1M100 inlined UR_FollowTargets::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006d0290 BW1M100 inlined UR_FollowTargets::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 005601f0 BW1M100 inlined UR_FollowTargets::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_ForestPath__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055fb10 BW1M100 inlined UR_ForestPath::AtomData::_dt( (void))
    virtual ~UR_ForestPath__AtomData();
    // BW1W120 0055fb00 BW1M100 inlined UR_ForestPath::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698a20 BW1M100 inlined UR_ForestPath::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cf500 BW1M100 inlined UR_ForestPath::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055faf0 BW1M100 inlined UR_ForestPath::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_HandSprinkle__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0055f930 BW1M100 inlined UR_HandSprinkle::CollectionData::_dt( (void))
    virtual ~UR_HandSprinkle__CollectionData();
    // BW1W120 0055f920 BW1M100 inlined UR_HandSprinkle::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00699c00 BW1M100 inlined UR_HandSprinkle::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006d05e0 BW1M100 inlined UR_HandSprinkle::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f910 BW1M100 inlined UR_HandSprinkle::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_HealSpellChakra__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 006a0980 BW1M100 inlined UR_HealSpellChakra::AtomData::_dt( (void))
    virtual ~UR_HealSpellChakra__AtomData();
    // BW1W120 006a0970 BW1M100 inlined UR_HealSpellChakra::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697140 BW1M100 inlined UR_HealSpellChakra::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cdcb0 BW1M100 inlined UR_HealSpellChakra::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 006a0960 BW1M100 inlined UR_HealSpellChakra::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_InitialSpin__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560190 BW1M100 inlined UR_InitialSpin::AtomData::_dt( (void))
    virtual ~UR_InitialSpin__AtomData();
    // BW1W120 00560180 BW1M100 inlined UR_InitialSpin::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006973e0 BW1M100 inlined UR_InitialSpin::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cdf50 BW1M100 inlined UR_InitialSpin::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560170 BW1M100 inlined UR_InitialSpin::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_LightSheetOnObject__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0069c820 BW1M100 inlined UR_LightSheetOnObject::AtomData::_dt( (void))
    virtual ~UR_LightSheetOnObject__AtomData();
    // BW1W120 0069c810 BW1M100 inlined UR_LightSheetOnObject::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696790 BW1M100 inlined UR_LightSheetOnObject::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd2f0 BW1M100 inlined UR_LightSheetOnObject::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0069c800 BW1M100 inlined UR_LightSheetOnObject::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_LightSheetOnObject__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0055f5c0 BW1M100 inlined UR_LightSheetOnObject::CollectionData::_dt( (void))
    virtual ~UR_LightSheetOnObject__CollectionData();
    // BW1W120 0055f5b0 BW1M100 inlined UR_LightSheetOnObject::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006967f0 BW1M100 inlined UR_LightSheetOnObject::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd350 BW1M100 inlined UR_LightSheetOnObject::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f5a0 BW1M100 inlined UR_LightSheetOnObject::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_LightningStrike__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00693a40 BW1M100 inlined UR_LightningStrike::AtomData::_dt( (void))
    virtual ~UR_LightningStrike__AtomData();
};

class UR_Lightning_CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0068ff20 BW1M100 inlined UR_Lightning_CollectionData::_dt(void)
    virtual ~UR_Lightning_CollectionData();
    // BW1W120 0068ff10 BW1M100 inlined UR_Lightning_CollectionData::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00697870 BW1M100 inlined UR_Lightning_CollectionData::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce3b0 BW1M100 inlined UR_Lightning_CollectionData::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0068ff00 BW1M100 inlined UR_Lightning_CollectionData::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class UR_ManaPathNew__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055f4c0 BW1M100 inlined UR_ManaPathNew::AtomData::_dt( (void))
    virtual ~UR_ManaPathNew__AtomData();
    // BW1W120 0055f4b0 BW1M100 inlined UR_ManaPathNew::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00695fc0 BW1M100 inlined UR_ManaPathNew::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ccb10 BW1M100 inlined UR_ManaPathNew::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f4a0 BW1M100 inlined UR_ManaPathNew::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_ObjectArcer__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 006935e0 BW1M100 inlined UR_ObjectArcer::AtomData::_dt( (void))
    virtual ~UR_ObjectArcer__AtomData();
};

class UR_OrientSpriteWithRandomAngle__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 005604b0 BW1M100 inlined UR_OrientSpriteWithRandomAngle::AtomData::_dt( (void))
    virtual ~UR_OrientSpriteWithRandomAngle__AtomData();
    // BW1W120 005604a0 BW1M100 inlined UR_OrientSpriteWithRandomAngle::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006972a0 BW1M100 inlined UR_OrientSpriteWithRandomAngle::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cde10 BW1M100 inlined UR_OrientSpriteWithRandomAngle::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560490 BW1M100 inlined UR_OrientSpriteWithRandomAngle::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_OrientSpriteWithVelocity__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560e10 BW1M100 inlined UR_OrientSpriteWithVelocity::AtomData::_dt( (void))
    virtual ~UR_OrientSpriteWithVelocity__AtomData();
    // BW1W120 00560e00 BW1M100 inlined UR_OrientSpriteWithVelocity::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696940 BW1M100 inlined UR_OrientSpriteWithVelocity::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd4a0 BW1M100 inlined UR_OrientSpriteWithVelocity::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560df0 BW1M100 inlined UR_OrientSpriteWithVelocity::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_OrientWithVelocity__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560530 BW1M100 inlined UR_OrientWithVelocity::AtomData::_dt( (void))
    virtual ~UR_OrientWithVelocity__AtomData();
    // BW1W120 00560520 BW1M100 inlined UR_OrientWithVelocity::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697520 BW1M100 inlined UR_OrientWithVelocity::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce090 BW1M100 inlined UR_OrientWithVelocity::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560510 BW1M100 inlined UR_OrientWithVelocity::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_PlasmaInf: public PSysBase
{
public:

    // Override methods

    // BW1W120 00466540 BW1M100 inlined UR_PlasmaInf::_dt(void)
    virtual ~UR_PlasmaInf();
    // BW1W120 00466530 BW1M100 inlined UR_PlasmaInf::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00696200 BW1M100 inlined UR_PlasmaInf::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ccd60 BW1M100 inlined UR_PlasmaInf::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00466520 BW1M100 inlined UR_PlasmaInf::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class UR_RingSpin__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 006879d0 BW1M100 inlined UR_RingSpin::CollectionData::_dt( (void))
    virtual ~UR_RingSpin__CollectionData();
};

class UR_Rope__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00684410 BW1M100 inlined UR_Rope::CollectionData::_dt( (void))
    virtual ~UR_Rope__CollectionData();
};

class UR_SideSpin__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560110 BW1M100 inlined UR_SideSpin::AtomData::_dt( (void))
    virtual ~UR_SideSpin__AtomData();
    // BW1W120 00560100 BW1M100 inlined UR_SideSpin::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697340 BW1M100 inlined UR_SideSpin::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cdeb0 BW1M100 inlined UR_SideSpin::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 005600f0 BW1M100 inlined UR_SideSpin::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_SimpleBeam__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055f1c0 BW1M100 inlined UR_SimpleBeam::AtomData::_dt( (void))
    virtual ~UR_SimpleBeam__AtomData();
    // BW1W120 0055f150 BW1M100 inlined UR_SimpleBeam::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696850 BW1M100 inlined UR_SimpleBeam::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd3b0 BW1M100 inlined UR_SimpleBeam::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f140 BW1M100 inlined UR_SimpleBeam::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_SimpleBeam__SubCollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0055f240 BW1M100 inlined UR_SimpleBeam::SubCollectionData::_dt( (void))
    virtual ~UR_SimpleBeam__SubCollectionData();
    // BW1W120 0055f1b0 BW1M100 inlined UR_SimpleBeam::SubCollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00697670 BW1M100 inlined UR_SimpleBeam::SubCollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006ce1e0 BW1M100 inlined UR_SimpleBeam::SubCollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f1a0 BW1M100 inlined UR_SimpleBeam::SubCollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_SphereSurfaceTracer__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055fa90 BW1M100 inlined UR_SphereSurfaceTracer::AtomData::_dt( (void))
    virtual ~UR_SphereSurfaceTracer__AtomData();
    // BW1W120 0055fa80 BW1M100 inlined UR_SphereSurfaceTracer::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698870 BW1M100 inlined UR_SphereSurfaceTracer::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cf350 BW1M100 inlined UR_SphereSurfaceTracer::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055fa70 BW1M100 inlined UR_SphereSurfaceTracer::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_StormCast__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 006d5fd0 BW1M100 inlined UR_StormCast::AtomData::_dt( (void))
    virtual ~UR_StormCast__AtomData();
};

class UR_StormCast__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 006d5fa0 BW1M100 inlined UR_StormCast::CollectionData::_dt( (void))
    virtual ~UR_StormCast__CollectionData();
};

class UR_TownCentreBelief__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0069c720 BW1M100 inlined UR_TownCentreBelief::AtomData::_dt( (void))
    virtual ~UR_TownCentreBelief__AtomData();
};

class UR_TownCentreBelief__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0069c6f0 BW1M100 inlined UR_TownCentreBelief::CollectionData::_dt( (void))
    virtual ~UR_TownCentreBelief__CollectionData();
};

class UR_Trail__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560320 BW1M100 inlined UR_Trail::CollectionData::_dt( (void))
    virtual ~UR_Trail__CollectionData();
    // BW1W120 00560310 BW1M100 inlined UR_Trail::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006997e0 BW1M100 inlined UR_Trail::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006d02f0 BW1M100 inlined UR_Trail::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560300 BW1M100 inlined UR_Trail::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_VapourEndEffect__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055fb90 BW1M100 inlined UR_VapourEndEffect::AtomData::_dt( (void))
    virtual ~UR_VapourEndEffect__AtomData();
    // BW1W120 0055fb80 BW1M100 inlined UR_VapourEndEffect::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696ed0 BW1M100 inlined UR_VapourEndEffect::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cda40 BW1M100 inlined UR_VapourEndEffect::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055fb70 BW1M100 inlined UR_VapourEndEffect::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_VolFXOnObject__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0069ccf0 BW1M100 inlined UR_VolFXOnObject::AtomData::_dt( (void))
    virtual ~UR_VolFXOnObject__AtomData();
    // BW1W120 0069cce0 BW1M100 inlined UR_VolFXOnObject::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696720 BW1M100 inlined UR_VolFXOnObject::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd280 BW1M100 inlined UR_VolFXOnObject::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0069ccd0 BW1M100 inlined UR_VolFXOnObject::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_VortexAttract__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560d10 BW1M100 inlined UR_VortexAttract::AtomData::_dt( (void))
    virtual ~UR_VortexAttract__AtomData();
    // BW1W120 00560d00 BW1M100 inlined UR_VortexAttract::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698350 BW1M100 inlined UR_VortexAttract::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cee70 BW1M100 inlined UR_VortexAttract::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560cf0 BW1M100 inlined UR_VortexAttract::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_WillowWisp__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0055fe90 BW1M100 inlined UR_WillowWisp::CollectionData::_dt( (void))
    virtual ~UR_WillowWisp__CollectionData();
    // BW1W120 0055fe80 BW1M100 inlined UR_WillowWisp::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 006994b0 BW1M100 inlined UR_WillowWisp::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cffc0 BW1M100 inlined UR_WillowWisp::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055fe70 BW1M100 inlined UR_WillowWisp::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UpdateRuleGravityWithFloor__AtomDataRipple: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055f830 BW1M100 inlined UpdateRuleGravityWithFloor::AtomDataRipple::_dt( (void))
    virtual ~UpdateRuleGravityWithFloor__AtomDataRipple();
    // BW1W120 0055f820 BW1M100 inlined UpdateRuleGravityWithFloor::AtomDataRipple::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696cd0 BW1M100 inlined UpdateRuleGravityWithFloor::AtomDataRipple::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd830 BW1M100 inlined UpdateRuleGravityWithFloor::AtomDataRipple::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f810 BW1M100 inlined UpdateRuleGravityWithFloor::AtomDataRipple::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UpdateRuleShieldSpark__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0055fa10 BW1M100 inlined UpdateRuleShieldSpark::AtomData::_dt( (void))
    virtual ~UpdateRuleShieldSpark__AtomData();
    // BW1W120 0055fa00 BW1M100 inlined UpdateRuleShieldSpark::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00696d90 BW1M100 inlined UpdateRuleShieldSpark::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cd8f0 BW1M100 inlined UpdateRuleShieldSpark::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f9f0 BW1M100 inlined UpdateRuleShieldSpark::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class ZR_ChainGesture__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 0068a300 BW1M100 inlined ZR_ChainGesture::AtomData::_dt( (void))
    virtual ~ZR_ChainGesture__AtomData();
};

class ZR_ChainGesture__ParentCollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 0068a2d0 BW1M100 inlined ZR_ChainGesture::ParentCollectionData::_dt( (void))
    virtual ~ZR_ChainGesture__ParentCollectionData();
};

class ZR_SurfRevol__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00686180 BW1M100 inlined ZR_SurfRevol::CollectionData::_dt( (void))
    virtual ~ZR_SurfRevol__CollectionData();
};

#endif /* BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H */
