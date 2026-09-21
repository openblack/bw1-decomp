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
class Living;
struct MapCoords;

class GFootpathLink : public GameThing
{
public:
	LHLinkedList<GFootpath*> FootpathList; /* 0x14 */

	// Override methods

	// BW1W120 0050caf0 BW1M119 010f4230
	virtual ~GFootpathLink();
	// BW1W120 00536010 BW1M119 010f1aa0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00536070 BW1M119 010f1960
	virtual uint32_t AddFootpath(GFootpath* param_1);
	// BW1W120 005360b0 BW1M119 010f1850
	virtual uint32_t RemoveFootpath(GFootpath* param_1);
	// BW1W120 0050cae0 BW1M119 010f4300
	virtual char* GetDebugText();
	// BW1W120 005365a0 BW1M119 010f0bd0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005364f0 BW1M119 010f0f00
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0050cad0 BW1M119 010f42c0
	virtual uint32_t GetSaveType();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GFootpathLink();

	// Non-virtual methods

	// BW1W120 00536110 BW1M119 010f16b0
	GFootpath* GetNearestPathTo(const MapCoords& param_1, const MapCoords& param_2, float param_3, int& param_4,
	                            GFootpathNode** param_5);
	// BW1W120 005361f0 BW1M119 010f1500
	GFootpath* GetNearestPathToQuick(const MapCoords& param_1, const MapCoords& param_2, float param_3, int& param_4,
	                                 GFootpathNode** param_5);
	// BW1W120 005362e0 BW1M119 010f1190
	uint32_t UseFootpathIfNecessary(Living* living, const MapCoords& coord, uint8_t state,
	                                GameThingWithPos* game_thing_with_pos);
};

#endif /* BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H */
