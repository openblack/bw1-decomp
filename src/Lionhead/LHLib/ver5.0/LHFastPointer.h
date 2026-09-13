#ifndef BW1_DECOMP_LH_FAST_POINTER_INCLUDED_H
#define BW1_DECOMP_LH_FAST_POINTER_INCLUDED_H

#include <stddef.h> /* For NULL */

// Mac symbols retain this one-pointer wrapper in list heads and node links.
template <typename T> class LHFastPointer
{
	T* Pointer;

public:
	LHFastPointer() : Pointer(NULL) {}
	T*   Get() const { return Pointer; }
	void Set(T* pointer) { Pointer = pointer; }
	void Clear() { Pointer = NULL; }
};

#endif /* BW1_DECOMP_LH_FAST_POINTER_INCLUDED_H */
