#ifndef BW1_DECOMP_CPU_CHECK_INCLUDED_H
#define BW1_DECOMP_CPU_CHECK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct CPUCheck;

struct CPUCheckVftable
{
  void (__fastcall* __dt)(struct CPUCheck* this, const void* edx, uint32_t param_1);  /* 0x0 */
};
static_assert(sizeof(struct CPUCheckVftable) == 0x4, "Data type is of wrong size");

struct CPUCheck
{
  struct CPUCheckVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct CPUCheck) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cee68 mac inlined CPUCheck::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8CPUCheck asm("??_R0?AVCPUCheck@@@8");
// win1.41 009a9358 mac inlined CPUCheck::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8CPUCheck asm("??_R1A@?0A@A@CPUCheck@@8");
// win1.41 009a9370 mac inlined CPUCheck::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8CPUCheck asm("??_R2CPUCheck@@8");
// win1.41 009a9378 mac inlined CPUCheck::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8CPUCheck asm("??_R3CPUCheck@@8");

// Override methods

// win1.41 00471a80 mac 100c00a0 CPUCheck::~CPUCheck(void)
void __fastcall __dt__8CPUCheckFUi(struct CPUCheck* this, const void* edx, uint32_t param_1) asm("??GCPUCheck@@UAE@XZ");

#endif /* BW1_DECOMP_CPU_CHECK_INCLUDED_H */
