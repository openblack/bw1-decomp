#ifndef BW1_DECOMP_POWER_SPIN_INCLUDED_H
#define BW1_DECOMP_POWER_SPIN_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "DrawingObject.h" /* For struct DrawingObject */

class PowerSpin: public DrawingObject
{
public:
};

class PowerSpinRunner: public PowerSpin
{
public:

    // Override methods

    // BW1W120 0066fcb0 BW1M100 inlined PowerSpinRunner::DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue(void)
    virtual void DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue();
};

#endif /* BW1_DECOMP_POWER_SPIN_INCLUDED_H */
