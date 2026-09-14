#ifndef BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h>

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupList;
class SetupStaticText;
class SetupBigButton;

class SkirmishGameBox : public DialogBoxBase
{
public:
	// Descriptive member names recovered from Init; keep the unrecovered state opaque.
	SetupList*       MapList; /* 0x10 */
	uint8_t          field_0x14[0x10];
	SetupStaticText* TitleText; /* 0x24 */
	SetupBigButton*  BackButton;
	SetupBigButton*  StartButton;
	char16_t         MapPath[0x104]; /* 0x30; populated by the skirmish callback. */
	bool             StartRequested; /* 0x238 */

	// Override methods

	// BW1W120 00544820 BW1M100 105baab0 SkirmishGameBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00544b90 BW1M100 105ba740 SkirmishGameBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 00544bd0 BW1M100 105ba3e0 SkirmishGameBox::InitControls(void)
	virtual void InitControls();
};

static_assert(sizeof(SkirmishGameBox) == 0x23c, "SkirmishGameBox size is incorrect");
static_assert(offsetof(SkirmishGameBox, MapPath) == 0x30, "SkirmishGameBox map path offset is incorrect");
static_assert(offsetof(SkirmishGameBox, StartRequested) == 0x238, "SkirmishGameBox start flag offset is incorrect");

#endif /* BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H */
