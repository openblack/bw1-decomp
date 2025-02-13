#ifndef BW1_DECOMP_REVERSING_UTILS_COMMON_INCLUDED_H
#define BW1_DECOMP_REVERSING_UTILS_COMMON_INCLUDED_H

#include <stdint.h> /* For uint32_t */
#include <math.h> /* For fmaxf, fminf */

struct HWND__; typedef struct HWND__ *HWND;
struct HINSTANCE__; typedef struct HINSTANCE__ *HINSTANCE;
typedef struct _RTL_CRITICAL_SECTION RTL_CRITICAL_SECTION;

typedef uint32_t bool32_t;

struct vec2u16
{
  uint16_t x, y;
};

inline float clampf(float a, float minimum, float maximum) {
  return fminf(fmaxf(a, minimum), maximum);
}

inline float saturatef(float a) {
  return clampf(a, 0.0f, 1.0f);
}

inline int clampi(int a, int minimum, int maximum) {
  if (a < minimum)
    return minimum;
  if (a > maximum)
    return maximum;
  return a;
}

#endif /* BW1_DECOMP_REVERSING_UTILS_COMMON_INCLUDED_H */
