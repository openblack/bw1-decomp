#ifndef BW1_DECOMP_FOOT_PRINT_BASE_INCLUDED_H
#define BW1_DECOMP_FOOT_PRINT_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include "LHCoordF.h" /* For struct LHCoordF */

struct FootPrintTriangle
{
	LHCoordF Position[3];
	LHCoordF UV[3];
};
static_assert(sizeof(FootPrintTriangle) == 0x30, "Data type is of wrong size");

struct FootPrintBase
{
	int       Width;
	int       Height;
	int       field_0x8;
	uint16_t* Pixels;
	int       field_0x10;
	int       NumTriangles;

	// BW1W120 00e9fe4c BW1M119 01212a3c (LHCombined Release)
	static FootPrintBase* g_first;
	// BW1W120 00e9fe50 BW1M119 01212a38 (LHCombined Release)
	static int g_count;
};
static_assert(sizeof(FootPrintBase) == 0x18, "Data type is of wrong size");

#endif /* BW1_DECOMP_FOOT_PRINT_BASE_INCLUDED_H */
