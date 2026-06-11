#ifndef BW1_DECOMP_LH3D_MIST_INCLUDED_H
#define BW1_DECOMP_LH3D_MIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

class LH3DMist: public LH3DStaticObject
{
public:
    uint32_t field_0x80;
    uint32_t field_0x84;
    float field_0x88;
    float field_0x8c;
    uint32_t field_0x90;
    LH3DMist* next;
    uint32_t field_0x98;

    // Constructors

    // win1.41 007f9560 mac 100b45b0 LH3DMist::LH3DMist(void)
    LH3DMist();
};

#endif /* BW1_DECOMP_LH3D_MIST_INCLUDED_H */
