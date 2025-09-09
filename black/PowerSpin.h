#ifndef BW1_DECOMP_POWER_SPIN_INCLUDED_H
#define BW1_DECOMP_POWER_SPIN_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "DrawingObject.h" /* For struct DrawingObject */

struct PowerSpin
{
  struct DrawingObject super;  /* 0x0 */
};
static_assert(sizeof(struct PowerSpin) == 0x4, "Data type is of wrong size");

struct PowerSpinRunner
{
  struct PowerSpin super;  /* 0x0 */
};
static_assert(sizeof(struct PowerSpinRunner) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 0066fcb0 mac inlined PowerSpinRunner::DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue(void)
void __fastcall DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue__15PowerSpinRunnerFv(struct DrawingObject* this) asm("?DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue@PowerSpinRunner@@UAEXXZ");

#endif /* BW1_DECOMP_POWER_SPIN_INCLUDED_H */
