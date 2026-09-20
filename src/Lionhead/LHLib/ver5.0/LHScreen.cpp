#include "Lionhead/LH3DLib/development/LH3DRender.h"
#include <Lionhead/LHLib/ver5.0/LHScreen.h>

#include <stddef.h> /* For size_t */
#include <string.h> /* For memcmp, memset, strcpy, strlen, strstr */
#include <ctype.h>  /* For tolower */
#include <stdio.h>  /* For sprintf */
#include <windows.h>
#include <ddraw.h>

#include <Lionhead/LH3DLib/development/LHColor.h> /* For struct LHColor */
#include <Lionhead/LHLib/ver5.0/LHTimer.h>        /* For struct LHTimer */
#include <Lionhead/LHLib/ver5.0/LHMouse.h>        /* For LHMouse::Draw */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>       /* For LHSys::TheSystem */
#include <Lionhead/LHLib/ver5.0/LHWin.h>          /* For operator new(size_t, const char*, uint32_t) */

// -----------------------------------------------------------------------------
// External symbols this translation unit depends on that have not been
// decompiled yet.
// -----------------------------------------------------------------------------

// BW1W120 007aedea RegistryRetrieveULong(char const*, char const*, int*)
__declspec(dllimport) int RegistryRetrieveULong(const char* key, const char* value, int* out);

// BW1W120 0081bbd0 Report3D(char const*, ...)
void Report3D(const char* fmt, ...);

// LHGetBits(mask, &scale, &shift): scale = 8 - popcount(mask),
// shift = bitpos - popcount, returns max = 2^popcount - 1.
// BW1W120 007ddba0 ?LHGetBits@@YAHKPAE0@Z
int LHGetBits(unsigned long mask, unsigned char* scale, unsigned char* shift);

// Peer LH subsystems (not yet decompiled).
int  LH3DRenderIsInit();
void LH3DVRAMTexReleaseAll();
void LH3DVRAMTexAllocAllVRAM();
void LHMouseInitDirectInput();
void LHSurfaceRestoreAll(int restore);
void LHSPrintfSetString(void* self, const char* fmt, ...);
void LHPixel16Set(uint16_t value);

int TurnOffMenu();

// Fixed-address globals (MEMORY[...] in the dump).
__declspec(dllimport) int LHAssertIgnoreAllAsserts; // assert-suppression flag
extern int                dword_C3132C;             // 0xC3132C one-time DDraw-init guard

// Device enumeration state.
extern unsigned int unk_E8C5C8; // number of enumerated devices
extern void*        unk_E8C5D4; // registry-selected device GUID
extern int          unk_EDD450; // force-fullscreen device flag
extern int          unk_EA9E9C; // Voodoo detected
extern int          unk_EDD44C; // Banshee detected
extern int          unk_ECA5F0; // PowerVR-KYRO detected

// Lock/Unlock bookkeeping and the mouse/render back-buffer publish target.
extern int unk_E8C5D8;                       // Lock() double-lock marker
extern int unk_E8C5DC;                       // Unlock() not-locked marker
void       sub_FC1285(uint32_t backAddress); // notify mouse/render of new back address

// Clear() statics.
extern uint8_t unk_E8C1AB; // "atexit registered" bit
extern LHColor unk_E8C1A8; // default clear colour
extern DDBLTFX unk_E8C130; // clear DDBLTFX (dwFillColor at +0x50 == unk_E8C180)
extern RECT    unk_E8C198; // clear rect
void           nullsub_93();
void           sub_87FC80(); // renderer clear

// ChangeMode clip-window globals + 256-colour marker.
extern int unk_E8C5B8;               // clip left
extern int unk_E8C5BC;               // clip top
extern int unk_E8C5C0;               // clip right  (width - 1)
extern int unk_E8C5C4;               // clip bottom (height - 1)
void       sub_7DECE0();             // restore/reset window state
void       sub_7DC9A0(int a, int b); // windowed window fit-up
void       sub_7DED10();             // fullscreen cooperative level setup
void       sub_7DB8F0();             // windowed extra setup

// Flip() overlay + present pump.
extern uint8_t unk_E8C5B1;      // Flip atexit-registered bit
extern char    byte_E8C1B0[64]; // FPS overlay text buffer (LHSPrintf)
void           nullsub_92();
void           sub_7E45F0(int x, int y, int text, int colour, int flags); // draw text
int            sub_7DB910();                                              // window-message pending?
void           sub_7DB940();                                              // pump window messages

// RunInMSWindow().
extern char unk_E8C5E4; // re-entrancy guard (accessed as a byte)
typedef void (*ScreenModeCallback)(int);
extern ScreenModeCallback unk_E8C5CC;   // windowed/fullscreen change callback
void                      sub_7E69B0(); // pre-mode-switch teardown

// AltTab().
extern ScreenModeCallback   unk_E8C5D0; // alt-tab callback
extern IDirectDrawSurface7* unk_ECA63C; // extra surface restored on reactivate
// BW1W120 00e8c5e0 defined here: it sits in this TU's screen-state .data cluster.
int LHScreen::AltTabbedAway;

// SaveBitmap().
void sub_8A5440(char* scopeGuard);
int  sub_8A5590(const char* fileName, uint32_t backAddress);
void nullsub_203(char* scopeGuard);

