#ifndef BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H
#define BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Spell.h" /* For struct Spell */

// Forward Declares

struct Base;
struct GameThing;

struct SpellStormAndTornado
{
  struct Spell super;  /* 0x0 */
};
static_assert(sizeof(struct SpellStormAndTornado) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c097e0 mac inlined SpellStormAndTornado::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20SpellStormAndTornado asm("??_R0?AVSpellStormAndTornado@@@8");
// win1.41 009b9730 mac inlined SpellStormAndTornado::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20SpellStormAndTornado asm("??_R1A@?0A@A@SpellStormAndTornado@@8");
// win1.41 009b9748 mac inlined SpellStormAndTornado::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20SpellStormAndTornado asm("??_R2SpellStormAndTornado@@8");
// win1.41 009b9760 mac inlined SpellStormAndTornado::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20SpellStormAndTornado asm("??_R3SpellStormAndTornado@@8");

// Override methods

// win1.41 0072d990 mac 1052dff0 SpellStormAndTornado::_dt(void)
void __fastcall __dt__20SpellStormAndTornadoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellStormAndTornado@@UAEPAXI@Z");
// win1.41 0072da20 mac 1052e7f0 SpellStormAndTornado::ToBeDeleted(int)
void __fastcall ToBeDeleted__20SpellStormAndTornadoFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SpellStormAndTornado@@UAEXH@Z");
// win1.41 0072d960 mac 1052e140 SpellStormAndTornado::GetRadius(void)
float __fastcall GetRadius__20SpellStormAndTornadoFv(struct GameThing* this) asm("?GetRadius@SpellStormAndTornado@@UAEMXZ");
// win1.41 0072d950 mac 1052e0e0 SpellStormAndTornado::Get2DRadius(void)
float __fastcall Get2DRadius__20SpellStormAndTornadoFv(struct GameThing* this) asm("?Get2DRadius@SpellStormAndTornado@@UAEMXZ");
// win1.41 0072d980 mac 1052e1f0 SpellStormAndTornado::GetDebugText(void)
char* __fastcall GetDebugText__20SpellStormAndTornadoFv(struct GameThing* this) asm("?GetDebugText@SpellStormAndTornado@@UAEPADXZ");
// win1.41 0072d970 mac 1052e1b0 SpellStormAndTornado::GetSaveType(void)
uint32_t __fastcall GetSaveType__20SpellStormAndTornadoFv(struct GameThing* this) asm("?GetSaveType@SpellStormAndTornado@@UAEIXZ");

#endif /* BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H */
