#ifndef BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H
#define BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */

// Forward Declares

struct GInterfaceCollide;
struct LHCoord;

struct GInterfaceMessageBuffer
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0xc];
};
static_assert(sizeof(struct GInterfaceMessageBuffer) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf1b88 mac inlined GInterfaceMessageBuffer::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23GInterfaceMessageBuffer asm("??_R0?AVGInterfaceMessageBuffer@@@8");
// win1.41 009b1628 mac inlined GInterfaceMessageBuffer::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23GInterfaceMessageBuffer asm("??_R1A@?0A@A@GInterfaceMessageBuffer@@8");
// win1.41 009b1640 mac inlined GInterfaceMessageBuffer::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23GInterfaceMessageBuffer asm("??_R2GInterfaceMessageBuffer@@8");
// win1.41 009b1650 mac inlined GInterfaceMessageBuffer::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23GInterfaceMessageBuffer asm("??_R3GInterfaceMessageBuffer@@8");
// win1.41 0092aaa0 mac 1099f8dc GInterfaceMessageBuffer::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__23GInterfaceMessageBuffer asm("??_R4GInterfaceMessageBuffer@@6B@");
// win1.41 0092aaa4 mac 1099f8e4 GInterfaceMessageBuffer::`vftable'
extern const struct BaseVftable __vt__23GInterfaceMessageBuffer asm("??_7GInterfaceMessageBuffer@@6B@");

// Non-virtual methods

// win1.41 005d9e80 mac 10368b50 GInterfaceMessageBuffer::Init(unsigned short)
void __fastcall Init__23GInterfaceMessageBufferFUs(struct GInterfaceMessageBuffer* this, const void* edx, unsigned short param_1) asm("?Init@GInterfaceMessageBuffer@@QAEXG@Z");
// win1.41 005d9f10 mac 1009c3b0 GInterfaceMessageBuffer::Add(INTERFACE_MESSAGE_TYPES, GInterfaceCollide *, LHCoord *)
bool __fastcall Add__23GInterfaceMessageBufferF23INTERFACE_MESSAGE_TYPESP17GInterfaceCollideP7LHCoord(struct GInterfaceMessageBuffer* this, const void* edx, enum INTERFACE_MESSAGE_TYPES param_1, struct GInterfaceCollide* param_2, struct LHCoord* param_3) asm("?Add@GInterfaceMessageBuffer@@QAE_NW4INTERFACE_MESSAGE_TYPES@@PAVGInterfaceCollide@@PAULHCoord@@@Z");

// Override methods

// win1.41 005ce2a0 mac 10368cb0 GInterfaceMessageBuffer::_dt(void)
void __fastcall __dt__23GInterfaceMessageBufferFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGInterfaceMessageBuffer@@UAEPAXI@Z");

#endif /* BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H */
