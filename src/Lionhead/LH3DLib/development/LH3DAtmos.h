#ifndef BW1_DECOMP_LH3D_ATMOS_INCLUDED_H
#define BW1_DECOMP_LH3D_ATMOS_INCLUDED_H

#include <stdint.h> /* For int8_t, uint32_t */

#include <re_common.h> /* For bool32_t */

#include "LHPoint.h"     /* For struct LHPoint */
#include "WeatherInfo.h" /* For struct WeatherInfo */

#define LH3D_ATMOS_MAP_SIZE          128
#define LH3D_ATMOS_CELL_SIZE         40
#define LH3D_ATMOS_BUFFER_COUNT      3
#define LH3D_ATMOS_BUFFER_POINTS     0x400
#define LH3D_ATMOS_PALETTE_SIZE      0x400
#define LH3D_ATMOS_COLOUR_SAMPLES    32
#define LH3D_ATMOS_GLOW_SIZE         16
#define LH3D_ATMOS_AREA_CORNERS      8
#define LH3D_ATMOS_TEXTURE_SIZE      256
#define LH3D_ATMOS_GLOW_TEXTURE_SIZE 32

class LH3DStorm;
class RainCell;
class SnowCell;
class SnowCover;
struct LH3DColor;
struct LH3DMaterial;
struct LH3DTexture;

enum LH3D_ATMOS_FLAGS
{
	LH3D_ATMOS_FLAGS_GLOW = 0x1,
	LH3D_ATMOS_FLAGS_SNOW = 0x2,
	LH3D_ATMOS_FLAGS_RAIN = 0x4,
};

enum LH3D_ATMOS_BUFFER
{
	LH3D_ATMOS_BUFFER_SHARED,
	LH3D_ATMOS_BUFFER_RAIN,
	LH3D_ATMOS_BUFFER_SNOW,
};

// BW1W120 00edd3a0 BW1M119 01345398 (LHCombined Release)
extern void(__stdcall* g_water_drop_cb)(LHPoint& pos, float size, unsigned long color);

class LH3DAtmos
{
public:
	// BW1W120 00edc2fc BW1M119 0134539c (LHCombined Release)
	static bool32_t needsnowupdate;
	// BW1W120 00edc300 BW1M119 013453a0 (LHCombined Release)
	static bool32_t needrainupdate;
	// BW1W120 00edd39c BW1M119 013453a4 (LHCombined Release)
	static bool insidestorm;
	// BW1W120 00edd398 BW1M119 013453a8 (LHCombined Release)
	static LH3DStorm* neareststorm;
	// BW1W120 00edc304 BW1M119 013453ac (LHCombined Release)
	static float* v_uv[LH3D_ATMOS_BUFFER_COUNT];
	// BW1W120 00edc310 BW1M119 013453b8 (LHCombined Release)
	static long* v_idx[LH3D_ATMOS_BUFFER_COUNT];
	// BW1W120 00edc31c BW1M119 013453c4 (LHCombined Release)
	static LHPoint* v_pnt[LH3D_ATMOS_BUFFER_COUNT];
	// BW1W120 00edc328 BW1M119 013453d0 (LHCombined Release)
	static LH3DColor* v_col[LH3D_ATMOS_BUFFER_COUNT];
	// BW1W120 00edd378 BW1M119 013453e8 (LHCombined Release)
	static LHPoint moonpos;
	// BW1W120 00edc340 BW1M119 013453f4 (LHCombined Release)
	static int8_t amaptime;
	// BW1W120 00edc344 BW1M119 013453f8 (LHCombined Release)
	static SnowCover* scv;
	// BW1W120 00edc348 BW1M119 013453fc (LHCombined Release)
	static WeatherInfo ambient;
	// BW1W120 00edc350 BW1M119 01345404 (LHCombined Release)
	static WeatherInfo* amap;
	// BW1W120 00edc354 BW1M119 01345408 (LHCombined Release)
	static SnowCell* sc;
	// BW1W120 00edc358 BW1M119 0134540c (LHCombined Release)
	static RainCell* rc;
	// BW1W120 00edc35c BW1M119 01345410 (LHCombined Release)
	static uint32_t* palette;
	// BW1W120 00edc360 BW1M119 01345414 (LHCombined Release)
	static unsigned long flags;
	// BW1W120 00edd394 BW1M119 01345418 (LHCombined Release)
	static LH3DMaterial* snowmat;
	// BW1W120 00edd390 BW1M119 0134541c (LHCombined Release)
	static LH3DTexture* snowtex;
	// BW1W120 00edc364 BW1M119 01345420 (LHCombined Release)
	static LH3DMaterial* mat1;
	// BW1W120 00edc368 BW1M119 01345424 (LHCombined Release)
	static LH3DMaterial* mat0;
	// BW1W120 00edc36c BW1M119 01345428 (LHCombined Release)
	static LH3DTexture* tex1;
	// BW1W120 00edc370 BW1M119 0134542c (LHCombined Release)
	static LH3DTexture* tex0;
	// BW1W120 00edd388 BW1M119 01345430 (LHCombined Release)
	static float alignment;
	// BW1W120 00edd384 BW1M119 01345434 (LHCombined Release)
	static float superglow;
	// BW1W120 00edd38c BW1M119 01345438 (LHCombined Release)
	static int inited;
	// BW1W120 00edc374 BW1M119 0134543c (LHCombined Release)
	static int glowlevel;
	// BW1W120 00edc378 BW1M119 01345440 (LHCombined Release)
	static long glowtab[LH3D_ATMOS_GLOW_SIZE * LH3D_ATMOS_GLOW_SIZE][4];
	// BW1W120 00c38e10 BW1M119 011d1810 (LHCombined Release)
	static float cloudheight;
	// BW1W120 00c38e14 BW1M119 011d1814 (LHCombined Release)
	static float speed;

