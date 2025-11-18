#ifndef BW1_DECOMP_LH_STACK_INCLUDED_H
#define BW1_DECOMP_LH_STACK_INCLUDED_H

/// Every template of the form
///   template<typename T>
///   class LHStack
///   {
///     T* stack[8];
///     uint32_t current;
///
///   public:
///     void Push(T* val)
///     {
///       stack[current] = val;
///       ++current;
///     }
///   };
/// has the same structure

#include <stdint.h> /* For uin32_t */

#define DECLARE_LH_STACK(T) \
struct LHStack__##T         \
{                           \
  struct T* stack[8];       \
  uint32_t current;         \
};

#endif /* BW1_DECOMP_LH_STACK_INCLUDED_H */
