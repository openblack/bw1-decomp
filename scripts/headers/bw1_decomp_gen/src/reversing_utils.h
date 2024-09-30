#ifndef BW1_DECOMP_REVERSING_UTILS_INCLUDED_H
#define BW1_DECOMP_REVERSING_UTILS_INCLUDED_H

#include <stdint.h> /* For uint32_t */

struct HWND__; typedef struct HWND__ *HWND;
typedef struct _RTL_CRITICAL_SECTION RTL_CRITICAL_SECTION;

typedef uint32_t bool32_t;

struct vec2u16
{
  uint16_t x, y;
};

#endif // BW1_DECOMP_REVERSING_UTILS_INCLUDED_H
