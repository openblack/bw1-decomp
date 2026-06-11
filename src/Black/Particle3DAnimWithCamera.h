#ifndef BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Particle3DAnim.h" /* For struct Particle3DAnim */

// Forward Declares

class Base;

class Particle3DAnimWithCamera: public Particle3DAnim
{
public:

    // Override methods

    // win1.41 006c8680 mac inlined Particle3DAnimWithCamera::_dt(void)
    virtual ~Particle3DAnimWithCamera();
};

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H */
