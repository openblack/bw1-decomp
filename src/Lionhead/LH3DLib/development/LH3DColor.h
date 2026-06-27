#ifndef BW1_DECOMP_LH3D_COLOR_INCLUDED_H
#define BW1_DECOMP_LH3D_COLOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LH3DColor
{
    uint8_t b; /* 0x0 */
    uint8_t g;
    uint8_t r;
    uint8_t a;

    // Constructors

    // BW1W120 inlined BW1M100 10083c40 LH3DColor::LH3DColor(uint)
    LH3DColor(uint32_t color);
    // BW1W120 inlined BW1M100 100530b0 LH3DColor::LH3DColor(LH3DColor const &)
    LH3DColor(const LH3DColor* other);

    // Non-virtual methods

    // BW1W120 inlined BW1M100 1047dc00 LH3DColor::operator=(LH3DColor const &)
    void operator=(const LH3DColor* other);
};

#endif /* BW1_DECOMP_LH3D_COLOR_INCLUDED_H */
