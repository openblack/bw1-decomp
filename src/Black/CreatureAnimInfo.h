#ifndef BW1_DECOMP_CREATURE_ANIM_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_ANIM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t */
#include <stdio.h>  /* For FILE */

#include "Name.h" /* For struct Name */

#define ANIM_INFO_MAX_NAMES 0x18

enum AnimInfoType
{
	AnimInfoType_Minus = 0x0,
	AnimInfoType_C = 0x1,
	AnimInfoType_N = 0x2,
	AnimInfoType_L = 0x6,
	AnimInfoType_W = 0x9,
	AnimInfoType_D = 0x10,
	_AnimInfoType_COUNT = 0x11
};

struct CatInfo
{
	int          AnimationCount;                      /* 0x0 */
	Name         AnimationNames[ANIM_INFO_MAX_NAMES]; /* 0x4 */
	AnimInfoType AnimationType[ANIM_INFO_MAX_NAMES];  /* 0x304 */

	// Non-virtual methods

	// BW1W120 004c4970 BW1M119 01235db0
	char Read(FILE* file);
};
static_assert(offsetof(CatInfo, AnimationNames) == 0x4, "Wrong CatInfo AnimationNames offset");
static_assert(offsetof(CatInfo, AnimationType) == 0x304, "Wrong CatInfo AnimationType offset");
static_assert(sizeof(CatInfo) == 0x364, "Wrong CatInfo size");

struct AnimInfo
{
	uint32_t SpecVersion;                        /* 0x0 */
	int      CategoryCount;                      /* 0x4 */
	Name     CategoryNames[ANIM_INFO_MAX_NAMES]; /* 0x8 */
	CatInfo  Categories[ANIM_INFO_MAX_NAMES];    /* 0x308 */

	// Non-virtual methods

	// BW1W120 004c4ab0 BW1M119 01235c00
	bool32_t Read(char* spec_filename);
};
static_assert(offsetof(AnimInfo, CategoryNames) == 0x8, "Wrong AnimInfo CategoryNames offset");
static_assert(offsetof(AnimInfo, Categories) == 0x308, "Wrong AnimInfo Categories offset");
static_assert(sizeof(AnimInfo) == 0x5468, "Wrong AnimInfo size");

#endif /* BW1_DECOMP_CREATURE_ANIM_INFO_INCLUDED_H */
