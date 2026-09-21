#ifndef BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */

#include "GameThing.h" /* For struct GameThing */
#include "Living.h"    /* For struct Living */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
class GameOSFile;

class GFootpathNode : public GameThing
{
public:
	uint8_t               field_0x14;
	MapCoords             coords;
	GFootpathNode*        next; /* 0x24 */
	LHLinkedList<Living*> followers;

	// Override methods

	// BW1W120 00534d70 BW1M119 010f4090
	virtual ~GFootpathNode();
	// BW1W120 00538970 BW1M119 010ed310
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00534d60 BW1M119 010f4160
	virtual char* GetDebugText();
	// BW1W120 00538c10 BW1M119 010ec6c0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00538d70 BW1M119 010ec3c0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00534d50 BW1M119 010f4120
	virtual uint32_t GetSaveType();
	// BW1W120 00538ea0 BW1M119 010ec380
	virtual void ResolveLoad();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GFootpathNode();
	// BW1W120 00534cf0 BW1M119 010f3ea0
	GFootpathNode(const MapCoords& coords, int param_2, int param_3);

	// Non-virtual methods

	// BW1W120 005389d0 BW1M119 010ed1c0
	void PurgeFollowerList();
	// BW1W120 00538b10 BW1M119 010ece30
	void ClearFromPreviousNode();
};

#endif /* BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H */
