#ifndef BW1_DECOMP_HELP_DUDE_CONTROL_INCLUDED_H
#define BW1_DECOMP_HELP_DUDE_CONTROL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

#include "HelpDude.h" /* For struct HelpDude */

// Forward Declares

class LH_AudioBank;
class LH_AudioSystem;

#define HELPDUDE_FRONT_POINT_BLEND 0.5f

enum HELPDUDE_ENUM
{
	HELPDUDE_GOOD = 0,
	HELPDUDE_EVIL = 1,
	HELPDUDE_LAST = 2,
};

struct HelpDudeControl
{
	bool32_t  Initialised;
	HelpDude* Dudes[HELPDUDE_LAST];
	bool32_t  Visible[HELPDUDE_LAST];
	uint8_t   field_0x14[0x60];
	bool32_t  Talking[HELPDUDE_LAST];
	uint8_t   field_0x7c[0x8];
	bool32_t  Updated;

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void AddDrawing()
	{
		Updated = true;
		for (int i = 0; i < HELPDUDE_LAST; i++)
		{
			if (Visible[i] && Dudes[i]->PointBlend >= HELPDUDE_FRONT_POINT_BLEND)
			{
				Dudes[i]->AddDrawing();
			}
		}
	}
	// BW1W120 005c2a40 BW1M119 01352670
	bool32_t Init(const char* good_file, const char* evil_file, LH_AudioSystem* audio_system);
	// BW1W120 005c2e40 BW1M119 013524f0
	void Uninit();
#ifdef VERSION_BW1WCI
	// BW1WCI 005d8c00 BW1MCI119 01374210
	void Talk(HELPDUDE_ENUM dude, unsigned long text, int delay);
#else
	// BW1W120 005c3660 BW1M119 01351880
	void SetSoundBank(const LH_AudioBank* good_bank, const LH_AudioBank* evil_bank);
	// BW1W120 005c36d0 BW1M119 013517a0
	void Talk(HELPDUDE_ENUM dude, int sample, int delay);
#endif
	// BW1W120 005c3750 BW1M119 01351710
	void DontTalk(HELPDUDE_ENUM dude);
	// BW1W120 005c3a30 BW1M119 01018450
	void Update(float time_inc, float fade_speed);
};
static_assert(sizeof(HelpDudeControl) == 0x88, "HelpDudeControl size is incorrect");

#endif /* BW1_DECOMP_HELP_DUDE_CONTROL_INCLUDED_H */
