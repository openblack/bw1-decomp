#ifndef BW1_DECOMP_POWER_SPIN_INCLUDED_H
#define BW1_DECOMP_POWER_SPIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>
#include <Lionhead/LH3DLib/development/LHMatrix.h>

#include "DrawingObject.h" /* For struct DrawingObject */

class PowerSpin : public DrawingObject
{
public:
	// Observed prefix only; the drawing data and derived tail remain unrecovered.
	unsigned char field_0x4[0x9a4];
	LHPoint       Position; // 0x9a8, written by PowerSpin::Update
	// Declaration-only view: do not allocate before recovering the drawing data layout.
	// TODO: These real vtable entries are established, but original base-class placement is not.
	// BW1W120 0066fcb0 BW1M119 01127140
	virtual void Init(char16_t* text, const LHPoint& pos, const LHPoint& direction, float param_4, float param_5,
	                  int param_6);
	// BW1W120 0066fd80 BW1M119 01127000
	virtual void Update(const LHPoint& pos, const LHPoint& direction, float param_3, float param_4, int param_5,
	                    float time);
	// BW1W120 0066fe80 BW1M119 011268e0
	virtual void Draw();
};

class PowerSpinRunner : public PowerSpin
{
public:
	PowerSpinRunner* Next; // 0x9b4; do not allocate this partial type using sizeof
	// Descriptive list-head name; destructor unlinks itself.
	// BW1W120 00d4de74
	static PowerSpinRunner* First;
	// BW1W120 0066f890 BW1M119 01127260
	// Returns this or NULL and may delete itself.
	virtual PowerSpinRunner* Update(LHMatrix matrix, float time);
	// BW1W120 0066f840 BW1M119 01127720
	// Scalar deleting destructor at 0066f820 occupies vtable slot +0x10.
	virtual ~PowerSpinRunner();
	// BW1W120 0066f790 BW1M119 011278d0
	virtual void Init(char16_t* text, const LHPoint& pos);
};

#endif /* BW1_DECOMP_POWER_SPIN_INCLUDED_H */
