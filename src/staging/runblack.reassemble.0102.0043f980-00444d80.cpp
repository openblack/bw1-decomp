#include "BWLan.h"
#include "Camera.h"
#include "lionhead/lh3dlib/development/Zoomer.h"
#include "MapCoords.h"
#include "lionhead/lh3dlib/development/LHPoint.h"

// win1.41 00440830 mac 1017feb0 BWLan::Process(void)
void BWLan::Process()
{
}

// win1.41 00440840 mac 10181470 BWLan::SendMessageA(char const *, bool, MPFEPlayerDetails *)
void BWLan::SendMessageA(const char* param_1, bool param_2, MPFEPlayerDetails* param_3)
{
}

// win1.41 004408e0 mac inlined BWLan::SendMessageW(wchar_t *, bool, MPFEPlayerDetails *)
void BWLan::SendMessageW(wchar_t* param_1, bool param_2, MPFEPlayerDetails* param_3)
{
}

// win1.41 00440930 mac 10181350 BWLan::LeaveGameChannel(void)
void BWLan::LeaveGameChannel()
{
}

// win1.41 004409f0 mac 101812f0 BWLan::LeaveMainRoom(void)
void BWLan::LeaveMainRoom()
{
}

// win1.41 00440a00 mac 10181130 BWLan::BeginPlayerEnumeration(void)
void BWLan::BeginPlayerEnumeration()
{
}

// win1.41 00440ac0 mac 10180f20 BWLan::Connect(void)
uint32_t BWLan::Connect()
{
    return 0;
}

// win1.41 00441380 mac 101804a0 BWLan::InitialiseLobbyState(void)
void BWLan::InitialiseLobbyState()
{
}

// win1.41 004414b0 mac 10180190 BWLan::PopulateChannelPlayers(MPFEChannelDetails *)
void BWLan::PopulateChannelPlayers(MPFEChannelDetails* param_1)
{
}

// win1.41 00441500 mac 10180020 BWLan::CreateOrJoinRoom(wchar_t *, wchar_t *, MPFEChannelDetails *)
void BWLan::CreateOrJoinRoom(wchar_t* param_1, wchar_t* param_2, MPFEChannelDetails* param_3)
{
}

// win1.41 004415b0 mac 1017fff0 BWLan::StartGame(void)
void BWLan::StartGame()
{
}

// win1.41 00441870 mac 1019a720 GCamera::Camera(MapCoords&)
GCamera::GCamera(MapCoords* coords)
{
}

// win1.41 00441ac0 mac 1035b310 Zoomer::SetPosition(float)
void Zoomer::SetPosition(float position)
{
}

// win1.41 00441af0 mac 101980f0 GCamera::GetText(void)
const char* GCamera::GetText()
{
    return 0;
}

// win1.41 00441b00 mac 10086270 GCamera::IsMoving( const(void))
bool GCamera::IsMoving()
{
    return 0;
}

// win1.41 00441b10 mac 101982b0 GCamera::GetHeight(void)
float GCamera::GetHeight()
{
    return 0;
}

// win1.41 00441b20 mac 101982e0 GCamera::GetSaveType(void)
uint32_t GCamera::GetSaveType()
{
    return 0;
}

// win1.41 00441b30 mac 10378450 GCamera::_dt(void)
GCamera::~GCamera()
{
}

// win1.41 00441b60 mac 1006e040 MapCoords::MapCoords(void)
MapCoords::MapCoords()
{
}

// win1.41 00441b70 mac 1019a650 GCamera::CantExitCurrentMode(void)
bool GCamera::CantExitCurrentMode()
{
    return 0;
}

// win1.41 00441cd0 mac 1019a420 GCamera::SwitchToViewMode(CameraMode *)
void GCamera::SwitchToViewMode(CameraMode* mode)
{
}

// win1.41 00441d40 mac 1008de30 GCamera::CheckStackedModesForValidity(void)
void GCamera::CheckStackedModesForValidity()
{
}

// win1.41 00441ee0 mac 1019a0f0 GCamera::ToBeDeleted(int)
void GCamera::ToBeDeleted(int param_1)
{
}

// win1.41 00441f20 mac 1019a070 GCamera::GetThingViewingDistance(GameThingWithPos *)
float GCamera::GetThingViewingDistance(GameThingWithPos* target)
{
    return 0;
}

// win1.41 00441f50 mac 1008f7f0 GCamera::Validate(void)
void GCamera::Validate()
{
}

// win1.41 00441f80 mac 1002cbd0 GCamera::Update(void)
void GCamera::Update()
{
}

// win1.41 00442700 mac 1004a260 LHPoint::LHPoint(float, float, float)
LHPoint::LHPoint(float x, float y, float z)
{
}

// win1.41 00442720 mac 1002c480 Zoomer::Update(float)
void Zoomer::Update(float dt)
{
}

// win1.41 00442810 mac 10032670 GCamera::SetPointFromPointDistanceHeadingAndPitch(LHPoint *, LHPoint const &, float, float, float)
void GCamera::SetPointFromPointDistanceHeadingAndPitch(LHPoint* param_1, const LHPoint* point, float distance, float heading, float pitch)
{
}

// win1.41 004428d0 mac 1007dbf0 GCamera::GetHeadingAndPitchFromPoints(LHPoint const &, LHPoint const &, float *, float *)
void GCamera::GetHeadingAndPitchFromPoints(LHPoint* origin, LHPoint* heading, float* pitch, float* yaw)
{
}

// win1.41 00442ef0 mac 1002b280 GCamera::UpdateGameThingWithPosData(void)
void GCamera::UpdateGameThingWithPosData()
{
}

// win1.41 004430e0 mac 10198d40 GCamera::Save(GameOSFile &)
bool GCamera::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 004433a0 mac 10198870 GCamera::Load(GameOSFile &)
bool GCamera::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00443680 mac 10198790 GCamera::SetCameraFov(float, float)
void GCamera::SetCameraFov(float fov, float time)
{
}

// win1.41 00443840 mac 10198640 GCamera::GetDebugText(void)
char* GCamera::GetDebugText()
{
    return 0;
}
