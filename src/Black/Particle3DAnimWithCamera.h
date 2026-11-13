#ifndef BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Particle3DAnim.h" /* For struct Particle3DAnim */

// Forward Declares

class Base;
class GameOSFile;
class Persistent;
struct Zoomer3d;

#define PARTICLE_3D_ANIM_WITH_CAMERA_ZOOM_TIME 0.3f

class Particle3DAnimWithCamera : public Particle3DAnim
{
public:
	Persistent* CameraCreator;
	uint8_t     field_0x34;
	bool        CameraActive;
	bool        CameraPositioned;
	float       PauseBeforePlay;
	bool        PauseFinished;

	// Override methods

	// BW1W120 006c8680 BW1M119 inlined
	virtual ~Particle3DAnimWithCamera();
	// BW1W120 006954c0 BW1M119 01425600
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc010 BW1M119 0148c360
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0067aa30 BW1M119 013f7f70
	virtual void DrawAt(const DrawData& data);

	// BW1W120 006c8630 BW1M119 01484130
	Particle3DAnimWithCamera();

	// Non-virtual methods

	// BW1W120 006c86c0 BW1M119 01483f80
	void StopCamera();
	// BW1W120 0067aa70 BW1M119 013f7d70
	void UpdateCamera(Zoomer3d* origin, Zoomer3d* focus);
};

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H */