// BW1W120 007dce20 BW1M100 1014e500 LHScreen::LHScreen(void)
LHScreen::LHScreen()
{
	frameTimerSpeed = 1.0f;
	FrameTimerSavedSpeed = 0.0f;
	DWORD tick = GetTickCount();
	float speed = frameTimerSpeed;
	frameTimerTick = tick;
	FrameTimerAccum = 0;
	if (speed != 0.0f)
	{
		FrameTimerSavedSpeed = frameTimerSpeed;
		DWORD   delta = GetTickCount() - frameTimerTick;
		__int64 acc = (unsigned int)FrameTimerAccum;
		FrameTimerAccum = (int)((double)delta * frameTimerSpeed + (double)(int)acc);
		frameTimerTick = GetTickCount();
		frameTimerSpeed = 0.0f;
	}
	if (frameTimerSpeed != 0.0f)
	{
		FrameTimerSavedSpeed = frameTimerSpeed;
		DWORD   delta = GetTickCount() - frameTimerTick;
		__int64 acc = (unsigned int)FrameTimerAccum;
		FrameTimerAccum = (int)((double)delta * frameTimerSpeed + (double)(int)acc);
		frameTimerTick = GetTickCount();
		frameTimerSpeed = 0.0f;
	}

	opened = 0;
	PBackSurface = NULL;
	PPrimarySurface = NULL;

	// Allocate DeviceInfoArray: 4-byte count header (=5) followed by five 248-byte
	// display-device records. DeviceInfoArray points past the count header.
	int*  devices;
	void* mem = operator new(0x4dc, __FILE__, __LINE__);
	if (mem)
	{
		*(int*)mem = 5;
		devices = (int*)mem + 1;
	}
	else
	{
		devices = NULL;
	}
	DeviceInfoArray = devices;

	SetFullscreenMode(0);

	ShowTimingStats = 0;
	TargetPercent = 0.0f;
	isLocked = 0;

	// VSync: registry read miss => 1 (wait); VSync value != 0 => 1; == 0 => 8 (no-vsync).
	int vsync;
	if (!RegistryRetrieveULong("Software\\Lionhead Studios Ltd\\Black & White\\BWSetup", "VSync", &vsync))
		flipFlags = vsync != 0 ? 1 : 8;
	else
		flipFlags = 1;

	DirectDrawCreateEx(NULL, (LPVOID*)&PDirectDraw, IID_IDirectDraw7, NULL);
}

// BW1W120 007dd850 LHScreen::~LHScreen(void)
LHScreen::~LHScreen()
{
	// LH3DMem leak check on teardown.
	extern int unk_EF6550; // LH3DMem open flag
	extern int unk_EF6548; // live-allocation count
	extern int unk_EF654C; // live-allocation byte total
	if (!unk_EF6550)
	{
		Report3D("Not Open!\n");
	}
	else if (unk_EF6548 || unk_EF654C)
	{
		Report3D("LH3DMem: Bad release: %d allocations, %d mem!\n", unk_EF6548, unk_EF654C);
	}
	LH3DRender::Close();
	if (PClipper)
	{
		PClipper->Release();
		PClipper = NULL;
	}
	if (PDirectDraw)
	{
		PDirectDraw->RestoreDisplayMode();
		if (IsWindow(MsWindowHandle))
			sub_7DECE0();
	}
	DirectDrawReleaseSurface();
	if (PDirectDraw)
	{
		PDirectDraw->Release();
		PDirectDraw = NULL;
	}
}

// BW1W120 007dd020 LHScreen::ResetDisplay(void)
void LHScreen::ResetDisplay()
{
	DEVMODEA dm;
	dm.dmSize = 148;
	dm.dmDriverExtra = 0;
	if (EnumDisplaySettingsA(NULL, ENUM_CURRENT_SETTINGS, &dm))
	{
		int width = dm.dmPelsWidth;
		int height = dm.dmPelsHeight;
		dm.dmSize = 148;
		dm.dmDriverExtra = 0;
		dm.dmFields = DM_PELSWIDTH | DM_PELSHEIGHT;
		dm.dmPelsWidth = 800;
		dm.dmPelsHeight = 600;
		ChangeDisplaySettingsA(&dm, 0x40000000);
		dm.dmSize = 148;
		dm.dmDriverExtra = 0;
		dm.dmFields = DM_PELSWIDTH | DM_PELSHEIGHT;
		dm.dmPelsWidth = width;
		dm.dmPelsHeight = height;
		ChangeDisplaySettingsA(&dm, 0x40000000);
	}
}

// BW1W120 007dd0d0 BW1M100 1014e420 LHScreen::SetFullscreenMode(int)
void LHScreen::SetFullscreenMode(int mode)
{
	if (mode)
	{
		LHAssertIgnoreAllAsserts = 1;
		windowed = 0;
		SetWindowLongA(LHSys::GetScreen().MsWindowHandle, GWL_STYLE, WS_POPUP);
		SetWindowLongA(LHSys::GetScreen().MsWindowHandle, GWL_EXSTYLE, WS_EX_TOPMOST);
		TurnOffMenu();
	}
	else
	{
		windowed = 1;
	}
}

