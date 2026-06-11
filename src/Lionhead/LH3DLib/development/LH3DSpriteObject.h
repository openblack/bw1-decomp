#ifndef BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DObject.h" /* For struct LH3DObject */

// Forward Declares

struct LH3DSmoke;

class LH3DSpriteObject: public LH3DObject
{
public:
    LH3DSmoke* smoke; /* 0x7c */

    // Constructors

    // win1.41 00815380 mac 10078250 LH3DSpriteObject::LH3DSpriteObject(long)
    LH3DSpriteObject(int type);
};

#endif /* BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H */
