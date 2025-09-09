#ifndef BW1_DECOMP_P_SYS_GEOM_INCLUDED_H
#define BW1_DECOMP_P_SYS_GEOM_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "FuncT.h" /* For struct FuncT */

struct TestFunnel
{
  struct FuncT super;  /* 0x0 */
};
static_assert(sizeof(struct TestFunnel) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 006868e0 mac 10402ae0 TestFunnel::Eval( const(float, float *, float *))
void __fastcall Eval__10TestFunnelCFfPfPf(const struct FuncT* this, const void* edx, float param_1, float* param_2, float* param_3) asm("?Eval@TestFunnel@@UBEXMPAM0@Z");

struct TestFunnelParab
{
  struct FuncT super;  /* 0x0 */
};
static_assert(sizeof(struct TestFunnelParab) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00686910 mac 104029c0 TestFunnelParab::Eval( const(float, float *, float *))
void __fastcall Eval__15TestFunnelParabCFfPfPf(const struct FuncT* this, const void* edx, float param_1, float* param_2, float* param_3) asm("?Eval@TestFunnelParab@@UBEXMPAM0@Z");

struct TestFunnelSpout
{
  struct FuncT super;  /* 0x0 */
};
static_assert(sizeof(struct TestFunnelSpout) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00686940 mac 10402a20 TestFunnelSpout::Eval( const(float, float *, float *))
void __fastcall Eval__15TestFunnelSpoutCFfPfPf(const struct FuncT* this, const void* edx, float param_1, float* param_2, float* param_3) asm("?Eval@TestFunnelSpout@@UBEXMPAM0@Z");

#endif /* BW1_DECOMP_P_SYS_GEOM_INCLUDED_H */