// BW1W120 007dd130 LHScreen::DDrawInitialise(void)
int LHScreen::DDrawInitialise()
{
	int result = DDrawInitialiseDevices();
	PDirectDraw->CreateClipper(0, &PClipper, NULL);
	return result;
}

// BW1W120 007dd160 CheckDescForVoodoo(char *)
int CheckDescForVoodoo(char* deviceIdentifier)
{
	char buf[1024];
	strcpy(buf, deviceIdentifier);
	for (unsigned int i = 0; i < strlen(buf); i++)
		buf[i] = tolower(buf[i]);
	if (strstr(buf, "3dfx") || strstr(buf, "voodoo"))
		return 1;
	return 0;
}

// BW1W120 007dd210 CheckDescForBanshee(char *)
int CheckDescForBanshee(char* deviceIdentifier)
{
	char buf[1024];
	strcpy(buf, deviceIdentifier);
	for (unsigned int i = 0; i < strlen(buf); i++)
		buf[i] = tolower(buf[i]);
	return strstr(buf, "banshee") != 0;
}

// BW1W120 007dd2a0 CheckDescForPowerVRKYRO(char *)
int CheckDescForPowerVRKYRO(char* deviceIdentifier)
{
	char buf[1024];
	strcpy(buf, deviceIdentifier);
	for (unsigned int i = 0; i < strlen(buf); i++)
		buf[i] = tolower(buf[i]);
	if (strstr(buf, "kyro") || strstr(buf, "PowerVR"))
		return 1;
	Report3D("NOT A KYRO\n");
	return 0;
}

// BW1W120 007dd5c0 DDEnumCallback(_GUID *, char *, char *, void *)
// NOTE: the Report3D debug-string contents are best-guess placeholders (real
// .rdata text not yet confirmed); the call structure matches the target.
int __stdcall DDEnumCallback(GUID* guid, char* driverDesc, char* driverName, void* ctx)
{
	Report3D("DDEnumCallback\n");
	Report3D("  Driver: %s\n", (uint32_t)driverDesc);
	Report3D("  Name: %s\n", (uint32_t)driverName);

	unsigned int count = unk_E8C5C8;
	char*        rec;
	if (guid)
	{
		rec = (char*)ctx + count * 248;
		GUID* g = (GUID*)(rec + 0xcc);
		*g = *guid;
		*(GUID**)(rec + 0xc8) = g;
		Report3D("  Specific device.\n");
		*(int*)(rec + 0xec) = 1;
	}
	else
	{
		Report3D("  Primary device.\n");
		rec = (char*)ctx + count * 248;
		*(GUID**)(rec + 0xc8) = NULL;
		memset(rec + 0xcc, 0, 16);
		*(int*)(rec + 0xec) = 0;
	}
	*(int*)(rec + 0xf4) = *(int*)(rec + 0xec);
	*(int*)(rec + 0xf0) = 0;
	memset(rec + 0xdc, 0, 16);
	strncpy(rec, driverDesc, 0xc7);

	IDirectDraw* dd;
	DirectDrawCreate(guid, &dd, NULL);
	IDirectDraw7* dd7 = NULL;
	if (dd->QueryInterface(IID_IDirectDraw7, (void**)&dd7) == 0 && dd7)
	{
		DDDEVICEIDENTIFIER2 ident;
		if (dd7->GetDeviceIdentifier(&ident, 0) == 0)
		{
			*(GUID*)(rec + 0xdc) = ident.guidDeviceIdentifier;
			strncpy(rec, ident.szDescription, 0xc7);
			Report3D("  DeviceIdentifier: %s\n", (uint32_t)ident.szDriver);
		}
		dd7->Release();
	}

	*(int*)(rec + 0xf4) |= CheckDescForVoodoo(rec);
	*(int*)(rec + 0xf0) |= CheckDescForBanshee(rec);

	DDCAPS caps;
	DDCAPS helCaps;
	memset(&caps, 0, 0x17c);
	memset(&helCaps, 0, 0x17c);
	caps.dwSize = 0x17c;
	helCaps.dwSize = 0x17c;
	dd->GetCaps(&caps, &helCaps);
	if (caps.dwCaps & 1)
	{
		Report3D("  Accelerated.\n");
		++unk_E8C5C8;
	}
	else
	{
		Report3D("  Not accelerated.\n");
		dd->Release();
	}
	Report3D("DDEnumCallback done.\n");
	return 1;
}

