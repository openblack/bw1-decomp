#include "PlannedAbode.h"
#include "Abode.h"
#include "GameOSFile.h"
#include "lionhead/lh3dlib/development/Zoomer.h"
#include "SetupBox.h"
#include "SetupControl.h"
#include "SetupStaticText.h"

// win1.41 004061a0 mac 104333f0 PlannedAbode::IsWonder(void)
bool32_t PlannedAbode::IsWonder()
{
    return 0;
}

// win1.41 004061c0 mac 1014d0e0 Abode::IsWonder(void)
bool32_t Abode::IsWonder()
{
    return 0;
}

// win1.41 004061e0 mac 10007c40 PlannedAbode::GetAbodeType(void)
ABODE_TYPE PlannedAbode::GetAbodeType()
{
    return (ABODE_TYPE)0;
}

// win1.41 004061f0 mac 10089cd0 Abode::GetAbodeType(void)
ABODE_TYPE Abode::GetAbodeType()
{
    return (ABODE_TYPE)0;
}

// win1.41 00406200 mac 1005ff20 Abode::IsFunctional(void)
bool Abode::IsFunctional()
{
    return 0;
}

// win1.41 00406230 mac 1014cfd0 Abode::ChecksVerticesVObjects(void)
bool Abode::ChecksVerticesVObjects()
{
    return 0;
}

// win1.41 00406240 mac 104a8350 Abode::ReactToPhysicsImpact(PhysicsObject *, bool)
void Abode::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00406640 mac 10172a50 Abode::ApplyEffectsDueToPhysicalDestruction(Object *, GPlayer *)
void Abode::ApplyEffectsDueToPhysicalDestruction(Object* object, GPlayer* player)
{
}

// win1.41 00406800 mac 1010ab50 Abode::CanBecomeAPhysicsObject(void)
bool Abode::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 00406810 mac 1001b380 Abode::GetScriptObjectType(void)
uint32_t Abode::GetScriptObjectType()
{
    return 0;
}

// win1.41 00406820 mac 1049b920 Abode::InterfaceValidToTap(GInterfaceStatus *)
uint32_t Abode::InterfaceValidToTap(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 00406830 mac 102fed90 Abode::InterfaceTap(GInterfaceStatus *)
uint32_t Abode::InterfaceTap(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 00406970 mac 1004c590 Abode::GetDesireToBeRepaired(void)
float Abode::GetDesireToBeRepaired()
{
    return 0;
}

// win1.41 004069c0 mac 1036ee00 Abode::FindVillager( int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
Villager* Abode::FindVillager(int (__cdecl* param_1)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t), SCRIPT_OBJECT_TYPE param_2, uint32_t param_3)
{
    return 0;
}

// win1.41 00406a10 mac 103bd750 Abode::Save(GameOSFile &)
bool Abode::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00406d20 mac 101a2920 Abode::Load(GameOSFile &)
bool Abode::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00407020 mac inlined Abode::FindNearestDrinkingWater(float)
void Abode::FindNearestDrinkingWater(float max_dist)
{
}

// win1.41 00407050 mac 1004d310 Abode::GetPercentAbodeFullWithAdults(void)
float Abode::GetPercentAbodeFullWithAdults()
{
    return 0;
}

// win1.41 00407090 mac 10058a60 Abode::GetPercentAbodeFullWithChildren(void)
float Abode::GetPercentAbodeFullWithChildren()
{
    return 0;
}

// win1.41 004070d0 mac 104ed230 Abode::GetNumAdultsInAbode(void)
uint8_t Abode::GetNumAdultsInAbode()
{
    return 0;
}

// win1.41 004070f0 mac 101b8780 Abode::DrawPercentFull(int)
void Abode::DrawPercentFull(int param_1)
{
}

// win1.41 00407170 mac 1034ec40 Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
    return 0;
}

// win1.41 00407200 mac 1008a7b0 Abode::IsInteractable(void)
bool Abode::IsInteractable()
{
    return 0;
}

// win1.41 00407230 mac inlined Abode::FUN_00407230(bool)
MapCoords* Abode::FUN_00407230(MapCoords* coords, bool param_2)
{
    return 0;
}

// win1.41 00407280 mac 100dcdb0 Abode::CanBeHiddenIn(void)
bool Abode::CanBeHiddenIn()
{
    return 0;
}

// win1.41 00407290 mac 10064f30 Abode::GetPercentRepairedForNonFunctional(void)
float Abode::GetPercentRepairedForNonFunctional()
{
    return 0;
}

// win1.41 004072a0 mac 10053220 Abode::GetInfluence(void)
float Abode::GetInfluence()
{
    return 0;
}

// win1.41 004072e0 mac 1000cd50 Abode::GetPosOutside(float, float, float)
MapCoords* Abode::GetPosOutside(MapCoords* coords, float param_2, float param_3, float param_4)
{
    return 0;
}

// win1.41 004073c0 mac 103b5600 Abode::StopBeingFunctional(GPlayer *)
void Abode::StopBeingFunctional(GPlayer* param_1)
{
}

