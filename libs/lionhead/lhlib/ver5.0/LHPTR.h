#ifndef BW1_DECOMP_LH_PTR_INCLUDED_H
#define BW1_DECOMP_LH_PTR_INCLUDED_H

#ifdef __cplusplus

#include <cstddef>

template<typename T>
struct LHPTR
{
    T* payload;
    inline operator T*() { return payload; }
    void Clear() { payload = NULL; }
};

#endif // __cplusplus

#endif // BW1_DECOMP_LH_PTR_INCLUDED_H
