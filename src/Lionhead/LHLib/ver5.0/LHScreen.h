#ifndef BW1_DECOMP_LH_SCREEN_INCLUDED_H
#define BW1_DECOMP_LH_SCREEN_INCLUDED_H

#include <assert.h> /* For static_assert */

enum LH_SCREEN_BUFFER
{
	LH_SCREEN_BUFFER_0x0 = 0x0,
	LH_SCREEN_BUFFER_0x1 = 0x1,
	_LH_SCREEN_BUFFER_COUNT = 0x2
};
#include <ddraw.h>  /* For IDirectDraw7, IDirectDrawClipper, IDirectDrawSurface7 */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h>  /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */
#include <re_common.h>                             /* For HWND */

// Forward Declares

struct LHDDEnum;
struct OpaqueWindowPtr;
struct LHColor;

struct LHScreen
{
	// Heap array: 4-byte count header (=5) followed by five 248-byte display-device
	// records. Allocated in the ctor; this pointer is past the count header.
	void*                DeviceInfoArray; /* 0x0 */
	int                  opened;          /* 0x4  Open() sets 1, Close() clears */
	uint16_t             width;           /* 0x8  current mode width */
	uint16_t             height;          /* 0xa  current mode height */
	int                  frontPitchBytes; /* 0xc  front surface lPitch (bytes) */
	int                  FrontPixelPitch; /* 0x10 8*lPitch/depth, swapped on flip */
	uint8_t              depth;           /* 0x14 bits per pixel */
	uint8_t              _pad0x15[0x3];
	int                  isLocked;        /* 0x18 Lock() sets 1, Unlock() clears */
	uint32_t             FrontAddress;    /* 0x1c front lpSurface, swapped on flip */
	uint32_t             DrawAddress;     /* 0x20 FrontAddress + windowed client offset */
	uint32_t             backAddress;     /* 0x24 back lpSurface, swapped on flip */
	HWND                 MsWindowHandle;  /* 0x28 windowed-mode HWND */
	IDirectDraw7*        PDirectDraw;     /* 0x2c */
	IDirectDrawSurface7* PPrimarySurface; /* 0x30 */
	IDirectDrawSurface7* PBackSurface;    /* 0x34 */
	LHRegion             GraphicsWindow;  /* 0x38 3D/graphics viewport rect */
	LHRegion             TextWindow;      /* 0x48 text/UI viewport rect */
	int                  MsClientOffsetX; /* 0x58 screen-X of windowed client area */
	int                  MsClientOffsetY; /* 0x5c screen-Y of windowed client area */
	IDirectDrawClipper*  PClipper;        /* 0x60 windowed-mode clipper */
	int                  windowed;        /* 0x64 1 = run in window, 0 = fullscreen */
	uint32_t             RedMask;         /* 0x68 pixel-format R bit mask */
	uint32_t             GreenMask;       /* 0x6c pixel-format G bit mask */
	uint32_t             BlueMask;        /* 0x70 pixel-format B bit mask */
	uint32_t             ColorLSBMask;    /* 0x74 clears each channel's LSB */
	uint8_t              maxRed;          /* 0x78 2^popcount(RedMask)-1 */
	uint8_t              MaxGreen;        /* 0x79 */
	uint8_t              MaxBlue;         /* 0x7a */
	uint8_t              redScale;        /* 0x7b 8 - popcount(RedMask) */
	uint8_t              GreenScale;      /* 0x7c */
	uint8_t              BlueScale;       /* 0x7d */
	uint8_t              RedShift;        /* 0x7e up-shift to channel bit position */
	uint8_t              GreenShift;      /* 0x7f */
	uint8_t              BlueShift;       /* 0x80 */
	uint8_t              _pad0x81[0x3];
	uint32_t             flipFlags;      /* 0x84 Flip dwFlags (VSync setting) */
	int                  backPitchBytes; /* 0x88 back surface lPitch (bytes) */
	int                  backPixelPitch; /* 0x8c 8*lPitch/depth = back pixels/row */
	int                  flipCount;      /* 0x90 incremented every Flip() */
	uint16_t             FrameAccum;     /* 0x94 frames counted since last FPS sample */
	uint16_t             _pad0x96;
	uint8_t              fpsTimer[0x100];      /* 0x98 inline LHTimer blob (reserved) */
	uint32_t             frameTimerTick;       /* 0x198 GetTickCount() reference */
	int                  FrameTimerAccum;      /* 0x19c accumulated scaled ticks */
	float                frameTimerSpeed;      /* 0x1a0 time-scale factor (ctor = 1.0) */
	float                FrameTimerSavedSpeed; /* 0x1a4 saved speed */
	float                MeasuredFPS;          /* 0x1a8 FPS over a ~2000ms window */
	int                  ShowTimingStats;      /* 0x1ac if set, Flip draws FPS overlay */
	float                TargetPercent;        /* 0x1b0 reference % for the Flip FPS format */

