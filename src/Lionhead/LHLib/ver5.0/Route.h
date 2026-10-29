#ifndef BW1_DECOMP_ROUTE_INCLUDED_H
#define BW1_DECOMP_ROUTE_INCLUDED_H

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct Point2D */
#include <re_common.h>                            /* For bool32_t */

struct RPAvoid;
struct RPHolder;

#define ROUTE_NODE_NO_AVOID -1

enum ROUTE_NODE_SIDE
{
	ROUTE_NODE_SIDE_NONE = 0x0,
	ROUTE_NODE_SIDE_CLOCKWISE = 0x1,
	ROUTE_NODE_SIDE_ANTICLOCKWISE = 0x2,
};

class RouteNode
{
public:
	Point2D         Start;
	Point2D         End;
	int             Avoid;
	ROUTE_NODE_SIDE Side;
	int             field_0x18;
	bool32_t        Arc;
	float           Length;
	RouteNode*      Next;
	RouteNode*      Prev;

	// BW1W120 00869100 BW1M119 010a7020 (LHCombined Release)
	RouteNode(RouteNode* node);
	// BW1W120 00869150 BW1M119 010a6f90 (LHCombined Release)
	RouteNode(RouteNode* prev, bool32_t arc, const Point2D& start, const Point2D& end, int avoid, int side);

	// BW1W120 008691a0 BW1M119 010a6f20 (LHCombined Release)
	float GetLength(RPAvoid* avoid);
	// BW1W120 008691c0 BW1M119 010a6d70 (LHCombined Release)
	float GetArcLength(RPAvoid* avoid);
	// BW1W120 008692b0 BW1M119 010a6cd0 (LHCombined Release)
	void DeleteAllUpTo(RouteNode* node);
	// BW1W120 008692f0 BW1M119 010a6c10 (LHCombined Release)
	void DeleteAllIncluding(RouteNode* node);
	// BW1W120 00869330 BW1M119 010a6b50 (LHCombined Release)
	void SetUpLength(RPAvoid* avoid);
};

struct Route
{
	RouteNode* Head;
	RouteNode* Tail;
	Route*     NextRoute;
	int        field_0xc;

	// BW1W120 00869380 BW1M119 010a6b10 (LHCombined Release)
	Route();
	// BW1W120 008693a0 BW1M119 010a6a10 (LHCombined Release)
	Route(Route* route);
	// BW1W120 00869430 BW1M119 010a6970 (LHCombined Release)
	~Route();

	// BW1W120 00869460 BW1M119 010a68d0 (LHCombined Release)
	void DeleteNodesAfter(RouteNode* node);
	// BW1W120 008694a0 BW1M119 010a6650 (LHCombined Release)
	bool32_t TruncateIfBlockedByObject(RPAvoid* avoid, RouteNode* node, RPHolder* holder, const Point2D& pos);
};

#endif /* BW1_DECOMP_ROUTE_INCLUDED_H */
