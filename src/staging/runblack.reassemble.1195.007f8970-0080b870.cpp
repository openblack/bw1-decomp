#include "lionhead/lh3dlib/development/LH3DSmoke.h"
#include "lionhead/lh3dlib/development/LH3DMist.h"
#include "lionhead/lh3dlib/development/LH3DMeshedObject.h"
#include "lionhead/lh3dlib/development/LHMatrix.h"
#include "lionhead/lh3dlib/development/PhysOb.h"
#include "lionhead/lh3dlib/development/LH3DIsland.h"
#include "lionhead/lh3dlib/development/LH3DMesh.h"
#include "lionhead/lh3dlib/development/LH3DPrimitive.h"
#include "lionhead/lh3dlib/development/LH3DObject.h"

// win1.41 007f8b60 mac 100b4ab0 LH3DSmoke::Create(const LHPoint*)
LH3DSmoke* LH3DSmoke::Create(LHPoint* position)
{
    return 0;
}

// win1.41 007f8d10 mac 100b4a50 LH3DSmoke::Release(void)
void LH3DSmoke::Release()
{
}

// win1.41 007f9560 mac 100b45b0 LH3DMist::LH3DMist(void)
LH3DMist::LH3DMist()
{
}

// win1.41 007f9d60 mac 10029180 LH3DMeshedObject::SetDrawWithGlobalAlpha(int) (this is fastcall, not thiscall)
void LH3DMeshedObject::SetDrawWithGlobalAlpha(int value)
{
}

// win1.41 007f9fb0 mac 1000bf70 LH3DMeshedObject::GetDoorPos(LHPoint *) const (this is fastcall, not thiscall)
bool32_t LH3DMeshedObject::GetDoorPos(LHPoint* out_point) const
{
    return 0;
}

// win1.41 007fb290 mac 1004f05c LHMatrix::SetInverse(LHMatrix const &)
void LHMatrix::SetInverse(const LHMatrix& r)
{
}

// win1.41 007fb780 mac 10088820 PhysOb::Initialise(LH3DObject *, float)
void PhysOb::Initialise(LH3DObject* obj, float param_3)
{
}

// win1.41 007ff2d0 mac 10022e10 LH3DIsland::PreDraw(void)
void LH3DIsland::PreDraw()
{
}

// win1.41 00803090 mac 10048554 LH3DIsland::GetAltitude(LH3DMapCoords const &)
float LH3DIsland::GetAltitude(const LH3DMapCoords& coord)
{
    return 0;
}

// win1.41 00803340 mac 10048110 LH3DIsland::GetAltitudeAndSetColorSpecular(LH3DMapCoords const &, ulong *, ulong *)
float LH3DIsland::GetAltitudeAndSetColorSpecular(const LH3DMapCoords& coord, LH3DColor* param_2, LH3DColor* param_3)
{
    return 0;
}

// win1.41 00803c00 mac 10046910 LH3DIsland::Create(void)
uint32_t LH3DIsland::Create()
{
    return 0;
}

// win1.41 00804790 mac 1061cc34 LH3DIsland::Release(void)
bool32_t LH3DIsland::Release()
{
    return 0;
}

// win1.41 00806460 mac 1006c720 LH3DMesh::Create(void* , int)
LH3DMesh* LH3DMesh::Create(const void* buf, bool dont_care_about_texture)
{
    return 0;
}

// win1.41 008067f0 mac 1006c640 LH3DMesh::CreateFromHD(char *, int)
LH3DMesh* LH3DMesh::CreateFromHD(const char* filename, bool dont_care_about_textures)
{
    return 0;
}

// win1.41 00806d00 mac 1001165c LH3DMesh::Release(void)
void LH3DMesh::Release()
{
}

// win1.41 00807be0 mac 1006b210 LH3DMesh::CreatePackInternal(void*)
void LH3DMesh::CreatePackInternal(const void* data)
{
}

// win1.41 00807c60 mac 1006b160 LH3DMesh::CreatePack(void)
void LH3DMesh::CreatePack()
{
}

// win1.41 00807f30 mac 1006ad00 LH3DPrimitive::ComputeBoundingBox(LHPoint&, LHPoint&, int&)
void LH3DPrimitive::ComputeBoundingBox(LHPoint& maxima, LHPoint& minima, int& initialized)
{
}

// win1.41 008081b0 mac 1006aad0 LH3DMesh::ComputeBoundingBox(void)
void LH3DMesh::ComputeBoundingBox()
{
}

// win1.41 0080b4d0 mac 10620204 LH3DObject::Create(LH3DObject::ObjectType)
LH3DObject* LH3DObject::Create(LH3DObject::ObjectType object_type)
{
    return 0;
}
