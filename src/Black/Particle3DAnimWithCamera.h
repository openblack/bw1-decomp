#ifndef BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Particle3DAnim.h" /* For struct Particle3DAnim */

// Forward Declares

class Base;
struct Zoomer3d;

class Particle3DAnimWithCamera : public Particle3DAnim
{
public:
	// Override methods

	// BW1W120 006c8680 BW1M119 inlined
	virtual ~Particle3DAnimWithCamera();

	// Non-virtual methods

	// BW1W120 0067aa70 BW1M119 013f7d70
	void UpdateCamera(Zoomer3d* origin, Zoomer3d* focus);
};

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H */
