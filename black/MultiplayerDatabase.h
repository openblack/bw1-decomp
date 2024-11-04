#ifndef BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_common.h> /* For bool32_t */

// Forward Declares

struct CreatureDatabase;
struct DBInfo;

struct MultiplayerDatabaseVftable
{
  bool32_t (__fastcall* Send)(struct CreatureDatabase* this);  /* 0x0 */
  bool32_t (__fastcall* ReceiveReturnData)(struct CreatureDatabase* this);
};
static_assert(sizeof(struct MultiplayerDatabaseVftable) == 0x8, "Data type is of wrong size");

struct MultiplayerDatabase
{
  struct MultiplayerDatabaseVftable* vftable;  /* 0x0 */
  bool32_t field_0x4;
  struct DBInfo* info;
  char* field_0xc;
};
static_assert(sizeof(struct MultiplayerDatabase) == 0x10, "Data type is of wrong size");

static struct MultiplayerDatabaseVftable* __vt__19MultiplayerDatabase = (struct MultiplayerDatabaseVftable*)0x009309f4;

// Constructors

// win1.41 00633400 mac 1010a230 MultiplayerDatabase::MultiplayerDatabase(void)
struct MultiplayerDatabase* __fastcall __ct__19MultiplayerDatabaseFv(struct MultiplayerDatabase* this);

#endif /* BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H */
