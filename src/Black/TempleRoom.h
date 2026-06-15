#ifndef BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H
#define BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */

// Forward Declares

enum BINDABLE_ACTIONS;
class InnerCamera;
struct InnerRoom;
struct Zoomer3d;

class TempleRoom
{
public:
    char name[0x20]; /* 0x4 */
    uint32_t field_0x24;
    uint32_t field_0x28;
    uint32_t field_0x2c;
    uint32_t field_0x30;
    int32_t field_0x34;
    int32_t field_0x38;
    uint8_t field_0x3c[0x40];
    uint32_t field_0x7c;
    uint8_t field_0x80[0x40];
    InnerRoom* inner_room; /* 0xc0 */
    InnerCamera* camera;
    int32_t field_0xc8;
    uint8_t field_0xcc[0x4];
    uint32_t field_0xd0;
    uint32_t field_0xd4;
    uint32_t field_0xd8;
    uint32_t field_0xdc;
    uint32_t field_0xe0;
    float field_0xe4;
    float field_0xe8;

    // Constructors

    // win1.41 00798870 mac 1053f350 TempleRoom::TempleRoom(const char*)
    TempleRoom(const char* name);
};

struct InnerRoom
{
    uint32_t field_0x0;
    uint32_t field_0x4;
    uint32_t field_0x8;
    float field_0xc;
    uint8_t field_0x10;
    uint32_t field_0x14;
    uint32_t field_0x18;
    uint32_t field_0x1c;
    uint32_t field_0x20;
    uint32_t field_0x24;
    uint32_t field_0x28;

    // Constructors

    // win1.41 00795030 mac 1053bfb0 InnerRoom::InnerRoom(void)
    InnerRoom();
};

#endif /* BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H */
