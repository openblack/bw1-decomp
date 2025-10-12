#ifndef BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraModeNew.h" /* For struct CameraModeNew */

struct CameraModeNew2
{
  struct CameraModeNew super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeNew2) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce5e0 mac inlined CameraModeNew2::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14CameraModeNew2 asm("??_R0?AVCameraModeNew2@@@8");
// win1.41 009a8bc0 mac inlined CameraModeNew2::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14CameraModeNew2 asm("??_R1A@?0A@A@CameraModeNew2@@8");
// win1.41 009a8bd8 mac inlined CameraModeNew2::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14CameraModeNew2 asm("??_R2CameraModeNew2@@8");
// win1.41 009a8be8 mac inlined CameraModeNew2::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14CameraModeNew2 asm("??_R3CameraModeNew2@@8");
// win1.41 008c7b54 mac inlined CameraModeNew2::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14CameraModeNew2 asm("??_R4CameraModeNew2@@6B@");
// win1.41 008c7b58 mac inlined CameraModeNew2::`vftable'
extern const struct CameraModeVftable __vt__14CameraModeNew2 asm("??_7CameraModeNew2@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H */
