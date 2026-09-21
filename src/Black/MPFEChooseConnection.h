#ifndef BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H
#define BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class MPFEChooseConnection : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 0062b340 BW1M119 013a7500
	virtual void Destroy();
	// Vtable +0x20 at 009307f8.
	// BW1W120 0062b350 BW1M119 013a6fe0
	virtual void InitControls();

	// Non-virtual methods

	// BW1W120 0062b030 BW1M119 013a7540
	void Init(uint32_t param_1, uint32_t param_2, void (*callback)(int, SetupBox*, SetupControl*, int, int));
};

#endif /* BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H */
