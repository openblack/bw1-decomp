#ifndef BW1_DECOMP_FUNC_T_INCLUDED_H
#define BW1_DECOMP_FUNC_T_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00c025c8 mac inlined FuncT::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5FuncT asm("??_R0?AVFuncT@@@8");
// win1.41 009b3e90 mac inlined FuncT::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5FuncT asm("??_R1A@?0A@A@FuncT@@8");

#endif /* BW1_DECOMP_FUNC_T_INCLUDED_H */
