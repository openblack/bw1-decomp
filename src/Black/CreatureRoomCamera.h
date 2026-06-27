#ifndef BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H
#define BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "InnerCamera.h" /* For struct InnerCamera */

// Forward Declares

struct InnerRoom;
struct LHCoord;

class CreatureRoomCamera: public InnerCamera
{
public:
    uint8_t field_0x46c[0x58];

    // Override methods

    // BW1W120 00789da0 BW1M100 10288e30 CreatureRoomCamera::Init(char *)
    virtual void Init(char* param_1);
    // BW1W120 00789e00 BW1M100 10288de0 CreatureRoomCamera::Close(void)
    virtual void Close();
    // BW1W120 00789e10 BW1M100 10288d70 CreatureRoomCamera::Update(InnerRoom *, float, int, int, LHCoord const &, bool)
    virtual void Update(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord* param_5, bool param_6);
    // BW1W120 0078a3e0 BW1M100 10287ad0 CreatureRoomCamera::UpdateMain(InnerRoom *, float, int, int, LHCoord const &, bool)
    virtual void UpdateMain(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord* param_5, bool param_6);
    // BW1W120 00789e40 BW1M100 10288c00 CreatureRoomCamera::UpdateState(InnerRoom *, float, int, int, LHCoord const &, bool)
    virtual void UpdateState(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord* param_5, bool param_6);
};

#endif /* BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H */
