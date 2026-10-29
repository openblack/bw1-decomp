#ifndef BW1_DECOMP_R_PLAN_INCLUDED_H
#define BW1_DECOMP_R_PLAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct Point2D */
#include <re_common.h>                            /* For bool32_t */

struct RPHolder;
struct Route;

#define RPLAN_VISITS_PER_BLOCK 0x100

enum RPLAN_STATE
{
	RPLAN_STATE_NONE = 0x0,
	RPLAN_STATE_STARTED = 0x1,
	RPLAN_STATE_PLANNING = 0x2,
	RPLAN_STATE_FAILED = 0x3,
	RPLAN_STATE_NO_ROUTE = 0x4,
	RPLAN_STATE_SUCCEEDED = 0x5,
};

struct RoutePosItem
{
	Point2D Pos;
	float   Length;

	// BW1W120 inlined BW1M119 010ab200 (LHCombined Release)
	RoutePosItem() {}

	// BW1W120 inlined BW1M119 010ab1b0 (LHCombined Release)
	void Init(const Point2D& pos, float length)
	{
		Pos = pos;
		Length = length;
	}
};

struct VisitBlock
{
	int          NumItems;
	VisitBlock*  Next;
	RoutePosItem Items[RPLAN_VISITS_PER_BLOCK];

	// BW1W120 inlined BW1M119 inlined
	VisitBlock(VisitBlock* next)
	{
		NumItems = 0;
		Next = next;
	}
	// BW1W120 inlined BW1M119 010abb10 (LHCombined Release)
	~VisitBlock()
	{
		while (Next != NULL)
		{
			VisitBlock* next = Next->Next;
			Next->Next = NULL;
			delete Next;
			Next = next;
		}
	}
};

struct RPlan
{
	RPHolder*   Holder;
	float       Radius;
	int         StartAvoid;
	int         SecondAvoid;
	int         StartSide;
	int         DestAvoid;
	int         DestSide;
	Point2D     DestArcStart;
	Point2D     DestArcEnd;
	Point2D     Start;
	Point2D     Dest;
	float       EndClearance;
	float       ArriveDistance;
	float       MaxLength;
	float       StartLength;
	float       BestLength;
	RPLAN_STATE State;
	int         NumVisits;
	VisitBlock* VisitBlocks;
	float       BlockedLength;
	Route*      Routes;
	int         NumRoutes;
	Route*      CurrentRoute;
	Route*      SpareRoute;
	Route*      OldRoute;

	// BW1W120 00fa51c4 BW1M119 012d1f64 (LHCombined Release)
	static int BlockingObjectsOwnerID;
	// BW1W120 00fa51d0 BW1M119 012d1f68 (LHCombined Release)
	static void(__cdecl* BlockingObjectsFunction)(int owner_id, int object_id);

	// BW1W120 0086e0d0 BW1M119 010ad3c0 (LHCombined Release)
	RPlan();
	// BW1W120 0086e0f0 BW1M119 010ad340 (LHCombined Release)
	~RPlan();

	// BW1W120 0086e100 BW1M119 010ad210 (LHCombined Release)
	void FreeRoutes();
	// BW1W120 0086e200 BW1M119 010ad150 (LHCombined Release)
	void SetStart(const Point2D& start, float radius, RPHolder* holder, int start_avoid, int second_avoid,
	              int start_side);
	// BW1W120 0086e250 BW1M119 010acb30 (LHCombined Release)
	void SetDest(const Point2D& dest, float end_clearance, float arrive_distance, float start_length, int dest_avoid,
	             int dest_side, float max_length, bool32_t ignore_end_objects);
	// BW1W120 0086e7c0 BW1M119 010aca90 (LHCombined Release)
	void CheckCurrentRouteForCompletion();
	// BW1W120 0086e7f0 BW1M119 010ac970 (LHCombined Release)
	void SucceedAndFree();
	// BW1W120 0086e890 BW1M119 010ac850 (LHCombined Release)
	bool32_t CheckPos(const Point2D& pos, float length, float max_length);
	// BW1W120 0086e9a0 BW1M119 010abe20 (LHCombined Release)
	void GameTurnUpdate(int depth);
	// BW1W120 0086f1e0 BW1M119 010abbf0 (LHCombined Release)
	bool32_t PathIsClear(const Point2D& from, const Point2D& to);
	// BW1W120 0086f390 BW1M119 010ab9c0 (LHCombined Release)
	void RemoveRoute(Route* route, bool32_t current);
	// BW1W120 0086f460 BW1M119 010ab980 (LHCombined Release)
	void CheckLine(const Point2D& from, const Point2D& to);
	// BW1W120 0086f560 BW1M119 010ab230 (LHCombined Release)
	void ImproveRoute(Route* route, int depth);
	// BW1W120 0086fb80 BW1M119 010ab070 (LHCombined Release)
	void AddVisit(const Point2D& pos, float length);
};

static_assert(sizeof(RPlan) == 0x74, "RPlan size is incorrect");

#endif /* BW1_DECOMP_R_PLAN_INCLUDED_H */
