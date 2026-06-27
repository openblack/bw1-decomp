#ifndef BW1_DECOMP_LH_SCREEN_INCLUDED_H
#define BW1_DECOMP_LH_SCREEN_INCLUDED_H

#include <assert.h> /* For static_assert */

enum LH_SCREEN_BUFFER
{
  LH_SCREEN_BUFFER_0x0 = 0x0,
  LH_SCREEN_BUFFER_0x1 = 0x1,
  _LH_SCREEN_BUFFER_COUNT = 0x2
};
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpragma-pack"
#pragma clang diagnostic ignored "-Wmacro-redefined"
#pragma clang diagnostic ignored "-Wmissing-declarations"
#include <ddraw.h> /* For IDirectDraw7, IDirectDrawClipper, IDirectDrawSurface7 */
#pragma clang diagnostic pop
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */
#include <re_common.h> /* For HWND */

// Forward Declares

struct LHDDEnum;

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

    // BW1W120 007dd8f0 BW1M100 1014d890 LHScreen::~LHScreen(void)
    ~LHScreen();
    // BW1W120 007dd0d0 BW1M100 1014e420 LHScreen::SetFullscreenMode(int)
    void SetFullscreenMode(int mode);
};

#endif /* BW1_DECOMP_LH_SCREEN_INCLUDED_H */
