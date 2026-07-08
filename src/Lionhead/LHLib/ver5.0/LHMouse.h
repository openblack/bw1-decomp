#ifndef BW1_DECOMP_LH_MOUSE_INCLUDED_H
#define BW1_DECOMP_LH_MOUSE_INCLUDED_H

#include <assert.h>
#include <stdint.h>

#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>

#include "LHScreen.h"

enum LH_MOUSE_IMAGE_TYPE
{
	LH_MOUSE_IMAGE_TYPE_0x00 = 0x0,
	LH_MOUSE_IMAGE_TYPE_0x01 = 0x1,
	LH_MOUSE_IMAGE_TYPE_0x02 = 0x2,
	LH_MOUSE_IMAGE_TYPE_0x03 = 0x3,
	LH_MOUSE_IMAGE_TYPE_0x04 = 0x4,
	LH_MOUSE_IMAGE_TYPE_0x05 = 0x5,
	LH_MOUSE_IMAGE_TYPE_0x06 = 0x6,
	LH_MOUSE_IMAGE_TYPE_0x07 = 0x7,
	LH_MOUSE_IMAGE_TYPE_0x08 = 0x8,
	LH_MOUSE_IMAGE_TYPE_0x09 = 0x9,
	LH_MOUSE_IMAGE_TYPE_0x0a = 0xa,
	LH_MOUSE_IMAGE_TYPE_0x0b = 0xb,
	LH_MOUSE_IMAGE_TYPE_0x0c = 0xc,
	LH_MOUSE_IMAGE_TYPE_0x0d = 0xd,
	LH_MOUSE_IMAGE_TYPE_0x0e = 0xe,
	LH_MOUSE_IMAGE_TYPE_0x0f = 0xf,
	LH_MOUSE_IMAGE_TYPE_0x10 = 0x10,
	LH_MOUSE_IMAGE_TYPE_0x11 = 0x11,
	LH_MOUSE_IMAGE_TYPE_0x12 = 0x12,
	LH_MOUSE_IMAGE_TYPE_0x13 = 0x13,
	LH_MOUSE_IMAGE_TYPE_0x14 = 0x14,
	LH_MOUSE_IMAGE_TYPE_0x15 = 0x15,
	LH_MOUSE_IMAGE_TYPE_0x16 = 0x16,
	LH_MOUSE_IMAGE_TYPE_0x17 = 0x17,
	LH_MOUSE_IMAGE_TYPE_0x18 = 0x18,
	LH_MOUSE_IMAGE_TYPE_0x19 = 0x19,
	LH_MOUSE_IMAGE_TYPE_0x1a = 0x1a,
	LH_MOUSE_IMAGE_TYPE_0x1b = 0x1b,
	LH_MOUSE_IMAGE_TYPE_0x1c = 0x1c,
	LH_MOUSE_IMAGE_TYPE_0x1d = 0x1d,
	LH_MOUSE_IMAGE_TYPE_0x1e = 0x1e,
	LH_MOUSE_IMAGE_TYPE_0x1f = 0x1f,
	LH_MOUSE_IMAGE_TYPE_0x20 = 0x20,
	LH_MOUSE_IMAGE_TYPE_0x21 = 0x21,
	LH_MOUSE_IMAGE_TYPE_0x22 = 0x22,
	LH_MOUSE_IMAGE_TYPE_0x23 = 0x23,
	LH_MOUSE_IMAGE_TYPE_0x24 = 0x24,
	LH_MOUSE_IMAGE_TYPE_0x25 = 0x25,
	LH_MOUSE_IMAGE_TYPE_0x26 = 0x26,
	LH_MOUSE_IMAGE_TYPE_0x27 = 0x27,
	LH_MOUSE_IMAGE_TYPE_0x28 = 0x28,
	LH_MOUSE_IMAGE_TYPE_0x29 = 0x29,
	LH_MOUSE_IMAGE_TYPE_0x2a = 0x2a,
	LH_MOUSE_IMAGE_TYPE_0x2b = 0x2b,
	LH_MOUSE_IMAGE_TYPE_0x2c = 0x2c,
	LH_MOUSE_IMAGE_TYPE_0x2d = 0x2d,
	LH_MOUSE_IMAGE_TYPE_0x2e = 0x2e,
	LH_MOUSE_IMAGE_TYPE_0x2f = 0x2f,
	LH_MOUSE_IMAGE_TYPE_0x30 = 0x30,
	LH_MOUSE_IMAGE_TYPE_0x31 = 0x31,
	LH_MOUSE_IMAGE_TYPE_0x32 = 0x32,
	LH_MOUSE_IMAGE_TYPE_0x33 = 0x33,
	LH_MOUSE_IMAGE_TYPE_0x34 = 0x34,
	LH_MOUSE_IMAGE_TYPE_0x35 = 0x35,
	LH_MOUSE_IMAGE_TYPE_0x36 = 0x36,
	LH_MOUSE_IMAGE_TYPE_0x37 = 0x37,
	LH_MOUSE_IMAGE_TYPE_0x38 = 0x38,
	LH_MOUSE_IMAGE_TYPE_0x39 = 0x39,
	LH_MOUSE_IMAGE_TYPE_0x3a = 0x3a,
	LH_MOUSE_IMAGE_TYPE_0x3b = 0x3b,
	LH_MOUSE_IMAGE_TYPE_0x3c = 0x3c,
	LH_MOUSE_IMAGE_TYPE_0x3d = 0x3d,
	LH_MOUSE_IMAGE_TYPE_0x3e = 0x3e,
	LH_MOUSE_IMAGE_TYPE_0x3f = 0x3f,
	LH_MOUSE_IMAGE_TYPE_0x40 = 0x40,
	_LH_MOUSE_IMAGE_TYPE_COUNT = 0x41
};

