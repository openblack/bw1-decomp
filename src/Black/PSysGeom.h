#ifndef BW1_DECOMP_P_SYS_GEOM_INCLUDED_H
#define BW1_DECOMP_P_SYS_GEOM_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "FuncT.h" /* For struct FuncT */

class TestFunnel : public FuncT
{
public:
	// Override methods

	// BW1W120 006868e0 BW1M119 0140d1c0
	virtual void Eval(float param_1, float* param_2, float* param_3) const;
};

class TestFunnelParab : public FuncT
{
public:
	// Override methods

	// BW1W120 00686910 BW1M119 0140d090
	virtual void Eval(float param_1, float* param_2, float* param_3) const;
};

class TestFunnelSpout : public FuncT
{
public:
	// Override methods

	// BW1W120 00686940 BW1M119 0140d0f0
	virtual void Eval(float param_1, float* param_2, float* param_3) const;
};

#endif /* BW1_DECOMP_P_SYS_GEOM_INCLUDED_H */
