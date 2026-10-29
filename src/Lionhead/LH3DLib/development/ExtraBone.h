#ifndef BW1_DECOMP_EXTRA_BONE_INCLUDED_H
#define BW1_DECOMP_EXTRA_BONE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHMatrix.h" /* For struct LHMatrix */

#define EXTRA_BONE_COUNT 16

struct ExtraBone
{
	long     Count;                       /* 0x000 */
	LHMatrix Matrix[EXTRA_BONE_COUNT];    /* 0x004 */
	long     BoneIndex[EXTRA_BONE_COUNT]; /* 0x304 */
};
static_assert(sizeof(ExtraBone) == 0x344, "Data type is of wrong size");

#endif /* BW1_DECOMP_EXTRA_BONE_INCLUDED_H */
