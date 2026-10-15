#ifndef BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
class GFootpathLink;
class GameOSFile;
class MultiMapFixed;
class PlannedMultiMapFixed;

class GFootpathLinkSave : public GameThing
{
public:
	GFootpathLink* link; /* 0x14 */
	MapCoords      coords;

	// Override methods

	// BW1W120 005371e0 BW1M119 010f41e0
	virtual char* GetDebugText() { return "Footpath link for map save:"; }
	// BW1W120 005370a0 BW1M119 010ef6e0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00537110 BW1M119 010ef5e0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 005371d0 BW1M119 010f41a0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GFOOTPATH_LINK_SAVE; }

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GFootpathLinkSave() {}
	// BW1W120 00537180 BW1M119 null
	GFootpathLinkSave(MultiMapFixed* structure);
	// BW1W120 00537210 BW1M119 null
	GFootpathLinkSave(PlannedMultiMapFixed* planned);

	// Non-virtual methods

	// BW1W120 00536fa0 BW1M119 010ef810
	void Apply();
};

static_assert(sizeof(GFootpathLinkSave) == 0x24, "Data type is of wrong size");

#endif /* BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H */
