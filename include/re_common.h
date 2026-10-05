#ifndef BW1_DECOMP_REVERSING_UTILS_COMMON_INCLUDED_H
#define BW1_DECOMP_REVERSING_UTILS_COMMON_INCLUDED_H

#include <stdint.h> /* For uint32_t */

struct vec2u16
{
	uint16_t x, y;
};

typedef int32_t bool32_t;

// Number of elements in a fixed-size array (MSVC 6.0 has no _countof)
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))

// Limits value to the range [low, high]
// clang-format off
#define CLAMP(value, low, high) if (value < low) { value = low; } else if (value > high) { value = high; }
// clang-format on

#endif /* BW1_DECOMP_REVERSING_UTILS_COMMON_INCLUDED_H */
