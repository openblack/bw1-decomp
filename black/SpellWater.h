#ifndef BW1_DECOMP_SPELL_WATER_INCLUDED_H
#define BW1_DECOMP_SPELL_WATER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Spell.h" /* For struct Spell */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct SpellWater
{
  struct Spell super;  /* 0x0 */
  uint8_t field_0xec[0x8];
};
static_assert(sizeof(struct SpellWater) == 0xf4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bece70 mac inlined SpellWater::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10SpellWater asm("??_R0?AVSpellWater@@@8");
// win1.41 009ae678 mac inlined SpellWater::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10SpellWater asm("??_R1A@?0A@A@SpellWater@@8");
// win1.41 009ae690 mac inlined SpellWater::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10SpellWater asm("??_R2SpellWater@@8");
// win1.41 009ae6a8 mac inlined SpellWater::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10SpellWater asm("??_R3SpellWater@@8");
// win1.41 008f5538 mac 109dacc8 SpellWater::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10SpellWater asm("??_R4SpellWater@@6B@");
// win1.41 008f553c mac 109dacd0 SpellWater::`vftable'
extern const struct SpellVftable __vt__10SpellWater asm("??_7SpellWater@@6B@");

// Override methods

// win1.41 0055d020 mac 1051ee70 SpellWater::_dt(void)
void __fastcall __dt__10SpellWaterFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellWater@@UAEPAXI@Z");
// win1.41 0055d010 mac 1051ef50 SpellWater::GetDebugText(void)
char* __fastcall GetDebugText__10SpellWaterFv(struct GameThing* this) asm("?GetDebugText@SpellWater@@UAEPADXZ");
// win1.41 007253b0 mac 1051f070 SpellWater::Load(GameOSFile &)
uint32_t __fastcall Load__10SpellWaterFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellWater@@UAEIAAVGameOSFile@@@Z");
// win1.41 00725420 mac 1051ef90 SpellWater::Save(GameOSFile &)
uint32_t __fastcall Save__10SpellWaterFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellWater@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d000 mac 1051ef10 SpellWater::GetSaveType(void)
uint32_t __fastcall GetSaveType__10SpellWaterFv(struct GameThing* this) asm("?GetSaveType@SpellWater@@UAEIXZ");
// win1.41 00724ed0 mac 1051f310 SpellWater::Process(void)
uint32_t __fastcall Process__10SpellWaterFv(struct Spell* this) asm("?Process@SpellWater@@UAEIXZ");

#endif /* BW1_DECOMP_SPELL_WATER_INCLUDED_H */
