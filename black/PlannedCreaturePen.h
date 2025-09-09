#ifndef BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H
#define BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

struct Base;
struct GameThingWithPos;

struct PlannedCreaturePen
{
  struct PlannedCitadelPart super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedCreaturePen) == 0x48, "Data type is of wrong size");

// Override methods

// win1.41 004ef050 mac 102748a0 PlannedCreaturePen::_dt(void)
void __fastcall __dt__18PlannedCreaturePenFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedCreaturePen@@UAEPAXI@Z");
// win1.41 004ef040 mac 10274940 PlannedCreaturePen::GetText(void)
const char* __fastcall GetText__18PlannedCreaturePenFv(struct GameThingWithPos* this) asm("?GetText@PlannedCreaturePen@@UAEPBDXZ");

#endif /* BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H */