	// BW1W120 00835ad0 BW1M119 010d58d0 (LHCombined Release)
	static void Init(unsigned long init_flags);
	// BW1W120 00835e50 BW1M119 010d5740 (LHCombined Release)
	static void Close();
	// BW1W120 008356e0 BW1M119 01036d60 (LHCombined Release)
	static void UpdateGame(float visual_time, float delta_time);
	// BW1W120 008357a0 BW1M119 0100cac0 (LHCombined Release)
	static void Update3D(float time);
	// BW1W120 00836250 BW1M119 01023390 (LHCombined Release)
	static void Render3D();
	// BW1W120 00836200 BW1M119 0100a500 (LHCombined Release)
	static void Render3DFinal();
	// BW1W120 008366a0 BW1M119 01009ea0 (LHCombined Release)
	static void Render2D();
	// BW1W120 008367a0 BW1M119 010d4d90 (LHCombined Release)
	static void DrawWindField();
	// BW1W120 008366d0 BW1M119 010d4f70 (LHCombined Release)
	static void DrawWindArrow(LHPoint pos, LHPoint dir);
	// BW1W120 008370f0 BW1M119 010d4710 (LHCombined Release)
	static void InitGlow();
	// BW1W120 00836990 BW1M119 010d4b40 (LHCombined Release)
	static void UpdateGlow();
	// BW1W120 00836e20 BW1M119 010d4770 (LHCombined Release)
	static void RenderGlow(unsigned long color);
	// BW1W120 00835f40 BW1M119 null
	static bool IsAreaVisible(float x, float z, float size);

	// BW1W120 00834f80 BW1M119 010231f0 (LHCombined Release)
	static WeatherInfo GetWeather(const LHPoint& point, int recalc);
	// BW1W120 00835180 BW1M119 010126d0 (LHCombined Release)
	static WeatherInfo GetWeatherSmooth(const LHPoint& point, int recalc);
	// BW1W120 00834e10 BW1M119 010d6c40 (LHCombined Release)
	static WeatherInfo GetAmbientWeather();
	// BW1W120 008350d0 BW1M119 010d60e0 (LHCombined Release)
	static LHPoint GetWindAtPoint(const LHPoint& point, bool smooth);
	// BW1W120 00835060 BW1M119 010d62f0 (LHCombined Release)
	static float GetWindSpeedAtPoint(const LHPoint& point, bool smooth);
	// BW1W120 00835090 BW1M119 010d6250 (LHCombined Release)
	static int8_t GetTemperatureAtPoint(const LHPoint& point, bool smooth);
	// BW1W120 00834dd0 BW1M119 01023920 (LHCombined Release)
	static int GetSnowDepth(const LHPoint& point);
	// BW1W120 00834ee0 BW1M119 010d6640 (LHCombined Release)
	static WeatherInfo* FindAtmos(int x, int z);
	// BW1W120 00834f20 BW1M119 010d6580 (LHCombined Release)
	static WeatherInfo* FindAtmos(LHPoint& point);
	// BW1W120 00834e20 BW1M119 010237d0 (LHCombined Release)
	static void RecalcAtmos(WeatherInfo* info, int x, int z);

	// BW1W120 inlined BW1M119 0101a070
	static LHPoint GetMoonPos() { return moonpos; }
	// BW1W120 inlined BW1M119 01091010
	static LHPoint GetWind(const WeatherInfo& weather)
	{
		return LHPoint((float)weather.WindX * 0.125f, 0.0f, (float)weather.WindZ * 0.125f);
	}
};

#endif /* BW1_DECOMP_LH3D_ATMOS_INCLUDED_H */
