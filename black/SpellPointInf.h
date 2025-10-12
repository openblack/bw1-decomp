#ifndef BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H
#define BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct SpellPointInf
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct SpellPointInf) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed730 mac inlined SpellPointInf::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13SpellPointInf asm("??_R0?AVSpellPointInf@@@8");
// win1.41 009af120 mac inlined SpellPointInf::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13SpellPointInf asm("??_R1A@?0A@A@SpellPointInf@@8");
// win1.41 009af138 mac inlined SpellPointInf::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13SpellPointInf asm("??_R2SpellPointInf@@8");
// win1.41 009af150 mac inlined SpellPointInf::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13SpellPointInf asm("??_R3SpellPointInf@@8");

// Override methods

// win1.41 0055f450 mac 1041f870 SpellPointInf::_dt(void)
void __fastcall __dt__13SpellPointInfFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellPointInf@@UAEPAXI@Z");
// win1.41 0055f440 mac 1041f940 SpellPointInf::GetDebugText(void)
char* __fastcall GetDebugText__13SpellPointInfFv(struct GameThing* this) asm("?GetDebugText@SpellPointInf@@UAEPADXZ");
// win1.41 00698240 mac 104192e0 SpellPointInf::Load(GameOSFile &)
uint32_t __fastcall Load__13SpellPointInfFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellPointInf@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ced60 mac 10480d70 SpellPointInf::Save(GameOSFile &)
uint32_t __fastcall Save__13SpellPointInfFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellPointInf@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f430 mac 1041f900 SpellPointInf::GetSaveType(void)
uint32_t __fastcall GetSaveType__13SpellPointInfFv(struct GameThing* this) asm("?GetSaveType@SpellPointInf@@UAEIXZ");

#endif /* BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H */
