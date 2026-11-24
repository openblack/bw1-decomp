#ifndef BW1_DECOMP_LH3D_CAMERA_INCLUDED_H
#define BW1_DECOMP_LH3D_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

class LH3DObject;
struct LHMatrix;

struct LH3DCameraView
{
	LHPoint pos; /* 0x0 */
	LHPoint foc;
	float   fov; /* 0x18 */
	LHPoint LookAtVector;
};

// A camera path loaded from a .cam file: the header is followed by NumKeys keys spread evenly over Duration.
struct LH3DCamera
{
	long          Size;     /* 0x0 */
	unsigned long Duration; /* 0x4 */
	unsigned long NumKeys;  /* 0x8 */

	// BW1W120 0086d4a0 BW1M119 011690a0 (LHCombined Release)
	static LH3DCamera* Create(void* data, bool with_matrices);

	// BW1W120 0086d760 BW1M119 01168860 (LHCombined Release)
	void __fastcall GetCamera(LH3DObject* object, unsigned long time, LHPoint* position, LHPoint* focus,
	                          LHMatrix* matrix);
	// BW1W120 0086d4e0 BW1M119 01169250 (LHCombined Release)
	void __fastcall GetCamera(LH3DObject* object, unsigned long time, LHPoint* position, LHPoint* focus);
	// BW1W120 0086d4d0 BW1M119 01169590 (LHCombined Release)
	void Release();
#ifndef VERSION_BW1W100
	// BW1W120 0086ddd0 BW1M119 01168560 (LHCombined Release)
	void __fastcall SetTechCamera(LH3DObject* object, unsigned long time);
	// BW1W120 0086db40 BW1M119 0116a7b0 (LHCombined Release)
	void __fastcall SetTechCamera(LHMatrix* matrix, unsigned long time);
#endif
};

#endif /* BW1_DECOMP_LH3D_CAMERA_INCLUDED_H */
