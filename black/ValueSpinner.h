#ifndef BW1_DECOMP_VALUE_SPINNER_INCLUDED_H
#define BW1_DECOMP_VALUE_SPINNER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DrawingObject.h" /* For struct DrawingObject */

// Forward Declares

struct ValueSpinner;

struct ValueSpinnerVftable
{
  void (__fastcall* UpdatePosition)(struct ValueSpinner* this, const void* edx, float param_1);  /* 0x0 */
  uint32_t (__fastcall* __dt)(struct ValueSpinner* this, const void* edx, bool param_1);
};
static_assert(sizeof(struct ValueSpinnerVftable) == 0x8, "Data type is of wrong size");

struct ValueSpinner
{
  struct DrawingObject super;  /* 0x0 */
  struct ValueSpinner* next;
  struct LHPoint point;
  uint32_t field_0x14;
  float field_0x18;
  struct LH3DColor color;
  char16_t text[0x40];  /* 0x20 */
};
static_assert(sizeof(struct ValueSpinner) == 0xa0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd260 mac inlined ValueSpinner::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12ValueSpinner asm("??_R0?AUValueSpinner@@@8");
// win1.41 009a83f0 mac inlined ValueSpinner::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12ValueSpinner asm("??_R1A@?0A@A@ValueSpinner@@8");
// win1.41 009a8408 mac inlined ValueSpinner::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12ValueSpinner asm("??_R2ValueSpinner@@8");
// win1.41 009a8418 mac inlined ValueSpinner::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12ValueSpinner asm("??_R3ValueSpinner@@8");
// win1.41 008c5898 mac 10737b54 ValueSpinner::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12ValueSpinner asm("??_R4ValueSpinner@@6B@");
// win1.41 008c589c mac 10737b5c ValueSpinner::`vftable'
extern const struct ValueSpinnerVftable __vt__12ValueSpinner asm("??_7ValueSpinner@@6B@");

#endif /* BW1_DECOMP_VALUE_SPINNER_INCLUDED_H */
