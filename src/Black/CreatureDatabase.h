#ifndef BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H
#define BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

class CreatureDatabase : public MultiplayerDatabase
{
public:
	// Override methods

	// BW1W120 006336d0 BW1M100 10109aa0 CreatureDatabase::Send(void)
	virtual uint32_t Send();

	// Constructors

	// BW1W120 006336b0 BW1M100 10109d30 CreatureDatabase::CreatureDatabase(void)
	CreatureDatabase();
};

#endif /* BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H */
