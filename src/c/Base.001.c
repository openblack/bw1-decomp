#include "Base.h"

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassArray __RTTIBaseClassArray__4Base = {
    .arrayOfBaseClassDescriptors = {
        (void*)0x009a6308,//&__RTTIBaseClassDescriptor__4Base,
        NULL,
    }
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Base = {
  .signature = 0x00000000,
  .attributes = 0x00000000,
  .numBaseClasses = 0x00000001,
  .pBaseClassArray = &__RTTIBaseClassArray__4Base,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__4Base = {
  .signature = 0x00000000,
  .offset = 0x00000000,
  .cdOffset = 0x00000000,
  .pTypeDescriptor = &__RTTITypeDescriptor__4Base,
  .pClassDescriptor = &__RTTIClassHierarchyDescriptor__4Base,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Base = {
    .pTypeDescriptor = &__RTTITypeDescriptor__4Base,
    .numContainedBases = 0x00000000,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

const struct RTTICompleteObjectLocator* const p__RTTICompleteObjectLocator__4Base = &__RTTICompleteObjectLocator__4Base;

const struct BaseVftable __vt__4Base = {
    Serialise__4BaseFR7Archive,
    __dt__4BaseFUi,
    Delete__4BaseFv,
    ToBeDeleted__4BaseFi,
    Get3DSoundPos__4BaseFP7LHPoint,
    CleanUpForSerialisation__4BaseFv,
    Dump__4BaseFv,
};
