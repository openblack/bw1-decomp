#ifndef BW1_DECOMP_UNIVERSE_ROOM_INCLUDED_H
#define BW1_DECOMP_UNIVERSE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <re_common.h>                            /* For bool32_t */
#include <chlasm/LHKeyBoard.h>                    /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */
#include "PictureRoom.h"      /* For class PictureRoomBase */

#define UNIVERSE_ROOM_HELP_TEXT_FADE_RATE   0.001f
#define UNIVERSE_ROOM_HELP_TEXT_ALPHA_SCALE 64.0f
#define UNIVERSE_ROOM_HELP_TEXT_MAX_ALPHA   128
#define UNIVERSE_ROOM_HELP_TEXT_SIZE        60
#define UNIVERSE_ROOM_HELP_TEXT_WIDTH       800
#define UNIVERSE_ROOM_HELP_TEXT_HEIGHT      600

#ifdef VERSION_BW1WCI
#define UNIVERSE_ROOM_HELP_TEXT HELP_TEXT_CREATURE_ISLES_FUTURE_ROOM_DIALOG_BOX
#else
#define UNIVERSE_ROOM_HELP_TEXT HELP_TEXT_DIALOG_ADDITION_129
#endif

// Forward Declares

struct LH3DTexture;

class UniverseRoom : public PictureRoomBase
{
public:
	// BW1W120 00c2a474
	static bool32_t (*AvailableCallback)();

	bool32_t LeaveRoom;
	bool32_t ShowHelpText;
	float    HelpTextFade;

	// Static methods

	// BW1W120 0079cff0 BW1M119 null
	static bool32_t AlwaysAvailable();

	// Override methods

	// BW1W120 0079d0a0 BW1M119 0156c000
	virtual bool32_t IsAvailable();
	// BW1W120 0079ced0 BW1M119 0156c2c0
	virtual void DrawAdditional(bool reflection);
	// BW1W120 0079cfa0 BW1M119 0156c270
	virtual void Draw();
	// BW1W120 0079d000 BW1M119 0156c080
	virtual void Update();
	// BW1W120 0079cfb0 BW1M119 0156c1f0
	virtual void UpdateMouse(LHCoord coord, INTERFACE_MESSAGE_TYPES message);
	// BW1W120 0079cfd0 BW1M119 0156c190
	virtual void UpdateKeyboard(LH_KEY key, uint16_t modifiers);
	// BW1W120 0079ce90 BW1M119 0156bf30
	virtual void InitEngine();
#ifdef VERSION_BW1WCI
	// BW1WCI 007b5070 BW1MCI119 0159dea0
	virtual void DrawPostDoor();
#endif
	// BW1W120 0079ceb0 BW1M119 0156bfb0
	virtual void MakeScrollText(LH3DTexture* texture);

	// Constructors

	// BW1W120 0079cd30 BW1M119 0156c420
	UniverseRoom();
	// BW1W120 0079cec0 BW1M119 null
	~UniverseRoom();
};

static_assert(sizeof(UniverseRoom) == 0x16c, "Data type is of wrong size");

#endif /* BW1_DECOMP_UNIVERSE_ROOM_INCLUDED_H */