// BW1W120 007dd360 LHScreen::DDrawInitialiseDevices(void)
int LHScreen::DDrawInitialiseDevices()
{
	char deviceIdentifierA[512];
	char deviceIdentifierB[560];

	unk_E8C5C8 = 0;
	DirectDrawEnumerateA((LPDDENUMCALLBACKA)DDEnumCallback, DeviceInfoArray);
	unsigned int selected = 0;
	if (!unk_E8C5C8)
		return 2;

	if (PDirectDraw)
	{
		PDirectDraw->Release();
		PDirectDraw = NULL;
	}

	unsigned int i = 0;
	if (unk_E8C5D4 && unk_E8C5C8)
	{
		char* records = (char*)DeviceInfoArray;
		char* rec = records + 220; // GUID lives at +220 within each 248-byte record
		while (memcmp(rec, unk_E8C5D4, 0x10u))
		{
			++i;
			rec += 248;
			if (i >= unk_E8C5C8)
				goto fallback;
		}
		int v7 = 248 * i;
		DirectDrawCreateEx((GUID*)&records[248 * i + 204], (LPVOID*)&PDirectDraw, IID_IDirectDraw7, NULL);
		selected = i;
		if (*((int*)DeviceInfoArray + 62 * i + 59))
			unk_EDD450 = 1;
		if (*(int*)((char*)DeviceInfoArray + v7 + 244))
			unk_EA9E9C = 1;
		if (*(int*)((char*)DeviceInfoArray + v7 + 240))
			unk_EDD44C = 1;
		PDirectDraw->GetDeviceIdentifier((LPDDDEVICEIDENTIFIER2)deviceIdentifierA, 0);
		unk_ECA5F0 |= CheckDescForPowerVRKYRO(deviceIdentifierB);
		unk_ECA5F0 |= CheckDescForPowerVRKYRO(deviceIdentifierA);
	}
	else
	{
	fallback:
		DirectDrawCreateEx(NULL, (LPVOID*)&PDirectDraw, IID_IDirectDraw7, NULL);
		PDirectDraw->GetDeviceIdentifier((LPDDDEVICEIDENTIFIER2)deviceIdentifierA, 0);
		unk_EA9E9C |= CheckDescForVoodoo(deviceIdentifierB);
		unk_EA9E9C |= CheckDescForVoodoo(deviceIdentifierA);
		unk_EDD44C |= CheckDescForBanshee(deviceIdentifierB);
		unk_EDD44C |= CheckDescForBanshee(deviceIdentifierA);
		unk_ECA5F0 |= CheckDescForPowerVRKYRO(deviceIdentifierB);
		unk_ECA5F0 |= CheckDescForPowerVRKYRO(deviceIdentifierA);
	}

	if (unk_EDD450)
		LHSys::GetScreen().SetFullscreenMode(1);
	Report3D("Display selected: %s.\n", (char*)DeviceInfoArray + 248 * selected);
	return 0;
}

// BW1W120 007dd930 LHScreen::SetMSTitle(char *)
int LHScreen::SetMSTitle(char* title)
{
	int result = 0;
	if (!SetWindowTextA(MsWindowHandle, title))
		result = 2;
	return result;
}

// BW1W120 007dd960 LHScreen::DirectDrawReleaseSurface(void)
int LHScreen::DirectDrawReleaseSurface()
{
	if (PBackSurface)
	{
		int refs = PBackSurface->AddRef();
		if (refs > 0)
		{
			int i = refs;
			do
				PBackSurface->Release();
			while (--i);
		}
		PBackSurface = NULL;
	}
	if (PPrimarySurface)
	{
		int refs = PPrimarySurface->AddRef();
		if (refs > 0)
		{
			int i = refs;
			do
				PPrimarySurface->Release();
			while (--i);
		}
		PPrimarySurface = NULL;
	}
	return 0;
}

// BW1W120 007dd9c0 LHScreen::Lock(unsigned long)
int LHScreen::Lock(unsigned long param_1)
{
	if (isLocked)
	{
		unk_E8C5D8 = 0;
		return 2;
	}

	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = 124;
	HRESULT hr = PBackSurface->Lock(NULL, &desc, 0x820, NULL);
	if (hr)
		return (hr != 0x8876021C) + 2; // soft (2) unless surface lost -> hard (3)

	uint32_t newBackAddr = (uint32_t)desc.lpSurface;
	bool     same = (backAddress == newBackAddr);
	isLocked = 1;
	if (!same)
	{
		backAddress = newBackAddr;
		backPixelPitch = 8 * desc.lPitch / depth;
		sub_FC1285(newBackAddr);
	}
	uint32_t addr = backAddress;
	int      pitch = backPixelPitch;
	LHSys::GetDraw().pixelPitch = pitch;
	LHSys::GetDraw().drawAddress = addr;
	return 0;
}

// BW1W120 007dda90 LHScreen::Unlock(void)
int LHScreen::Unlock()
{
	if (!isLocked)
	{
		unk_E8C5DC = 0;
		return 2;
	}
	if (PBackSurface->Unlock(NULL))
		return 2;
	isLocked = 0;
	return 0;
}

// BW1W120 007ddad0 LHScreen::Close(void)
int LHScreen::Close()
{
	if (opened)
	{
		if (PDirectDraw)
		{
			PDirectDraw->RestoreDisplayMode();
			sub_7DECE0();
		}
		DirectDrawReleaseSurface();
		opened = 0;
	}
	return 0;
}

// BW1W120 007ddb00 EnumModesCallback(_DDSURFACEDESC2 *, void *)
// DirectDraw mode-enumeration callback; always continue (DDENUMRET_OK).
long __stdcall EnumModesCallback(DDSURFACEDESC2* desc, void* ctx)
{
	return 1;
}

