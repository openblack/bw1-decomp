#ifndef BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H
#define BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */
#include "PSysModifiers.h" /* For struct BaseAtomModifierData, struct BaseCollectionModifierData */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct AR_FadeOutOnceConditionTrue__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct AR_FadeOutOnceConditionTrue__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f640 mac inlined AR_FadeOutOnceConditionTrue::AtomData::_dt( (void))
void __fastcall __dt__Q227AR_FadeOutOnceConditionTrue8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@AR_FadeOutOnceConditionTrue@@UAEPAXI@Z");
// win1.41 0055f630 mac inlined AR_FadeOutOnceConditionTrue::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q227AR_FadeOutOnceConditionTrue8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@AR_FadeOutOnceConditionTrue@@UAEPADXZ");
// win1.41 00696b00 mac inlined AR_FadeOutOnceConditionTrue::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q227AR_FadeOutOnceConditionTrue8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@AR_FadeOutOnceConditionTrue@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd660 mac inlined AR_FadeOutOnceConditionTrue::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q227AR_FadeOutOnceConditionTrue8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@AR_FadeOutOnceConditionTrue@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f620 mac inlined AR_FadeOutOnceConditionTrue::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q227AR_FadeOutOnceConditionTrue8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@AR_FadeOutOnceConditionTrue@@UAEIXZ");

struct AddSoundToAtom__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct AddSoundToAtom__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f6c0 mac inlined AddSoundToAtom::AtomData::_dt( (void))
void __fastcall __dt__Q214AddSoundToAtom8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@AddSoundToAtom@@UAEPAXI@Z");
// win1.41 0055f6b0 mac inlined AddSoundToAtom::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q214AddSoundToAtom8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@AddSoundToAtom@@UAEPADXZ");
// win1.41 00696c10 mac inlined AddSoundToAtom::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q214AddSoundToAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@AddSoundToAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd770 mac inlined AddSoundToAtom::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q214AddSoundToAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@AddSoundToAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f6a0 mac inlined AddSoundToAtom::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q214AddSoundToAtom8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@AddSoundToAtom@@UAEIXZ");

struct AddSubCollectionsToAtom__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct AddSubCollectionsToAtom__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fc10 mac inlined AddSubCollectionsToAtom::AtomData::_dt( (void))
void __fastcall __dt__Q223AddSubCollectionsToAtom8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@AddSubCollectionsToAtom@@UAEPAXI@Z");
// win1.41 0055fc00 mac inlined AddSubCollectionsToAtom::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q223AddSubCollectionsToAtom8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@AddSubCollectionsToAtom@@UAEPADXZ");
// win1.41 00696f30 mac inlined AddSubCollectionsToAtom::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q223AddSubCollectionsToAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@AddSubCollectionsToAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cdaa0 mac inlined AddSubCollectionsToAtom::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q223AddSubCollectionsToAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@AddSubCollectionsToAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055fbf0 mac inlined AddSubCollectionsToAtom::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q223AddSubCollectionsToAtom8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@AddSubCollectionsToAtom@@UAEIXZ");

struct AttatchFireBallToAtom__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct AttatchFireBallToAtom__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f7c0 mac inlined AttatchFireBallToAtom::AtomData::_dt( (void))
void __fastcall __dt__Q221AttatchFireBallToAtom8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@AttatchFireBallToAtom@@UAEPAXI@Z");
// win1.41 0055f7b0 mac inlined AttatchFireBallToAtom::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q221AttatchFireBallToAtom8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@AttatchFireBallToAtom@@UAEPADXZ");
// win1.41 00696a50 mac inlined AttatchFireBallToAtom::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q221AttatchFireBallToAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@AttatchFireBallToAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd5b0 mac inlined AttatchFireBallToAtom::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q221AttatchFireBallToAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@AttatchFireBallToAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f7a0 mac inlined AttatchFireBallToAtom::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q221AttatchFireBallToAtom8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@AttatchFireBallToAtom@@UAEIXZ");

struct CheckShieldDeflections__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct CheckShieldDeflections__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fd10 mac inlined CheckShieldDeflections::AtomData::_dt( (void))
void __fastcall __dt__Q222CheckShieldDeflections8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@CheckShieldDeflections@@UAEPAXI@Z");
// win1.41 0055fd00 mac inlined CheckShieldDeflections::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q222CheckShieldDeflections8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@CheckShieldDeflections@@UAEPADXZ");
// win1.41 00698980 mac inlined CheckShieldDeflections::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q222CheckShieldDeflections8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@CheckShieldDeflections@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cf460 mac inlined CheckShieldDeflections::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q222CheckShieldDeflections8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@CheckShieldDeflections@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055fcf0 mac inlined CheckShieldDeflections::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q222CheckShieldDeflections8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@CheckShieldDeflections@@UAEIXZ");

struct CreateNewBaseAtom__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct CreateNewBaseAtom__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fc90 mac inlined CreateNewBaseAtom::AtomData::_dt( (void))
void __fastcall __dt__Q217CreateNewBaseAtom8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@CreateNewBaseAtom@@UAEPAXI@Z");
// win1.41 0055fc80 mac inlined CreateNewBaseAtom::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q217CreateNewBaseAtom8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@CreateNewBaseAtom@@UAEPADXZ");
// win1.41 00696f90 mac inlined CreateNewBaseAtom::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q217CreateNewBaseAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@CreateNewBaseAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cdb00 mac inlined CreateNewBaseAtom::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q217CreateNewBaseAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@CreateNewBaseAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055fc70 mac inlined CreateNewBaseAtom::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q217CreateNewBaseAtom8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@CreateNewBaseAtom@@UAEIXZ");

struct ER_BurstFromParentAtom__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct ER_BurstFromParentAtom__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055ff10 mac inlined ER_BurstFromParentAtom::CollectionData::_dt( (void))
void __fastcall __dt__Q222ER_BurstFromParentAtom14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@ER_BurstFromParentAtom@@UAEPAXI@Z");
// win1.41 0055ff00 mac inlined ER_BurstFromParentAtom::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q222ER_BurstFromParentAtom14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@ER_BurstFromParentAtom@@UAEPADXZ");
// win1.41 006995c0 mac inlined ER_BurstFromParentAtom::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q222ER_BurstFromParentAtom14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@ER_BurstFromParentAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d00d0 mac inlined ER_BurstFromParentAtom::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q222ER_BurstFromParentAtom14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@ER_BurstFromParentAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055fef0 mac inlined ER_BurstFromParentAtom::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q222ER_BurstFromParentAtom14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@ER_BurstFromParentAtom@@UAEIXZ");

