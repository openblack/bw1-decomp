#ifndef BW1_DECOMP_PICTURE_ROOM_INCLUDED_H
#define BW1_DECOMP_PICTURE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "TempleRoom.h" /* For struct TempleRoom */

class PictureRoomBase: public TempleRoom
{
public:
    uint8_t field_0xec[0x74];

    // Constructors

    // win1.41 0078f110 mac 10114a00 PictureRoomBase::PictureRoomBase(char const *)
    PictureRoomBase(const char* param_1);
};

#endif /* BW1_DECOMP_PICTURE_ROOM_INCLUDED_H */
