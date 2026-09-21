#ifndef BW1_DECOMP_GAME_OPTIONS_ROOM_INCLUDED_H
#define BW1_DECOMP_GAME_OPTIONS_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <re_common.h>                            /* For bool32_t */
#include <chlasm/LHKeyBoard.h>                    /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */
#include "PictureRoom.h"      /* For struct PictureRoomBase */

// Forward Declares

class TempleRoom;

class GameOptionsRoom : public PictureRoomBase
{
public:
	// Override methods

	// BW1W120 0078d8f0 BW1M119 01301b00
	virtual bool32_t IsAvailable();
	// BW1W120 0079a230 BW1M119 inlined
	virtual void DrawAdditional(bool param_1);
	// BW1W120 00799f80 BW1M119 inlined
	virtual void PreDraw();
	// BW1W120 0078d810 BW1M119 01301da0
	virtual void Draw();
	// BW1W120 00799ed0 BW1M119 inlined
	virtual void DrawHand();
	// BW1W120 0078d860 BW1M119 01301bc0
	virtual void Update();
	// BW1W120 0078d820 BW1M119 01301d20
	virtual void UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2);
	// BW1W120 0078d840 BW1M119 01301cc0
	virtual void UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

#endif /* BW1_DECOMP_GAME_OPTIONS_ROOM_INCLUDED_H */
