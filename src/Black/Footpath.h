#ifndef BW1_DECOMP_FOOTPATH_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHListHead.h> /* For LHListHead */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GFootpathNode;
class GameOSFile;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
struct Point2D;
struct RPHolder;
struct RPlan;

class GFootpath : public GameThing
{
public:
	LHListHead<GFootpathNode> nodes; /* 0x14 */
	GFootpath*                next;
	uint32_t                  field_0x20;

	// Override methods

	// BW1W120 00534e00 BW1M119 010f3cd0
	virtual ~GFootpath();
	// BW1W120 00534f00 BW1M119 010f3910
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00534df0 BW1M119 010f4380
	virtual char* GetDebugText();
	// BW1W120 00535f10 BW1M119 010f1c30
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00535e00 BW1M119 010f1f70
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00534de0 BW1M119 010f4340
	virtual uint32_t GetSaveType();

	// Static methods

	// BW1W120 00535a80 BW1M119 inlined
	static void FUN_00535a80(Point2D* param_1, MultiMapFixed* param_2, float point_x, float point_y);
	// BW1W120 00537290 BW1M119 010ee810
	static void SendFootpathsAroundObsticle(float radius, const MapCoords& coords);
	// BW1W120 00538340 BW1M119 010ed6d0
	static void ConvertCreaturePlanToFootpath(RPHolder& holder, RPlan& plan, GFootpathNode* start, GFootpathNode* end,
	                                          const MapCoords& coord);
	// BW1W120 005387d0 BW1M119 010ed4c0
	static uint32_t AttemptRerenderFootpathWithCreatureRP(GFootpathNode* start, GFootpathNode* end,
	                                                      const MapCoords* coord);

	// Constructors

	// BW1W120 00534dc0 BW1M119 010f3e00
	GFootpath();
	// BW1W120 00534eb0 BW1M119 010f3b20
	GFootpath(GameThingWithPos* param_2, GameThingWithPos* param_3);

	// Non-virtual methods

	// BW1W120 00534fc0 BW1M119 010f3630
	void AddPos(const MapCoords& coords);
	// BW1W120 005351a0 BW1M119 010f3400
	GFootpathNode* GetNextNode(GFootpathNode* node, int backwards);
	// BW1W120 005351f0 BW1M119 010f3300
	uint32_t GetNextPos(const MapCoords& current_pos, GFootpathNode*& next_node, MapCoords& next_pos, int backwards,
	                    float max_t);
	// BW1W120 00535270 BW1M119 010f3240
	uint32_t GetNextPos(GFootpathNode*& next_node, MapCoords& next_pos, int backwards);
	// BW1W120 005352c0 BW1M119 010f3110
	GFootpathNode* GetNearestPos(const MapCoords& coords, int param_3);
};

#endif /* BW1_DECOMP_FOOTPATH_INCLUDED_H */
