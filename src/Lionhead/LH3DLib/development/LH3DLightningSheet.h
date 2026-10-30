#ifndef BW1_DECOMP_LH3DLIGHTNINGSHEET_INCLUDED_H
#define BW1_DECOMP_LH3DLIGHTNINGSHEET_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For struct LHPoint */

#define LIGHTNING_SHEET_BMAP_SIZE     64
#define LIGHTNING_SHEET_BMAP_CHANNELS 3

enum LIGHTNING_SHEET_STATE
{
	LIGHTNING_SHEET_STATE_IDLE,
	LIGHTNING_SHEET_STATE_FLASH,
};

class LH3DLightningSheet
{
public:
	LHPoint               Pos;
	float                 Intensity;
	LIGHTNING_SHEET_STATE State;
	float                 Time;
	float                 Fade;
	float                 Brightness;
	float                 Scale;

	// BW1W120 00ed92f0 BW1M119 0134238c (LHCombined Release)
	static uint8_t bmap[LIGHTNING_SHEET_BMAP_SIZE][LIGHTNING_SHEET_BMAP_SIZE][LIGHTNING_SHEET_BMAP_CHANNELS];
	// BW1W120 00edc2f0 BW1M119 0134538c (LHCombined Release)
	static long bmappitch;
	// BW1W120 00edd3a8 BW1M119 01345390 (LHCombined Release)
	static int numsheets;

	// BW1W120 00837110 BW1M119 010d4580 (LHCombined Release)
	LH3DLightningSheet();
	// BW1W120 008371f0 BW1M119 010d4500 (LHCombined Release)
	~LH3DLightningSheet();

	// BW1W120 00837200 BW1M119 010d4400 (LHCombined Release)
	void Draw();
	// BW1W120 00837290 BW1M119 010d4380 (LHCombined Release)
	void Trigger(LHPoint& pos, float intensity, float scale);
	// BW1W120 008372d0 BW1M119 01005e80 (LHCombined Release)
	void UpdateGame(float time);
};
static_assert(sizeof(LH3DLightningSheet) == 0x24, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3DLIGHTNINGSHEET_INCLUDED_H */
