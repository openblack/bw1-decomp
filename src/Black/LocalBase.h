#ifndef BW1_DECOMP_LOCAL_BASE_INCLUDED_H
#define BW1_DECOMP_LOCAL_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class LocalBase : public Base
{
public:
	// Static methods

	// BW1W120 005f8790 BW1M119 010a09e0
	static LocalBase* __nw(size_t size, const char* file_name, uint32_t line);
	// BW1W120 005f8810 BW1M119 0110bb90
	static void operator delete(void* ptr, size_t size);

	// Constructors

	// BW1W120 inlined BW1M119 01352d50
	LocalBase() {}
};

#endif /* BW1_DECOMP_LOCAL_BASE_INCLUDED_H */
