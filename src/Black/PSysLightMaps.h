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
	// BW1W120 006ca370 BW1M119 inlined
	~PSysShadow();

	// BW1W120 006ca3d0 BW1M119 inlined
	void Prepare();
};

enum LIGHT_MAP_BLUR_STATE
{
	LIGHT_MAP_BLUR_STATE_NONE = 0,
	LIGHT_MAP_BLUR_STATE_INCREASING = 1,
	LIGHT_MAP_BLUR_STATE_DECREASING = 2,
};

#define LIGHT_MAP_BLUR_MAX          0.5f
#define LIGHT_MAP_BLUR_SPEED        0.01f
#define LIGHT_MAP_MOTION_BLUR_SCALE 190.0f
#define LIGHT_MAP_POSITION_OFFSET   10.0f

struct LightMapList
{
	LIGHT_MAP_BLUR_STATE         BlurState;
	float                        BlurAmount;
	GJVector<PSysLightMap*>      Maps;
	GJDoubleLinkList<PSysShadow> Shadows;

	// BW1W120 006ca4c0 BW1M119 inlined
	LightMapList();
	// BW1W120 006ca4e0 BW1M119 01481250
	~LightMapList();

	// Non-virtual methods

	// BW1W120 006ca540 BW1M119 inlined
	void Submit();
	// BW1W120 006ca5c0 BW1M119 inlined
	void StartBlur();
	// BW1W120 006ca5d0 BW1M119 01481210
	void StopBlur();
	// BW1W120 006ca5e0 BW1M119 inlined
	void UpdateBlur();
	// BW1W120 006ca660 BW1M119 inlined
	void Clear();
};

namespace PSysLightMaps
{
// BW1W120 00d4edb0
extern LightMapList List;

// BW1W120 006ca6e0 BW1M119 01015540
void AddDrawing();
// BW1W120 006ca700 BW1M119 0108f320
void ProcessLightMaps();
} // namespace PSysLightMaps

#endif /* BW1_DECOMP_P_SYS_LIGHT_MAPS_INCLUDED_H */