struct ER_EmitFromParentAtom__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct ER_EmitFromParentAtom__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560090 mac inlined ER_EmitFromParentAtom::CollectionData::_dt( (void))
void __fastcall __dt__Q221ER_EmitFromParentAtom14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@ER_EmitFromParentAtom@@UAEPAXI@Z");
// win1.41 00560080 mac inlined ER_EmitFromParentAtom::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q221ER_EmitFromParentAtom14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@ER_EmitFromParentAtom@@UAEPADXZ");
// win1.41 006996a0 mac inlined ER_EmitFromParentAtom::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q221ER_EmitFromParentAtom14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@ER_EmitFromParentAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d01b0 mac inlined ER_EmitFromParentAtom::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q221ER_EmitFromParentAtom14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@ER_EmitFromParentAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560070 mac inlined ER_EmitFromParentAtom::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q221ER_EmitFromParentAtom14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@ER_EmitFromParentAtom@@UAEIXZ");

struct ER_GlintsOnTarget__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct ER_GlintsOnTarget__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560010 mac inlined ER_GlintsOnTarget::AtomData::_dt( (void))
void __fastcall __dt__Q217ER_GlintsOnTarget8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@ER_GlintsOnTarget@@UAEPAXI@Z");
// win1.41 0055ffd0 mac inlined ER_GlintsOnTarget::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q217ER_GlintsOnTarget8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@ER_GlintsOnTarget@@UAEPADXZ");
// win1.41 006970e0 mac inlined ER_GlintsOnTarget::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q217ER_GlintsOnTarget8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@ER_GlintsOnTarget@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cdc50 mac inlined ER_GlintsOnTarget::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q217ER_GlintsOnTarget8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@ER_GlintsOnTarget@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055ffc0 mac inlined ER_GlintsOnTarget::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q217ER_GlintsOnTarget8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@ER_GlintsOnTarget@@UAEIXZ");

struct ER_GlintsOnTarget__ParentAtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct ER_GlintsOnTarget__ParentAtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055ffe0 mac inlined ER_GlintsOnTarget::ParentAtomData::_dt( (void))
void __fastcall __dt__Q217ER_GlintsOnTarget14ParentAtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParentAtomData@ER_GlintsOnTarget@@UAEPAXI@Z");
// win1.41 0055ff80 mac inlined ER_GlintsOnTarget::ParentAtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q217ER_GlintsOnTarget14ParentAtomDataFv(struct GameThing* this) asm("?GetDebugText@ParentAtomData@ER_GlintsOnTarget@@UAEPADXZ");
// win1.41 00696ff0 mac inlined ER_GlintsOnTarget::ParentAtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q217ER_GlintsOnTarget14ParentAtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ParentAtomData@ER_GlintsOnTarget@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cdb60 mac inlined ER_GlintsOnTarget::ParentAtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q217ER_GlintsOnTarget14ParentAtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ParentAtomData@ER_GlintsOnTarget@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055ff70 mac inlined ER_GlintsOnTarget::ParentAtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q217ER_GlintsOnTarget14ParentAtomDataFv(struct GameThing* this) asm("?GetSaveType@ParentAtomData@ER_GlintsOnTarget@@UAEIXZ");

struct ER_MultiPickup__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct ER_MultiPickup__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006a7bb0 mac inlined ER_MultiPickup::AtomData::_dt( (void))
void __fastcall __dt__Q214ER_MultiPickup8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@ER_MultiPickup@@UAEPAXI@Z");

struct ER_MultiPickup__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct ER_MultiPickup__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006a7b80 mac inlined ER_MultiPickup::CollectionData::_dt( (void))
void __fastcall __dt__Q214ER_MultiPickup14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@ER_MultiPickup@@UAEPAXI@Z");

struct EmitterRule__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct EmitterRule__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fd90 mac inlined EmitterRule::CollectionData::_dt( (void))
void __fastcall __dt__Q211EmitterRule14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@EmitterRule@@UAEPAXI@Z");
// win1.41 0055fd80 mac inlined EmitterRule::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q211EmitterRule14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@EmitterRule@@UAEPADXZ");
// win1.41 006993d0 mac inlined EmitterRule::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q211EmitterRule14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@EmitterRule@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cfee0 mac inlined EmitterRule::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q211EmitterRule14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@EmitterRule@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055fd70 mac inlined EmitterRule::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q211EmitterRule14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@EmitterRule@@UAEIXZ");

struct EmitterRuleLightningSprite__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct EmitterRuleLightningSprite__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fe10 mac inlined EmitterRuleLightningSprite::CollectionData::_dt( (void))
void __fastcall __dt__Q226EmitterRuleLightningSprite14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@EmitterRuleLightningSprite@@UAEPAXI@Z");
// win1.41 0055fe00 mac inlined EmitterRuleLightningSprite::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q226EmitterRuleLightningSprite14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@EmitterRuleLightningSprite@@UAEPADXZ");
// win1.41 00699ac0 mac inlined EmitterRuleLightningSprite::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q226EmitterRuleLightningSprite14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@EmitterRuleLightningSprite@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0490 mac inlined EmitterRuleLightningSprite::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q226EmitterRuleLightningSprite14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@EmitterRuleLightningSprite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055fdf0 mac inlined EmitterRuleLightningSprite::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q226EmitterRuleLightningSprite14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@EmitterRuleLightningSprite@@UAEIXZ");

struct LightningForkFlicker__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct LightningForkFlicker__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 005603b0 mac inlined LightningForkFlicker::CollectionData::_dt( (void))
void __fastcall __dt__Q220LightningForkFlicker14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@LightningForkFlicker@@UAEPAXI@Z");
// win1.41 005603a0 mac inlined LightningForkFlicker::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q220LightningForkFlicker14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@LightningForkFlicker@@UAEPADXZ");
// win1.41 00699a60 mac inlined LightningForkFlicker::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q220LightningForkFlicker14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@LightningForkFlicker@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0430 mac inlined LightningForkFlicker::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q220LightningForkFlicker14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@LightningForkFlicker@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560390 mac inlined LightningForkFlicker::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q220LightningForkFlicker14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@LightningForkFlicker@@UAEIXZ");

struct RemoveRuleAfterConditionTrue__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct RemoveRuleAfterConditionTrue__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560430 mac inlined RemoveRuleAfterConditionTrue::AtomData::_dt( (void))
void __fastcall __dt__Q228RemoveRuleAfterConditionTrue8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@RemoveRuleAfterConditionTrue@@UAEPAXI@Z");
// win1.41 00560420 mac inlined RemoveRuleAfterConditionTrue::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q228RemoveRuleAfterConditionTrue8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@RemoveRuleAfterConditionTrue@@UAEPADXZ");
// win1.41 00697480 mac inlined RemoveRuleAfterConditionTrue::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q228RemoveRuleAfterConditionTrue8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@RemoveRuleAfterConditionTrue@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cdff0 mac inlined RemoveRuleAfterConditionTrue::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q228RemoveRuleAfterConditionTrue8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@RemoveRuleAfterConditionTrue@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560410 mac inlined RemoveRuleAfterConditionTrue::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q228RemoveRuleAfterConditionTrue8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@RemoveRuleAfterConditionTrue@@UAEIXZ");

