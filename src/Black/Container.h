#ifndef BW1_DECOMP_CONTAINER_INCLUDED_H
#define BW1_DECOMP_CONTAINER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHFastPointer.h> /* For LHFastPointer */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */
#include "LHPTR.h"            /* For class LHPTR */

// Forward Declares

class Base;
class GContainerInfo;
class GPlayer;
class GameOSFile;
class GameThing;
struct MapCoords;

class Container : public GameThingWithPos
{
public:
	LHFastPointer<const GContainerInfo> info;
	LHPTR<GPlayer>                      owner;

	// Override methods

	// BW1W120 00462a50 BW1M119 0105f420
	virtual GPlayer* GetPlayer() { return owner.Get(); }
	// BW1W120 0046b960 BW1M119 010c2e30
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0046b920 BW1M119 010c2ed0
	virtual uint32_t Save(GameOSFile& file);

	// Constructors

	// BW1W120 0046b8a0 BW1M119 010c2f70
	Container(const MapCoords& coords, const GContainerInfo* info, GPlayer* player);
};

#endif /* BW1_DECOMP_CONTAINER_INCLUDED_H */
