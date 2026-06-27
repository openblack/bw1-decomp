#ifndef BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CameraMode.h" /* For struct CameraMode */

class CameraModeTwoObjects: public CameraMode
{
public:

    // Override methods

    // BW1W120 00461c70 BW1M100 101aa520 CameraModeTwoObjects::_dt(void)
    virtual ~CameraModeTwoObjects();
    // BW1W120 0044a290 BW1M100 inlined CameraModeTwoObjects::CanPlayerGestureWhenCameraMoving(void)
    virtual bool CanPlayerGestureWhenCameraMoving();
    // BW1W120 00461de0 BW1M100 101aa880 CameraModeTwoObjects::Update(void)
    virtual void Update();
    // BW1W120 0044a2b0 BW1M100 inlined CameraModeTwoObjects::Validate(void)
    virtual void Validate();
    // BW1W120 0044a390 BW1M100 inlined CameraModeTwoObjects::Restart(void)
    virtual void Restart();
    // BW1W120 00461d90 BW1M100 101aac60 CameraModeTwoObjects::IsStillValid(void)
    virtual bool IsStillValid();
    // BW1W120 0044a2d0 BW1M100 inlined CameraModeTwoObjects::Cleanup(void)
    virtual void Cleanup();
    // BW1W120 0044a2e0 BW1M100 inlined CameraModeTwoObjects::CanExist(void)
    virtual bool CanExist();
};

#endif /* BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H */
