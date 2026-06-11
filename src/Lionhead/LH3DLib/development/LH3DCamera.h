#ifndef BW1_DECOMP_LH3D_CAMERA_INCLUDED_H
#define BW1_DECOMP_LH3D_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

struct LH3DCamera
{
    LHPoint pos; /* 0x0 */
    LHPoint foc;
    float fov; /* 0x18 */
    LHPoint lookAtVector;

    // Static methods

    // win1.41 0045a7f0 mac inlined LH3DCamera::GetPos(void)
    static LHPoint* GetPos();
};

#endif /* BW1_DECOMP_LH3D_CAMERA_INCLUDED_H */
