#ifndef BW1_DECOMP_FOOTPATH_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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

class GFootpath: public GameThing
{
public:
    GFootpathNode* nodes; /* 0x14 */
    int node_count;
    GFootpath* next;
    uint32_t field_0x20;

    // Override methods

    // BW1W120 00534e00 BW1M100 100eeb80 GFootpath::_dt(void)
    virtual ~GFootpath();
    // BW1W120 00534f00 BW1M100 100ee7a0 GFootpath::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00534df0 BW1M100 100ef250 GFootpath::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00535f10 BW1M100 100ecb10 GFootpath::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00535e00 BW1M100 100ece10 GFootpath::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00534de0 BW1M100 100ef210 GFootpath::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Static methods

    // BW1W120 00535a80 BW1M100 inlined GFootpath::FUN_00535a80(Point2D *, MultiMapFixed *, float, float)
    static void FUN_00535a80(Point2D* param_1, MultiMapFixed* param_2, float point_x, float point_y);
    // BW1W120 00537290 BW1M100 100ea6f0 GFootpath::SendFootpathsAroundObsticle(float, MapCoords const &)
    static void SendFootpathsAroundObsticle(float radius, MapCoords* coords);
    // BW1W120 00538340 BW1M100 100e95b0 GFootpath::ConvertCreaturePlanToFootpath(RPHolder &, RPlan &, GFootpathNode *, GFootpathNode *, MapCoords const &)
    static void ConvertCreaturePlanToFootpath(RPHolder* holder, RPlan* plan, GFootpathNode* start, GFootpathNode* end, MapCoords* coord);
    // BW1W120 005387d0 BW1M100 100e93a0 GFootpath::AttemptRerenderFootpathWithCreatureRP(GFootpathNode *, GFootpathNode *, MapCoords const &)
    static uint32_t AttemptRerenderFootpathWithCreatureRP(GFootpathNode* start, GFootpathNode* end, MapCoords* coord);

    // Constructors

    // BW1W120 00534dc0 BW1M100 100eecb0 GFootpath::GFootpath(void)
    GFootpath();
    // BW1W120 00534eb0 BW1M100 100ee9b0 GFootpath::GFootpath(GameThingWithPos *, GameThingWithPos *)
    GFootpath(GameThingWithPos* param_2, GameThingWithPos* param_3);

    // Non-virtual methods

    // BW1W120 00534fc0 BW1M100 100ee4c0 GFootpath::AddPos(MapCoords const &)
    void AddPos(MapCoords* coords);
    // BW1W120 005351a0 BW1M100 100ee290 GFootpath::GetNextNode(GFootpathNode *, int)
    GFootpathNode* GetNextNode(GFootpathNode* node, int backwards);
    // BW1W120 005351f0 BW1M100 100ee190 GFootpath::GetNextPos(MapCoords const &, GFootpathNode *&, MapCoords &, int, float)
    uint32_t GetNextPos(MapCoords* current_pos, GFootpathNode** next_node, MapCoords* next_pos, int backwards, float max_t);
    // BW1W120 00535270 BW1M100 100ee0d0 GFootpath::GetNextPos(GFootpathNode *&, MapCoords &, int)
    uint32_t GetNextPos(GFootpathNode** next_node, MapCoords* next_pos, int backwards);
    // BW1W120 005352c0 BW1M100 100edfa0 GFootpath::GetNearestPos(MapCoords const &, int)
    GFootpathNode* GetNearestPos(const MapCoords* coords, int param_3);
};

#endif /* BW1_DECOMP_FOOTPATH_INCLUDED_H */
