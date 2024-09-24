#ifndef BW1_DECOMP_RTTI_INCLUDED_H
#define BW1_DECOMP_RTTI_INCLUDED_H

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


#endif // BW1_DECOMP_RTTI_INCLUDED_H
