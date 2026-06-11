#ifndef BW1_DECOMP_CHALLENGE_ROOM_CAMERA_INCLUDED_H
#define BW1_DECOMP_CHALLENGE_ROOM_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "InnerCamera.h" /* For struct InnerCamera */

class ChallengeRoomCamera: public InnerCamera
{
public:

    // Override methods

    // win1.41 00785300 mac 101b6a80 ChallengeRoomCamera::Init(char *)
    virtual void Init(char* param_1);
    // win1.41 00785250 mac 101b6c30 ChallengeRoomCamera::Reinit(void)
    virtual void Reinit();
    // win1.41 007854c0 mac 101b6a20 ChallengeRoomCamera::Close(void)
    virtual void Close();
};

#endif /* BW1_DECOMP_CHALLENGE_ROOM_CAMERA_INCLUDED_H */
