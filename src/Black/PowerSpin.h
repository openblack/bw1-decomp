#ifndef BW1_DECOMP_POWER_SPIN_INCLUDED_H
#define BW1_DECOMP_POWER_SPIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>
#include <Lionhead/LH3DLib/development/LHMatrix.h>

#include "DrawingObject.h" /* For struct DrawingObject */

class PowerSpin : public DrawingObject
{
public:
	// Declaration-only view: do not allocate before recovering the drawing data layout.
	// TODO: These real vtable entries are established, but original base-class placement is not.
	// BW1W120 0066fcb0 BW1M100 1011dee0 PowerSpin::Init(wchar_t*, LHPoint const&, LHPoint const&, float, float, int)
	virtual void Init(char16_t* text, const LHPoint& pos, const LHPoint& direction, float param_4, float param_5,
	                  int param_6);
	// BW1W120 0066fd80 BW1M100 1011ddb0 PowerSpin::Update(LHPoint const&, LHPoint const&, float, float, int, float)
	virtual void Update(const LHPoint& pos, const LHPoint& direction, float param_3, float param_4, int param_5,
	                    float time);
	// BW1W120 0066fe80 PowerSpin::Draw(void)
	virtual void Draw();
};

class PowerSpinRunner : public PowerSpin
{
public:
	// BW1W120 00d4de74. Descriptive list-head name; destructor unlinks itself.
	static PowerSpinRunner* First;
	// BW1W120 0066f890 BW1M100 1011e000 PowerSpinRunner::Update(LHMatrix, float)
	virtual void Update(LHMatrix matrix, float time);
	// BW1W120 0066f840 BW1M100 1011e4c0 PowerSpinRunner::~PowerSpinRunner(void)
	// Scalar deleting destructor at 0066f820 occupies vtable slot +0x10.
	virtual ~PowerSpinRunner();
	// BW1W120 0066f790 BW1M100 1011e670 PowerSpinRunner::Init(wchar_t*, LHPoint const&)
	virtual void Init(char16_t* text, const LHPoint& pos);
};

#endif /* BW1_DECOMP_POWER_SPIN_INCLUDED_H */
