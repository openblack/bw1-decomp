#ifndef BW1_DECOMP_LH_SCREEN_INCLUDED_H
#define BW1_DECOMP_LH_SCREEN_INCLUDED_H

#include <assert.h> /* For static_assert */
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpragma-pack"
#pragma clang diagnostic ignored "-Wmacro-redefined"
#pragma clang diagnostic ignored "-Wmissing-declarations"
#include <ddraw.h> /* For IDirectDraw7, IDirectDrawClipper, IDirectDrawSurface7 */
#pragma clang diagnostic pop
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lh3dlib/development/LHRegion.h> /* For struct LHRegion */
#include <reversing_utils/re_common.h> /* For HWND */

// Forward Declares

struct LHDDEnum;

enum LH_SCREEN_BUFFER
{
  LH_SCREEN_BUFFER_0x0 = 0x0,
  LH_SCREEN_BUFFER_0x1 = 0x1,
  _LH_SCREEN_BUFFER_COUNT = 0x2
};
static_assert(sizeof(enum LH_SCREEN_BUFFER) == 0x4, "Data type is of wrong size");

static const char* LH_SCREEN_BUFFER_strs[_LH_SCREEN_BUFFER_COUNT] = {
  "LH_SCREEN_BUFFER_0x0",
  "LH_SCREEN_BUFFER_0x1",
};

struct LHScreen
{
  struct LHDDEnum* display_devices;  /* 0x0 */
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
  IDirectDrawSurface7* surfaces[0x2];  /* 0x30 */
  struct LHRegion field_0x38;
  struct LHRegion region;  /* 0x48 */
  struct LHCoord ms_window_client_offset;  /* 0x58 */
  IDirectDrawClipper* clipper;  /* 0x60 */
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
};
static_assert(sizeof(struct LHScreen) == 0x1b4, "Data type is of wrong size");

// Constructors

// win1.41 007dce20 mac 1014e500 LHScreen::LHScreen(void)
struct LHScreen* __fastcall __ct__8LHScreenFv(struct LHScreen* this) asm("??0LHScreen@@QAE@XZ");

// Non-virtual methods

// win1.41 007dd8f0 mac 1014d890 LHScreen::~LHScreen(void)
void __fastcall __dt__8LHScreenFv(struct LHScreen* this) asm("??_DLHScreen@@QAEXXZ");
// win1.41 007dd0d0 mac 1014e420 LHScreen::SetFullscreenMode(int)
void __fastcall SetFullscreenMode__8LHScreenFi(struct LHScreen* this, const void* edx, int mode) asm("?SetFullscreenMode@LHScreen@@QAEXH@Z");

#endif /* BW1_DECOMP_LH_SCREEN_INCLUDED_H */
