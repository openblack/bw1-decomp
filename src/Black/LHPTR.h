#ifndef BW1_DECOMP_LHPTR_INCLUDED_H
#define BW1_DECOMP_LHPTR_INCLUDED_H

#include <stddef.h> /* For NULL */

// A one-pointer smart pointer. The Mac symbols keep it for many object references (LHPTR<Object>, LHPTR<Town>,
// LHPTR<GPlayer>, ...) with these members; the header that declared it is unknown.
template <typename T> class LHPTR
{
	T* Pointer;

public:
	LHPTR() : Pointer(NULL) {}
	T*    Get() const { return Pointer; }
	void  Set(T* pointer) { Pointer = pointer; }
	void  Clear() { Pointer = NULL; }
	T*    operator->() const { return Pointer; }
	LHPTR operator=(T* pointer)
	{
		Pointer = pointer;
		return *this;
	}
};

#endif /* BW1_DECOMP_LHPTR_INCLUDED_H */