// BW1W120 007ddb10 LHScreen::SetRGBInfo(_DDPIXELFORMAT *)
void LHScreen::SetRGBInfo(_DDPIXELFORMAT* pixel_format)
{
	RedMask = pixel_format->dwRBitMask;
	GreenMask = pixel_format->dwGBitMask;
	BlueMask = pixel_format->dwBBitMask;
	maxRed = LHGetBits(RedMask, &redScale, &RedShift);
	MaxGreen = LHGetBits(GreenMask, &GreenScale, &GreenShift);
	MaxBlue = LHGetBits(BlueMask, &BlueScale, &BlueShift);
	// Clears the least-significant bit of each RGB channel.
	ColorLSBMask = ~((1 << GreenShift) + (1 << RedShift) + (1 << BlueShift));
}

// BW1W120 007ddba0 ?LHGetBits@@YAHKPAE0@Z
// Scans the 32 bits of a channel mask: counts set bits (n), records the run-edge
// positions, then writes *scale = 8 - n, *shift = <start pos> - n, and returns
// the maximum channel value 2^n - 1.
int LHGetBits(unsigned long mask, unsigned char* scale, unsigned char* shift)
{
	unsigned short positions[10];
	int            pos = 0;
	int            idx = 0;
	int            prev = 0;
	int            n = 0;
	int            p = 0;
	unsigned short i = 0;

	do
	{
		int bit = mask & 1;
		if (bit)
			++n;
		if ((unsigned short)prev != bit)
		{
			positions[(unsigned short)idx] = (unsigned short)(bit ? pos : pos - 1);
			++idx;
			p = i;
			prev = bit;
		}
		++pos;
		++i;
		mask >>= 1;
	} while (i < 32);

	if (scale)
		*scale = 8 - n;
	if (shift)
		*shift = (unsigned char)(p - n);
	return (2 << (n - 1)) - 1;
}

// BW1W120 007ddc40 LHScreen::Open(unsigned short, unsigned short, unsigned char)
int LHScreen::Open(uint16_t width, uint16_t height, uint8_t depth)
{
	if (dword_C3132C)
	{
		dword_C3132C = 0;
		int result = DDrawInitialise();
		if (result)
			return result;
		SetMSWindowHandle((OpaqueWindowPtr*)LHSys::GetWindow());
		LHMouseInitDirectInput();
	}
	LH3DRender::Close();
	int result = ChangeMode(width, height, depth);
	int v6 = result;
	if (result != 3)
	{
		opened = 1;
		LH3DRender::Open();
		return v6;
	}
	return result;
}

// BW1W120 007ddcb0 LHScreen::ChangeMode(unsigned short, unsigned short, unsigned char)
int LHScreen::ChangeMode(uint16_t width, uint16_t height, uint8_t depth)
{
	if (LH3DRender::b_open)
	{
		LH3DVRAMTexReleaseAll();
		LH3DRender::CloseD3D();
	}
	if (PDirectDraw)
	{
		PDirectDraw->RestoreDisplayMode();
		sub_7DECE0();
	}
	DirectDrawReleaseSurface();

	this->width = width;
	this->height = height;
	this->depth = depth;

	if (windowed)
	{
		sub_7DC9A0(0, 0);
	}
	else
	{
		sub_7DED10();
		PDirectDraw->SetDisplayMode(width, height, depth, 0, 0);
	}

	if (!windowed)
	{
		sub_7DED10();
		SetWindowLongA(LHSys::GetScreen().MsWindowHandle, GWL_STYLE, WS_POPUP);
		int desktopHeight = GetSystemMetrics(SM_CYSCREEN);
		SetWindowPos(LHSys::GetScreen().MsWindowHandle, HWND_TOPMOST, 0, 0, GetSystemMetrics(SM_CXSCREEN),
		             desktopHeight, SWP_NOACTIVATE);
		TurnOffMenu();
	}
	else
	{
		SetWindowLongA(LHSys::GetScreen().MsWindowHandle, GWL_STYLE, WS_OVERLAPPEDWINDOW); // 0x00CF0000
		SetWindowLongA(LHSys::GetScreen().MsWindowHandle, GWL_EXSTYLE, 0);
		sub_7DECE0();
		sub_7DB8F0();
	}

	DDSURFACEDESC2 desc;
	if (windowed)
	{
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = 124;
		desc.dwFlags = DDSD_CAPS;
		desc.ddsCaps.dwCaps = DDSCAPS_PRIMARYSURFACE; // 0x200
		PDirectDraw->CreateSurface(&desc, &PPrimarySurface, NULL);

		desc.dwHeight = height;
		desc.dwWidth = width;
		desc.dwSize = 124;
		desc.dwFlags = DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH;                                   // 7
		desc.ddsCaps.dwCaps = DDSCAPS_OFFSCREENPLAIN | DDSCAPS_3DDEVICE | DDSCAPS_VIDEOMEMORY; // 0x6040
		if (PDirectDraw->CreateSurface(&desc, &PBackSurface, NULL))
		{
			LHSys::TheSystem.field_0x70b8 = 1;
			MessageBoxA(0, "In Screen Settings, please increase the number of colours to more than 256",
			            "Screen Depth Problem", MB_ICONHAND);
			return 3;
		}
		PPrimarySurface->SetClipper(PClipper);
	}
	else
	{
		sub_7DED10();
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = 124;
		// 0x2218: complex flip primary + 3D device.
		desc.dwFlags = DDSD_CAPS | DDSD_BACKBUFFERCOUNT; // 0x21
		desc.ddsCaps.dwCaps = DDSCAPS_COMPLEX | DDSCAPS_FLIP | DDSCAPS_PRIMARYSURFACE | DDSCAPS_3DDEVICE;
		desc.dwBackBufferCount = 1;
		PDirectDraw->CreateSurface(&desc, &PPrimarySurface, NULL);

		DDSCAPS2 caps;
		memset(&caps, 0, sizeof(caps));
		caps.dwCaps = DDSCAPS_BACKBUFFER; // 4
		PPrimarySurface->GetAttachedSurface(&caps, &PBackSurface);
	}

	// Read the primary surface pitch/depth/address.
	PPrimarySurface->Lock(NULL, &desc, DDLOCK_WAIT, NULL);
	frontPitchBytes = desc.lPitch;
	this->depth = (uint8_t)desc.ddpfPixelFormat.dwRGBBitCount;
	FrontPixelPitch = 8 * frontPitchBytes / (unsigned int)this->depth;
	FrontAddress = (uint32_t)desc.lpSurface;
	PPrimarySurface->Unlock(NULL);

	if (windowed)
	{
		sub_7DC9A0(0, 0);
		if (windowed)
		{
			RECT dst;
			dst.left = MsClientOffsetX;
			int v20 = MsClientOffsetY + this->height;
			dst.top = MsClientOffsetY;
			dst.bottom = v20;
			dst.right = dst.left + this->width;
			PPrimarySurface->Blt(&dst, PBackSurface, NULL, DDBLT_WAIT, NULL);
		}
	}

	if (LH3DRender::b_open)
	{
		LH3DRender::OpenD3D();
		LH3DVRAMTexAllocAllVRAM();
	}

	LHFlip(1);
	LHFlip(1);

	// Read the back surface pitch/address + pixel format.
	PBackSurface->Lock(NULL, &desc, DDLOCK_WAIT, NULL);
	backPitchBytes = desc.lPitch;
	backAddress = (uint32_t)desc.lpSurface;
	backPixelPitch = 8 * backPitchBytes / this->depth;
	PBackSurface->Unlock(NULL);
	SetRGBInfo(&desc.ddpfPixelFormat);

	int v24 = this->width - 1;
	unk_E8C5C4 = this->height - 1;
	unk_E8C5C0 = v24;
	unk_E8C5B8 = 0;
	unk_E8C5BC = 0;

	TextWindow.start.x = 0;
	TextWindow.start.y = 0;
	TextWindow.end.y = this->height - 2; // bottom before right
	TextWindow.end.x = this->width - 2;

	GraphicsWindow.start.x = 0;
	GraphicsWindow.start.y = 0;
	GraphicsWindow.end.x = this->width - 2;
	GraphicsWindow.end.y = this->height - 2;
	return 0;
}

