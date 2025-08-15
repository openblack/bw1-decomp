#ifndef BW1_DECOMP_SUB_ARGUMENT_INCLUDED_H
#define BW1_DECOMP_SUB_ARGUMENT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_common.h> /* For bool32_t */

// Forward Declares

struct LHPoint;
struct Object;
struct SubArgument;

struct SubArgumentVftable
{
  void (__fastcall* SetArgumentOfSubActionAgenda)(struct SubArgument* this, const void* edx, struct CreatureSubActionAgenda* param_1, uint32_t param_2);  /* 0x0 */
  bool32_t (__fastcall* HasDestination)(struct SubArgument* this);
  struct LHPoint* (__fastcall* GetDestination)(struct SubArgument* this);
  struct Object* (__fastcall* GetObject)(struct SubArgument* this);
};
static_assert(sizeof(struct SubArgumentVftable) == 0x10, "Data type is of wrong size");

struct SubArgument
{
  struct SubArgumentVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct SubArgument) == 0x4, "Data type is of wrong size");

// win1.41 inline mac 1077e3e4 SubArgument::`vftable'
extern const struct SubArgumentVftable __vt__11SubArgument asm("??_7SubArgument@@6B@");

#endif /* BW1_DECOMP_SUB_ARGUMENT_INCLUDED_H */
