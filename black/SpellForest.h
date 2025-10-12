#ifndef BW1_DECOMP_SPELL_FOREST_INCLUDED_H
#define BW1_DECOMP_SPELL_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Spell.h" /* For struct Spell */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct MapCoords;
struct PSysProcessInfo;
struct SpellCastData;
struct SpellEventInfo;

struct SpellForest
{
  struct Spell super;  /* 0x0 */
};
static_assert(sizeof(struct SpellForest) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bece90 mac inlined SpellForest::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11SpellForest asm("??_R0?AVSpellForest@@@8");
// win1.41 009ae740 mac inlined SpellForest::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11SpellForest asm("??_R1A@?0A@A@SpellForest@@8");
// win1.41 009ae758 mac inlined SpellForest::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11SpellForest asm("??_R2SpellForest@@8");
// win1.41 009ae770 mac inlined SpellForest::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11SpellForest asm("??_R3SpellForest@@8");

// Override methods

// win1.41 0055d220 mac 1051fef0 SpellForest::_dt(void)
void __fastcall __dt__11SpellForestFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellForest@@UAEPAXI@Z");
// win1.41 00725500 mac 10521390 SpellForest::ToBeDeleted(int)
void __fastcall ToBeDeleted__11SpellForestFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SpellForest@@UAEXH@Z");
// win1.41 0055d210 mac 10520090 SpellForest::GetDebugText(void)
char* __fastcall GetDebugText__11SpellForestFv(struct GameThing* this) asm("?GetDebugText@SpellForest@@UAEPADXZ");
// win1.41 00725d50 mac 105200d0 SpellForest::Load(GameOSFile &)
uint32_t __fastcall Load__11SpellForestFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellForest@@UAEIAAVGameOSFile@@@Z");
// win1.41 00725c90 mac 10520200 SpellForest::Save(GameOSFile &)
uint32_t __fastcall Save__11SpellForestFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellForest@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d200 mac 10520050 SpellForest::GetSaveType(void)
uint32_t __fastcall GetSaveType__11SpellForestFv(struct GameThing* this) asm("?GetSaveType@SpellForest@@UAEIXZ");
// win1.41 00725730 mac 10520d80 SpellForest::HasEnoughChantsAndLifeForRecast(void)
void __fastcall HasEnoughChantsAndLifeForRecast__11SpellForestFv(struct Spell* this) asm("?HasEnoughChantsAndLifeForRecast@SpellForest@@UAEXXZ");
// win1.41 007259c0 mac 10520820 SpellForest::Process(void)
uint32_t __fastcall Process__11SpellForestFv(struct Spell* this) asm("?Process@SpellForest@@UAEIXZ");
// win1.41 00725830 mac 10520880 SpellForest::SpellEvent(SpellEventInfo const &)
void __fastcall SpellEvent__11SpellForestFRC14SpellEventInfo(struct Spell* this, const void* edx, const struct SpellEventInfo* param_1) asm("?SpellEvent@SpellForest@@UAEXABVSpellEventInfo@@@Z");
// win1.41 0055d1e0 mac 1051ff90 SpellForest::CloseDown(void)
void __fastcall CloseDown__11SpellForestFv(struct Spell* this) asm("?CloseDown@SpellForest@@UAEXXZ");
// win1.41 00725540 mac 10521300 SpellForest::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int __fastcall InitWithPos__11SpellForestFP9GameThingRC9MapCoordsP13SpellCastDataRC15PSysProcessInfo(struct Spell* this, const void* edx, struct GameThing* param_1, const struct MapCoords* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4) asm("?InitWithPos@SpellForest@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z");
// win1.41 007259e0 mac 10520730 SpellForest::CalculateCostToMaintain(void)
float __fastcall CalculateCostToMaintain__11SpellForestFv(struct Spell* this) asm("?CalculateCostToMaintain@SpellForest@@UAEMXZ");
// win1.41 00725750 mac 10520cc0 SpellForest::AdjustSpellSeedPos(MapCoords *)
void __fastcall AdjustSpellSeedPos__11SpellForestFP9MapCoords(struct Spell* this, const void* edx, struct MapCoords* param_1) asm("?AdjustSpellSeedPos@SpellForest@@UAEXPAUMapCoords@@@Z");
// win1.41 007256c0 mac 10520ee0 SpellForest::SetMaxObjectsToCreate(long)
void __fastcall SetMaxObjectsToCreate__11SpellForestFl(struct Spell* this, const void* edx, int param_1) asm("?SetMaxObjectsToCreate@SpellForest@@UAEXH@Z");
// win1.41 007256f0 mac 10520e00 SpellForest::GetMaxObjectsToCreate(void)
int __fastcall GetMaxObjectsToCreate__11SpellForestFv(struct Spell* this) asm("?GetMaxObjectsToCreate@SpellForest@@UAEHXZ");

#endif /* BW1_DECOMP_SPELL_FOREST_INCLUDED_H */
