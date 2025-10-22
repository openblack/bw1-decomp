#ifndef BW1_DECOMP_LH_MOUSE_INCLUDED_H
#define BW1_DECOMP_LH_MOUSE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lh3dlib/development/LHRegion.h> /* For struct LHRegion */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "LHScreen.h" /* For enum LH_SCREEN_BUFFER */

// Forward Declares

struct LHSprite;
struct LHSurface;

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
static_assert(sizeof(enum LH_MOUSE_IMAGE_TYPE) == 0x4, "Data type is of wrong size");

static const char* LH_MOUSE_IMAGE_TYPE_strs[_LH_MOUSE_IMAGE_TYPE_COUNT] = {
  "LH_MOUSE_IMAGE_TYPE_0x00",
  "LH_MOUSE_IMAGE_TYPE_0x01",
  "LH_MOUSE_IMAGE_TYPE_0x02",
  "LH_MOUSE_IMAGE_TYPE_0x03",
  "LH_MOUSE_IMAGE_TYPE_0x04",
  "LH_MOUSE_IMAGE_TYPE_0x05",
  "LH_MOUSE_IMAGE_TYPE_0x06",
  "LH_MOUSE_IMAGE_TYPE_0x07",
  "LH_MOUSE_IMAGE_TYPE_0x08",
  "LH_MOUSE_IMAGE_TYPE_0x09",
  "LH_MOUSE_IMAGE_TYPE_0x0a",
  "LH_MOUSE_IMAGE_TYPE_0x0b",
  "LH_MOUSE_IMAGE_TYPE_0x0c",
  "LH_MOUSE_IMAGE_TYPE_0x0d",
  "LH_MOUSE_IMAGE_TYPE_0x0e",
  "LH_MOUSE_IMAGE_TYPE_0x0f",
  "LH_MOUSE_IMAGE_TYPE_0x10",
  "LH_MOUSE_IMAGE_TYPE_0x11",
  "LH_MOUSE_IMAGE_TYPE_0x12",
  "LH_MOUSE_IMAGE_TYPE_0x13",
  "LH_MOUSE_IMAGE_TYPE_0x14",
  "LH_MOUSE_IMAGE_TYPE_0x15",
  "LH_MOUSE_IMAGE_TYPE_0x16",
  "LH_MOUSE_IMAGE_TYPE_0x17",
  "LH_MOUSE_IMAGE_TYPE_0x18",
  "LH_MOUSE_IMAGE_TYPE_0x19",
  "LH_MOUSE_IMAGE_TYPE_0x1a",
  "LH_MOUSE_IMAGE_TYPE_0x1b",
  "LH_MOUSE_IMAGE_TYPE_0x1c",
  "LH_MOUSE_IMAGE_TYPE_0x1d",
  "LH_MOUSE_IMAGE_TYPE_0x1e",
  "LH_MOUSE_IMAGE_TYPE_0x1f",
  "LH_MOUSE_IMAGE_TYPE_0x20",
  "LH_MOUSE_IMAGE_TYPE_0x21",
  "LH_MOUSE_IMAGE_TYPE_0x22",
  "LH_MOUSE_IMAGE_TYPE_0x23",
  "LH_MOUSE_IMAGE_TYPE_0x24",
  "LH_MOUSE_IMAGE_TYPE_0x25",
  "LH_MOUSE_IMAGE_TYPE_0x26",
  "LH_MOUSE_IMAGE_TYPE_0x27",
  "LH_MOUSE_IMAGE_TYPE_0x28",
  "LH_MOUSE_IMAGE_TYPE_0x29",
  "LH_MOUSE_IMAGE_TYPE_0x2a",
  "LH_MOUSE_IMAGE_TYPE_0x2b",
  "LH_MOUSE_IMAGE_TYPE_0x2c",
  "LH_MOUSE_IMAGE_TYPE_0x2d",
  "LH_MOUSE_IMAGE_TYPE_0x2e",
  "LH_MOUSE_IMAGE_TYPE_0x2f",
  "LH_MOUSE_IMAGE_TYPE_0x30",
  "LH_MOUSE_IMAGE_TYPE_0x31",
  "LH_MOUSE_IMAGE_TYPE_0x32",
  "LH_MOUSE_IMAGE_TYPE_0x33",
  "LH_MOUSE_IMAGE_TYPE_0x34",
  "LH_MOUSE_IMAGE_TYPE_0x35",
  "LH_MOUSE_IMAGE_TYPE_0x36",
  "LH_MOUSE_IMAGE_TYPE_0x37",
  "LH_MOUSE_IMAGE_TYPE_0x38",
  "LH_MOUSE_IMAGE_TYPE_0x39",
  "LH_MOUSE_IMAGE_TYPE_0x3a",
  "LH_MOUSE_IMAGE_TYPE_0x3b",
  "LH_MOUSE_IMAGE_TYPE_0x3c",
  "LH_MOUSE_IMAGE_TYPE_0x3d",
  "LH_MOUSE_IMAGE_TYPE_0x3e",
  "LH_MOUSE_IMAGE_TYPE_0x3f",
  "LH_MOUSE_IMAGE_TYPE_0x40",
};