// win1.41 004073f0 mac inlined Abode::FUN_004073f0(GPlayer *)
void Abode::FUN_004073f0(GPlayer* param_1)
{
}

// win1.41 00407420 mac 10351de0 Abode::DiscipleInHandNear(Villager &, GInterfaceStatus &)
void Abode::DiscipleInHandNear(Villager* param_1, GInterfaceStatus* status)
{
}

// win1.41 004074a0 mac 100e7ac0 Abode::CalculateDesireToGainMale(void)
float Abode::CalculateDesireToGainMale()
{
    return 0;
}

// win1.41 00407540 mac 100af0d0 Abode::CalculateDesireToGainVillager(void)
float Abode::CalculateDesireToGainVillager()
{
    return 0;
}

// win1.41 004075b0 mac 10518900 Abode::TakeVillagerFrom(Abode&, int)
bool Abode::TakeVillagerFrom(Abode* other, int param_2)
{
    return 0;
}

// win1.41 00407620 mac 10516470 Abode::SwapMaleForFemaleFrom(Abode&)
bool Abode::SwapMaleForFemaleFrom(Abode* other)
{
    return 0;
}

// win1.41 004076c0 mac 105a17d0 Abode::GetVillagerHealthTotal(void)
float Abode::GetVillagerHealthTotal()
{
    return 0;
}

// // win1.41 00407700 mac 1010b3b0 GameOSFile::WriteIt<uint32_t>(uint32_t&)
// void GameOSFile::WriteIt<uint32_t>(uint32_t& val)
// {
// }

// // win1.41 00407750 mac 10331500 GameOSFile::ReadIt<int>(int&)
// void GameOSFile::ReadIt<int>(int& out)
// {
// }

// // win1.41 004077a0 mac 10139ad0 GameOSFile::ReadIt<uint32_t>(uint32_t&)
// void GameOSFile::ReadIt<uint32_t>(uint32_t& out)
// {
// }

// win1.41 00407d60 mac 1004ee60 Zoomer::SetDestinationWithSpeedAndTime(float, float, float)
void Zoomer::SetDestinationWithSpeedAndTime(float destination, float speed, float time)
{
}

// win1.41 00407ed0 mac 10075ef0 SetupBox::GetCurrentActiveBox(void)
SetupBox* SetupBox::GetCurrentActiveBox()
{
    return 0;
}

// win1.41 00408160 mac 1043c330 SetupBox::FindControl(int)
SetupControl* SetupBox::FindControl(int id)
{
    return 0;
}

// win1.41 00409140 mac 10598ed0 SetupBox::SetFocusControl(SetupControl *)
void SetupBox::SetFocusControl(SetupControl* widget)
{
}

// win1.41 00409180 mac 1032c7e0 SetupControl::SetFocus(bool)
void SetupControl::SetFocus(bool focus)
{
}

// win1.41 00409210 mac 1057a320 SetupControl::SetToolTip(unsigned long)
void SetupControl::SetToolTip(uint32_t tooltip_id)
{
}

// win1.41 00409250 mac 101668d0 SetupControl::SetupControl(int, int, int, int, int, wchar_t *)
// SetupControl::SetupControl(int id, int x, int y, int width, int height, const char16_t* label)
// {
// }

// win1.41 004092f0 mac 100c4fd0 SetupControl::SetToolTip(wchar_t *)
void SetupControl::SetToolTip(const char16_t* tooltip)
{
}

// win1.41 00409300 mac 105a3830 SetupControl::Hide(bool)
void SetupControl::Hide(bool hidden)
{
}

// win1.41 00409310 mac 10310540 SetupControl::HitTest(int, int)
bool SetupControl::HitTest(int x, int y)
{
    return 0;
}

// win1.41 00409340 mac inlined SetupControl::Drag(int, int)
void SetupControl::Drag(int x, int y)
{
}

// win1.41 00409350 mac 100a6190 SetupControl::MouseDown(int, int, bool)
void SetupControl::MouseDown(int x, int y, bool param_3)
{
}

// win1.41 00409360 mac 104faf30 SetupControl::MouseUp(int, int, bool)
void SetupControl::MouseUp(int x, int y, bool param_3)
{
}

// win1.41 00409370 mac 103e3120 SetupControl::Click(int, int)
void SetupControl::Click(int x, int y)
{
}

// win1.41 00409380 mac 100d4e40 SetupControl::KeyDown(int, int)
void SetupControl::KeyDown(LHKey key, LHKeyMod mod)
{
}

// win1.41 00409390 mac 105049b0 SetupControl::Char(int)
void SetupControl::Char(int character)
{
}

// win1.41 004093a0 mac 100c48e0 SetupControl::~SetupControl(bool)
// win1.41 004093c0 mac inlined SetupControl::~SetupControl(void)
SetupControl::~SetupControl()
{
}

// win1.41 00409430 mac 105436e0 SetupStaticText::Draw(bool, bool)
void SetupStaticText::Draw(bool hovered, bool selected)
{
}
