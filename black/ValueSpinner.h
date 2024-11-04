#ifndef BW1_DECOMP_VALUE_SPINNER_INCLUDED_H
#define BW1_DECOMP_VALUE_SPINNER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

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

static struct ValueSpinnerVftable* const __vt__12ValueSpinner = (struct ValueSpinnerVftable* const)0x008c589c;

#endif /* BW1_DECOMP_VALUE_SPINNER_INCLUDED_H */