struct RemoveSoundFromAtom__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct RemoveSoundFromAtom__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f740 mac inlined RemoveSoundFromAtom::AtomData::_dt( (void))
void __fastcall __dt__Q219RemoveSoundFromAtom8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@RemoveSoundFromAtom@@UAEPAXI@Z");
// win1.41 0055f730 mac inlined RemoveSoundFromAtom::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q219RemoveSoundFromAtom8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@RemoveSoundFromAtom@@UAEPADXZ");
// win1.41 00696c70 mac inlined RemoveSoundFromAtom::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q219RemoveSoundFromAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@RemoveSoundFromAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd7d0 mac inlined RemoveSoundFromAtom::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q219RemoveSoundFromAtom8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@RemoveSoundFromAtom@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f720 mac inlined RemoveSoundFromAtom::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q219RemoveSoundFromAtom8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@RemoveSoundFromAtom@@UAEIXZ");

struct UR_AddDefensiveSphere__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_AddDefensiveSphere__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f9a0 mac inlined UR_AddDefensiveSphere::CollectionData::_dt( (void))
void __fastcall __dt__Q221UR_AddDefensiveSphere14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_AddDefensiveSphere@@UAEPAXI@Z");
// win1.41 0055f990 mac inlined UR_AddDefensiveSphere::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q221UR_AddDefensiveSphere14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_AddDefensiveSphere@@UAEPADXZ");
// win1.41 00697bb0 mac inlined UR_AddDefensiveSphere::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q221UR_AddDefensiveSphere14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_AddDefensiveSphere@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce6a0 mac inlined UR_AddDefensiveSphere::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q221UR_AddDefensiveSphere14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_AddDefensiveSphere@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f980 mac inlined UR_AddDefensiveSphere::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q221UR_AddDefensiveSphere14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_AddDefensiveSphere@@UAEIXZ");

struct UR_Articulate__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Articulate__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00685620 mac inlined UR_Articulate::AtomData::_dt( (void))
void __fastcall __dt__Q213UR_Articulate8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_Articulate@@UAEPAXI@Z");

struct UR_Articulate__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Articulate__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006855f0 mac inlined UR_Articulate::CollectionData::_dt( (void))
void __fastcall __dt__Q213UR_Articulate14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_Articulate@@UAEPAXI@Z");

struct UR_AtomsAtEPTarget__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_AtomsAtEPTarget__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560e90 mac inlined UR_AtomsAtEPTarget::CollectionData::_dt( (void))
void __fastcall __dt__Q218UR_AtomsAtEPTarget14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_AtomsAtEPTarget@@UAEPAXI@Z");
// win1.41 00560e80 mac inlined UR_AtomsAtEPTarget::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q218UR_AtomsAtEPTarget14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_AtomsAtEPTarget@@UAEPADXZ");
// win1.41 00697800 mac inlined UR_AtomsAtEPTarget::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q218UR_AtomsAtEPTarget14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_AtomsAtEPTarget@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce340 mac inlined UR_AtomsAtEPTarget::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q218UR_AtomsAtEPTarget14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_AtomsAtEPTarget@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560e70 mac inlined UR_AtomsAtEPTarget::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q218UR_AtomsAtEPTarget14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_AtomsAtEPTarget@@UAEIXZ");

struct UR_BankedTurning__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_BankedTurning__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f8b0 mac inlined UR_BankedTurning::AtomData::_dt( (void))
void __fastcall __dt__Q216UR_BankedTurning8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_BankedTurning@@UAEPAXI@Z");
// win1.41 0055f8a0 mac inlined UR_BankedTurning::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q216UR_BankedTurning8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_BankedTurning@@UAEPADXZ");
// win1.41 00696d30 mac inlined UR_BankedTurning::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q216UR_BankedTurning8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_BankedTurning@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd890 mac inlined UR_BankedTurning::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q216UR_BankedTurning8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_BankedTurning@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f890 mac inlined UR_BankedTurning::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q216UR_BankedTurning8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_BankedTurning@@UAEIXZ");

struct UR_BeliefSprite__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_BeliefSprite__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f540 mac inlined UR_BeliefSprite::AtomData::_dt( (void))
void __fastcall __dt__Q215UR_BeliefSprite8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_BeliefSprite@@UAEPAXI@Z");
// win1.41 0055f530 mac inlined UR_BeliefSprite::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q215UR_BeliefSprite8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_BeliefSprite@@UAEPADXZ");
// win1.41 00695f20 mac inlined UR_BeliefSprite::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q215UR_BeliefSprite8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_BeliefSprite@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cca70 mac inlined UR_BeliefSprite::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q215UR_BeliefSprite8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_BeliefSprite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f520 mac inlined UR_BeliefSprite::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q215UR_BeliefSprite8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_BeliefSprite@@UAEIXZ");

struct UR_CloudGather__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_CloudGather__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560be0 mac inlined UR_CloudGather::AtomData::_dt( (void))
void __fastcall __dt__Q214UR_CloudGather8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_CloudGather@@UAEPAXI@Z");
// win1.41 00560bb0 mac inlined UR_CloudGather::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q214UR_CloudGather8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_CloudGather@@UAEPADXZ");
// win1.41 00698da0 mac inlined UR_CloudGather::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q214UR_CloudGather8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_CloudGather@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cf870 mac inlined UR_CloudGather::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q214UR_CloudGather8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_CloudGather@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560ba0 mac inlined UR_CloudGather::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q214UR_CloudGather8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_CloudGather@@UAEIXZ");

struct UR_CloudGather__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_CloudGather__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560bc0 mac inlined UR_CloudGather::CollectionData::_dt( (void))
void __fastcall __dt__Q214UR_CloudGather14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_CloudGather@@UAEPAXI@Z");
// win1.41 00560b50 mac inlined UR_CloudGather::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q214UR_CloudGather14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_CloudGather@@UAEPADXZ");
// win1.41 00698b30 mac inlined UR_CloudGather::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q214UR_CloudGather14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_CloudGather@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cf610 mac inlined UR_CloudGather::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q214UR_CloudGather14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_CloudGather@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560b40 mac inlined UR_CloudGather::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q214UR_CloudGather14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_CloudGather@@UAEIXZ");

struct UR_CloudMoverNew__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_CloudMoverNew__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560c60 mac inlined UR_CloudMoverNew::CollectionData::_dt( (void))
void __fastcall __dt__Q216UR_CloudMoverNew14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_CloudMoverNew@@UAEPAXI@Z");
// win1.41 00560c50 mac inlined UR_CloudMoverNew::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q216UR_CloudMoverNew14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_CloudMoverNew@@UAEPADXZ");
// win1.41 00697c20 mac inlined UR_CloudMoverNew::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q216UR_CloudMoverNew14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_CloudMoverNew@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce710 mac inlined UR_CloudMoverNew::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q216UR_CloudMoverNew14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_CloudMoverNew@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560c40 mac inlined UR_CloudMoverNew::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q216UR_CloudMoverNew14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_CloudMoverNew@@UAEIXZ");

