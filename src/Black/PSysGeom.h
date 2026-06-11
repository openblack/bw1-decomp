#ifndef BW1_DECOMP_P_SYS_GEOM_INCLUDED_H
#define BW1_DECOMP_P_SYS_GEOM_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "FuncT.h" /* For struct FuncT */

class TestFunnel: public FuncT
{
public:

    // Override methods

    // win1.41 006868e0 mac 10402ae0 TestFunnel::Eval( const(float, float *, float *))
    virtual void Eval(float param_1, float* param_2, float* param_3);
};

class TestFunnelParab: public FuncT
{
public:

    // Override methods

    // win1.41 00686910 mac 104029c0 TestFunnelParab::Eval( const(float, float *, float *))
    virtual void Eval(float param_1, float* param_2, float* param_3);
};

class TestFunnelSpout: public FuncT
{
public:

    // Override methods

    // win1.41 00686940 mac 10402a20 TestFunnelSpout::Eval( const(float, float *, float *))
    virtual void Eval(float param_1, float* param_2, float* param_3);
};

#endif /* BW1_DECOMP_P_SYS_GEOM_INCLUDED_H */
