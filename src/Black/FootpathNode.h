#ifndef BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>   /* For struct LHListNode */

#include "GameThing.h" /* For struct GameThing */
#include "Living.h"    /* For struct Living */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
class GameOSFile;

class GFootpathNode : public GameThing
{
public:
	union {
		uint8_t Flags; /* 0x14 */
		struct
		{
			uint8_t Real : 1;
			uint8_t Temporary : 1;
			uint8_t Hidden : 1;
			uint8_t InsideObstacle : 1;
		};
	};
	MapCoords                 coords; /* 0x18 */
	LHListNode<GFootpathNode> next;   /* 0x24 */
	LHLinkedList<Living*>     followers;

	// Override methods

	// BW1W120 00538970 BW1M119 010ed310
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00534d60 BW1M119 010f4160
	virtual char* GetDebugText() { return "Footpath node:"; }
	// BW1W120 00538c10 BW1M119 010ec6c0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00538d70 BW1M119 010ec3c0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00534d50 BW1M119 010f4120
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GFOOTPATH_NODE; }
	// BW1W120 00538ea0 BW1M119 010ec380
	virtual void ResolveLoad();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GFootpathNode() {}
	// BW1W120 00534cf0 BW1M119 010f3ea0
	GFootpathNode(const MapCoords& coords, bool32_t real, bool32_t temporary);

	// Non-virtual methods

	// BW1W120 00534d90 BW1M119 inlined
	float GetDistance(const MapCoords& pos) const;
	// BW1W120 inlined BW1M119 inlined
	bool IsHidden() const { return Hidden || InsideObstacle; }
	// BW1W120 005389d0 BW1M119 010ed1c0
	void PurgeFollowerList();
	// BW1W120 00538b10 BW1M119 010ece30
	void ClearFromPreviousNode();
};

static_assert(sizeof(GFootpathNode) == 0x30, "Data type is of wrong size");

#endif /* BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H */