enum LH_MOUSE_EVENT_TYPE
{
  LH_MOUSE_EVENT_TYPE_0x0 = 0x0,
  LH_MOUSE_EVENT_TYPE_0x1 = 0x1,
  LH_MOUSE_EVENT_TYPE_0x2 = 0x2,
  LH_MOUSE_EVENT_TYPE_0x3 = 0x3,
  LH_MOUSE_EVENT_TYPE_0x4 = 0x4,
  _LH_MOUSE_EVENT_TYPE_COUNT = 0x5
};
static_assert(sizeof(enum LH_MOUSE_EVENT_TYPE) == 0x4, "Data type is of wrong size");

static const char* LH_MOUSE_EVENT_TYPE_strs[_LH_MOUSE_EVENT_TYPE_COUNT] = {
  "LH_MOUSE_EVENT_TYPE_0x0",
  "LH_MOUSE_EVENT_TYPE_0x1",
  "LH_MOUSE_EVENT_TYPE_0x2",
  "LH_MOUSE_EVENT_TYPE_0x3",
  "LH_MOUSE_EVENT_TYPE_0x4",
};

struct LHMouse
{
  enum LH_SCREEN_BUFFER screen_buffer;  /* 0x0 */
  bool (__cdecl* handler)(void* param_0, enum LH_MOUSE_EVENT_TYPE param_1, uint32_t param_2, uint32_t param_3);
  uint32_t field_0x8;
  bool32_t in_window;
  uint8_t field_0x10;
  uint8_t field_0x11;
  uint8_t field_0x12;
  uint8_t field_0x13;
  enum LH_MOUSE_IMAGE_TYPE image_0x14;
  enum LH_MOUSE_IMAGE_TYPE image_0x18;
  uint32_t field_0x1c;
  uint16_t field_0x20;
  uint8_t field_0x22;
  uint8_t field_0x23;
  enum LH_MOUSE_EVENT_TYPE field_0x24;
  uint32_t field_0x28;
  struct LHSurface* field_0x2c;
  uint8_t field_0x30;
  uint8_t field_0x31;
  uint8_t field_0x32;
  uint8_t field_0x33;
  struct LHSurface* field_0x34;
  void* field_0x38;
  struct LHSurface* field_0x3c;
  struct LHSurface* field_0x40;
  bool32_t is_wheel_present;
  uint32_t num_buttons;
  int field_0x4c;
  struct LHSprite* field_0x50;
  struct LHCoord* field_0x54;
  struct LHSurface** field_0x58;
  uint16_t field_0x5c;
  uint8_t field_0x5e;
  uint8_t field_0x5f;
  uint32_t field_0x60;
  uint16_t field_0x64;
  uint8_t field_0x66;
  uint8_t field_0x67;
  uint8_t field_0x68;
  uint8_t field_0x69;
  uint8_t field_0x6a;
  uint8_t field_0x6b;
  int field_0x6c;
  int field_0x70;
  struct LHRegion field_0x74;
  struct LHRegion field_0x84;
  struct LHRegion field_0x94;
  struct LHRegion field_0xa4;
  struct LHCoord field_0xb4;
  struct LHCoord pos;
  struct LHCoord field_0xc4;
  uint8_t field_0xcc;
  uint8_t field_0xcd;
  uint8_t field_0xce;
  uint8_t field_0xcf;
  struct LHCoord current_pos;  /* 0xd0 */
  uint8_t field_0xd8;
  uint8_t field_0xd9;
  uint8_t field_0xda;
  uint8_t field_0xdb;
  uint8_t field_0xdc;
  uint8_t field_0xdd;
  uint8_t field_0xde;
  uint8_t field_0xdf;
  struct LHCoord coord_0xe0;
  struct LHCoord effective_pos;
  struct LHCoord padding;  /* 0xf0 */
  bool32_t use_padding;
  uint32_t field_0xfc;
  uint32_t field_0x100;
  uint32_t field_0x104;
  uint32_t field_0x108;
  uint32_t field_0x10c;
  uint32_t field_0x110;
  uint32_t field_0x114;
  uint32_t field_0x118;
  uint32_t field_0x11c;
  uint32_t field_0x120;
  uint32_t field_0x124;
  uint32_t field_0x128;
  uint32_t field_0x12c;
  uint32_t field_0x130;
  uint32_t field_0x134;
  uint32_t field_0x138;
  uint32_t field_0x13c;
  uint32_t field_0x140;
  uint32_t field_0x144;
  uint32_t field_0x148;
  uint32_t field_0x14c;
  void* field_0x150;
  uint32_t field_0x154;
  uint32_t field_0x158;
  uint32_t field_0x15c;
  uint32_t field_0x160;
  uint32_t field_0x164;
};
static_assert(sizeof(struct LHMouse) == 0x168, "Data type is of wrong size");

