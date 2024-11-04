#ifndef BW1_DECOMP_REVERSING_UTILS_RTTI_INCLUDED_H
#define BW1_DECOMP_REVERSING_UTILS_RTTI_INCLUDED_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#define VT_TO_RTTI_TYPE_DESCRIPTOR(VT) \
  (((const struct RTTICompleteObjectLocator*)((uintptr_t)(VT) - 4))->pTypeDescriptor)

struct RTTIBaseClassDescriptor {
  struct TypeDescriptor* pTypeDescriptor;
  unsigned long numContainedBases;
  unsigned where;
  unsigned long attributes;
};

struct RTTIBaseClassArray {
  struct RTTIBaseClassDescriptor* arrayOfBaseClassDescriptors[0];
};

struct RTTIClassHierarchyDescriptor {
  unsigned long signature;
  unsigned long attributes;
  unsigned long numBaseClasses;
  struct RTTIBaseClassArray* pBaseClassArray;
};

struct TypeDescriptor {
  const void* pVFTable;
  void* spare;
  const char name[];
};

struct RTTICompleteObjectLocator {
  unsigned long signature;
  unsigned long offset;
  unsigned long cdOffset;
  struct TypeDescriptor* pTypeDescriptor;
  struct RTTIClassHierarchyDescriptor* pClassDescriptor;
};

void* __cdecl __RTDynamicCast(void* intptr, size_t vf_delta, struct TypeDescriptor* src_type, struct TypeDescriptor* target_type, bool is_reference);
const char* __RTTypeName(const void* intptr);

#endif /* BW1_DECOMP_REVERSING_UTILS_RTTI_INCLUDED_H */
