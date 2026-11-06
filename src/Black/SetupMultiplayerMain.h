#ifndef BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H
#define BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "SetupGameData.h" /* For class setupgamedata */

class SetupMultiplayerMain : public DialogBoxBase
{
public:
	bool           field_0x10;
	uint8_t        field_0x11[0x1f];
	setupgamedata* CurrentData; /* 0x30 */
	setupgamedata  Data;        /* 0x34 */
	uint8_t        field_0x460[0x4];
	// Override methods

	// BW1W120 00549b60 BW1M119 015d4a80
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00549f80 BW1M119 015d4a20
	virtual void Destroy();
	// BW1W120 0054a180 BW1M119 015d46a0
	virtual void InitSubDialogs();
	// BW1W120 00549f90 BW1M119 015d4920
	virtual void InitControls();

	// BW1W120 0054a020 BW1M119 null
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 inlined
	SetupMultiplayerMain() { field_0x10 = false; }

	// BW1W120 inlined
	~SetupMultiplayerMain() {}
};

#endif /* BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H */
