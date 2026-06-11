#ifndef BW1_DECOMP_STATS_DATABASE_INCLUDED_H
#define BW1_DECOMP_STATS_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

class StatsDatabase: public MultiplayerDatabase
{
public:

    // Override methods

    // win1.41 006338f0 mac 10109920 StatsDatabase::Send(void)
    virtual uint32_t Send();

    // Constructors

    // win1.41 006338d0 mac 10109a30 StatsDatabase::StatsDatabase(void)
    StatsDatabase();
};

#endif /* BW1_DECOMP_STATS_DATABASE_INCLUDED_H */
