#ifndef BW1_DECOMP_CREATURE_HELP_INCLUDED_H
#define BW1_DECOMP_CREATURE_HELP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/GJVector.h> /* For DECLARE_GJ_VECTOR */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct GameThingWithPos;

struct CreatureHelpState__field_0x88
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct CreatureHelpState__field_0x88) == 0x1, "Data type is of wrong size");

DECLARE_GJ_VECTOR(CreatureHelpState__field_0x88);

struct CreatureHelpState
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10[0xc];
  uint32_t field_0x40[0xc];
  uint32_t field_0x70[0x6];
  struct GJVector__CreatureHelpState__field_0x88 field_0x88;
};
static_assert(sizeof(struct CreatureHelpState) == 0x98, "Data type is of wrong size");

// Constructors

// win1.41 004c9c30 mac 1023b830 CreatureHelpState::CreatureHelpState(void)
struct CreatureHelpState* __fastcall __ct__17CreatureHelpStateFv(struct CreatureHelpState* this) asm("??0CreatureHelpState@@QAE@XZ");

struct CreatureHelpStackEntry
{
  uint32_t field_0x0;
  struct GameThingWithPos* thing;
  struct MapCoords coords;
  uint32_t field_0x14;
  uint32_t field_0x18;
};
static_assert(sizeof(struct CreatureHelpStackEntry) == 0x1c, "Data type is of wrong size");

// Constructors

// win1.41 004ca6f0 mac 102389e0 CreatureHelpStackEntry::__ct(unsigned long, GameThingWithPos *, MapCoords const &)
struct CreatureHelpStackEntry* __fastcall __ct__22CreatureHelpStackEntryFUlP16GameThingWithPosRC9MapCoords(struct CreatureHelpStackEntry* this, const void* edx, uint32_t param_2, struct GameThingWithPos* thing, const struct MapCoords* coord) asm("??0CreatureHelpStackEntry@@QAE@KPAVGameThingWithPos@@ABUMapCoords@@@Z");

DECLARE_LH_LINKED_LIST(CreatureHelpStackEntry);

#endif /* BW1_DECOMP_CREATURE_HELP_INCLUDED_H */