enum LH_MOUSE_EVENT_TYPE
{
	LH_MOUSE_EVENT_TYPE_0x1 = 0x1,
	LH_MOUSE_EVENT_TYPE_0x2 = 0x2,
	LH_MOUSE_EVENT_TYPE_0x4 = 0x4,
	LH_MOUSE_EVENT_TYPE_0x8 = 0x8,
	LH_MOUSE_EVENT_TYPE_0x80 = 0x80,
	LH_MOUSE_EVENT_TYPE_0x100 = 0x100,
	LH_MOUSE_EVENT_TYPE_0x200 = 0x200,
};

// Playback mode passed to LHMouse::Animate.
enum LH_ANIMATE_TYPE
{
	LH_ANIMATE_TYPE_0x0 = 0x0, /* stop, restore the previous image */
	LH_ANIMATE_TYPE_0x1 = 0x1, /* loop forward */
	LH_ANIMATE_TYPE_0x2 = 0x2, /* ping-pong */
	LH_ANIMATE_TYPE_0x3 = 0x3, /* one shot */
};

// Source-image kind passed to LHMouse::SetAnimateImages.
enum LH_ANIMATE_IMAGE_TYPE
{
	LH_ANIMATE_IMAGE_TYPE_0x0 = 0x0, /* LHSpriteFrameBank (multi-part frames) */
	LH_ANIMATE_IMAGE_TYPE_0x1 = 0x1, /* LHSpriteList (single-part frames) */
};

struct LHSprite;
struct LHSurface;

struct LHMouse
{
	int ScreenBuffer;
	int(__cdecl* DrawCallback)(int, int, int, int);
	int          Locked;
	int          DoubleBuffered;
	int          field_10;
	int          ImageMode;
	int          field_18;
	uint32_t     SpriteFlags;
	uint16_t     SpriteColor16;
	uint16_t     field_22;
	unsigned int EventMask;
	uint8_t      BufferToggle;
	uint8_t      _pad0x29[3];
	LHSurface*   SaveSurface[2];
	LHSurface*   CurrentSurface;
	LHSprite*    SingleSprite;
	LHSurface*   SingleSurface;
	LHSurface*   Mode8Surface;
	int          IsWheelPresent;
	int          NumButtons;
	int          IsMultiFrame;
	void*        FrameBank;
	int*         FramePartOffsets;
	LHSurface**  FrameSurfaces;
	uint16_t     FrameCount16;
	uint16_t     field_5e;
	int          CurrentFrame;
	int          FrameCount;
	uint16_t     AnimParam;
	uint16_t     field_6a;
	int          AnimType;
	int          AnimReverse;
	LHRegion     SavedRegion;
	LHRegion     PrevSavedRegion;
	LHRegion     DrawRegion;
	LHRegion     PrevDrawRegion;
	LHCoord      Hotspot;
	LHCoord      DefaultPos;
	LHCoord      PinPos;
	int          Pinned;
	LHCoord      CurrentPos;
	LHCoord      field_d8;
	LHCoord      AccumDelta;
	LHCoord      EffectivePos;
	LHCoord      Margin;
	int          UsePadding;
	int          field_fc;
	uint8_t      Buttons;
	uint8_t      _pad0x101[3];
	LHCoord      ButtonPos[9];
	uint8_t      ButtonPressed;
	uint8_t      _pad0x14d[3];
	int          CallbackArg1;
	uint8_t      gap_154[16];
	int          CallbackArg2;

