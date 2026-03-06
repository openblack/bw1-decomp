#include "InnerCamera.h"
#include "TempleRoom.h"
#include "GameOptionsRoom.h"

// win1.41 00796920 mac 10539d10 InnerCamera::PreDraw(void)
void InnerCamera::PreDraw()
{
}

// win1.41 007969e0 mac 10539ae0 InnerCamera::CalcDoorHit(InnerRoom *, LHCoord, float, bool)
uint32_t InnerCamera::CalcDoorHit(InnerRoom* param_1, LHCoord param_2, float param_3, bool param_4)
{
    return 0;
}

// win1.41 00796b60 mac 10539710 InnerCamera::Update(InnerRoom *, float, int, int, LHCoord const &, bool)
void InnerCamera::Update(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord* param_5, bool param_6)
{
}

// win1.41 00797140 mac 10539520 InnerCamera::Init(char *)
void InnerCamera::Init(char* param_1)
{
}

// win1.41 00797420 mac 10539420 InnerCamera::ReloadCamera(char *)
void InnerCamera::ReloadCamera(char* param_1)
{
}

// win1.41 007974a0 mac 105393b0 InnerCamera::Close(void)
void InnerCamera::Close()
{
}

// win1.41 007974d0 mac 10539320 InnerCamera::__dt(void)
InnerCamera::~InnerCamera()
{
}

// // win1.41 007974f0 mac 10539250 InnerCamera::InnerCamera(void)
// InnerCamera::InnerCamera()
// {
// }

// win1.41 00798870 mac 1053f350 TempleRoom::TempleRoom(const char*)
TempleRoom::TempleRoom(const char* name)
{
}

// win1.41 00799ed0 mac inlined GameOptionsRoom::DrawHand(void)
void GameOptionsRoom::DrawHand()
{
}

// win1.41 00799f80 mac inlined GameOptionsRoom::PreDraw(void)
void GameOptionsRoom::PreDraw()
{
}

// win1.41 0079a230 mac inlined GameOptionsRoom::DrawAdditional(bool)
void GameOptionsRoom::DrawAdditional(bool param_1)
{
}
