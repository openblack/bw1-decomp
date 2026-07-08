#ifndef BW1_DECOMP_STATS_DATABASE_INCLUDED_H
#define BW1_DECOMP_STATS_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

class StatsDatabase : public MultiplayerDatabase
{
public:
	// Override methods

	// BW1W120 006338f0 BW1M100 10109920 StatsDatabase::Send(void)
	virtual uint32_t Send();

	// Constructors

	// BW1W120 006338d0 BW1M100 10109a30 StatsDatabase::StatsDatabase(void)
	StatsDatabase();
};

#endif /* BW1_DECOMP_STATS_DATABASE_INCLUDED_H */
