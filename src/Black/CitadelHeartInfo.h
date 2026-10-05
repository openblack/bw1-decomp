#ifndef BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */
#include "InfoLoaders.h"     /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GCitadelHeartInfo : public GCitadelPartInfo
{
public:
	uint32_t field_0x134;
	uint32_t field_0x138;
	uint32_t field_0x13c;
	float    field_0x140;
	float    field_0x144;
	float    field_0x148;
	float    field_0x14c;
	float    field_0x150;
	float    TransferedDamageMultiplier;

	// Override methods

	// BW1W120 004643e0 BW1M119 011c95b0
	virtual ~GCitadelHeartInfo();
	// BW1W120 00464390 BW1M119 011c97a0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c5e270
	static GCitadelHeartInfo Infos[1];

	// Static methods

	// BW1W120 inlined BW1M119 011c9510
	static GCitadelHeartInfo* GetInfo() { return Infos; }
	// BW1W120 00464440 BW1M119 011c94a0
	static float GetTransferedDamageMultiplier();

	// TODO(#377): The original declared this class in CitadelHeart.h.
	// Out of line: LoadBinary at 0042ee70, Load at 0042edd0.
	INFO_DATA_BLOCK(field_0x134, TransferedDamageMultiplier)
	INFO_DERIVED_LOADERS(GCitadelPartInfo, "CitadelHeart.h", 27)
};

#endif /* BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H */
