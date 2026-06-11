#ifndef BW1_DECOMP_VALUE_SPINNER_INCLUDED_H
#define BW1_DECOMP_VALUE_SPINNER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

#include "DrawingObject.h" /* For struct DrawingObject */

class ValueSpinner: public DrawingObject
{
public:
    ValueSpinner* next; /* 0x4 */
    LHPoint point;
    uint32_t field_0x14;
    float field_0x18;
    LH3DColor color;
    char16_t text[0x40]; /* 0x20 */
};

#endif /* BW1_DECOMP_VALUE_SPINNER_INCLUDED_H */
