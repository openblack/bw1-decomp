#ifndef BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DObject.h" /* For struct LH3DObject */

// Forward Declares

struct LH3DMesh;
struct LHPoint;

class LH3DMeshedObject: public LH3DObject
{
public:
    LH3DMesh* mesh; /* 0x7c */

    // Static methods

    // BW1W120 007f9d60 BW1M100 10029180 LH3DMeshedObject::SetDrawWithGlobalAlpha(int) (this is fastcall, not thiscall)
    static void SetDrawWithGlobalAlpha(LH3DMeshedObject* this, int value);
    // BW1W120 007f9fb0 BW1M100 1000bf70 LH3DMeshedObject::GetDoorPos(LHPoint *) const (this is fastcall, not thiscall)
    static bool GetDoorPos(LH3DMeshedObject* this, LHPoint* out_point);

    // Constructors

    // BW1W120 008164b0 BW1M100 10076460 LH3DMeshedObject::LH3DMeshedObject(void)
    LH3DMeshedObject();
};

#endif /* BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H */
