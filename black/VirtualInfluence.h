#ifndef BW1_DECOMP_VIRTUAL_INFLUENCE_INCLUDED_H
#define BW1_DECOMP_VIRTUAL_INFLUENCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

// Forward Declares

struct GInterfaceStatus;

struct GVirtualInfluence
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  float field_0x30;
  float field_0x34;
  struct GInterfaceStatus* interface_status;
  uint32_t field_0x3c;
  float field_0x40;
  uint32_t field_0x44;
  uint32_t field_0x48;
  uint32_t field_0x4c;
  uint32_t field_0x50;
  uint8_t field_0x54[0xc];
};
static_assert(sizeof(struct GVirtualInfluence) == 0x60, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24658 mac inlined GVirtualInfluence::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17GVirtualInfluence asm("??_R0?AVGVirtualInfluence@@@8");
// win1.41 009b9e78 mac inlined GVirtualInfluence::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17GVirtualInfluence asm("??_R1A@?0A@A@GVirtualInfluence@@8");
// win1.41 009b9e90 mac inlined GVirtualInfluence::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17GVirtualInfluence asm("??_R2GVirtualInfluence@@8");
// win1.41 009b9ea0 mac inlined GVirtualInfluence::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17GVirtualInfluence asm("??_R3GVirtualInfluence@@8");
// win1.41 0099aa6c mac 1075e9c4 GVirtualInfluence::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17GVirtualInfluence asm("??_R4GVirtualInfluence@@6B@");
// win1.41 0099aa70 mac 1075e9cc GVirtualInfluence::`vftable'
extern const struct BaseVftable __vt__17GVirtualInfluence asm("??_7GVirtualInfluence@@6B@");

// Constructors

// win1.41 0076cca0 mac 1015a6f0 GVirtualInfluence::GVirtualInfluence(GInterfaceStatus *)
void __fastcall __ct__17GVirtualInfluenceFP16GInterfaceStatus(struct GVirtualInfluence* this, const void* edx, struct GInterfaceStatus* status) asm("??0GVirtualInfluence@@QAE@PAVGInterfaceStatus@@@Z");

// Override methods

// win1.41 0076cd10 mac 1015a660 GVirtualInfluence::_dt(void)
void __fastcall __dt__17GVirtualInfluenceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGVirtualInfluence@@UAEPAXI@Z");

#endif /* BW1_DECOMP_VIRTUAL_INFLUENCE_INCLUDED_H */