struct UR_CreatureSpell__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_CreatureSpell__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 005605b0 mac inlined UR_CreatureSpell::CollectionData::_dt( (void))
void __fastcall __dt__Q216UR_CreatureSpell14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_CreatureSpell@@UAEPAXI@Z");
// win1.41 005605a0 mac inlined UR_CreatureSpell::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q216UR_CreatureSpell14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_CreatureSpell@@UAEPADXZ");
// win1.41 00698030 mac inlined UR_CreatureSpell::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q216UR_CreatureSpell14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_CreatureSpell@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ceb40 mac inlined UR_CreatureSpell::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q216UR_CreatureSpell14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_CreatureSpell@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560590 mac inlined UR_CreatureSpell::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q216UR_CreatureSpell14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_CreatureSpell@@UAEIXZ");

struct UR_CreatureSpellCompassion__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_CreatureSpellCompassion__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560870 mac inlined UR_CreatureSpellCompassion::CollectionData::_dt( (void))
void __fastcall __dt__Q226UR_CreatureSpellCompassion14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_CreatureSpellCompassion@@UAEPAXI@Z");
// win1.41 00560860 mac inlined UR_CreatureSpellCompassion::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q226UR_CreatureSpellCompassion14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_CreatureSpellCompassion@@UAEPADXZ");
// win1.41 00697c80 mac inlined UR_CreatureSpellCompassion::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q226UR_CreatureSpellCompassion14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_CreatureSpellCompassion@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce770 mac inlined UR_CreatureSpellCompassion::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q226UR_CreatureSpellCompassion14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_CreatureSpellCompassion@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560850 mac inlined UR_CreatureSpellCompassion::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q226UR_CreatureSpellCompassion14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_CreatureSpellCompassion@@UAEIXZ");

struct UR_CreatureSpellFreeze__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_CreatureSpellFreeze__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 005606b0 mac inlined UR_CreatureSpellFreeze::CollectionData::_dt( (void))
void __fastcall __dt__Q222UR_CreatureSpellFreeze14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_CreatureSpellFreeze@@UAEPAXI@Z");
// win1.41 005606a0 mac inlined UR_CreatureSpellFreeze::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q222UR_CreatureSpellFreeze14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_CreatureSpellFreeze@@UAEPADXZ");
// win1.41 00698140 mac inlined UR_CreatureSpellFreeze::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q222UR_CreatureSpellFreeze14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_CreatureSpellFreeze@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cec50 mac inlined UR_CreatureSpellFreeze::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q222UR_CreatureSpellFreeze14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_CreatureSpellFreeze@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560690 mac inlined UR_CreatureSpellFreeze::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q222UR_CreatureSpellFreeze14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_CreatureSpellFreeze@@UAEIXZ");

struct UR_CreatureSpellGeneric__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_CreatureSpellGeneric__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 005607f0 mac inlined UR_CreatureSpellGeneric::AtomData::_dt( (void))
void __fastcall __dt__Q223UR_CreatureSpellGeneric8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_CreatureSpellGeneric@@UAEPAXI@Z");
// win1.41 005607b0 mac inlined UR_CreatureSpellGeneric::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q223UR_CreatureSpellGeneric8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_CreatureSpellGeneric@@UAEPADXZ");
// win1.41 00697d60 mac inlined UR_CreatureSpellGeneric::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q223UR_CreatureSpellGeneric8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_CreatureSpellGeneric@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce850 mac inlined UR_CreatureSpellGeneric::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q223UR_CreatureSpellGeneric8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_CreatureSpellGeneric@@UAEIAAVGameOSFile@@@Z");
// win1.41 005607a0 mac inlined UR_CreatureSpellGeneric::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q223UR_CreatureSpellGeneric8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_CreatureSpellGeneric@@UAEIXZ");

struct UR_CreatureSpellGeneric__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_CreatureSpellGeneric__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 005607c0 mac inlined UR_CreatureSpellGeneric::CollectionData::_dt( (void))
void __fastcall __dt__Q223UR_CreatureSpellGeneric14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_CreatureSpellGeneric@@UAEPAXI@Z");
// win1.41 00560750 mac inlined UR_CreatureSpellGeneric::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q223UR_CreatureSpellGeneric14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_CreatureSpellGeneric@@UAEPADXZ");
// win1.41 00697ea0 mac inlined UR_CreatureSpellGeneric::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q223UR_CreatureSpellGeneric14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_CreatureSpellGeneric@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce9a0 mac inlined UR_CreatureSpellGeneric::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q223UR_CreatureSpellGeneric14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_CreatureSpellGeneric@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560740 mac inlined UR_CreatureSpellGeneric::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q223UR_CreatureSpellGeneric14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_CreatureSpellGeneric@@UAEIXZ");

struct UR_CreatureSpellItch__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_CreatureSpellItch__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560630 mac inlined UR_CreatureSpellItch::CollectionData::_dt( (void))
void __fastcall __dt__Q220UR_CreatureSpellItch14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_CreatureSpellItch@@UAEPAXI@Z");
// win1.41 00560620 mac inlined UR_CreatureSpellItch::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q220UR_CreatureSpellItch14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_CreatureSpellItch@@UAEPADXZ");
// win1.41 006980e0 mac inlined UR_CreatureSpellItch::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q220UR_CreatureSpellItch14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_CreatureSpellItch@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cebf0 mac inlined UR_CreatureSpellItch::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q220UR_CreatureSpellItch14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_CreatureSpellItch@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560610 mac inlined UR_CreatureSpellItch::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q220UR_CreatureSpellItch14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_CreatureSpellItch@@UAEIXZ");

struct UR_Explosion__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Explosion__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560d90 mac inlined UR_Explosion::AtomData::_dt( (void))
void __fastcall __dt__Q212UR_Explosion8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_Explosion@@UAEPAXI@Z");
// win1.41 00560d80 mac inlined UR_Explosion::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q212UR_Explosion8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_Explosion@@UAEPADXZ");
// win1.41 00698770 mac inlined UR_Explosion::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q212UR_Explosion8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_Explosion@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cf250 mac inlined UR_Explosion::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q212UR_Explosion8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_Explosion@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560d70 mac inlined UR_Explosion::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q212UR_Explosion8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_Explosion@@UAEIXZ");

struct UR_Explosion__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Explosion__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0067e1b0 mac inlined UR_Explosion::CollectionData::_dt( (void))
void __fastcall __dt__Q212UR_Explosion14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_Explosion@@UAEPAXI@Z");
// win1.41 0067e1a0 mac inlined UR_Explosion::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q212UR_Explosion14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_Explosion@@UAEPADXZ");
// win1.41 006984d0 mac inlined UR_Explosion::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q212UR_Explosion14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_Explosion@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cf000 mac inlined UR_Explosion::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q212UR_Explosion14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_Explosion@@UAEIAAVGameOSFile@@@Z");
// win1.41 0067e190 mac inlined UR_Explosion::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q212UR_Explosion14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_Explosion@@UAEIXZ");

