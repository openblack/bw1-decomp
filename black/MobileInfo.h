#ifndef BW1_DECOMP_MOBILE_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTITypeDescriptor */

#include "ObjectInfo.h" /* For struct GObjectInfo */

struct GMobileInfo
{
  struct GObjectInfo super;  /* 0x0 */
  uint32_t field_0x100;
};
static_assert(sizeof(struct GMobileInfo) == 0x104, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8d00 mac inlined GMobileInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GMobileInfo asm("??_R0?AVGMobileInfo@@@8");
// win1.41 009a6af0 mac inlined GMobileInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GMobileInfo asm("??_R1A@?0A@A@GMobileInfo@@8");

#endif /* BW1_DECOMP_MOBILE_INFO_INCLUDED_H */
