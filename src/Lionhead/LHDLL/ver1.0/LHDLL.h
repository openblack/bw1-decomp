#ifndef BW1_DECOMP_LHDLL_INCLUDED_H
#define BW1_DECOMP_LHDLL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

class LHTransport;

class LHDLL
{
public:
	uint8_t      field_0x4;
	void*        hmodule;
	LHTransport* transport;
	int          field_0x10;
	uint32_t     field_0x14;
	uint32_t     field_0x18;
	uint32_t     field_0x1c;
	char*        library_path; /* 0x20 */

	// Static methods

	// BW1W120 007ad230 BW1M119 010da950 (LHCombined Release)
	static LHDLL* AddToInternalList(LHDLL* dll);

	// Constructors

	// BW1W120 007ad370 BW1M119 010da550 (LHCombined Release)
	LHDLL(const char* library_path);

	// Non-virtual Destructors

	// BW1W120 007ad4c0 BW1M119 010da420 (LHCombined Release)
	~LHDLL();

	virtual void GetAPI() = 0;
};

#endif /* BW1_DECOMP_LHDLL_INCLUDED_H */
