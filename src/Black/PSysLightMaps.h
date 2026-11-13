#ifndef BW1_DECOMP_P_SYS_LIGHT_MAPS_INCLUDED_H
#define BW1_DECOMP_P_SYS_LIGHT_MAPS_INCLUDED_H

#include <stdint.h> /* For int32_t */

#include "GJBaseUtils.h" /* For GJDoubleLinkList, GJVector */

// Forward Declares

class LH3DObject;
struct LH3DDynamicShadow;
class PSysLightMap;

class PSysShadow
{
public:
	PSysShadow*        Previous;
	PSysShadow*        Next;
	LH3DDynamicShadow* DynamicShadow;
	LH3DObject*        Object3D;

	// BW1W120 006ca340 BW1M119 014813d0
	PSysShadow();
};

struct LightMapList
{
	int32_t                      BlurState;
	float                        BlurAmount;
	GJVector<PSysLightMap*>      Maps;
	GJDoubleLinkList<PSysShadow> Shadows;

	// Non-virtual methods

	// BW1W120 006ca5d0 BW1M119 01481210
	void StopBlur();
};

class PSysLightMaps
{
public:
	// BW1W120 00d4edb0
	static LightMapList List;

	// BW1W120 006ca6e0 BW1M119 01015540
	static void AddDrawing();
};

#endif /* BW1_DECOMP_P_SYS_LIGHT_MAPS_INCLUDED_H */
