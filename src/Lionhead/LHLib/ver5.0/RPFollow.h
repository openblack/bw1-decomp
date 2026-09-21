#ifndef BW1_DECOMP_RP_FOLLOW_INCLUDED_H
#define BW1_DECOMP_RP_FOLLOW_INCLUDED_H

#include <stddef.h>

#include "RPHolder.h"

class RouteNode;
struct RPlan;

// TODO: Original member names are unrecovered. Constructor and route-update code
// establish the RPHolder prefix and the typed state below; no opaque size padding.
class RPFollow : public RPHolder
{
public:
	Point2D field_0x6402c; // Current position.
	float   field_0x64034;
	float   field_0x64038;
	float   field_0x6403c;
	float   field_0x64040;
	Point2D field_0x64044;
	float   field_0x6404c;
	float   field_0x64050;
	int     field_0x64054;
	int     field_0x64058;
	int     field_0x6405c;
	int     field_0x64060; // Generic callback context; Black passes a Creature* as an int.
	void(__cdecl* field_0x64064)(int, int);
	void(__cdecl* field_0x64068)(int, float, float);
	float(__cdecl* field_0x6406c)(int);
	RouteNode* field_0x64070;
	Point2D    field_0x64074;
	float      field_0x6407c;
	float      field_0x64080;
	float      field_0x64084;
	int        field_0x64088;
	RPlan*     field_0x6408c;
	RPlan*     field_0x64090[5];
	RouteNode* field_0x640a4[5];
	int        field_0x640b8;
	int        field_0x640bc;

	// BW1W120 008639e0 BW1M119 010a9040 (LHCombined Release)
	RPFollow();
	// BW1W120 00863ac0 BW1M119 010a8ea0 (LHCombined Release)
	void Init(int context, void(__cdecl* status)(int, int), void(__cdecl* movement)(int, float, float),
	          float(__cdecl* range)(int), int mode);
};

static_assert(offsetof(RPFollow, field_0x64060) == 0x64060, "RPFollow context offset is incorrect");
static_assert(sizeof(RPFollow) == 0x640c0, "RPFollow size is incorrect");

#endif /* BW1_DECOMP_RP_FOLLOW_INCLUDED_H */
