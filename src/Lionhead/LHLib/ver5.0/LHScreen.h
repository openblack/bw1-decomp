#ifndef BW1_DECOMP_LH_SCREEN_INCLUDED_H
#define BW1_DECOMP_LH_SCREEN_INCLUDED_H

#include <assert.h> /* For static_assert */

enum LH_SCREEN_BUFFER
{
  LH_SCREEN_BUFFER_0x0 = 0x0,
  LH_SCREEN_BUFFER_0x1 = 0x1,
  _LH_SCREEN_BUFFER_COUNT = 0x2
};
#include <ddraw.h> /* For IDirectDraw7, IDirectDrawClipper, IDirectDrawSurface7 */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */
#include <re_common.h> /* For HWND */

// Forward Declares

struct LHDDEnum;
struct OpaqueWindowPtr;
struct LHColor;

struct LHScreen
{
    LHDDEnum* display_devices; /* 0x0 */
    uint32_t device_count;
    uint16_t width;
    uint16_t height;
    uint32_t field_0xc;
    uint32_t field_0x10;
    uint8_t field_0x14;
    uint32_t field_0x18;
    uint32_t field_0x1c;
    uint32_t field_0x20;
    uint16_t* buffer;
    HWND window;
    IDirectDraw7* ddraw;
    IDirectDrawSurface7* surfaces[0x2]; /* 0x30 */
    LHRegion field_0x38;
    LHRegion region; /* 0x48 */
    LHCoord ms_window_client_offset; /* 0x58 */
    IDirectDrawClipper* clipper; /* 0x60 */
    bool fullscreen_mode;
    uint8_t field_0x65[0x16];
    uint8_t field_0x7b;
    uint8_t field_0x7c;
    uint8_t field_0x7d;
    uint8_t field_0x7e;
    uint8_t field_0x7f;
    uint8_t field_0x80;
    uint8_t field_0x81[0x3];
    uint32_t field_0x84;
    uint32_t field_0x88;
    uint32_t stride;
    int32_t field_0x90;
    uint8_t field_0x94[0x104];
    int field_0x198;
    int field_0x19c;
    float field_0x1a0;
    float field_0x1a4;
    uint8_t field_0x1a8[0x4];
    uint32_t field_0x1ac;
    float field_0x1b0;

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
    uint8_t Depth();
    // BW1W120 007e9df0 LHScreen::MaxDepth(void)
    uint8_t MaxDepth();
};

#endif /* BW1_DECOMP_LH_SCREEN_INCLUDED_H */
