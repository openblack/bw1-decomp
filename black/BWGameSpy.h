#ifndef BW1_DECOMP_BW_GAME_SPY_INCLUDED_H
#define BW1_DECOMP_BW_GAME_SPY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "LayerCommunication.h" /* For struct LayerCommunication */

struct BWGameSpy
{
  struct LayerCommunication super;  /* 0x0 */
};
static_assert(sizeof(struct BWGameSpy) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd680 mac inlined BWGameSpy::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9BWGameSpy asm("??_R0?AVBWGameSpy@@@8");
// win1.41 009a8700 mac inlined BWGameSpy::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9BWGameSpy asm("??_R1A@?0A@A@BWGameSpy@@8");
// win1.41 009a8718 mac inlined BWGameSpy::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9BWGameSpy asm("??_R2BWGameSpy@@8");
// win1.41 009a8728 mac inlined BWGameSpy::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9BWGameSpy asm("??_R3BWGameSpy@@8");
// win1.41 008c7058 mac 109edca4 BWGameSpy::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9BWGameSpy asm("??_R4BWGameSpy@@6B@");
// win1.41 008c705c mac 109edcac BWGameSpy::`vftable'
extern const struct LayerCommunicationVftable __vt__9BWGameSpy asm("??_7BWGameSpy@@6B@");

// Override methods

// win1.41 0043e290 mac 105d1460 BWGameSpy::Connect(void)
uint32_t __fastcall Connect__9BWGameSpyFv(struct LayerCommunication* this) asm("?Connect@BWGameSpy@@UAEIXZ");

#endif /* BW1_DECOMP_BW_GAME_SPY_INCLUDED_H */
