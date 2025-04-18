#ifndef BW1_DECOMP_MOBILE_STATIC_INCLUDED_H
#define BW1_DECOMP_MOBILE_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct GMobileStaticInfo;
struct MapCoords;
struct Object;

struct MobileStatic
{
  struct MultiMapFixed super;  /* 0x0 */
  struct Object* field_0x7c;
  uint8_t field_0x80[0x8];
};
static_assert(sizeof(struct MobileStatic) == 0x88, "Data type is of wrong size");

static struct MultiMapFixedVftable* const __vt__12MobileStatic = (struct MultiMapFixedVftable* const)0x008e80b4;

// Constructors

// win1.41 00608710 mac 103c0e60 MobileStatic::MobileStatic(MapCoords const &, GMobileStaticInfo const *, Object *, float, float)
struct MobileStatic* __fastcall __ct__12MobileStaticFRC9MapCoordsPC17GMobileStaticInfoP6Objectff(struct MobileStatic* this, const void* edx, struct MapCoords* coords, struct GMobileStaticInfo* info, struct Object* param_3, float param_4, float param_5);

#endif /* BW1_DECOMP_MOBILE_STATIC_INCLUDED_H */
