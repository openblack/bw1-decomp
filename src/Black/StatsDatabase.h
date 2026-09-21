#ifndef BW1_DECOMP_STATS_DATABASE_INCLUDED_H
#define BW1_DECOMP_STATS_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

class StatsDatabase : public MultiplayerDatabase
{
public:
	// Override methods

	// BW1W120 006338f0 BW1M119 01113130
	virtual uint32_t Send();

	// Constructors

	// BW1W120 006338d0 BW1M119 01113240
	StatsDatabase();
};

#endif /* BW1_DECOMP_STATS_DATABASE_INCLUDED_H */
