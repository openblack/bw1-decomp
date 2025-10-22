#ifndef BW1_DECOMP_ROUTE_INCLUDED_H
#define BW1_DECOMP_ROUTE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct RouteNode;

struct Route
{
  struct RouteNode* start;  /* 0x0 */
  struct RouteNode* end;
  struct Route* next;
  uint32_t field_0xc;
};
static_assert(sizeof(struct Route) == 0x10, "Data type is of wrong size");

// Constructors

// win1.41 00869380 mac 100a8790 Route::Route(void)
struct Route* __fastcall __ct__5RouteFv(struct Route* this) asm("??0Route@@QAE@XZ");
// win1.41 008693a0 mac 100a8690 Route::Route(Route *)
struct Route* __fastcall __ct__5RouteFP5Route(struct Route* this, const void* edx, struct Route* other) asm("??0Route@@QAE@PAV0@@Z");

// Non-virtual methods

// win1.41 00869430 mac 100a85f0 Route::~Route(void)
void __fastcall __dt__5RouteFv(struct Route* this) asm("??_DRoute@@QAEXXZ");

#endif /* BW1_DECOMP_ROUTE_INCLUDED_H */