struct UR_Flocking__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Flocking__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560f10 mac inlined UR_Flocking::CollectionData::_dt( (void))
void __fastcall __dt__Q211UR_Flocking14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_Flocking@@UAEPAXI@Z");
// win1.41 00560f00 mac inlined UR_Flocking::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q211UR_Flocking14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_Flocking@@UAEPADXZ");
// win1.41 006987d0 mac inlined UR_Flocking::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q211UR_Flocking14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_Flocking@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cf2b0 mac inlined UR_Flocking::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q211UR_Flocking14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_Flocking@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560ef0 mac inlined UR_Flocking::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q211UR_Flocking14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_Flocking@@UAEIXZ");

struct UR_FollowTargets__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_FollowTargets__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560290 mac inlined UR_FollowTargets::AtomData::_dt( (void))
void __fastcall __dt__Q216UR_FollowTargets8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_FollowTargets@@UAEPAXI@Z");
// win1.41 00560250 mac inlined UR_FollowTargets::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q216UR_FollowTargets8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_FollowTargets@@UAEPADXZ");
// win1.41 00697600 mac inlined UR_FollowTargets::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q216UR_FollowTargets8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_FollowTargets@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce170 mac inlined UR_FollowTargets::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q216UR_FollowTargets8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_FollowTargets@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560240 mac inlined UR_FollowTargets::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q216UR_FollowTargets8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_FollowTargets@@UAEIXZ");

struct UR_FollowTargets__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_FollowTargets__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560260 mac inlined UR_FollowTargets::CollectionData::_dt( (void))
void __fastcall __dt__Q216UR_FollowTargets14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_FollowTargets@@UAEPAXI@Z");
// win1.41 00560200 mac inlined UR_FollowTargets::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q216UR_FollowTargets14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_FollowTargets@@UAEPADXZ");
// win1.41 00699780 mac inlined UR_FollowTargets::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q216UR_FollowTargets14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_FollowTargets@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0290 mac inlined UR_FollowTargets::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q216UR_FollowTargets14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_FollowTargets@@UAEIAAVGameOSFile@@@Z");
// win1.41 005601f0 mac inlined UR_FollowTargets::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q216UR_FollowTargets14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_FollowTargets@@UAEIXZ");

struct UR_ForestPath__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_ForestPath__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fb10 mac inlined UR_ForestPath::AtomData::_dt( (void))
void __fastcall __dt__Q213UR_ForestPath8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_ForestPath@@UAEPAXI@Z");
// win1.41 0055fb00 mac inlined UR_ForestPath::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q213UR_ForestPath8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_ForestPath@@UAEPADXZ");
// win1.41 00698a20 mac inlined UR_ForestPath::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q213UR_ForestPath8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_ForestPath@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cf500 mac inlined UR_ForestPath::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q213UR_ForestPath8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_ForestPath@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055faf0 mac inlined UR_ForestPath::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q213UR_ForestPath8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_ForestPath@@UAEIXZ");

struct UR_HandSprinkle__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_HandSprinkle__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f930 mac inlined UR_HandSprinkle::CollectionData::_dt( (void))
void __fastcall __dt__Q215UR_HandSprinkle14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_HandSprinkle@@UAEPAXI@Z");
// win1.41 0055f920 mac inlined UR_HandSprinkle::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q215UR_HandSprinkle14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_HandSprinkle@@UAEPADXZ");
// win1.41 00699c00 mac inlined UR_HandSprinkle::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q215UR_HandSprinkle14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_HandSprinkle@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d05e0 mac inlined UR_HandSprinkle::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q215UR_HandSprinkle14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_HandSprinkle@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f910 mac inlined UR_HandSprinkle::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q215UR_HandSprinkle14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_HandSprinkle@@UAEIXZ");

struct UR_HealSpellChakra__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_HealSpellChakra__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006a0980 mac inlined UR_HealSpellChakra::AtomData::_dt( (void))
void __fastcall __dt__Q218UR_HealSpellChakra8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_HealSpellChakra@@UAEPAXI@Z");
// win1.41 006a0970 mac inlined UR_HealSpellChakra::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q218UR_HealSpellChakra8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_HealSpellChakra@@UAEPADXZ");
// win1.41 00697140 mac inlined UR_HealSpellChakra::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q218UR_HealSpellChakra8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_HealSpellChakra@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cdcb0 mac inlined UR_HealSpellChakra::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q218UR_HealSpellChakra8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_HealSpellChakra@@UAEIAAVGameOSFile@@@Z");
// win1.41 006a0960 mac inlined UR_HealSpellChakra::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q218UR_HealSpellChakra8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_HealSpellChakra@@UAEIXZ");

struct UR_InitialSpin__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_InitialSpin__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560190 mac inlined UR_InitialSpin::AtomData::_dt( (void))
void __fastcall __dt__Q214UR_InitialSpin8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_InitialSpin@@UAEPAXI@Z");
// win1.41 00560180 mac inlined UR_InitialSpin::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q214UR_InitialSpin8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_InitialSpin@@UAEPADXZ");
// win1.41 006973e0 mac inlined UR_InitialSpin::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q214UR_InitialSpin8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_InitialSpin@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cdf50 mac inlined UR_InitialSpin::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q214UR_InitialSpin8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_InitialSpin@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560170 mac inlined UR_InitialSpin::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q214UR_InitialSpin8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_InitialSpin@@UAEIXZ");

struct UR_LightSheetOnObject__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_LightSheetOnObject__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0069c820 mac inlined UR_LightSheetOnObject::AtomData::_dt( (void))
void __fastcall __dt__Q221UR_LightSheetOnObject8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_LightSheetOnObject@@UAEPAXI@Z");
// win1.41 0069c810 mac inlined UR_LightSheetOnObject::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q221UR_LightSheetOnObject8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_LightSheetOnObject@@UAEPADXZ");
// win1.41 00696790 mac inlined UR_LightSheetOnObject::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q221UR_LightSheetOnObject8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_LightSheetOnObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd2f0 mac inlined UR_LightSheetOnObject::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q221UR_LightSheetOnObject8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_LightSheetOnObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 0069c800 mac inlined UR_LightSheetOnObject::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q221UR_LightSheetOnObject8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_LightSheetOnObject@@UAEIXZ");

struct UR_LightSheetOnObject__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_LightSheetOnObject__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f5c0 mac inlined UR_LightSheetOnObject::CollectionData::_dt( (void))
void __fastcall __dt__Q221UR_LightSheetOnObject14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_LightSheetOnObject@@UAEPAXI@Z");
// win1.41 0055f5b0 mac inlined UR_LightSheetOnObject::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q221UR_LightSheetOnObject14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_LightSheetOnObject@@UAEPADXZ");
// win1.41 006967f0 mac inlined UR_LightSheetOnObject::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q221UR_LightSheetOnObject14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_LightSheetOnObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd350 mac inlined UR_LightSheetOnObject::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q221UR_LightSheetOnObject14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_LightSheetOnObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f5a0 mac inlined UR_LightSheetOnObject::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q221UR_LightSheetOnObject14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_LightSheetOnObject@@UAEIXZ");

