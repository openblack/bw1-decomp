#ifndef BW1_DECOMP_FLOCK_INCLUDED_H
#define BW1_DECOMP_FLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "Container.h" /* For struct Container */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct CitadelHeart;
struct GFlockInfo;
struct GPlayer;
struct Living;
struct LivingDLList;

struct Flock
{
  struct Container super;  /* 0x0 */
  uint32_t field_0x30;
  uint32_t field_0x34;
  struct CitadelHeart* citadel_heart;
  struct LivingDLList* members;
  struct LivingDLList* leader;  /* 0x40 */
  struct LivingDLList* field_0x44;
  int field_0x48;
  uint32_t field_0x4c;
  uint16_t domain_radius;  /* 0x50 */
  uint16_t field_0x52;
  uint32_t field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
  struct MapCoords field_0x60;
  struct MapCoords field_0x6c;
  uint32_t field_0x78;
  uint32_t field_0x7c;
  uint32_t field_0x80;
  uint32_t field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
};
static_assert(sizeof(struct Flock) == 0x90, "Data type is of wrong size");

static struct GameThingWithPosVftable* const __vt__5Flock = (struct GameThingWithPosVftable* const)0x008dd108;

// Constructors

// win1.41 0052f780 mac 100e6ec0 Flock::Flock(MapCoords const &, GFlockInfo const *, GPlayer *, unsigned long)
struct Flock* __fastcall __ct__5FlockFRC9MapCoordsPC10GFlockInfoP7GPlayerUl(struct Flock* this, const void* edx, struct MapCoords* coords, struct GFlockInfo* info, struct GPlayer* player, uint32_t param_4);
// win1.41 100e6be0 mac 0052f950 Flock::Flock(Living*)
struct Flock* __fastcall __ct__5FlockFP6Living(struct Flock* this, const void* edx, struct Living* param_1);

// Non-virtual methods

// win1.41 00530570 mac 100684b0 Flock::GetFlockPos(void)
struct MapCoords* __fastcall GetFlockPos__5FlockFv(struct Flock* this);

DECLARE_LH_LINKED_LIST(Flock);

#endif /* BW1_DECOMP_FLOCK_INCLUDED_H */
