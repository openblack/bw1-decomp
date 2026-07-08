#ifndef BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H
#define BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class MPFEChannelSelector;

class MPFEChooseConnection : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 0062b340 BW1M100 1039f9c0 MPFEChooseConnection::Destroy(void)
	virtual void Destroy();

	// Static methods

	// BW1W120 0062b030 BW1M100 1039fa00 MPFEChooseConnection::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	static void Init(MPFEChannelSelector* this, const void* edx, uint32_t param_1, uint32_t param_2, void* callback);
};

#endif /* BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H */