	// Constructors

	// BW1W120 007dce20 BW1M119 0114f160 (LHCombined Release)
	LHScreen();

	// Non-virtual methods

	// BW1W120 007dd850 BW1M119 0114e510 (LHCombined Release)
	// LHScreen::`vbase destructor'(void)
	// BW1W120 007dd8f0
	~LHScreen();
	// BW1W120 007dd020 BW1M119 011c9768 (LHCombined Release)
	void ResetDisplay();
	// BW1W120 007dd0d0 BW1M119 0114f080 (LHCombined Release)
	void SetFullscreenMode(int mode);
	// BW1W120 007dd130 BW1M119 0114f000 (LHCombined Release)
	int DDrawInitialise();
	// BW1W120 007dd360 BW1M119 0114ea10 (LHCombined Release)
	int DDrawInitialiseDevices();
	// BW1W120 007dd930 BW1M119 0114e4a0 (LHCombined Release)
	int SetMSTitle(char* title);
	// BW1W120 007dd960 BW1M119 0114e380 (LHCombined Release)
	int DirectDrawReleaseSurface();
	// BW1W120 007dd9c0 BW1M119 0114e310 (LHCombined Release)
	int Lock(unsigned long param_1);
	// BW1W120 007dda90 BW1M119 0114e250 (LHCombined Release)
	int Unlock();
	// BW1W120 007ddad0 BW1M119 0114e1c0 (LHCombined Release)
	int Close();
	// BW1W120 007ddb10 BW1M119 0114e080 (LHCombined Release)
	void SetRGBInfo(_DDPIXELFORMAT* pixel_format);
	// BW1W120 007ddc40 BW1M119 0114de50 (LHCombined Release)
	int Open(uint16_t width, uint16_t height, uint8_t depth);
	// BW1W120 007ddcb0 BW1M119 0114d850 (LHCombined Release)
	int ChangeMode(uint16_t width, uint16_t height, uint8_t depth);
	// BW1W120 007de090 BW1M119 0114d6c0 (LHCombined Release)
	int Flip(int param_1);
	// BW1W120 007de200 BW1M119 0114d500 (LHCombined Release)
	int Clear(LHColor* colour, LHRegion* region);
	// BW1W120 007de2f0 BW1M119 0114d470 (LHCombined Release)
	void SetMSWindowHandle(OpaqueWindowPtr* window);
	// BW1W120 007de320 BW1M119 01009bf0 (LHCombined Release)
	uint16_t SetTimingStats();
	// BW1W120 007de580 BW1M119 0114d2f0 (LHCombined Release)
	int LHFlip(int param_1);
	// BW1W120 007de630 BW1M119 0114d1d0 (LHCombined Release)
	int BlitToMSWindow(LHRegion* region, LHCoord* coord, int param_3);
	// BW1W120 007de6c0 BW1M119 0114d180 (LHCombined Release)
	int GetMSDesktopParams(uint16_t* width, uint16_t* height, uint8_t* depth);
	// BW1W120 007de6d0 BW1M119 0114d100 (LHCombined Release)
	void AltTabDeactivate();
	// BW1W120 007de6f0 BW1M119 0114d050 (LHCombined Release)
	void AltTabReactivate();
	// BW1W120 007de730 BW1M119 0114cef0 (LHCombined Release)
	int RunInMSWindow(int param_1);
	// BW1W120 007de820 BW1M119 0114ce00 (LHCombined Release)
	int SetMSOffset();
	// BW1W120 007de930 BW1M119 0114cc60 (LHCombined Release)
	int SaveBitmap();
	// BW1W120 007dec80 BW1M119 0114c650 (LHCombined Release)
	uint32_t GetAvailableVidMem();
	// BW1W120 007decc0 BW1M119 0114c5d0 (LHCombined Release)
	int WaitForVerticalBlank();
	// BW1W120 007ded50 BW1M119 0103d180 (LHCombined Release)
	int IsAppMinimized();
	// BW1W120 007e8a20 BW1M119 01145980 (LHCombined Release)
	uint8_t Depth() { return depth; }
	// BW1W120 007e9df0
	uint8_t MaxDepth() { return 32; }

	// Static members

	// Guards all screen/mouse drawing (initialized by LHMouse::LHMouse)
	// BW1W120 00e90650
	static CRITICAL_SECTION CriticalSection;
	// Set by AltTabDeactivate, cleared by AltTabReactivate; the message
	// pump (ProcessWindowMessages) spins while it is set. TODO: fabricated name.
	// BW1W120 00e8c5e0
	static int AltTabbedAway;
};
static_assert(sizeof(LHScreen) == 0x1b4, "Data type is of wrong size");

// Resets x87 state and selects single precision; original name unrecovered.
// BW1W120 007dee00
void fn_007DEE00();

#endif /* BW1_DECOMP_LH_SCREEN_INCLUDED_H */
