#ifndef BW1_DECOMP_FUNC_T_INCLUDED_H
#define BW1_DECOMP_FUNC_T_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct FuncT;

struct FuncTVftable
{
  void (__fastcall* Eval)(const struct FuncT* this, const void* edx, float param_1, float* param_2, float* param_3);  /* 0x0 */
};
static_assert(sizeof(struct FuncTVftable) == 0x4, "Data type is of wrong size");

struct FuncT
{
  struct FuncTVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct FuncT) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_FUNC_T_INCLUDED_H */