// Constructors

// win1.41 007e4f20 mac 10145820 LHMouse::LHMouse(void)
struct LHMouse* __fastcall __ct__7LHMouseFv(struct LHMouse* this) asm("??0LHMouse@@QAE@XZ");

// Non-virtual methods

// win1.41 007e4810 mac 10091970 LHMouse::DeltaPos(void)
void __fastcall DeltaPos__7LHMouseFv(struct LHMouse* this) asm("?DeltaPos@LHMouse@@QAEXXZ");
// win1.41 007e49a0 mac 10006f30 LHMouse::UpdateCurrentPos(LHCoord)
void __fastcall UpdateCurrentPos__7LHMouseF7LHCoord(struct LHMouse* this, const void* edx, struct LHCoord coord) asm("?UpdateCurrentPos@LHMouse@@QAEXULHCoord@@@Z");
// win1.41 007e4e40 mac 101459e0 LHMouse::SetPosition(LHCoord *)
bool __fastcall SetPosition__7LHMouseFP7LHCoord(struct LHMouse* this, const void* edx, struct LHCoord* position) asm("?SetPosition@LHMouse@@QAE_NPAULHCoord@@@Z");
// win1.41 007e53b0 mac 10145190 LHMouse::SetCursor(void *, LH_MOUSE_IMAGE_TYPE, int)
uint32_t __fastcall SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi(struct LHMouse* this, const void* edx, void* param_2, enum LH_MOUSE_IMAGE_TYPE mouse_image_type, int param_4) asm("?SetCursor@LHMouse@@QAEIPAXW4LH_MOUSE_IMAGE_TYPE@@H@Z");
// win1.41 007e57c0 mac 1003fb90 LHMouse::Draw(LH_SCREEN_BUFFER, LH_MOUSE_EVENT_TYPE)
void __fastcall Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE(struct LHMouse* this, const void* edx, enum LH_SCREEN_BUFFER buffer, enum LH_MOUSE_EVENT_TYPE event_type) asm("?Draw@LHMouse@@QAEXW4LH_SCREEN_BUFFER@@W4LH_MOUSE_EVENT_TYPE@@@Z");

// win1.41 0054a770 mac 1007b120 SetTurnOffMouseMove(bool)
void __cdecl SetTurnOffMouseMove__Fb(bool value);

#endif /* BW1_DECOMP_LH_MOUSE_INCLUDED_H */