// BW1W120 007de090 LHScreen::Flip(int)
int LHScreen::Flip(int param_1)
{
	++flipCount;
	if (ShowTimingStats)
	{
		if ((unk_E8C5B1 & 1) == 0)
		{
			byte_E8C1B0[0] = 0;
			unk_E8C5B1 |= 1u;
			atexit(nullsub_92);
		}
		if (SetTimingStats())
		{
			if (TargetPercent != 0.0f)
				LHSPrintfSetString(byte_E8C1B0, "%5.1f<%d%%> fps", MeasuredFPS, (int)TargetPercent);
			else
				LHSPrintfSetString(byte_E8C1B0, "%5.1f fps", MeasuredFPS);
		}
		short v7 = -1; // {0xFFFF, 0xFF} passed by address
		char  v8 = -1;
		sub_7E45F0(width - 7 * strlen(byte_E8C1B0), 0, (int)byte_E8C1B0, (int)&v7, 0);
	}

	EnterCriticalSection(&LHScreen::CriticalSection);
	EnterCriticalSection(&LHScreen::CriticalSection);
	LHSys::GetMouse().Locked = 1;
	LeaveCriticalSection(&LHScreen::CriticalSection);
	LHSys::GetMouse().Draw(LH_SCREEN_BUFFER_0x0, LH_MOUSE_EVENT_TYPE_0x1);
	int flipResult = LHFlip(param_1);
	LeaveCriticalSection(&LHScreen::CriticalSection);

	if ((unsigned char)sub_7DB910())
		sub_7DB940();
	return flipResult;
}

// BW1W120 007de200 LHScreen::Clear(LHColor *, LHRegion *)
int LHScreen::Clear(LHColor* colour, LHRegion* region)
{
	if (LH3DRenderIsInit())
	{
		sub_87FC80();
		return 0;
	}

	if ((unk_E8C1AB & 1) == 0)
	{
		unk_E8C1AB |= 1u;
		atexit(nullsub_93);
	}

	RECT*    rect = region ? &unk_E8C198 : NULL;
	LHColor* c = colour;
	if (!colour)
		c = &unk_E8C1A8;
	unk_E8C130.dwSize = 100;
	if (region)
		region->GetRect(&unk_E8C198);

	if (depth == 16)
	{
		LHPixel16Set(*(uint16_t*)&c->b);
		unk_E8C130.dwFillColor = (uint16_t)(uintptr_t)region; // NOTE: decompiler artifact; verify against a 16bpp build
	}
	else
	{
		// Pack B,G,R into a 0x00RRGGBB colour-fill value.
		unk_E8C130.dwFillColor = c->b | (*(uint16_t*)&c->g << 8);
	}

	PBackSurface->Blt(rect, NULL, NULL, DDBLT_COLORFILL | DDBLT_WAIT, &unk_E8C130);
	return 0;
}

