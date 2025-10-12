#ifndef BW1_DECOMP_SPELL_HEAL_INCLUDED_H
#define BW1_DECOMP_SPELL_HEAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Spell.h" /* For struct Spell */

// Forward Declares

struct Base;
struct GameThing;
struct MapCoords;
struct PSysProcessInfo;
struct SpellCastData;

struct SpellHeal
{
  struct Spell super;  /* 0x0 */
};
static_assert(sizeof(struct SpellHeal) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becaa8 mac inlined SpellHeal::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9SpellHeal asm("??_R0?AVSpellHeal@@@8");
// win1.41 009ad860 mac inlined SpellHeal::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9SpellHeal asm("??_R1A@?0A@A@SpellHeal@@8");
// win1.41 009ad878 mac inlined SpellHeal::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9SpellHeal asm("??_R2SpellHeal@@8");
// win1.41 009ad890 mac inlined SpellHeal::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9SpellHeal asm("??_R3SpellHeal@@8");

// Override methods

// win1.41 0055d1b0 mac 10533d20 SpellHeal::_dt(void)
void __fastcall __dt__9SpellHealFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellHeal@@UAEPAXI@Z");
// win1.41 0055d1a0 mac 10533e00 SpellHeal::GetDebugText(void)
char* __fastcall GetDebugText__9SpellHealFv(struct GameThing* this) asm("?GetDebugText@SpellHeal@@UAEPADXZ");
// win1.41 0055d190 mac 10533dc0 SpellHeal::GetSaveType(void)
uint32_t __fastcall GetSaveType__9SpellHealFv(struct GameThing* this) asm("?GetSaveType@SpellHeal@@UAEIXZ");
// win1.41 0072d870 mac 1052ed50 SpellHeal::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int __fastcall InitWithPos__9SpellHealFP9GameThingRC9MapCoordsP13SpellCastDataRC15PSysProcessInfo(struct Spell* this, const void* edx, struct GameThing* param_1, const struct MapCoords* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4) asm("?InitWithPos@SpellHeal@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z");

#endif /* BW1_DECOMP_SPELL_HEAL_INCLUDED_H */
