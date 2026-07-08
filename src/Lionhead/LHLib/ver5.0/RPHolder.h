#ifndef BW1_DECOMP_RP_HOLDER_INCLUDED_H
#define BW1_DECOMP_RP_HOLDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For struct vec2u16 */

#include "RPAvoid.h" /* For struct RPAvoid */

// Forward Declares

struct Point2D;
class RPFollow;

struct RPHolder
{
	RPAvoid   AvoidArray[0x4000]; /* 0x0 */
	int       AvoidCount;         /* 0x50000 */
	Point2D*  field_0x50004;
	Point2D*  field_0x50008;
	uint32_t  field_0x5000c[0x4];
	uint8_t   field_0x5001c;
	float     field_0x50020;
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
	// win1.41 0083b860 mac 100ac020 RPHolder::GetSidePointOfStartObject(int, Point2D const &, Point2D &, int)
	uint32_t GetSidePointOfStartObject(int param_1, Point2D* param_2, Point2D* param_3, int param_4);
	// win1.41 0083bb60 mac 100ab580 RPHolder::GetFirstObject(Point2D const &, Point2D &, int, Point2D &, int &, float)
	int GetFirstObject(Point2D* param_1, Point2D* param_2, int param_3, Point2D* param_4, int* param_5, float param_6);
};

#endif /* BW1_DECOMP_RP_HOLDER_INCLUDED_H */
