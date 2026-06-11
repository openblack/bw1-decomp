#ifndef BW1_DECOMP_CAMERA_MODE_FOLLOW_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FOLLOW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint8_t */

#include "CameraMode.h" /* For struct CameraMode */

// Forward Declares

class GCamera;
class GameThingWithPos;

class CameraModeFollow: public CameraMode
{
public:
    GameThingWithPos* target; /* 0x8 */
    float pitch;
    float yaw; /* 0x10 */
    float viewing_distance;
    float field_0x18;
    int field_0x1c;
    int field_0x20;
    uint8_t field_0x24[0x18];
    int32_t field_0x3c;
    int32_t field_0x40;
    int32_t field_0x44;

    // Constructors

    // win1.41 0044b800 mac 101a00c0 CameraModeFollow::CameraModeFollow(GCamera *, GameThingWithPos *, float, int, int)
    CameraModeFollow(GCamera* camera, GameThingWithPos* target, float param_3, int param_4, int param_5);

    // Non-virtual methods

    // win1.41 0044ba00 mac 1019ff80 CameraModeFollow::Set(GameThingWithPos *)
    void Set(GameThingWithPos* target);
};

#endif /* BW1_DECOMP_CAMERA_MODE_FOLLOW_INCLUDED_H */
