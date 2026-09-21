#ifndef BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H
#define BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiplayerDatabase.h" /* For struct MultiplayerDatabase */

class CreatureDatabase : public MultiplayerDatabase
{
public:
	// Override methods

	// BW1W120 006336d0 BW1M119 011132b0
	virtual uint32_t Send();

	// Constructors

	// BW1W120 006336b0 BW1M119 01113540
	CreatureDatabase();
};

#endif /* BW1_DECOMP_CREATURE_DATABASE_INCLUDED_H */
