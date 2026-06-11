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

    // win1.41 0066fcb0 mac inlined PowerSpinRunner::DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue(void)
    virtual void DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue();
};

#endif /* BW1_DECOMP_POWER_SPIN_INCLUDED_H */
