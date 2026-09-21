#ifndef BW1_DECOMP_LH3D_WAY_INCLUDED_H
#define BW1_DECOMP_LH3D_WAY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LH3DWay
{
	int      field_0x0;
	int      field_0x4;
	uint32_t field_0x8;
	float    field_0xc;
	float    field_0x10;
	uint8_t  field_0x14[0x8];

	// Non-virtual methods

	// BW1W120 00842f10 BW1M119 010d4100 (LHCombined Release)
	void Release();
	// BW1W120 00843500 BW1M119 010d35c0 (LHCombined Release)
	void Draw();
	// BW1W120 00844570 BW1M119 010d2200 (LHCombined Release)
	void AdjustPtr();
};

struct Q27LH3DWay7Running
{
	uint32_t field_0x0;
	uint8_t  field_0x4[0x200];
	float    field_0x204;
	LH3DWay* way;

	// Constructors

	// BW1W120 00843ed0 BW1M119 010d2c70 (LHCombined Release)
	Q27LH3DWay7Running(LH3DWay* param_2);
};

#endif /* BW1_DECOMP_LH3D_WAY_INCLUDED_H */
