#ifndef BW1_DECOMP_RP_FOLLOW_INCLUDED_H
#define BW1_DECOMP_RP_FOLLOW_INCLUDED_H

#include <stddef.h>

#include "RPHolder.h"

class RouteNode;
struct RPAvoid;
struct RPlan;

#define RPFOLLOW_MAX_PLANS              5
#define RPFOLLOW_MAX_PLAN_UPDATES       32
#define RPFOLLOW_MAX_CONCATENATED_NODES 4
#define RPFOLLOW_EPSILON                0.01f
#define RPFOLLOW_ARRIVE_DISTANCE        0.001f

enum RPFOLLOW_STATE
{
	RPFOLLOW_STATE_UNPLACED,
	RPFOLLOW_STATE_STOPPED,
	RPFOLLOW_STATE_PLANNING,
	RPFOLLOW_STATE_MOVING,
	RPFOLLOW_STATE_REPLANNING,
	RPFOLLOW_STATE_UNREACHABLE,
	RPFOLLOW_STATE_TRAPPED,
};

class RPFollow : public RPHolder
{
public:
	Point2D        Pos;
	float          field_0x64034;
	float          DistanceAlongNode;
	float          field_0x6403c;
	float          field_0x64040;
	Point2D        RouteEnd;
	float          Radius;
	float          field_0x64050;
	RPFOLLOW_STATE FollowState;
	int            field_0x64058;
	int            field_0x6405c;
	int            Context;
	void(__cdecl* field_0x64064)(int, int);
	void(__cdecl* field_0x64068)(int, float, float);
	float(__cdecl* GetRange)(int);
	RouteNode* CurrentNode;
	Point2D    Dest;
	float      field_0x6407c;
	float      field_0x64080;
	float      field_0x64084;
	int        field_0x64088;
	RPlan*     CurrentPlan;
	RPlan*     Plans[RPFOLLOW_MAX_PLANS];
	RouteNode* field_0x640a4[5];
	int        PlanCount;
	int        PlanIndex;

	// BW1W120 008639e0 BW1M119 010a9040 (LHCombined Release)
	RPFollow();
	// BW1W120 00863a70 BW1M119 010a8fc0 (LHCombined Release)
	~RPFollow();
	// BW1W120 00863ac0 BW1M119 010a8ea0 (LHCombined Release)
	void Init(int context, void(__cdecl* status)(int, int), void(__cdecl* movement)(int, float, float),
	          float(__cdecl* range)(int), int mode);
	// BW1W120 00863b00 BW1M119 010a8dd0 (LHCombined Release)
	void SetPos(const Point2D& pos, float radius);
	// BW1W120 00863b70 BW1M119 010a89e0 (LHCombined Release)
	void SetDest(const Point2D& pos, float param_2, float param_3, float param_4, float param_5);
	// BW1W120 00863ef0 BW1M119 010a8820 (LHCombined Release)
	void StopMoving();
	// BW1W120 00864040 BW1M119 010a85d0 (LHCombined Release)
	void GameTurnUpdate(void(__cdecl* object_encountered)(int, int), int param_2);
	// BW1W120 00864190 BW1M119 010a8530 (LHCombined Release)
	void RemoveSpecials();
	// BW1W120 00864420 BW1M119 010a7d10 (LHCombined Release)
	void ConcatenateRoutes(RouteNode* node);
	// BW1W120 00864d30 BW1M119 010a72a0 (LHCombined Release)
	void CheckIfAnyRoutesAreBlockedByObject(RPAvoid* avoid);
	// BW1W120 00864ba0 BW1M119 010a7630 (LHCombined Release)
	void FillPosAndHeading(Point2D& pos, float& heading, float distance);
	// BW1W120 00864990 BW1M119 010a7910 (LHCombined Release)
	void MoveAlongRoute();
};

static_assert(offsetof(RPFollow, Context) == 0x64060, "RPFollow context offset is incorrect");
static_assert(sizeof(RPFollow) == 0x640c0, "RPFollow size is incorrect");

#endif /* BW1_DECOMP_RP_FOLLOW_INCLUDED_H */
