#ifndef BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H
#define BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

class CreatureDatabase: public MultiplayerDatabase
{
public:

    // Override methods

    // win1.41 006336d0 mac 10109aa0 CreatureDatabase::Send(void)
    virtual uint32_t Send();

    // Constructors

    // win1.41 006336b0 mac 10109d30 CreatureDatabase::CreatureDatabase(void)
    CreatureDatabase();
};

#endif /* BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H */
