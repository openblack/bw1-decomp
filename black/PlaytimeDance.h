#ifndef BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct Town;

struct PlaytimeElement
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct PlaytimeElement) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c01fd0 mac inlined PlaytimeElement::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15PlaytimeElement asm("??_R0?AVPlaytimeElement@@@8");
// win1.41 009b3398 mac inlined PlaytimeElement::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15PlaytimeElement asm("??_R1A@?0A@A@PlaytimeElement@@8");
// win1.41 009b33b0 mac inlined PlaytimeElement::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15PlaytimeElement asm("??_R2PlaytimeElement@@8");
// win1.41 009b33c0 mac inlined PlaytimeElement::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15PlaytimeElement asm("??_R3PlaytimeElement@@8");

// Override methods

// win1.41 0066c3f0 mac inlined PlaytimeElement::_dt(void)
void __fastcall __dt__15PlaytimeElementFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlaytimeElement@@UAEPAXI@Z");
// win1.41 0066c6b0 mac inlined PlaytimeElement::ToBeDeleted(int)
void __fastcall ToBeDeleted__15PlaytimeElementFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PlaytimeElement@@UAEXH@Z");
// win1.41 0066c3e0 mac inlined PlaytimeElement::GetTown(void)
struct Town* __fastcall GetTown__15PlaytimeElementFv(struct GameThing* this) asm("?GetTown@PlaytimeElement@@UAEPAVTown@@XZ");
// win1.41 0066c810 mac inlined PlaytimeElement::IsFunctional(void)
bool __fastcall IsFunctional__15PlaytimeElementFv(struct GameThing* this) asm("?IsFunctional@PlaytimeElement@@UAE_NXZ");

#endif /* BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H */
