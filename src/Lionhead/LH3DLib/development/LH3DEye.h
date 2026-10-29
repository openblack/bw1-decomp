#ifndef BW1_DECOMP_LH3D_EYE_INCLUDED_H
#define BW1_DECOMP_LH3D_EYE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

// Forward Declares

class LH3DAnimatedObject;
struct ExtraBone;

class LH3DEye
{
public:
	uint8_t field_0x0[0x54];

	// Constructors

	// BW1W120 00884100 BW1M119 010b9f40 (LHCombined Release)
	LH3DEye(ExtraBone* bones, LH3DAnimatedObject* object, long index);

	// Destructor

	// BW1W120 00884570 BW1M119 010ba390 (LHCombined Release)
	~LH3DEye();

	// Non-virtual methods

	// BW1W120 00883560 BW1M119 01017d30 (LHCombined Release)
	void Draw();
};
static_assert(sizeof(LH3DEye) == 0x54, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_EYE_INCLUDED_H */