// BW1W120 007de2f0 LHScreen::SetMSWindowHandle(OpaqueWindowPtr *)
void LHScreen::SetMSWindowHandle(OpaqueWindowPtr* window)
{
	IDirectDrawClipper* clipper = PClipper;
	MsWindowHandle = (HWND)window;
	clipper->SetHWnd(0, (HWND)window);
	SetMSOffset();
}

// BW1W120 007de320 LHScreen::SetTimingStats(void)
uint16_t LHScreen::SetTimingStats()
{
	if (frameTimerSpeed == 0.0f)
	{
		LHTimer* t = (LHTimer*)fpsTimer;
		DWORD    tick = GetTickCount();
		float    speed = t->SpeedUpFactor;
		t->TickCount = tick;
		t->ElapsedTime = 0;
		if (speed != 0.0f)
		{
			t->SpeedUpFactor2 = t->SpeedUpFactor;
			t->SetSpeedUpFactor(0.0f);
		}
		float saved = t->SpeedUpFactor2;
		t->SpeedUpFactor = 0.0000099999997f;
		t->ElapsedTime = (int)((double)(GetTickCount() - t->TickCount) * t->SpeedUpFactor + t->ElapsedTime);
		t->TickCount = GetTickCount();
		t->SpeedUpFactor = saved;
	}

	++FrameAccum;
	if ((unsigned int)(int)((double)(GetTickCount() - frameTimerTick) * frameTimerSpeed + FrameTimerAccum) <= 0x7D0)
		return 0;

	DWORD   now = GetTickCount();
	double  v7 = (double)FrameAccum * 1000.0;
	__int64 ms = (unsigned int)(int)((double)(now - frameTimerTick) * frameTimerSpeed + FrameTimerAccum);
	FrameAccum = 0;
	MeasuredFPS = (float)(v7 / (double)ms);

	DWORD tick = GetTickCount();
	float speed = frameTimerSpeed;
	frameTimerTick = tick;
	FrameTimerAccum = 0;
	if (speed != 0.0f)
	{
		FrameTimerSavedSpeed = frameTimerSpeed;
		FrameTimerAccum = (int)((double)(GetTickCount() - frameTimerTick) * frameTimerSpeed + FrameTimerAccum);
		frameTimerTick = GetTickCount();
		frameTimerSpeed = 0.0f;
	}
	float saved = FrameTimerSavedSpeed;
	frameTimerSpeed = 0.0000099999997f;
	FrameTimerAccum = (int)((double)(GetTickCount() - frameTimerTick) * frameTimerSpeed + FrameTimerAccum);
	frameTimerTick = GetTickCount();
	frameTimerSpeed = saved;
	return 1;
}

// BW1W120 007de580 LHScreen::LHFlip(int)
int LHScreen::LHFlip(int param_1)
{
	if (windowed)
	{
		RECT dst;
		dst.left = MsClientOffsetX;
		dst.right = MsClientOffsetX + width;
		dst.top = MsClientOffsetY;
		dst.bottom = MsClientOffsetY + height;
		PPrimarySurface->Blt(&dst, PBackSurface, NULL, DDBLT_WAIT, NULL);
	}
	else
	{
		PPrimarySurface->Flip(NULL, flipFlags);
	}

	if (param_1)
	{
		if (!windowed)
		{
			uint32_t oldFront = FrontAddress;
			int      oldBackPixelPitch = backPixelPitch;
			FrontAddress = backAddress;
			int oldFrontPixelPitch = FrontPixelPitch;
			backAddress = oldFront;
			FrontPixelPitch = oldBackPixelPitch;
			backPixelPitch = oldFrontPixelPitch;
			sub_FC1285(oldFront);
		}
		Clear(NULL, NULL);
	}
	return 0;
}

// BW1W120 007de630 LHScreen::BlitToMSWindow(LHRegion *, LHCoord *, int)
int LHScreen::BlitToMSWindow(LHRegion* region, LHCoord* coord, int param_3)
{
	RECT src;
	region->GetRect(&src);
	RECT dst;
	dst.left = MsClientOffsetX + coord->x;
	dst.top = MsClientOffsetY + coord->y;
	dst.right = dst.left - src.left + src.right;
	dst.bottom = dst.top - src.top + src.bottom;
	PPrimarySurface->Blt(&dst, PBackSurface, &src, DDBLT_WAIT, NULL);
	if (param_3)
		Clear(NULL, region);
	return 0;
}

// BW1W120 007de6c0 LHScreen::GetMSDesktopParams(unsigned short *, unsigned short *, unsigned char *)
int LHScreen::GetMSDesktopParams(uint16_t* width, uint16_t* height, uint8_t* depth)
{
	return 0;
}

