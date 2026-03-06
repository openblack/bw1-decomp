#ifndef BW1_DECOMP_LH_DYNAMIC_STACK_INCLUDED_H
#define BW1_DECOMP_LH_DYNAMIC_STACK_INCLUDED_H

/// Every template of the form
/// TODO:
/// has the same structure

#include <stdint.h> /* For uint8_t */

#ifdef __cplusplus

template <typename T>
struct LHDynamicStack
{
  uint8_t todo;
};

#else // __cplusplus

#define DECLARE_LH_DYNAMIC_STACK(T)   \
struct LHDynamicStack__##T            \
{                                     \
  uint8_t todo;                       \
};

struct LHDynamicStack__Ul
{
  uint8_t todo;
};

#endif // __cplusplus

#endif /* BW1_DECOMP_LH_DYNAMIC_STACK_INCLUDED_H */
