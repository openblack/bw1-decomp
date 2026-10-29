#ifndef BW1_DECOMP_SCRIPTED_SCREEN_SHOT_INCLUDED_H
#define BW1_DECOMP_SCRIPTED_SCREEN_SHOT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For struct LHPoint */

class ScriptedScreenShot
{
public:
	struct Shot
	{
		char     ThumbnailTexture[0x100];
		char     PictureTexture[0x100];
		long     Half;
		long     Thumbnail;
		uint8_t* FullScreen;

		Shot()
		{
			ThumbnailTexture[0] = '\0';
			PictureTexture[0] = '\0';
			Half = 0;
			Thumbnail = 0;
			FullScreen = NULL;
		}
	};

	// BW1W120 00ea9f70 BW1M119 011f1e94 (LHCombined Release)
	static Shot g_info;
	// BW1W120 00ea9f60 BW1M119 011f1e88 (LHCombined Release)
	static LHPoint g_pos;
	// BW1W120 00ea9f50 BW1M119 011f1e7c (LHCombined Release)
	static LHPoint g_foc;
	// BW1W120 00eb99ac BW1M119 011f20a8 (LHCombined Release)
	static bool32_t g_b_fullscreen_ready;
	// BW1W120 00eb99b0 BW1M119 011f20a4 (LHCombined Release)
	static bool32_t g_b_fullscreen;
	// BW1W120 00eb99b4 BW1M119 011f20a0 (LHCombined Release)
	static bool32_t g_b_do_it;

	// Static methods

	// BW1W120 00821370 BW1M119 010c2b30 (LHCombined Release)
	static void TakeFullScreen();
	// BW1W120 00821750 BW1M119 0103ca80 (LHCombined Release)
	static void Process();
	// BW1W120 00828e90 BW1M119 010c30b0 (LHCombined Release)
	static void Request(Shot* shot, bool32_t fullscreen, LHPoint* pos, LHPoint* foc);
};
static_assert(sizeof(ScriptedScreenShot::Shot) == 0x20c, "Data type is of wrong size");

// BW1W120 0082a8e0 BW1M119 010bdc70 (LHCombined Release)
void SaveTextureCitadel(char* name, void* data);
// BW1W120 0082ab40 BW1M119 010a4860 (LHCombined Release)
void LoadTextureCitadel(char* name, uint8_t* data);

#endif /* BW1_DECOMP_SCRIPTED_SCREEN_SHOT_INCLUDED_H */
