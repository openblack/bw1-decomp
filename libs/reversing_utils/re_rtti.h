#ifndef BW1_DECOMP_REVERSING_UTILS_RTTI_INCLUDED_H
#define BW1_DECOMP_REVERSING_UTILS_RTTI_INCLUDED_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#define VT_TO_RTTI_TYPE_DESCRIPTOR(VT) \
  (((const struct RTTICompleteObjectLocator*)((uintptr_t)(VT) - 4))->pTypeDescriptor)

struct RTTIPMD {
    int mdisp;
    int pdisp;
    int vdisp;
};

struct RTTIBaseClassDescriptor {
  const struct RTTITypeDescriptor* pTypeDescriptor;
  unsigned long numContainedBases;
  struct RTTIPMD where;
  unsigned long attributes;
};

struct RTTIBaseClassArray {
  const struct RTTIBaseClassDescriptor* arrayOfBaseClassDescriptors[];
};

struct RTTIClassHierarchyDescriptor {
  unsigned long signature;
  unsigned long attributes;
  unsigned long numBaseClasses;
  const struct RTTIBaseClassArray* pBaseClassArray;
};

struct RTTITypeDescriptor {
  const void* pVFTable;
  void* spare;
  const char name[];
};

struct RTTICompleteObjectLocator {
  unsigned long signature;
  unsigned long offset;
  unsigned long cdOffset;
  const struct RTTITypeDescriptor* pTypeDescriptor;
  const struct RTTIClassHierarchyDescriptor* pClassDescriptor;
};

void* __cdecl __RTDynamicCast(void* intptr, size_t vf_delta, const struct RTTITypeDescriptor* src_type, const struct RTTITypeDescriptor* target_type, bool is_reference);
const char* __RTTypeName(const void* intptr);

extern int __vt__9type_info asm("??_7type_info@@6B@");

#endif /* BW1_DECOMP_REVERSING_UTILS_RTTI_INCLUDED_H */
