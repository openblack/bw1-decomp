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

	// BW1W120 007dce20 BW1M100 1014e500 LHScreen::LHScreen(void)
	LHScreen();

	// Non-virtual methods

	// BW1W120 007dd850 LHScreen::~LHScreen(void)
	// BW1W120 007dd8f0 BW1M100 1014d890 LHScreen::`vbase destructor'(void)
	~LHScreen();
	// BW1W120 007dd020 LHScreen::ResetDisplay(void)
	void ResetDisplay();
	// BW1W120 007dd0d0 BW1M100 1014e420 LHScreen::SetFullscreenMode(int)
	void SetFullscreenMode(int mode);
	// BW1W120 007dd130 LHScreen::DDrawInitialise(void)
	int DDrawInitialise();
	// BW1W120 007dd360 LHScreen::DDrawInitialiseDevices(void)
	int DDrawInitialiseDevices();
	// BW1W120 007dd930 LHScreen::SetMSTitle(char *)
	int SetMSTitle(char* title);
	// BW1W120 007dd960 LHScreen::DirectDrawReleaseSurface(void)
	int DirectDrawReleaseSurface();
	// BW1W120 007dd9c0 LHScreen::Lock(unsigned long)
	int Lock(unsigned long param_1);
	// BW1W120 007dda90 LHScreen::Unlock(void)
	int Unlock();
	// BW1W120 007ddad0 LHScreen::Close(void)
	int Close();
	// BW1W120 007ddb10 LHScreen::SetRGBInfo(_DDPIXELFORMAT *)
	void SetRGBInfo(_DDPIXELFORMAT* pixel_format);
	// BW1W120 007ddc40 LHScreen::Open(unsigned short, unsigned short, unsigned char)
	int Open(uint16_t width, uint16_t height, uint8_t depth);
	// BW1W120 007ddcb0 LHScreen::ChangeMode(unsigned short, unsigned short, unsigned char)
	int ChangeMode(uint16_t width, uint16_t height, uint8_t depth);
	// BW1W120 007de090 LHScreen::Flip(int)
	int Flip(int param_1);
	// BW1W120 007de200 LHScreen::Clear(LHColor *, LHRegion *)
	int Clear(LHColor* colour, LHRegion* region);
	// BW1W120 007de2f0 LHScreen::SetMSWindowHandle(OpaqueWindowPtr *)
	void SetMSWindowHandle(OpaqueWindowPtr* window);
	// BW1W120 007de320 LHScreen::SetTimingStats(void)
	uint16_t SetTimingStats();
	// BW1W120 007de580 LHScreen::LHFlip(int)
	int LHFlip(int param_1);
	// BW1W120 007de630 LHScreen::BlitToMSWindow(LHRegion *, LHCoord *, int)
	int BlitToMSWindow(LHRegion* region, LHCoord* coord, int param_3);
	// BW1W120 007de6c0 LHScreen::GetMSDesktopParams(unsigned short *, unsigned short *, unsigned char *)
	int GetMSDesktopParams(uint16_t* width, uint16_t* height, uint8_t* depth);
	// BW1W120 007de6d0 LHScreen::AltTabDeactivate(void)
	void AltTabDeactivate();
	// BW1W120 007de6f0 LHScreen::AltTabReactivate(void)
	void AltTabReactivate();
	// BW1W120 007de730 LHScreen::RunInMSWindow(int)
	int RunInMSWindow(int param_1);
	// BW1W120 007de820 LHScreen::SetMSOffset(void)
	int SetMSOffset();
	// BW1W120 007de930 LHScreen::SaveBitmap(void)
	int SaveBitmap();
	// BW1W120 007dec80 LHScreen::GetAvailableVidMem(void)
	uint32_t GetAvailableVidMem();
	// BW1W120 007decc0 LHScreen::WaitForVerticalBlank(void)
	int WaitForVerticalBlank();
	// BW1W120 007ded50 LHScreen::IsAppMinimized(void)
	int IsAppMinimized();
	// BW1W120 007e8a20 LHScreen::Depth(void)
	uint8_t Depth() { return depth; }
	// BW1W120 007e9df0 LHScreen::MaxDepth(void)
	uint8_t MaxDepth() { return 32; }

	// Static members

	// BW1W120 00e90650 guards all screen/mouse drawing (initialized by LHMouse::LHMouse)
	static CRITICAL_SECTION CriticalSection;
	// BW1W120 00e8c5e0 set by AltTabDeactivate, cleared by AltTabReactivate; the message
	// pump (ProcessWindowMessages) spins while it is set. TODO: fabricated name.
	static int AltTabbedAway;
};
static_assert(sizeof(LHScreen) == 0x1b4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_SCREEN_INCLUDED_H */
