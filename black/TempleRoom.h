#ifndef BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H
#define BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t, uintptr_t */

// Forward Declares

struct InnerCamera;
struct InnerRoom;

enum TempleRoomsEnum
{
  WorldRoom = 0x0,
  CreatureRoom = 0x1,
  ChallengeRoom = 0x2,
  UniverseRoom = 0x3,
  GameOptionsRoom = 0x4,
  SaveGameRoom = 0x5,
  CreditsRoom = 0x6,
  _TempleRoomsEnum_COUNT = 0x7
};
static_assert(sizeof(enum TempleRoomsEnum) == 0x4, "Data type is of wrong size");

static const char* TempleRoomsEnum_strs[_TempleRoomsEnum_COUNT] = {
  "WorldRoom",
  "CreatureRoom",
  "ChallengeRoom",
  "UniverseRoom",
  "GameOptionsRoom",
  "SaveGameRoom",
  "CreditsRoom",
};

struct TempleRoomVftable
{
  uintptr_t field_0x0;
  uintptr_t field_0x4;
  uintptr_t field_0x8;
  uintptr_t field_0xc;
  uintptr_t field_0x10;
  uintptr_t field_0x14;
  uintptr_t field_0x18;
  uintptr_t field_0x1c;
  uintptr_t field_0x20;
  uintptr_t field_0x24;
  uintptr_t field_0x28;
  uintptr_t field_0x2c;
  uintptr_t field_0x30;
  uintptr_t field_0x34;
  uintptr_t field_0x38;
  uintptr_t field_0x3c;
};
static_assert(sizeof(struct TempleRoomVftable) == 0x40, "Data type is of wrong size");

struct TempleRoom
{
  struct TempleRoomVftable* vftable;  /* 0x0 */
  char name[0x20];
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  int32_t field_0x34;
  int32_t field_0x38;
  uint8_t field_0x3c[0x40];
  uint32_t field_0x7c;
  uint8_t field_0x80[0x40];
  struct InnerRoom* inner_room;  /* 0xc0 */
  struct InnerCamera* camera;
  int32_t field_0xc8;
  uint8_t field_0xcc[0x4];
  uint32_t field_0xd0;
  uint32_t field_0xd4;
  uint32_t field_0xd8;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
  float field_0xe4;
  float field_0xe8;
};
static_assert(sizeof(struct TempleRoom) == 0xec, "Data type is of wrong size");

static struct TempleRoomVftable* __vt__10TempleRoom = (struct TempleRoomVftable*)0x0099eec4;

// Constructors

// win1.41 00798870 mac 1053f350 TempleRoom::TempleRoom(const char*)
struct TempleRoom* __fastcall __ct__10TempleRoomFPCc(struct TempleRoom* this, const void* edx, const char* name);

struct InnerRoom
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  uint32_t field_0x8;
  float field_0xc;
  uint8_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
};
static_assert(sizeof(struct InnerRoom) == 0x2c, "Data type is of wrong size");

// Constructors

// win1.41 00795030 mac 1053bfb0 InnerRoom::InnerRoom(void)
struct InnerRoom* __fastcall __ct__9InnerRoomFv(struct InnerRoom* this);

#endif /* BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H */
