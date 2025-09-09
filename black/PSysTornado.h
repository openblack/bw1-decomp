#ifndef BW1_DECOMP_P_SYS_TORNADO_INCLUDED_H
#define BW1_DECOMP_P_SYS_TORNADO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysModifiers.h" /* For struct BaseAtomModifierData, struct BaseCollectionModifierData */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct UR_Tornado__CollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Tornado__CollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560a40 mac inlined UR_Tornado::CollectionData::_dt( (void))
void __fastcall __dt__Q210UR_Tornado14CollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCollectionData@UR_Tornado@@UAEPAXI@Z");
// win1.41 00560940 mac inlined UR_Tornado::CollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q210UR_Tornado14CollectionDataFv(struct GameThing* this) asm("?GetDebugText@CollectionData@UR_Tornado@@UAEPADXZ");
// win1.41 00699150 mac inlined UR_Tornado::CollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q210UR_Tornado14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CollectionData@UR_Tornado@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cfc40 mac inlined UR_Tornado::CollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q210UR_Tornado14CollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CollectionData@UR_Tornado@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560930 mac inlined UR_Tornado::CollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q210UR_Tornado14CollectionDataFv(struct GameThing* this) asm("?GetSaveType@CollectionData@UR_Tornado@@UAEIXZ");

struct UR_Tornado__DebrisCollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Tornado__DebrisCollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560a60 mac inlined UR_Tornado::DebrisCollectionData::_dt( (void))
void __fastcall __dt__Q210UR_Tornado20DebrisCollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDebrisCollectionData@UR_Tornado@@UAEPAXI@Z");
// win1.41 00560990 mac inlined UR_Tornado::DebrisCollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q210UR_Tornado20DebrisCollectionDataFv(struct GameThing* this) asm("?GetDebugText@DebrisCollectionData@UR_Tornado@@UAEPADXZ");
// win1.41 00698f10 mac inlined UR_Tornado::DebrisCollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q210UR_Tornado20DebrisCollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DebrisCollectionData@UR_Tornado@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cf9f0 mac inlined UR_Tornado::DebrisCollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q210UR_Tornado20DebrisCollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DebrisCollectionData@UR_Tornado@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560980 mac inlined UR_Tornado::DebrisCollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q210UR_Tornado20DebrisCollectionDataFv(struct GameThing* this) asm("?GetSaveType@DebrisCollectionData@UR_Tornado@@UAEIXZ");

struct UR_Tornado__FlyingAtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Tornado__FlyingAtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560ac0 mac inlined UR_Tornado::FlyingAtomData::_dt( (void))
void __fastcall __dt__Q210UR_Tornado14FlyingAtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFlyingAtomData@UR_Tornado@@UAEPAXI@Z");
// win1.41 00560a30 mac inlined UR_Tornado::FlyingAtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q210UR_Tornado14FlyingAtomDataFv(struct GameThing* this) asm("?GetDebugText@FlyingAtomData@UR_Tornado@@UAEPADXZ");
// win1.41 00699070 mac inlined UR_Tornado::FlyingAtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q210UR_Tornado14FlyingAtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@FlyingAtomData@UR_Tornado@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cfb50 mac inlined UR_Tornado::FlyingAtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q210UR_Tornado14FlyingAtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@FlyingAtomData@UR_Tornado@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560a20 mac inlined UR_Tornado::FlyingAtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q210UR_Tornado14FlyingAtomDataFv(struct GameThing* this) asm("?GetSaveType@FlyingAtomData@UR_Tornado@@UAEIXZ");

struct UR_Tornado__FlyingCollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Tornado__FlyingCollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00560a90 mac inlined UR_Tornado::FlyingCollectionData::_dt( (void))
void __fastcall __dt__Q210UR_Tornado20FlyingCollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFlyingCollectionData@UR_Tornado@@UAEPAXI@Z");
// win1.41 005609e0 mac inlined UR_Tornado::FlyingCollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q210UR_Tornado20FlyingCollectionDataFv(struct GameThing* this) asm("?GetDebugText@FlyingCollectionData@UR_Tornado@@UAEPADXZ");
// win1.41 00698fc0 mac inlined UR_Tornado::FlyingCollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q210UR_Tornado20FlyingCollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@FlyingCollectionData@UR_Tornado@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cfaa0 mac inlined UR_Tornado::FlyingCollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q210UR_Tornado20FlyingCollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@FlyingCollectionData@UR_Tornado@@UAEIAAVGameOSFile@@@Z");
// win1.41 005609d0 mac inlined UR_Tornado::FlyingCollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q210UR_Tornado20FlyingCollectionDataFv(struct GameThing* this) asm("?GetSaveType@FlyingCollectionData@UR_Tornado@@UAEIXZ");

#endif /* BW1_DECOMP_P_SYS_TORNADO_INCLUDED_H */
