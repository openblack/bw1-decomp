#ifndef BW1_DECOMP_DANCE_INCLUDED_H
#define BW1_DECOMP_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GroupBehaviour.h" /* For struct GroupBehaviour */

// Forward Declares

struct GDanceInfo;
struct GameThingWithPos;
struct MapCoords;
struct Town;

struct Dance
{
  struct GroupBehaviour super;  /* 0x0 */
  uint8_t field_0xe8[0x44];
};
static_assert(sizeof(struct Dance) == 0x12c, "Data type is of wrong size");

// win1.41 008d3964 mac 1074465c Dance::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__5Dance asm("??_R4Dance@@6B@");

// win1.41 008d3968 mac 106f5ec0 Dance::`vftable'
extern const struct GroupBehaviourVftable __vt__5Dance asm("??_7Dance@@6B@");

// Constructors

// win1.41 0050b6a0 mac 102aa620 Dance::Dance(MapCoords const &, GDanceInfo const *, GameThingWithPos *, unsigned long, int, Town *)
struct Dance* __fastcall __ct__5DanceFRC9MapCoordsPC10GDanceInfoP16GameThingWithPosUliP4Town(struct Dance* this, const void* edx, const struct MapCoords* param_1, struct GDanceInfo* info, const struct GameThingWithPos* param_3, uint32_t param_4, int param_5, struct Town* town);

DECLARE_LH_LIST_HEAD(Dance);

#endif /* BW1_DECOMP_DANCE_INCLUDED_H */
