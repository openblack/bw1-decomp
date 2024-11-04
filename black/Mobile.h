#ifndef BW1_DECOMP_MOBILE_INCLUDED_H
#define BW1_DECOMP_MOBILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include "Object.h" /* For struct Object, struct ObjectVftable */

// Forward Declares

struct GMobileInfo;
struct MapCoords;

struct MobileVftable
{
  struct ObjectVftable super;  /* 0x0 */
};
static_assert(sizeof(struct MobileVftable) == 0x85c, "Data type is of wrong size");

union MobileBase
{
  struct Object super;
  struct MobileVftable* vftable;
};
static_assert(sizeof(union MobileBase) == 0x54, "Data type is of wrong size");

struct Mobile
{
  union MobileBase base;  /* 0x0 */
  uint16_t field_0x54;
};
static_assert(sizeof(struct Mobile) == 0x58, "Data type is of wrong size");

static struct MobileVftable* __vt__6Mobile = (struct MobileVftable*)0x008ce750;

// Constructors

// win1.41 0055c790 mac 100c0890 Mobile::Mobile(void)
struct Mobile* __fastcall __ct__6MobileFv(struct Mobile* this);
// win1.41 00600d80 mac inlined Mobile::Mobile(MapCoords const &, GMobileInfo const *)
struct Mobile* __fastcall __ct__6MobileFRC9MapCoordsPC11GMobileInfo(struct Mobile* this, const void* edx, struct MapCoords* coords, struct GMobileInfo* info);

#endif /* BW1_DECOMP_MOBILE_INCLUDED_H */
