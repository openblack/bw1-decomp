#ifndef BW1_DECOMP_LH3D_CAMERA_INCLUDED_H
#define BW1_DECOMP_LH3D_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

class LH3DObject;
struct LHMatrix;

struct LH3DCamera
{
	LHPoint pos; /* 0x0 */
	LHPoint foc;
	float   fov; /* 0x18 */
	LHPoint LookAtVector;

	// Static methods

	// BW1W120 null BW1M119 011690a0 (LHCombined Release)
	static LH3DCamera* Create(void* data, bool create);

	// Non-virtual methods

	// BW1W120 null BW1M119 01168860 (LHCombined Release)
	void GetCamera(LH3DObject* object, unsigned long flags, LHPoint* position, LHPoint* focus, LHMatrix* matrix);
	// BW1W120 null BW1M119 01169250 (LHCombined Release)
	void GetCamera(LH3DObject* object, unsigned long flags, LHPoint* position, LHPoint* focus);
	// BW1W120 null BW1M119 01169590 (LHCombined Release)
	void Release();
	// BW1W120 null BW1M119 01168560 (LHCombined Release)
	void SetTechCamera(LH3DObject* object, unsigned long flags);
	// BW1W120 null BW1M119 0116a7b0 (LHCombined Release)
	void SetTechCamera(LHMatrix* matrix, unsigned long flags);
};

#endif /* BW1_DECOMP_LH3D_CAMERA_INCLUDED_H */
