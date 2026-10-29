#ifndef BW1_DECOMP_RP_HOLDER_INCLUDED_H
#define BW1_DECOMP_RP_HOLDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For struct vec2u16 */

#include "RPAvoid.h" /* For struct RPAvoid */

#define RPHOLDER_BLOCKED -2

// Forward Declares

struct Point2D;
class RPFollow;

struct RPHolder
{
	RPAvoid   AvoidArray[0x4000];
	int       AvoidCount;
	Point2D*  IgnoredDest;
	Point2D*  IgnoredStart;
	int       MinSquareX;
	int       MinSquareZ;
	int       MaxSquareX;
	int       MaxSquareZ;
	uint8_t   field_0x5001c;
	float     ObjectMargin;
	RPFollow* field_0x50024;
	vec2u16   field_0x50028[0x1000];
	vec2u16   field_0x54028[0x4000];
	uint32_t  field_0x64028;

	// Static methods

	// win1.41 0083b300 mac 1061e7c4 RPHolder::InitialiseSystem(void (__cdecl *)(int, int, struct RPHolder *), void (__cdecl *)(struct RPHolder *))
	static void InitialiseSystem(void(__cdecl* param_1)(int, int, RPHolder*), void(__cdecl* param_2)(RPHolder*));

	// Constructors

	// win1.41 0083b2e0 mac 1061b374 RPHolder::RPHolder(void)
	RPHolder();

	// Non-virtual methods

	// win1.41 0083b330 mac 1061c58c RPHolder::Empty(void)
	void Empty();
	// BW1W120 0083b380 BW1M119 010aac90 (LHCombined Release)
	void SearchRPSquare(int x, int z);
	// BW1W120 0083b3e0 BW1M119 010aabb0 (LHCombined Release)
	bool32_t SquareDoesNotContain(int object_id, int x, int z);
	// BW1W120 0083b450 BW1M119 010aa7b0 (LHCombined Release)
	void AddObject(int object_id, const Point2D& point, float radius, int update);
	// BW1W120 0083b860 BW1M119 010aa3f0 (LHCombined Release)
	bool32_t GetSidePointOfStartObject(int avoid, const Point2D& from, Point2D& side_point, int side);
	// BW1W120 0083b9e0 BW1M119 010aa170 (LHCombined Release)
	bool32_t WorkOutSidePoints(int avoid, int side, Point2D& side_point, int dest_avoid, int dest_side,
	                           Point2D& dest_point);
	// BW1W120 0083bb60 BW1M119 010a9930 (LHCombined Release)
	int GetFirstObject(const Point2D& start, Point2D& end, int ignore_avoid, Point2D& hit, int& hit_side, float margin);
	// BW1W120 0083c2d0 BW1M119 010a9110 (LHCombined Release)
	bool32_t GetNearestPossiblePointRoundObjectToPoint(int avoid, int side, Point2D& point, const Point2D& from,
	                                                   int& blocking_object);
};

static_assert(sizeof(RPHolder) == 0x6402c, "RPHolder size is incorrect");

#endif /* BW1_DECOMP_RP_HOLDER_INCLUDED_H */
