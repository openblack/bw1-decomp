#ifndef BW1_DECOMP_LH_FAST_POINTER_INCLUDED_H
#define BW1_DECOMP_LH_FAST_POINTER_INCLUDED_H

#ifdef __cplusplus

#include <cstddef>

template<typename T>
struct LHFastPointer
{
    T* payload;
    LHFastPointer() : payload(NULL) {};
    inline operator T*() { return payload; }
};

#endif // __cplusplus

#endif // BW1_DECOMP_LH_FAST_POINTER_INCLUDED_H
