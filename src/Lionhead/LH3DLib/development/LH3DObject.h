#ifndef BW1_DECOMP_LH3D_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHMatrix.h" /* For struct LHMatrix */

// Forward Declares

struct LH3DAnim;
struct LH3DLODData;
struct LH3DMaterial;
struct LH3DMesh;
struct LHBoundingBox;
struct LHPoint;

class LH3DObject
{
public:
    uint32_t flags_1; /* 0x4 */
    uint32_t flags_2;
    uint32_t field_0xc;
    float importance; /* 0x10 */
    LHMatrix matrix;
    float scale; /* 0x44 */
    float y_angle;
    LH3DColor color;
    LH3DColor specular; /* 0x50 */
    LH3DColor window_color;
    int snow_level;
    int field_0x5c;
    uint32_t field_0x60;
    uint32_t field_0x64;
    float u;
    float v;
    LH3DObject* next; /* 0x70 */
    uint32_t field_0x74;
    uint8_t field_0x78;

    // Static methods

    // win1.41 00423140 mac 10041480 LH3DObject::SetPosition(const LHPoint&, float, float)
    static void SetPosition(LH3DObject* this, LHPoint* point, float y_angle, float scale);
    // win1.41 0080b4d0 mac 10620204 LH3DObject::Create(LH3DObject::ObjectType)
    static LH3DObject* Create(LH3DObject__ObjectType object_type);

    // Constructors

    // win1.41 inlined mac inlined LH3DObject::LH3DObject(void)
    LH3DObject();
};

#endif /* BW1_DECOMP_LH3D_OBJECT_INCLUDED_H */
