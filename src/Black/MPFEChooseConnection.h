#ifndef BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H
#define BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class MPFEChannelSelector;

class MPFEChooseConnection: public DialogBoxBase
{
public:

    // Override methods

    // win1.41 0062b340 mac 1039f9c0 MPFEChooseConnection::Destroy(void)
    virtual void Destroy();

    // Static methods

    // win1.41 0062b030 mac 1039fa00 MPFEChooseConnection::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    static void Init(MPFEChannelSelector* this, const void* edx, uint32_t param_1, uint32_t param_2, void* callback);
};

#endif /* BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H */
