#ifndef BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraModeNew.h" /* For struct CameraModeNew */

struct CameraModeNew1
{
  struct CameraModeNew super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeNew1) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce228 mac inlined CameraModeNew1::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14CameraModeNew1 asm("??_R0?AVCameraModeNew1@@@8");
// win1.41 009a8b20 mac inlined CameraModeNew1::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14CameraModeNew1 asm("??_R1A@?0A@A@CameraModeNew1@@8");
// win1.41 009a8b38 mac inlined CameraModeNew1::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14CameraModeNew1 asm("??_R2CameraModeNew1@@8");
// win1.41 009a8b48 mac inlined CameraModeNew1::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14CameraModeNew1 asm("??_R3CameraModeNew1@@8");
// win1.41 008c7a54 mac inlined CameraModeNew1::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14CameraModeNew1 asm("??_R4CameraModeNew1@@6B@");
// win1.41 008c7a58 mac inlined CameraModeNew1::`vftable'
extern const struct CameraModeVftable __vt__14CameraModeNew1 asm("??_7CameraModeNew1@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H */
