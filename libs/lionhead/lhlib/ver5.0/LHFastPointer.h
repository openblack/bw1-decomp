#ifndef BW1_DECOMP_LH_FAST_POINTER_INCLUDED_H
#define BW1_DECOMP_LH_FAST_POINTER_INCLUDED_H

template<typename T>
struct LHFastPointer
{
    T* payload;
    LHFastPointer() : payload(NULL) {};
};

#endif // BW1_DECOMP_LH_FAST_POINTER_INCLUDED_H