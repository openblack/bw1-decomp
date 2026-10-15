#ifndef BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */

#include "Footpath.h"  /* For struct GFootpath */
#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GFootpathNode;
class GameOSFile;
class GameThingWithPos;
class LHOSFile;
class Living;
struct MapCoords;
class MultiMapFixed;

class GFootpathLink : public GameThing
{
public:
	LHLinkedList<GFootpath*> FootpathList; /* 0x14 */

	// Override methods

	// BW1W120 00536010 BW1M119 010f1aa0
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00536070 BW1M119 010f1960
	virtual bool32_t AddFootpath(GFootpath* footpath);
	// BW1W120 005360b0 BW1M119 010f1850
	virtual bool32_t RemoveFootpath(GFootpath* footpath);
	// BW1W120 0050cae0 BW1M119 010f4300
	virtual char* GetDebugText() { return "FootpathLink:"; }
	// BW1W120 005365a0 BW1M119 010f0bd0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 005364f0 BW1M119 010f0f00
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0050cad0 BW1M119 010f42c0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GFOOTPATH_LINK; }

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GFootpathLink() {}

	// Non-virtual methods

	// BW1W120 00536110 BW1M119 010f16b0
	GFootpath* GetNearestPathTo(const MapCoords& pos, const MapCoords& dest, float max_distance, bool32_t& backwards,
	                            GFootpathNode** nearest_node);
	// BW1W120 005361f0 BW1M119 010f1500
	GFootpath* GetNearestPathToQuick(const MapCoords& pos, const MapCoords& dest, float max_distance,
	                                 bool32_t& backwards, GFootpathNode** nearest_node);
	// BW1W120 005362e0 BW1M119 010f1190
	uint32_t UseFootpathIfNecessary(Living* living, const MapCoords& coord, uint8_t state,
	                                GameThingWithPos* game_thing_with_pos);
	// BW1W120 00536440 BW1M119 010f1060
	bool32_t SaveObject(LHOSFile& file, const MapCoords* offset);
	// BW1W120 005364e0 BW1M119 null
	void Update(MultiMapFixed* structure);
};

#endif /* BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H */
