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

class GFootpathLinkSave : public GameThing
{
public:
	GFootpathLink* link; /* 0x14 */
	MapCoords      coords;

	// Override methods

	// BW1W120 005371f0 BW1M119 010f0180
	virtual ~GFootpathLinkSave();
	// BW1W120 005371e0 BW1M119 010f41e0
	virtual char* GetDebugText();
	// BW1W120 005370a0 BW1M119 010ef6e0
	virtual uint32_t Load(GameOSFile& file);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GFootpathLinkSave();

	// Non-virtual methods

	// BW1W120 00536fa0 BW1M119 inlined
	void FUN_00536fa0();
};

#endif /* BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H */