struct UR_LightningStrike__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_LightningStrike__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00693a40 mac inlined UR_LightningStrike::AtomData::_dt( (void))
void __fastcall __dt__Q218UR_LightningStrike8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_LightningStrike@@UAEPAXI@Z");

struct UR_Lightning_CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Lightning_CollectionData) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c04280 mac inlined UR_Lightning_CollectionData::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__27UR_Lightning_CollectionData asm("??_R0?AVUR_Lightning_CollectionData@@@8");
// win1.41 009b41c8 mac inlined UR_Lightning_CollectionData::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__27UR_Lightning_CollectionData asm("??_R1A@?0A@A@UR_Lightning_CollectionData@@8");
// win1.41 009b41e0 mac inlined UR_Lightning_CollectionData::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__27UR_Lightning_CollectionData asm("??_R2UR_Lightning_CollectionData@@8");
// win1.41 009b41f8 mac inlined UR_Lightning_CollectionData::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__27UR_Lightning_CollectionData asm("??_R3UR_Lightning_CollectionData@@8");

// Override methods

// win1.41 0068ff20 mac inlined UR_Lightning_CollectionData::_dt(void)
void __fastcall __dt__27UR_Lightning_CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GUR_Lightning_CollectionData@@UAEPAXI@Z");
// win1.41 0068ff10 mac inlined UR_Lightning_CollectionData::GetDebugText(void)
char* __fastcall GetDebugText__27UR_Lightning_CollectionDataFv(struct GameThing* this) asm("?GetDebugText@UR_Lightning_CollectionData@@UAEPADXZ");
// win1.41 00697870 mac inlined UR_Lightning_CollectionData::Load(GameOSFile &)
uint32_t __fastcall Load__27UR_Lightning_CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@UR_Lightning_CollectionData@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce3b0 mac inlined UR_Lightning_CollectionData::Save(GameOSFile &)
uint32_t __fastcall Save__27UR_Lightning_CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@UR_Lightning_CollectionData@@UAEIAAVGameOSFile@@@Z");
// win1.41 0068ff00 mac inlined UR_Lightning_CollectionData::GetSaveType(void)
uint32_t __fastcall GetSaveType__27UR_Lightning_CollectionDataFv(struct GameThing* this) asm("?GetSaveType@UR_Lightning_CollectionData@@UAEIXZ");

struct UR_ManaPathNew__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_ManaPathNew__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f4c0 mac inlined UR_ManaPathNew::AtomData::_dt( (void))
void __fastcall __dt__Q214UR_ManaPathNew8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_ManaPathNew@@UAEPAXI@Z");
// win1.41 0055f4b0 mac inlined UR_ManaPathNew::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q214UR_ManaPathNew8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_ManaPathNew@@UAEPADXZ");
// win1.41 00695fc0 mac inlined UR_ManaPathNew::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q214UR_ManaPathNew8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_ManaPathNew@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ccb10 mac inlined UR_ManaPathNew::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q214UR_ManaPathNew8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_ManaPathNew@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f4a0 mac inlined UR_ManaPathNew::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q214UR_ManaPathNew8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_ManaPathNew@@UAEIXZ");

struct UR_ObjectArcer__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_ObjectArcer__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006935e0 mac inlined UR_ObjectArcer::AtomData::_dt( (void))
void __fastcall __dt__Q214UR_ObjectArcer8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_ObjectArcer@@UAEPAXI@Z");

struct UR_OrientSpriteWithRandomAngle__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_OrientSpriteWithRandomAngle__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 005604b0 mac inlined UR_OrientSpriteWithRandomAngle::AtomData::_dt( (void))
void __fastcall __dt__Q230UR_OrientSpriteWithRandomAngle8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_OrientSpriteWithRandomAngle@@UAEPAXI@Z");
// win1.41 005604a0 mac inlined UR_OrientSpriteWithRandomAngle::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q230UR_OrientSpriteWithRandomAngle8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_OrientSpriteWithRandomAngle@@UAEPADXZ");
// win1.41 006972a0 mac inlined UR_OrientSpriteWithRandomAngle::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q230UR_OrientSpriteWithRandomAngle8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_OrientSpriteWithRandomAngle@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cde10 mac inlined UR_OrientSpriteWithRandomAngle::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q230UR_OrientSpriteWithRandomAngle8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_OrientSpriteWithRandomAngle@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560490 mac inlined UR_OrientSpriteWithRandomAngle::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q230UR_OrientSpriteWithRandomAngle8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_OrientSpriteWithRandomAngle@@UAEIXZ");

struct UR_OrientSpriteWithVelocity__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_OrientSpriteWithVelocity__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560e10 mac inlined UR_OrientSpriteWithVelocity::AtomData::_dt( (void))
void __fastcall __dt__Q227UR_OrientSpriteWithVelocity8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_OrientSpriteWithVelocity@@UAEPAXI@Z");
// win1.41 00560e00 mac inlined UR_OrientSpriteWithVelocity::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q227UR_OrientSpriteWithVelocity8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_OrientSpriteWithVelocity@@UAEPADXZ");
// win1.41 00696940 mac inlined UR_OrientSpriteWithVelocity::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q227UR_OrientSpriteWithVelocity8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_OrientSpriteWithVelocity@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd4a0 mac inlined UR_OrientSpriteWithVelocity::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q227UR_OrientSpriteWithVelocity8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_OrientSpriteWithVelocity@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560df0 mac inlined UR_OrientSpriteWithVelocity::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q227UR_OrientSpriteWithVelocity8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_OrientSpriteWithVelocity@@UAEIXZ");

struct UR_OrientWithVelocity__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_OrientWithVelocity__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560530 mac inlined UR_OrientWithVelocity::AtomData::_dt( (void))
void __fastcall __dt__Q221UR_OrientWithVelocity8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_OrientWithVelocity@@UAEPAXI@Z");
// win1.41 00560520 mac inlined UR_OrientWithVelocity::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q221UR_OrientWithVelocity8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_OrientWithVelocity@@UAEPADXZ");
// win1.41 00697520 mac inlined UR_OrientWithVelocity::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q221UR_OrientWithVelocity8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_OrientWithVelocity@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce090 mac inlined UR_OrientWithVelocity::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q221UR_OrientWithVelocity8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_OrientWithVelocity@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560510 mac inlined UR_OrientWithVelocity::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q221UR_OrientWithVelocity8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_OrientWithVelocity@@UAEIXZ");

struct UR_PlasmaInf
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct UR_PlasmaInf) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cea70 mac inlined UR_PlasmaInf::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12UR_PlasmaInf asm("??_R0?AVUR_PlasmaInf@@@8");
// win1.41 009a8ff8 mac inlined UR_PlasmaInf::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12UR_PlasmaInf asm("??_R1A@?0A@A@UR_PlasmaInf@@8");
// win1.41 009a9010 mac inlined UR_PlasmaInf::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12UR_PlasmaInf asm("??_R2UR_PlasmaInf@@8");
// win1.41 009a9028 mac inlined UR_PlasmaInf::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12UR_PlasmaInf asm("??_R3UR_PlasmaInf@@8");

