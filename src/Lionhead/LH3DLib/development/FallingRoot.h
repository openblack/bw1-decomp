#ifndef BW1_DECOMP_FALLING_ROOT_INCLUDED_H
#define BW1_DECOMP_FALLING_ROOT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

// Forward Declares

class LH3DObject;

class FallingRoot
{
public:
	// Static members

	// BW1W120 00eb9a10 BW1M119 011f1e1c (LHCombined Release)
	static FallingRoot* g_first;

	LH3DObject*  Object;           /* 0x00 */
	float        StartHeight;      /* 0x04 */
	float        GroundHeight;     /* 0x08 */
	float        Time;             /* 0x0c */
	uint8_t      field_0x10[0x30]; /* 0x10 */
	FallingRoot* Next;             /* 0x40 */

	// Constructors

	// BW1W120 00826280 BW1M119 010ccce0 (LHCombined Release)
	FallingRoot(LH3DObject* object, int mesh);

	// Destructor

	// BW1W120 00826370 BW1M119 01073d40 (LHCombined Release)
	~FallingRoot();

	// Non-virtual methods

	// BW1W120 008261d0 BW1M119 010b3a50 (LHCombined Release)
	void Update();
	// BW1W120 008263c0 BW1M119 010d1d70 (LHCombined Release)
	void Reset();
	// BW1W120 00826470 BW1M119 01127780 (LHCombined Release)
	void Draw();
};
static_assert(sizeof(FallingRoot) == 0x44, "Data type is of wrong size");

#endif /* BW1_DECOMP_FALLING_ROOT_INCLUDED_H */
