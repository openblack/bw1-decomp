#ifndef BW1_DECOMP_CAMERA_MODE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

// Forward Declares

class GCamera;
class GameOSFile;
struct LHCoord;

class CameraMode
{
public:
    GCamera* camera; /* 0x4 */
};

#endif /* BW1_DECOMP_CAMERA_MODE_INCLUDED_H */
