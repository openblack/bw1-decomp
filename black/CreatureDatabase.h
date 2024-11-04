#ifndef BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H
#define BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

struct CreatureDatabase
{
  struct MultiplayerDatabase super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDatabase) == 0x10, "Data type is of wrong size");

static struct MultiplayerDatabaseVftable* const __vt__16CreatureDatabase = (struct MultiplayerDatabaseVftable* const)0x00930a00;

// Constructors

// win1.41 006336b0 mac 10109d30 CreatureDatabase::CreatureDatabase(void)
struct CreatureDatabase* __fastcall __ct__16CreatureDatabaseFv(struct CreatureDatabase* this);

#endif /* BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H */
