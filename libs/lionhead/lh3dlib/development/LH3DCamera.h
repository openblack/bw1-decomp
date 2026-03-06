#ifndef BW1_DECOMP_LH3D_CAMERA_INCLUDED_H
#define BW1_DECOMP_LH3D_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

#ifdef __cplusplus

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

#else // __cplusplus

struct LH3DCamera
{
  struct LHPoint pos;  /* 0x0 */
  struct LHPoint foc;
  float fov;  /* 0x18 */
  struct LHPoint lookAtVector;
};
static_assert(sizeof(struct LH3DCamera) == 0x28, "Data type is of wrong size");

// Static methods

// win1.41 0045a7f0 mac inlined LH3DCamera::GetPos(void)
struct LHPoint* __stdcall GetPos__10LH3DCameraFv(void);

#endif // __cplusplus

#endif /* BW1_DECOMP_LH3D_CAMERA_INCLUDED_H */
