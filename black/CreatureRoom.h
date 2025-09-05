#ifndef BW1_DECOMP_CREATURE_ROOM_INCLUDED_H
#define BW1_DECOMP_CREATURE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "TempleRoom.h" /* For struct TempleRoom */

struct CreatureRoom
{
  struct TempleRoom super;  /* 0x0 */
  uint8_t field_0xec[0x380];
  uint32_t field_0x46c;
  uint8_t field_0x470[0x68];
};
static_assert(sizeof(struct CreatureRoom) == 0x4d8, "Data type is of wrong size");

// win1.41 0099eb2c mac 1098e5f0 CreatureRoom::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12CreatureRoom asm("??_R4CreatureRoom@@6B@");

// win1.41 0099eb30 mac 1098e5f8 CreatureRoom::`vftable'
extern const struct TempleRoomVftable __vt__12CreatureRoom asm("??_7CreatureRoom@@6B@");

// Constructors

// win1.41 007865e0 mac 10287800 CreatureRoom::CreatureRoom(void)
struct CreatureRoom* __fastcall __ct__12CreatureRoomFv(struct CreatureRoom* this);

// Non-virtual methods

// win1.41 007878e0 mac 10284d70 CreatureRoom::InitEngine(void)
void __fastcall InitEngine__12CreatureRoomFv(struct CreatureRoom* this);

#endif /* BW1_DECOMP_CREATURE_ROOM_INCLUDED_H */