	// Constructors

	// BW1W120 007e4f20 BW1M100 10145820 LHMouse::LHMouse(void)
	LHMouse();

	// Non-virtual methods

	// BW1W120 007e4810 LHMouse::UpdateDeltaPos(void)
	int UpdateDeltaPos();
	// BW1W120 007e48c0 LHMouse::InitDirectInput(void)
	int InitDirectInput();
	// BW1W120 007e49a0 BW1M100 10006f30 LHMouse::UpdateCurrentPos(LHCoord)
	int UpdateCurrentPos(LHCoord coord);
	// BW1W120 007e4b40 LHMouse::SetMouseMargin(LHCoord)
	void SetMouseMargin(LHCoord margin);
	// BW1W120 007e4b80 LHMouse::SetButtons(unsigned char)
	void SetButtons(uint8_t button);
	// BW1W120 007e4e40 BW1M100 10145990 LHMouse::SetPosition(LHCoord *)
	int SetPosition(LHCoord* position);
	// BW1W120 007e4ed0 LHMouse::SetPositionRel(LHCoord *)
	int SetPositionRel(LHCoord* delta);
	// BW1W120 007e4f90 LHMouse::SetWorkingArea(unsigned short, unsigned short)
	int SetWorkingArea(uint16_t width, uint16_t height);
	// BW1W120 007e5330 LHMouse::SetSpriteFlags(unsigned long)
	int SetSpriteFlags(unsigned long flags);
	// BW1W120 007e53b0 LHMouse::SetCursor(void *, LH_MOUSE_IMAGE_TYPE, int)
	int SetCursor(void* image, LH_MOUSE_IMAGE_TYPE imageType, int reallocSurface);
	// BW1W120 007e5550 LHMouse::PinImage(short, short)
	void PinImage(int16_t x, int16_t y);
	// BW1W120 007e55c0 LHMouse::UpdateDrawRegions(LHSurface *)
	void UpdateDrawRegions(LHSurface* surface);
	// BW1W120 007e57c0 BW1M100 1003fb90 LHMouse::Draw(LH_SCREEN_BUFFER, LH_MOUSE_EVENT_TYPE)
	void Draw(LH_SCREEN_BUFFER buffer, LH_MOUSE_EVENT_TYPE eventType);
	// BW1W120 007e5b20 LHMouse::SetCurrentCursorAnimFrame(unsigned long)
	void SetCurrentCursorAnimFrame(unsigned long frame);
	// BW1W120 007e5b30 LHMouse::SetAnimFrame(void)
	int SetAnimFrame();
	// BW1W120 007e5bf0 LHMouse::SetAnimateImages(LH_ANIMATE_IMAGE_TYPE, void *, unsigned long)
	void SetAnimateImages(LH_ANIMATE_IMAGE_TYPE imageType, void* images, unsigned long index);
	// BW1W120 007e5ea0 LHMouse::Animate(LH_ANIMATE_TYPE, unsigned short, unsigned long)
	void Animate(LH_ANIMATE_TYPE animType, uint16_t param, unsigned long frameCount);
	// BW1W120 007e6070 LHMouse::GetScreenUnderCursorNoSetup(LHSurface *, LHSurface *)
	int GetScreenUnderCursorNoSetup(LHSurface* surface, LHSurface* prevSurface);

	// Static methods

	// BW1W120 007e4960 LHMouse::ShutdownDirectInput(void)
	static int ShutdownDirectInput();
};
static_assert(sizeof(LHMouse) == 360, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_MOUSE_INCLUDED_H */
