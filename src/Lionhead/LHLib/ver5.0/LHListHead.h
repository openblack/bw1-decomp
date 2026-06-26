#ifndef BW1_DECOMP_LH_LIST_HEAD_INCLUDED_H
#define BW1_DECOMP_LH_LIST_HEAD_INCLUDED_H

#include <stdint.h> // For uint32_t

template<typename T> // Must have T.next and must be T*
struct LHListHead {
    T* head;
    uint32_t count;

    inline LHListHead()
      : head(NULL)
      , count(0)
    {
    }

    void AddToLast(T* element);
};

#endif /* BW1_DECOMP_LH_LIST_HEAD_INCLUDED_H */
