#ifndef BW1_DECOMP_LH3D_ANIMATED_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_ANIMATED_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DMeshedObject.h" /* For struct LH3DMeshedObject */

class LH3DAnimatedObject: public LH3DMeshedObject
{
public:
    uint32_t current_anim; /* 0x80 */
    uint32_t field_0x84;
    uint32_t field_0x88;
    uint32_t field_0x8c;
    uint32_t field_0x90;
    uint32_t field_0x94;
    uint32_t field_0x98;
    uint32_t field_0x9c;
    uint32_t field_0xa0;

    // Constructors

    // BW1W120 inlined BW1M100 inlined LH3DAnimatedObject::LH3DAnimatedObject(void)
    LH3DAnimatedObject();
};

#endif /* BW1_DECOMP_LH3D_ANIMATED_OBJECT_INCLUDED_H */
