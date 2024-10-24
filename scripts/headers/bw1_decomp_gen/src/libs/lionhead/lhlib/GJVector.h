#ifndef BLACKHACK_GJ_VECTOR_H
#define BLACKHACK_GJ_VECTOR_H

#include <stdint.h> // For uint32_t

/// Every template of the form
///   template<typename T>
///   class GJVector<T> {
///     uint32_t field_0x0;
///     uint32_t field_0x4;
///     uint32_t field_0x8;
///     uint32_t field_0xc = 10;
///   };
/// has the same structure

#define DECLARE_GJ_VECTOR(T) \
struct GJVector__##T         \
{                            \
  uint32_t field_0x0;        \
  uint32_t field_0x4;        \
  uint32_t field_0x8;        \
  uint32_t field_0xc;        \
}

#endif /* BLACKHACK_GJ_VECTOR_H */
