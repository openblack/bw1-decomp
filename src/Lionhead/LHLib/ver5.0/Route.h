#ifndef BW1_DECOMP_ROUTE_INCLUDED_H
#define BW1_DECOMP_ROUTE_INCLUDED_H

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct Point2D */

// Forward Declares

struct RPAvoid;

class RouteNode
{
public:
	Point2D    field_0x0;
	Point2D    field_0x8;
	int        field_0x10;
	int        field_0x14;
	int        field_0x18;
	int        field_0x1c;
	int        field_0x20;
	RouteNode* Next;
	RouteNode* Prev;

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
