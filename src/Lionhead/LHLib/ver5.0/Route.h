#ifndef BW1_DECOMP_ROUTE_INCLUDED_H
#define BW1_DECOMP_ROUTE_INCLUDED_H

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct Point2D */
#include <re_common.h>                            /* For bool32_t */

// Forward Declares

struct RPAvoid;

#define ROUTE_NODE_NO_AVOID -1

enum ROUTE_NODE_SIDE
{
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

	// Non-virtual methods

	// BW1W120 008691a0 BW1M119 010a6f20 (LHCombined Release)
	float GetLength(RPAvoid* avoid);
};

struct Route
{
	RouteNode* Head;
	RouteNode* Tail;
	int        field_0x8;
	int        field_0xc;
};

#endif /* BW1_DECOMP_ROUTE_INCLUDED_H */
