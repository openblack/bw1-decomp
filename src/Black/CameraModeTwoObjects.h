#ifndef BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "CameraMode.h" /* For struct CameraMode */

class CameraModeTwoObjects: public CameraMode
{
public:

    // Override methods

    // win1.41 00461c70 mac 101aa520 CameraModeTwoObjects::_dt(void)
    virtual ~CameraModeTwoObjects();
    // win1.41 0044a290 mac inlined CameraModeTwoObjects::CanPlayerGestureWhenCameraMoving(void)
    virtual bool CanPlayerGestureWhenCameraMoving();
    // win1.41 00461de0 mac 101aa880 CameraModeTwoObjects::Update(void)
    virtual void Update();
    // win1.41 0044a2b0 mac inlined CameraModeTwoObjects::Validate(void)
    virtual void Validate();
    // win1.41 0044a390 mac inlined CameraModeTwoObjects::Restart(void)
    virtual void Restart();
    // win1.41 00461d90 mac 101aac60 CameraModeTwoObjects::IsStillValid(void)
    virtual bool IsStillValid();
    // win1.41 0044a2d0 mac inlined CameraModeTwoObjects::Cleanup(void)
    virtual void Cleanup();
    // win1.41 0044a2e0 mac inlined CameraModeTwoObjects::CanExist(void)
    virtual bool CanExist();
};

#endif /* BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H */
