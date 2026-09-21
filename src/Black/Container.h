#ifndef BW1_DECOMP_CONTAINER_INCLUDED_H
#define BW1_DECOMP_CONTAINER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

class Base;
class GContainerInfo;
class GPlayer;
class GameOSFile;
class GameThing;

class Container : public GameThingWithPos
{
public:
	GContainerInfo* info; /* 0x28 */
	GPlayer*        owner;

	// Override methods

	// BW1W120 0046b900 BW1M119 010c2d90
	virtual ~Container();
	// BW1W120 00462a50 BW1M119 0105f420
	virtual GPlayer* GetPlayer();
	// BW1W120 0046b960 BW1M119 010c2e30
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0046b920 BW1M119 010c2ed0
	virtual uint32_t Save(GameOSFile& file);
};

#endif /* BW1_DECOMP_CONTAINER_INCLUDED_H */
