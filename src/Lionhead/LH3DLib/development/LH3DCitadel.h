#ifndef BW1_DECOMP_LH3D_CITADEL_INCLUDED_H
#define BW1_DECOMP_LH3D_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LH3DStaticMorphableObject.h" /* For struct LH3DStaticMorphableObject */

class LH3DCitadel: public LH3DStaticMorphableObject
{
public:
    uint8_t field_0x84[0x3c];
};

#endif /* BW1_DECOMP_LH3D_CITADEL_INCLUDED_H */
