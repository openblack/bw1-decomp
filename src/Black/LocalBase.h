#ifndef BW1_DECOMP_LOCAL_BASE_INCLUDED_H
#define BW1_DECOMP_LOCAL_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class LocalBase : public Base
{
public:
	// Override methods

	// BW1W120 005c2150 BW1M119 013478f0
	virtual ~LocalBase();

	// Static methods

	// BW1W120 005f8790 BW1M119 010a09e0
	static LocalBase* __nw(size_t size, const char* file_name, uint32_t line);

	// Constructors

	// BW1W120 inlined BW1M119 01352d50
	LocalBase();
};

#endif /* BW1_DECOMP_LOCAL_BASE_INCLUDED_H */
