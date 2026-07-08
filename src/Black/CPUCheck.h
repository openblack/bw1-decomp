#ifndef BW1_DECOMP_CPU_CHECK_INCLUDED_H
#define BW1_DECOMP_CPU_CHECK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

class CPUCheck
{
public:
	// Override methods

	// BW1W120 00471a80 BW1M100 100c00a0 CPUCheck::~CPUCheck(void)
	virtual ~CPUCheck();
};

#endif /* BW1_DECOMP_CPU_CHECK_INCLUDED_H */
