#ifndef BW1_DECOMP_SUB_ARGUMENT_INCLUDED_H
#define BW1_DECOMP_SUB_ARGUMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct CreatureSubActionAgenda;
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

// Object Oriented datastructures

// win1.41 009d03a8 mac inlined SubArgument::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11SubArgument asm("??_R0?AVSubArgument@@@8");
// win1.41 009a9718 mac inlined SubArgument::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11SubArgument asm("??_R1A@?0A@A@SubArgument@@8");
// win1.41 inlined mac 1077e3e4 SubArgument::`vftable'
extern const struct SubArgumentVftable __vt__11SubArgument asm("??_7SubArgument@@6B@");

#endif /* BW1_DECOMP_SUB_ARGUMENT_INCLUDED_H */