// Override methods

// win1.41 00466540 mac inlined UR_PlasmaInf::_dt(void)
void __fastcall __dt__12UR_PlasmaInfFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GUR_PlasmaInf@@UAEPAXI@Z");
// win1.41 00466530 mac inlined UR_PlasmaInf::GetDebugText(void)
char* __fastcall GetDebugText__12UR_PlasmaInfFv(struct GameThing* this) asm("?GetDebugText@UR_PlasmaInf@@UAEPADXZ");
// win1.41 00696200 mac inlined UR_PlasmaInf::Load(GameOSFile &)
uint32_t __fastcall Load__12UR_PlasmaInfFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@UR_PlasmaInf@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ccd60 mac inlined UR_PlasmaInf::Save(GameOSFile &)
uint32_t __fastcall Save__12UR_PlasmaInfFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@UR_PlasmaInf@@UAEIAAVGameOSFile@@@Z");
// win1.41 00466520 mac inlined UR_PlasmaInf::GetSaveType(void)
uint32_t __fastcall GetSaveType__12UR_PlasmaInfFv(struct GameThing* this) asm("?GetSaveType@UR_PlasmaInf@@UAEIXZ");

struct UR_RingSpin__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_RingSpin__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006879d0 mac inlined UR_RingSpin::CollectionData::_dt( (void))
void __fastcall __dt__Q211UR_RingSpin14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_RingSpin@@UAEPAXI@Z");

struct UR_Rope__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Rope__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00684410 mac inlined UR_Rope::CollectionData::_dt( (void))
void __fastcall __dt__Q27UR_Rope14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_Rope@@UAEPAXI@Z");

struct UR_SideSpin__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_SideSpin__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560110 mac inlined UR_SideSpin::AtomData::_dt( (void))
void __fastcall __dt__Q211UR_SideSpin8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_SideSpin@@UAEPAXI@Z");
// win1.41 00560100 mac inlined UR_SideSpin::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q211UR_SideSpin8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_SideSpin@@UAEPADXZ");
// win1.41 00697340 mac inlined UR_SideSpin::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q211UR_SideSpin8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_SideSpin@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cdeb0 mac inlined UR_SideSpin::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q211UR_SideSpin8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_SideSpin@@UAEIAAVGameOSFile@@@Z");
// win1.41 005600f0 mac inlined UR_SideSpin::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q211UR_SideSpin8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_SideSpin@@UAEIXZ");

struct UR_SimpleBeam__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_SimpleBeam__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f1c0 mac inlined UR_SimpleBeam::AtomData::_dt( (void))
void __fastcall __dt__Q213UR_SimpleBeam8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_SimpleBeam@@UAEPAXI@Z");
// win1.41 0055f150 mac inlined UR_SimpleBeam::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q213UR_SimpleBeam8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_SimpleBeam@@UAEPADXZ");
// win1.41 00696850 mac inlined UR_SimpleBeam::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q213UR_SimpleBeam8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_SimpleBeam@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd3b0 mac inlined UR_SimpleBeam::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q213UR_SimpleBeam8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_SimpleBeam@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f140 mac inlined UR_SimpleBeam::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q213UR_SimpleBeam8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_SimpleBeam@@UAEIXZ");

struct UR_SimpleBeam__SubCollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_SimpleBeam__SubCollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f240 mac inlined UR_SimpleBeam::SubCollectionData::_dt( (void))
void __fastcall __dt__Q213UR_SimpleBeam17SubCollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSubCollectionData@UR_SimpleBeam@@UAEPAXI@Z");
// win1.41 0055f1b0 mac inlined UR_SimpleBeam::SubCollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q213UR_SimpleBeam17SubCollectionDataFv(struct GameThing* this) asm("?GetDebugText@SubCollectionData@UR_SimpleBeam@@UAEPADXZ");
// win1.41 00697670 mac inlined UR_SimpleBeam::SubCollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q213UR_SimpleBeam17SubCollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SubCollectionData@UR_SimpleBeam@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ce1e0 mac inlined UR_SimpleBeam::SubCollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q213UR_SimpleBeam17SubCollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SubCollectionData@UR_SimpleBeam@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f1a0 mac inlined UR_SimpleBeam::SubCollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q213UR_SimpleBeam17SubCollectionDataFv(struct GameThing* this) asm("?GetSaveType@SubCollectionData@UR_SimpleBeam@@UAEIXZ");

struct UR_SphereSurfaceTracer__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_SphereSurfaceTracer__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fa90 mac inlined UR_SphereSurfaceTracer::AtomData::_dt( (void))
void __fastcall __dt__Q222UR_SphereSurfaceTracer8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_SphereSurfaceTracer@@UAEPAXI@Z");
// win1.41 0055fa80 mac inlined UR_SphereSurfaceTracer::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q222UR_SphereSurfaceTracer8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_SphereSurfaceTracer@@UAEPADXZ");
// win1.41 00698870 mac inlined UR_SphereSurfaceTracer::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q222UR_SphereSurfaceTracer8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_SphereSurfaceTracer@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cf350 mac inlined UR_SphereSurfaceTracer::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q222UR_SphereSurfaceTracer8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_SphereSurfaceTracer@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055fa70 mac inlined UR_SphereSurfaceTracer::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q222UR_SphereSurfaceTracer8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_SphereSurfaceTracer@@UAEIXZ");

struct UR_StormCast__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_StormCast__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006d5fd0 mac inlined UR_StormCast::AtomData::_dt( (void))
void __fastcall __dt__Q212UR_StormCast8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_StormCast@@UAEPAXI@Z");

struct UR_StormCast__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_StormCast__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006d5fa0 mac inlined UR_StormCast::CollectionData::_dt( (void))
void __fastcall __dt__Q212UR_StormCast14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_StormCast@@UAEPAXI@Z");

struct UR_TownCentreBelief__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_TownCentreBelief__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0069c720 mac inlined UR_TownCentreBelief::AtomData::_dt( (void))
void __fastcall __dt__Q219UR_TownCentreBelief8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_TownCentreBelief@@UAEPAXI@Z");

struct UR_TownCentreBelief__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_TownCentreBelief__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0069c6f0 mac inlined UR_TownCentreBelief::CollectionData::_dt( (void))
void __fastcall __dt__Q219UR_TownCentreBelief14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_TownCentreBelief@@UAEPAXI@Z");

struct UR_Trail__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Trail__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560320 mac inlined UR_Trail::CollectionData::_dt( (void))
void __fastcall __dt__Q28UR_Trail14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_Trail@@UAEPAXI@Z");
// win1.41 00560310 mac inlined UR_Trail::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q28UR_Trail14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_Trail@@UAEPADXZ");
// win1.41 006997e0 mac inlined UR_Trail::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q28UR_Trail14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_Trail@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d02f0 mac inlined UR_Trail::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q28UR_Trail14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_Trail@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560300 mac inlined UR_Trail::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q28UR_Trail14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_Trail@@UAEIXZ");

