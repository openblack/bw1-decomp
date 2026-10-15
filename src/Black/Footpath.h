#ifndef BW1_DECOMP_FOOTPATH_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHListHead.h> /* For LHListHead */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GFootpathNode;
class GameOSFile;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class MultiMapFixed;
struct Point2D;
struct RPHolder;
struct RPlan;

enum FOOTPATH_POS
{
	FOOTPATH_POS_NOT_ON_PATH = 0x0,
	FOOTPATH_POS_NEXT = 0x1,
	FOOTPATH_POS_END = 0x2d,
};

class GFootpath : public GameThing
{
public:
	LHListHead<GFootpathNode> nodes; /* 0x14 */
	LHListNode<GFootpath>     next;  /* 0x1c */
	bool32_t                  Active;

	// Override methods

	// BW1W120 00534ea0 BW1M119 010f3cd0
	virtual ~GFootpath();
	// BW1W120 00534f00 BW1M119 010f3910
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00534df0 BW1M119 010f4380
	virtual char* GetDebugText() { return "Footpath:"; }
	// BW1W120 00535f10 BW1M119 010f1c30
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00535e00 BW1M119 010f1f70
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00534de0 BW1M119 010f4340
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GFOOTPATH; }

	// Static methods

	// BW1W120 00535550 BW1M119 010f2f20
	static bool32_t SaveAll(LHOSFile& file, const MapCoords* offset);
	// BW1W120 00535a80 BW1M119 inlined
	static void FUN_00535a80(Point2D* param_1, MultiMapFixed* param_2, float point_x, float point_y);
	// BW1W120 00535850 BW1M119 010f21f0
	static void GenerateRoutesBetween(GameThingWithPos* from, GameThingWithPos* to);
	// BW1W120 00535df0 BW1M119 010f2140
	static bool32_t FindPathAsRoute(const MapCoords& from, const MapCoords& to, GFootpath** footpath,
	                                bool32_t& backwards);
	// BW1W120 00537290 BW1M119 010ee810
	static void SendFootpathsAroundObsticle(float radius, const MapCoords& coords);
	// BW1W120 00537df0 BW1M119 010edd30
	static void StopGoingRoundObsticle(float radius, const MapCoords& coords);
	// BW1W120 00538340 BW1M119 010ed6d0
	static void ConvertCreaturePlanToFootpath(RPHolder& holder, RPlan& plan, GFootpathNode* start, GFootpathNode* end,
	                                          const MapCoords* coord);
	// BW1W120 005387d0 BW1M119 010ed4c0
	static uint32_t AttemptRerenderFootpathWithCreatureRP(GFootpathNode* start, GFootpathNode* end,
	                                                      const MapCoords* coord);

	// Constructors

	// BW1W120 00534dc0 BW1M119 010f3e00
	GFootpath();
	// BW1W120 00534eb0 BW1M119 010f3b20
	GFootpath(GameThingWithPos* from, GameThingWithPos* to);

	// Non-virtual methods

	// BW1W120 00534f90 BW1M119 010f3720
	int GetID();
	// BW1W120 00534fc0 BW1M119 010f3630
	void AddPos(const MapCoords& coords);
	// BW1W120 00535120 BW1M119 010f3510
	GFootpathNode* GetEndNonHiddenNode(MapCoords& pos, bool32_t backwards);
	// BW1W120 005351a0 BW1M119 010f3400
	GFootpathNode* GetNextNode(GFootpathNode* node, bool32_t backwards);
	// BW1W120 005351f0 BW1M119 010f3300
	FOOTPATH_POS GetNextPos(const MapCoords& current_pos, GFootpathNode*& next_node, MapCoords& next_pos,
	                        bool32_t backwards, float max_distance);
	// BW1W120 00535270 BW1M119 010f3240
	FOOTPATH_POS GetNextPos(GFootpathNode*& next_node, MapCoords& next_pos, bool32_t backwards);
	// BW1W120 005352c0 BW1M119 010f3110
	GFootpathNode* GetNearestPos(const MapCoords& pos, bool32_t backwards);
	// BW1W120 005355c0 BW1M119 010f2d00
	bool32_t SaveObject(LHOSFile& file, const MapCoords* offset);
	// BW1W120 00538eb0 BW1M119 010ec330
	void AssertValid();
};

// BW1W120 00535780 BW1M119 010f2bf0
Point2D ConvertMapCoordsToPoint2D(const MapCoords& coords);
// BW1W120 005357c0 BW1M119 010f2ab0
MapCoords ConvertPoint2DToMapCoords(const Point2D& point);

#endif /* BW1_DECOMP_FOOTPATH_INCLUDED_H */
