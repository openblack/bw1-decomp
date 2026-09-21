#ifndef BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SkirmishGameBox : public DialogBoxBase
{
public:
	uint8_t  field_0x10[0x20];
	char16_t MapPath[0x104]; /* 0x30; populated by the skirmish callback. */
	bool     StartRequested; /* 0x238 */

	// Override methods

	// BW1W120 00544820 BW1M119 015c1910
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00544b90 BW1M119 015c15a0
	virtual void Destroy();
	// BW1W120 00544bd0 BW1M119 015c1240
	virtual void InitControls();
};

#endif /* BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H */
