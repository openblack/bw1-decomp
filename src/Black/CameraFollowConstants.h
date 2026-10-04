#ifndef BW1_DECOMP_CAMERA_FOLLOW_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_CAMERA_FOLLOW_CONSTANTS_INCLUDED_H

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For PI_F, HALF_PI_F, QUARTER_PI_F */

const float CameraFollowMinViewingDistance = 2.0f;
const float CameraFollowMinPitch = -QUARTER_PI_F;
const float CameraFollowMaxPitch = PI_F * 7 / 16;
const float CameraFollowKeySpeed = 0.002f;
const float CameraFollowStartZoomTime = 2.0f;
const float CameraFollowEndZoomTime = 1.0f;
const float CameraFollowBlendDuration = 2.0f;

#endif /* BW1_DECOMP_CAMERA_FOLLOW_CONSTANTS_INCLUDED_H */
