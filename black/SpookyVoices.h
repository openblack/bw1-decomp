#ifndef BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H
#define BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct GSpookyVoices
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct GSpookyVoices) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c228c8 mac inlined GSpookyVoices::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13GSpookyVoices asm("??_R0?AVGSpookyVoices@@@8");
// win1.41 009b97d8 mac inlined GSpookyVoices::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13GSpookyVoices asm("??_R1A@?0A@A@GSpookyVoices@@8");
// win1.41 009b97f0 mac inlined GSpookyVoices::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13GSpookyVoices asm("??_R2GSpookyVoices@@8");
// win1.41 009b9800 mac inlined GSpookyVoices::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13GSpookyVoices asm("??_R3GSpookyVoices@@8");

// Override methods

// win1.41 0072e250 mac 10148e30 GSpookyVoices::_dt(void)
void __fastcall __dt__13GSpookyVoicesFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpookyVoices@@UAEPAXI@Z");

#endif /* BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H */
