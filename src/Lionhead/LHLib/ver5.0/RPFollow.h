#ifndef BW1_DECOMP_RP_FOLLOW_INCLUDED_H
#define BW1_DECOMP_RP_FOLLOW_INCLUDED_H

#include <stddef.h>

#include "RPHolder.h"

class RouteNode;
struct RPAvoid;
struct RPlan;

#define RPFOLLOW_MAX_PLANS                5
#define RPFOLLOW_MAX_PLAN_UPDATES         32
#define RPFOLLOW_MAX_CONCATENATED_NODES   4
#define RPFOLLOW_EPSILON                  0.01f
#define RPFOLLOW_ARRIVE_DISTANCE          0.001f
#define RPFOLLOW_MIN_SPEED                0.1f
#define RPFOLLOW_DEFAULT_MAX_SPEED        5.0f
#define RPFOLLOW_DEFAULT_RADIUS           1.0f
#define RPFOLLOW_DEFAULT_UPDATES_PER_TURN 1
#define RPFOLLOW_NO_PLAN                  -1

enum RPFOLLOW_EVENT
{
	RPFOLLOW_EVENT_FAILED = 0,
	RPFOLLOW_EVENT_REPLAN_NO_ROUTE = 1,
	RPFOLLOW_EVENT_REPLAN_FAILED = 2,
	RPFOLLOW_EVENT_NO_ROUTE = 3,
};

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
	float          Speed;
	float          DistanceAlongNode;
	float          MaxSpeed;
	float          Heading;
	Point2D        RouteEnd;
	float          Radius;
	float          StepDistance;
	RPFOLLOW_STATE FollowState;
	bool32_t       HasDest;
	int            UpdatesPerTurn;
	int            Context;
	void(__cdecl* StatusCallback)(int, int);
	void(__cdecl* MovementCallback)(int, float, float);
	float(__cdecl* GetRange)(int);
	RouteNode* CurrentNode;
	Point2D    Dest;
	float      EndClearance;
	float      ArriveDistance;
	float      MaxLength;
	bool32_t   RouteReady;
	RPlan*     CurrentPlan;
	RPlan*     Plans[RPFOLLOW_MAX_PLANS];
	RouteNode* JoinNodes[RPFOLLOW_MAX_PLANS];
	int        PlanCount;
	int        PlanIndex;

	// BW1W120 008639e0 BW1M119 010a9040 (LHCombined Release)
	RPFollow();
	// BW1W120 00863a70 BW1M119 010a8fc0 (LHCombined Release)
	~RPFollow();
	// BW1W120 00863ac0 BW1M119 010a8ea0 (LHCombined Release)
	void Init(int context, void(__cdecl* status)(int, int), void(__cdecl* movement)(int, float, float),
	          float(__cdecl* range)(int), int updates_per_turn);
	// BW1W120 00863b00 BW1M119 010a8dd0 (LHCombined Release)
	void SetPos(const Point2D& pos, float radius);
	// BW1W120 00863b70 BW1M119 010a89e0 (LHCombined Release)
	void SetDest(const Point2D& dest, float end_clearance, float arrive_distance, float radius, float max_length);
	// BW1W120 00863ef0 BW1M119 010a8820 (LHCombined Release)
	void StopMoving();
	// BW1W120 00863a80 BW1M119 010a8f00 (LHCombined Release)
	void FreeAll();
	// BW1W120 00864040 BW1M119 010a85d0 (LHCombined Release)
	void GameTurnUpdate(void(__cdecl* object_encountered)(int, int), int max_updates);
	// BW1W120 00864190 BW1M119 010a8530 (LHCombined Release)
	void RemoveSpecials();
	// BW1W120 008641f0 BW1M119 010a83c0 (LHCombined Release)
	void ActOnRouteFailure();
	// BW1W120 008642c0 BW1M119 010a8200 (LHCombined Release)
	void ActOnRouteSuccess();
	// BW1W120 00864420 BW1M119 010a7d10 (LHCombined Release)
	void ConcatenateRoutes(RouteNode* node);
	// BW1W120 00864d30 BW1M119 010a72a0 (LHCombined Release)
	void CheckIfAnyRoutesAreBlockedByObject(RPAvoid* avoid);
	// BW1W120 00864ba0 BW1M119 010a7630 (LHCombined Release)
	void FillPosAndHeading(Point2D& pos, float& heading, float distance);
	// BW1W120 008648b0 BW1M119 010a7b90 (LHCombined Release)
	void UpdateMotion();
	// BW1W120 00864990 BW1M119 010a7910 (LHCombined Release)
	void MoveAlongRoute();
};

static_assert(offsetof(RPFollow, FollowState) == 0x64054, "RPFollow follow state offset is incorrect");
static_assert(offsetof(RPFollow, Context) == 0x64060, "RPFollow context offset is incorrect");
static_assert(sizeof(RPFollow) == 0x640c0, "RPFollow size is incorrect");

#endif /* BW1_DECOMP_RP_FOLLOW_INCLUDED_H */
