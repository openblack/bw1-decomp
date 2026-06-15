#ifndef BW1_DECOMP_LH_MOUSE_INCLUDED_H
#define BW1_DECOMP_LH_MOUSE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */
#include <re_common.h> /* For bool32_t */

#include "LHScreen.h" /* For enum LH_SCREEN_BUFFER */

// Forward Declares

struct LHSprite;
struct LHSurface;

struct LHMouse
{
    LH_SCREEN_BUFFER screen_buffer; /* 0x0 */
    FuncPtr(name='LHMouse__handler', call_type='__cdecl', result='bool', args=['void*', 'enum LH_MOUSE_EVENT_TYPE', 'uint32_t', 'uint32_t'], arg_labels=['param_0', 'param_1', 'param_2', 'param_3'], decorated_name='LHMouse__handler', indirection_level=1) handler;
    uint32_t field_0x8;
    bool32_t in_window;
    uint8_t field_0x10;
    uint8_t field_0x11;
    uint8_t field_0x12;
    uint8_t field_0x13;
    LH_MOUSE_IMAGE_TYPE image_0x14;
    LH_MOUSE_IMAGE_TYPE image_0x18;
    uint32_t field_0x1c;
    uint16_t field_0x20;
    uint8_t field_0x22;
    uint8_t field_0x23;
    LH_MOUSE_EVENT_TYPE field_0x24;
    uint32_t field_0x28;
    LHSurface* field_0x2c;
    uint8_t field_0x30;
    uint8_t field_0x31;
    uint8_t field_0x32;
    uint8_t field_0x33;
    LHSurface* field_0x34;
    void* field_0x38;
    LHSurface* field_0x3c;
    LHSurface* field_0x40;
    bool32_t is_wheel_present;
    uint32_t num_buttons;
    int field_0x4c;
    LHSprite* field_0x50;
    LHCoord* field_0x54;
    LHSurface** field_0x58;
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
    LHRegion field_0x74;
    LHRegion field_0x84;
    LHRegion field_0x94;
    LHRegion field_0xa4;
    LHCoord field_0xb4;
    LHCoord pos;
    LHCoord field_0xc4;
    uint8_t field_0xcc;
    uint8_t field_0xcd;
    uint8_t field_0xce;
    uint8_t field_0xcf;
    LHCoord current_pos; /* 0xd0 */
    uint8_t field_0xd8;
    uint8_t field_0xd9;
    uint8_t field_0xda;
    uint8_t field_0xdb;
    uint8_t field_0xdc;
    uint8_t field_0xdd;
    uint8_t field_0xde;
    uint8_t field_0xdf;
    LHCoord coord_0xe0;
    LHCoord effective_pos;
    LHCoord padding; /* 0xf0 */
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

    // Constructors

    // win1.41 007e4f20 mac 10145820 LHMouse::LHMouse(void)
    LHMouse();

    // Non-virtual methods

    // win1.41 007e4810 mac 10091970 LHMouse::DeltaPos(void)
    void DeltaPos();
    // win1.41 007e49a0 mac 10006f30 LHMouse::UpdateCurrentPos(LHCoord)
    void UpdateCurrentPos(LHCoord coord);
    // win1.41 007e4e40 mac 101459e0 LHMouse::SetPosition(LHCoord *)
    bool SetPosition(LHCoord* position);
    // win1.41 007e53b0 mac 10145190 LHMouse::SetCursor(void *, LH_MOUSE_IMAGE_TYPE, int)
    uint32_t SetCursor(void* param_2, LH_MOUSE_IMAGE_TYPE mouse_image_type, int param_4);
    // win1.41 007e57c0 mac 1003fb90 LHMouse::Draw(LH_SCREEN_BUFFER, LH_MOUSE_EVENT_TYPE)
    void Draw(LH_SCREEN_BUFFER buffer, LH_MOUSE_EVENT_TYPE event_type);
};

#endif /* BW1_DECOMP_LH_MOUSE_INCLUDED_H */