// BW1W120 007de6d0 LHScreen::AltTabDeactivate(void)
void LHScreen::AltTabDeactivate()
{
	if (unk_E8C5D0)
		unk_E8C5D0(0);
	LH3DVRAMTexReleaseAll();
	AltTabbedAway = 1;
}

// BW1W120 007de6f0 LHScreen::AltTabReactivate(void)
void LHScreen::AltTabReactivate()
{
	PPrimarySurface->Restore();
	PBackSurface->Restore();
	unk_ECA63C->Restore();
	LH3DVRAMTexAllocAllVRAM();
	if (unk_E8C5D0)
		unk_E8C5D0(1);
	AltTabbedAway = 0;
}

// BW1W120 007de730 LHScreen::RunInMSWindow(int)
int LHScreen::RunInMSWindow(int param_1)
{
	if (unk_EDD450)
		return 0;

	int result = 0;
	if (!unk_E8C5E4)
	{
		unk_E8C5E4 = 1;
		EnterCriticalSection(&LHScreen::CriticalSection);
		LeaveCriticalSection(&LHScreen::CriticalSection);
		int wasOpened = opened;
		if (param_1 == windowed)
			return 0;
		sub_7E69B0();
		windowed = (windowed == 0);
		if (wasOpened == 1)
			result = ChangeMode(width, height, depth);
		EnterCriticalSection(&LHScreen::CriticalSection);
		LHSurfaceRestoreAll(1);
		LeaveCriticalSection(&LHScreen::CriticalSection);
		SetMSOffset();
		if (unk_E8C5CC)
			unk_E8C5CC(param_1);
		unk_E8C5E4 = 0;
	}
	return result;
}

// BW1W120 007de820 LHScreen::SetMSOffset(void)
int LHScreen::SetMSOffset()
{
	POINT point;
	point.y = 0;
	point.x = 0;
	if (windowed)
	{
		if (ClientToScreen(MsWindowHandle, &point))
		{
			MsClientOffsetX = (int16_t)point.x;
			MsClientOffsetY = (int16_t)point.y;
			// Byte address of the window client origin within the primary surface.
			DrawAddress = FrontAddress + (((unsigned int)depth * (point.x + point.y * FrontPixelPitch)) >> 3);
			return 0;
		}
		return 2;
	}
	MsClientOffsetX = 0;
	MsClientOffsetY = 0;
	return 0;
}

// BW1W120 007de930 LHScreen::SaveBitmap(void)
int LHScreen::SaveBitmap()
{
	char fileName[260];
	sub_8A5440(fileName);

	int count = 1;
	CreateDirectoryA("Screen Shots", NULL);
	WIN32_FIND_DATAA findData;
	HANDLE           find = FindFirstFileA(".\\Screen Shots\\*.bmp", &findData);
	if (find != INVALID_HANDLE_VALUE)
	{
		count = 2;
		if (FindNextFileA(find, &findData))
		{
			do
				++count;
			while (FindNextFileA(find, &findData));
		}
	}
	sprintf(fileName, ".\\Screen Shots\\B&W Screen %i.bmp", count);

	// Bitmap header captured for the save scope guard.
	int   bmpWidth = width;
	int   bmpHeight = height;
	short bmpBitCount = 24;
	int   bmpPitch = backPixelPitch;
	short bmpRedMask = (short)RedMask;
	short bmpGreenMask = (short)GreenMask;
	short bmpBlueMask = (short)BlueMask;
	short bmpAlignPad = 0;
	(void)bmpWidth;
	(void)bmpHeight;
	(void)bmpBitCount;
	(void)bmpPitch;
	(void)bmpRedMask;
	(void)bmpGreenMask;
	(void)bmpBlueMask;
	(void)bmpAlignPad;

	EnterCriticalSection(&LHScreen::CriticalSection);
	EnterCriticalSection(&LHScreen::CriticalSection);
	LHSys::GetMouse().Locked = 1;
	LeaveCriticalSection(&LHScreen::CriticalSection);
	LHSys::GetMouse().Draw(LH_SCREEN_BUFFER_0x0, LH_MOUSE_EVENT_TYPE_0x1);
	LeaveCriticalSection(&LHScreen::CriticalSection);

	int result = sub_8A5590(fileName, backAddress);
	nullsub_203(fileName);
	return result;
}

// BW1W120 007dec80 LHScreen::GetAvailableVidMem(void)
uint32_t LHScreen::GetAvailableVidMem()
{
	IDirectDraw2* dd2;
	LHSys::GetScreen().PDirectDraw->QueryInterface(IID_IDirectDraw2, (void**)&dd2);
	DDSCAPS caps;
	caps.dwCaps = DDSCAPS_VIDEOMEMORY; // 0x4000
	DWORD total;
	DWORD freeMem;
	dd2->GetAvailableVidMem(&caps, &total, &freeMem);
	return freeMem;
}

// BW1W120 007decc0 LHScreen::WaitForVerticalBlank(void)
int LHScreen::WaitForVerticalBlank()
{
	return PDirectDraw->WaitForVerticalBlank(DDWAITVB_BLOCKBEGIN, 0) != 0 ? 2 : 0;
}

// BW1W120 007ded50 LHScreen::IsAppMinimized(void)
int LHScreen::IsAppMinimized()
{
	return LHSys::TheSystem.AppMinimized;
}
