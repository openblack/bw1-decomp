#ifndef BW1_DECOMP_DYNAMIC_LIGHT_AND_SHADOW_INCLUDED_H
#define BW1_DECOMP_DYNAMIC_LIGHT_AND_SHADOW_INCLUDED_H

#include <stdint.h> /* For uint8_t, uint32_t */

#include <re_common.h> /* For bool32_t */

struct LHPoint;

class DynamicLightAndShadow
{
public:
	enum LightType
	{
		LIGHT_TYPE_LIGHT = 1,
		LIGHT_TYPE_SHADOW = 2,
	};

	struct StoreInfo
	{
		uint32_t field_0x00;
		uint32_t field_0x04;
		uint32_t field_0x08;
		uint32_t field_0x0c;
		long     Pitch;
		long     X;
		long     Z;
		long     SizeZ;
		long     SizeX;
		uint32_t field_0x24;
		bool32_t MaxBlend;
		uint32_t Intensity;
		uint32_t field_0x30;
	};

	// BW1W120 0086cff0 BW1M119 010203a0 (LHCombined Release)
	static void __fastcall AddLight(LHPoint* pos, uint8_t* map, long size, bool32_t centred, float intensity,
	                                LightType type, bool32_t interpolate);
	// BW1W120 0086cf50 BW1M119 01020480 (LHCombined Release)
	static void __fastcall FillStoreInfo(StoreInfo* info, LHPoint* pos, uint8_t* map, long size, bool32_t centred,
	                                     float intensity, LightType type, bool32_t interpolate);
	// BW1W120 0086d060 BW1M119 0103ba10 (LHCombined Release)
	static void __fastcall Draw(StoreInfo* info);
	// BW1W120 0086d360 BW1M119 0103bdf0 (LHCombined Release)
	static void Draw();
	// BW1W120 0086d390 BW1M119 0103b830 (LHCombined Release)
	static void __fastcall Clear(StoreInfo* info);
	// BW1W120 0086d460 BW1M119 0103b790 (LHCombined Release)
	static void Clear();
};

#endif /* BW1_DECOMP_DYNAMIC_LIGHT_AND_SHADOW_INCLUDED_H */
