#include "lionhead/lh3dlib/development/LH3DAnim.h"
#include "lhall/released/headers/RPHolder.h"

// win1.41 0083a1d0 mac 10129570 LH3DAnim::SetTransform(LH3DMatrix*, LH3DMesh*, LH3DMatrix*)
float LH3DAnim::SetTransform(LHMatrix* param_1, LH3DMesh* param_2, LHMatrix* param_3)
{
    return 0;
}

// win1.41 0083a6a0 mac 1001f930 LH3DAnim::GetListPtrFrames
// ERROR building signature: substring not found

// win1.41 0083aa30 mac 1061eac4 LH3DAnim::CreatePack(void)
void LH3DAnim::CreatePack()
{
}

// // win1.41 0083b2e0 mac 1061b374 RPHolder::RPHolder(void)
// RPHolder::RPHolder()
// {
// }

// win1.41 0083b300 mac 1061e7c4 RPHolder::InitialiseSystem(void (__cdecl *)(int, int, struct RPHolder *), void (__cdecl *)(struct RPHolder *))
void RPHolder::InitialiseSystem(void (__cdecl* param_1)(int, int, RPHolder*), void (__cdecl* param_2)(RPHolder*))
{
}

// win1.41 0083b330 mac 1061c58c RPHolder::Empty(void)
void RPHolder::Empty()
{
}

// win1.41 0083b860 mac 100ac020 RPHolder::GetSidePointOfStartObject(int, Point2D const &, Point2D &, int)
uint32_t RPHolder::GetSidePointOfStartObject(int param_1, Point2D* param_2, Point2D* param_3, int param_4)
{
    return 0;
}

// win1.41 0083bb60 mac 100ab580 RPHolder::GetFirstObject(Point2D const &, Point2D &, int, Point2D &, int &, float)
int RPHolder::GetFirstObject(Point2D* param_1, Point2D* param_2, int param_3, Point2D* param_4, int* param_5, float param_6)
{
    return 0;
}
