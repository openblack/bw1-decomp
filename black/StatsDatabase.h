#ifndef BW1_DECOMP_STATS_DATABASE_INCLUDED_H
#define BW1_DECOMP_STATS_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

struct StatsDatabase
{
  struct MultiplayerDatabase super;  /* 0x0 */
};
static_assert(sizeof(struct StatsDatabase) == 0x10, "Data type is of wrong size");

static struct MultiplayerDatabaseVftable* __vt__13StatsDatabase = (struct MultiplayerDatabaseVftable*)0x00930a0c;

// Constructors

// win1.41 006338d0 mac 10109a30 StatsDatabase::StatsDatabase(void)
struct StatsDatabase* __fastcall __ct__13StatsDatabaseFv(struct StatsDatabase* this);

#endif /* BW1_DECOMP_STATS_DATABASE_INCLUDED_H */
