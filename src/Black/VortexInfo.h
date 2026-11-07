#ifndef BW1_DECOMP_VORTEX_INFO_INCLUDED_H
#define BW1_DECOMP_VORTEX_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For PARTICLE_TYPE, TRIBE_TYPE, VILLAGER_INFO, VORTEX_STAT_TYPE, VORTEX_STATE_TYPE, VORTEX_TYPE */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

#define VORTEX_MAX_VILLAGERS_TO_CREATE 30

// Forward Declares

class Base;

class GVortexInfo : public GBaseInfo
{
public:
	PARTICLE_TYPE     ParticleTypePreLandscape;           /* 0x10 */
	PARTICLE_TYPE     ParticleTypePostLandscape;          /* 0x14 */
	PARTICLE_TYPE     ParticleTypeObjectMover;            /* 0x18 */
	PARTICLE_TYPE     ParticleTypeLightMap;               /* 0x1c */
	VORTEX_STATE_TYPE InitialState;                       /* 0x20 */
	uint32_t          FadeWhenDeleted;                    /* 0x24 */
	float             BaseScale;                          /* 0x28 */
	uint32_t          MaxToCreate[VORTEX_STAT_TYPE_LAST]; /* 0x2c */

	// Override methods

	// BW1W120 005fd3f0 BW1M119 013c0fa0
	virtual ~GVortexInfo();
	// BW1W120 005fd390 BW1M119 013c1360
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d38248
	static GVortexInfo Infos[VORTEX_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 013c12c0
	static GVortexInfo* GetInfo() { return Infos; }

	// Non-virtual methods

	// BW1W120 005fd410 BW1M119 013c1200
	VORTEX_TYPE GetVortexType() const;
	// BW1W120 005fd420 BW1M119 inlined
	VILLAGER_INFO GetVillagerInfoToCreate(TRIBE_TYPE tribe);
	// BW1W120 005fd480 BW1M119 inlined
	int32_t GetMaxToCreate(VORTEX_STAT_TYPE type);
	// BW1W120 005fd4a0 BW1M119 inlined
	uint32_t GetMaxToCreateFromInfo(VORTEX_STAT_TYPE type);
	// BW1W120 005fd4c0 BW1M119 013c1190
	const char* GetFootPrintFileName() const;
	// BW1W120 005fd4d0 BW1M119 013c1120
	const char* GetFootPrintAlphaFileName() const;
	// BW1W120 005fd4e0 BW1M119 013c10b0
	bool IsAdjustLandscapeHeight() const;

	// TODO(#377): The original declared this class in MagicVortex.h.
	INFO_DATA_BLOCK(ParticleTypePreLandscape, MaxToCreate)
	INFO_ROOT_LOADERS(25, "MagicVortex.h")
};

static_assert(sizeof(GVortexInfo) == 0x40, "GVortexInfo size is incorrect");

#endif /* BW1_DECOMP_VORTEX_INFO_INCLUDED_H */
