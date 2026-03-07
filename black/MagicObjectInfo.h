#ifndef BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicInfo.h" /* For struct GMagicInfo */

#ifdef __cplusplus

// Forward Declares

class Base;

// win1.41 009cb9f0 mac inlined GMagicObjectInfo::`RTTI Type Descriptor'
// win1.41 009a7e70 mac inlined GMagicObjectInfo::`RTTI Base Class Descriptor'
// win1.41 009a8248 mac inlined GMagicObjectInfo::`RTTI Base Class Array'
// win1.41 009a8260 mac inlined GMagicObjectInfo::`RTTI Class Hierarchy Descriptor'
class GMagicObjectInfo: public GMagicInfo
{
public:

    // Override methods

    // win1.41 00435830 mac 1018fa30 GMagicObjectInfo::_dt(void)
    virtual ~GMagicObjectInfo();
};

#else // __cplusplus

// Forward Declares

struct Base;

struct GMagicObjectInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicObjectInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cb9f0 mac inlined GMagicObjectInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GMagicObjectInfo asm("??_R0?AVGMagicObjectInfo@@@8");
// win1.41 009a7e70 mac inlined GMagicObjectInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GMagicObjectInfo asm("??_R1A@?0A@A@GMagicObjectInfo@@8");
// win1.41 009a8248 mac inlined GMagicObjectInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GMagicObjectInfo asm("??_R2GMagicObjectInfo@@8");
// win1.41 009a8260 mac inlined GMagicObjectInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GMagicObjectInfo asm("??_R3GMagicObjectInfo@@8");

// Override methods

// win1.41 00435830 mac 1018fa30 GMagicObjectInfo::_dt(void)
void __fastcall __dt__16GMagicObjectInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicObjectInfo@@UAEPAXI@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H */