struct UR_VapourEndEffect__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_VapourEndEffect__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fb90 mac inlined UR_VapourEndEffect::AtomData::_dt( (void))
void __fastcall __dt__Q218UR_VapourEndEffect8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_VapourEndEffect@@UAEPAXI@Z");
// win1.41 0055fb80 mac inlined UR_VapourEndEffect::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q218UR_VapourEndEffect8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_VapourEndEffect@@UAEPADXZ");
// win1.41 00696ed0 mac inlined UR_VapourEndEffect::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q218UR_VapourEndEffect8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_VapourEndEffect@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cda40 mac inlined UR_VapourEndEffect::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q218UR_VapourEndEffect8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_VapourEndEffect@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055fb70 mac inlined UR_VapourEndEffect::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q218UR_VapourEndEffect8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_VapourEndEffect@@UAEIXZ");

struct UR_VolFXOnObject__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_VolFXOnObject__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0069ccf0 mac inlined UR_VolFXOnObject::AtomData::_dt( (void))
void __fastcall __dt__Q216UR_VolFXOnObject8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_VolFXOnObject@@UAEPAXI@Z");
// win1.41 0069cce0 mac inlined UR_VolFXOnObject::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q216UR_VolFXOnObject8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_VolFXOnObject@@UAEPADXZ");
// win1.41 00696720 mac inlined UR_VolFXOnObject::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q216UR_VolFXOnObject8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_VolFXOnObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd280 mac inlined UR_VolFXOnObject::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q216UR_VolFXOnObject8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_VolFXOnObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 0069ccd0 mac inlined UR_VolFXOnObject::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q216UR_VolFXOnObject8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_VolFXOnObject@@UAEIXZ");

struct UR_VortexAttract__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_VortexAttract__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560d10 mac inlined UR_VortexAttract::AtomData::_dt( (void))
void __fastcall __dt__Q216UR_VortexAttract8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_VortexAttract@@UAEPAXI@Z");
// win1.41 00560d00 mac inlined UR_VortexAttract::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q216UR_VortexAttract8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_VortexAttract@@UAEPADXZ");
// win1.41 00698350 mac inlined UR_VortexAttract::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q216UR_VortexAttract8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_VortexAttract@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cee70 mac inlined UR_VortexAttract::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q216UR_VortexAttract8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_VortexAttract@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560cf0 mac inlined UR_VortexAttract::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q216UR_VortexAttract8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_VortexAttract@@UAEIXZ");

struct UR_WillowWisp__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_WillowWisp__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fe90 mac inlined UR_WillowWisp::CollectionData::_dt( (void))
void __fastcall __dt__Q213UR_WillowWisp14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_WillowWisp@@UAEPAXI@Z");
// win1.41 0055fe80 mac inlined UR_WillowWisp::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q213UR_WillowWisp14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_WillowWisp@@UAEPADXZ");
// win1.41 006994b0 mac inlined UR_WillowWisp::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q213UR_WillowWisp14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_WillowWisp@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cffc0 mac inlined UR_WillowWisp::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q213UR_WillowWisp14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_WillowWisp@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055fe70 mac inlined UR_WillowWisp::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q213UR_WillowWisp14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_WillowWisp@@UAEIXZ");

struct UpdateRuleGravityWithFloor__AtomDataRipple
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UpdateRuleGravityWithFloor__AtomDataRipple) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f830 mac inlined UpdateRuleGravityWithFloor::AtomDataRipple::_dt( (void))
void __fastcall __dt__Q226UpdateRuleGravityWithFloor14AtomDataRippleFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomDataRipple@UpdateRuleGravityWithFloor@@UAEPAXI@Z");
// win1.41 0055f820 mac inlined UpdateRuleGravityWithFloor::AtomDataRipple::GetDebugText( (void))
char* __fastcall GetDebugText__Q226UpdateRuleGravityWithFloor14AtomDataRippleFv(struct GameThing* this) asm("?GetDebugText@AtomDataRipple@UpdateRuleGravityWithFloor@@UAEPADXZ");
// win1.41 00696cd0 mac inlined UpdateRuleGravityWithFloor::AtomDataRipple::Load( (GameOSFile &))
uint32_t __fastcall Load__Q226UpdateRuleGravityWithFloor14AtomDataRippleFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomDataRipple@UpdateRuleGravityWithFloor@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd830 mac inlined UpdateRuleGravityWithFloor::AtomDataRipple::Save( (GameOSFile &))
uint32_t __fastcall Save__Q226UpdateRuleGravityWithFloor14AtomDataRippleFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomDataRipple@UpdateRuleGravityWithFloor@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f810 mac inlined UpdateRuleGravityWithFloor::AtomDataRipple::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q226UpdateRuleGravityWithFloor14AtomDataRippleFv(struct GameThing* this) asm("?GetSaveType@AtomDataRipple@UpdateRuleGravityWithFloor@@UAEIXZ");

struct UpdateRuleShieldSpark__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UpdateRuleShieldSpark__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055fa10 mac inlined UpdateRuleShieldSpark::AtomData::_dt( (void))
void __fastcall __dt__Q221UpdateRuleShieldSpark8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UpdateRuleShieldSpark@@UAEPAXI@Z");
// win1.41 0055fa00 mac inlined UpdateRuleShieldSpark::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q221UpdateRuleShieldSpark8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UpdateRuleShieldSpark@@UAEPADXZ");
// win1.41 00696d90 mac inlined UpdateRuleShieldSpark::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q221UpdateRuleShieldSpark8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UpdateRuleShieldSpark@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd8f0 mac inlined UpdateRuleShieldSpark::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q221UpdateRuleShieldSpark8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UpdateRuleShieldSpark@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f9f0 mac inlined UpdateRuleShieldSpark::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q221UpdateRuleShieldSpark8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UpdateRuleShieldSpark@@UAEIXZ");

struct ZR_ChainGesture__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct ZR_ChainGesture__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0068a300 mac inlined ZR_ChainGesture::AtomData::_dt( (void))
void __fastcall __dt__Q215ZR_ChainGesture8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@ZR_ChainGesture@@UAEPAXI@Z");

struct ZR_ChainGesture__ParentCollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct ZR_ChainGesture__ParentCollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0068a2d0 mac inlined ZR_ChainGesture::ParentCollectionData::_dt( (void))
void __fastcall __dt__Q215ZR_ChainGesture20ParentCollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParentCollectionData@ZR_ChainGesture@@UAEPAXI@Z");

struct ZR_SurfRevol__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct ZR_SurfRevol__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00686180 mac inlined ZR_SurfRevol::CollectionData::_dt( (void))
void __fastcall __dt__Q212ZR_SurfRevol14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@ZR_SurfRevol@@UAEPAXI@Z");

#endif /* BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H */
