// Villager.cpp

#include "Villager.h"
#include "VillagerInfo.h"
#include "TribeInfo.h"
#include <stdint.h>

// win1.41 0074f880 mac 10571e50 GVillagerInfo::GetMesh( const(void))
uint32_t GVillagerInfo::GetMesh() const
{
    return 0;
}

// win1.41 0074f890 mac 10571e90 GVillagerInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GVillagerInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0074f900 mac 1056bfe0 GVillagerInfo::_dt(void)
GVillagerInfo::~GVillagerInfo()
{
}

void __cdecl FUN_0074f940(void)
{
}

// win1.41 0074f950 mac 10571a90 Villager::Villager(MapCoords const &, GVillagerInfo const *, unsigned long, int)
Villager::Villager(const MapCoords& coords, const GVillagerInfo* info, uint32_t age, bool skeleton)
{
}

// win1.41 0074fb20 mac 10571a20 Villager::SetToZero(void)
void Villager::SetToZero()
{
}

// win1.41 0074fb80 mac 10571950 Villager::InitialiseScale(unsigned long)
void Villager::InitialiseScale(unsigned long param_1)
{
}

// win1.41 0074fbe0 mac 10571750 Villager::Create(MapCoords const &, GVillagerInfo const *, unsigned long, int)
Villager* Create(const MapCoords& coords, const GVillagerInfo* info, uint32_t age, bool skeleton)
{
    return 0;
}

// win1.41 0074fc70 mac 10571530 Villager::CallVirtualFunctionsForCreation(MapCoords const &)
void Villager::CallVirtualFunctionsForCreation(const MapCoords& param_1)
{
}

// win1.41 0074fd60 mac 10571210 Villager::DeleteDependancys(void)
void Villager::DeleteDependancys()
{
}

// win1.41 0074fec0 mac 105710c0 Villager::UnemployedJobs(void)
bool Villager::UnemployedJobs()
{
    return 0;
}

// win1.41 0074ff60 mac 10571080 Villager::SetupJobLocation(void)
bool Villager::SetupJobLocation()
{
    return 0;
}

// win1.41 0074ff70 mac 1004b3c0 Villager::ProcessState(void)
uint32_t Villager::ProcessState()
{
    return 0;
}

// win1.41 00750060 mac 1009a920 Villager::FinishedIntoOutOfAnimation(void)
void Villager::FinishedIntoOutOfAnimation()
{
}

// win1.41 00750110 mac 10066490 Villager::GetAnimId(void)
ANIM_LIST Villager::GetAnimId()
{
    return (ANIM_LIST)0;
}

// win1.41 007501a0 mac 1005ffb0 Villager::SetStateCarriedObject(void)
void Villager::SetStateCarriedObject()
{
}

// win1.41 007502a0 mac 10570ca0 Villager::GetWoodCarriedObject(void)
uint32_t Villager::GetWoodCarriedObject()
{
    return 0;
}

// win1.41 007502d0 mac 10570c30 Villager::DestroyedByEffect(GPlayer *, float)
bool Villager::DestroyedByEffect(GPlayer* param_1, float param_2)
{
    return 0;
}

// win1.41 00756700 mac 10494550 MissionaryControl::GetPlayer(void)
GPlayer* Villager::GetPlayer()
{
    return 0;
}

// win1.41 00750310 mac 10097630 Villager::GetHoldType(void)
HOLD_TYPE Villager::GetHoldType()
{
    return HOLD_TYPE_VILLAGER;
}

// win1.41 00750320 mac 1009a310 Villager::GetHoldLoweringMultiplier(void)
float Villager::GetHoldLoweringMultiplier()
{
    return 0;
}

// win1.41 00750330 mac 105709c0 Villager::GetSpouse(void)
Villager* Villager::GetSpouse()
{
    return 0;
}

// win1.41 00750370 mac 10570860 Villager::LookAroundForVillagerInState(VILLAGER_STATES, unsigned long)
Villager* Villager::LookAroundForVillagerInState(VILLAGER_STATES param_1, unsigned long param_2)
{
    return 0;
}

// win1.41 00750410 mac 1004b510 Villager::CheckEveryTime(void)
int Villager::CheckEveryTime()
{
    return 0;
}

// win1.41 00750670 mac 1006ec00 Villager::GetGameTurnsSinceLastChecked(void)
uint32_t Villager::GetGameTurnsSinceLastChecked()
{
    return 0;
}

// win1.41 00750690 mac 105704c0 Villager::GetGameTurnLastChecked(void)
int Villager::GetGameTurnLastChecked()
{
    return 0;
}

// win1.41 007506a0 mac 1006eca0 Villager::SetGameTurnLastChecked(void)
void Villager::SetGameTurnLastChecked()
{
}

// win1.41 007506c0 mac 1056ff20 Villager::VillagerDead(DEATH_REASON, GPlayer *, float, int)
void Villager::VillagerDead(DEATH_REASON param_1, GPlayer* param_2, float param_3, int param_4)
{
}

// win1.41 00750940 mac 1056fc50 Villager::CreateDroppedResource(LHPoint *, LHPoint *, LHPoint *)
void Villager::CreateDroppedResource(LHPoint* param_1, LHPoint* param_2, LHPoint* param_3)
{
}

// win1.41 00750ab0 mac 1056fb10 Villager::HasSunk(void)
bool Villager::HasSunk()
{
    return 0;
}

// win1.41 00750b50 mac 1056fa20 Villager::TownDeleted(void)
void Villager::TownDeleted()
{
}

// win1.41 00750bb0 mac 1056f840 Villager::DebugText(int)
void Villager::DebugText(int param_1)
{
}

// win1.41 00750de0 mac 1056f7b0 Villager::SetAbode(Abode*)
void Villager::SetAbode(Town* town)
{
}

// win1.41 00750e10 mac 1056f660 Villager::GetRandomLookAhead(MapCoords *, float)
bool Villager::GetRandomLookAhead(MapCoords* param_1, float param_2)
{
    return 0;
}

// win1.41 00750ed0 mac 10068820 Villager::SetSpeed__8VillagerFli(int, int)
void Villager::SetSpeed(int base_speed, int scale_speed)
{
}

// win1.41 00751040 mac 1056f5e0 Villager::Birthday(void)
void Villager::Birthday()
{
}

// win1.41 00751050 mac 10021a00 Villager::CheckChildGrownUp(void)
int Villager::CheckChildGrownUp()
{
    return 0;
}

// win1.41 00751110 mac 1056f4c0 Villager::IsAMother(void)
bool Villager::IsAMother()
{
    return 0;
}

// win1.41 00751190 mac 1056f440 Villager::StartMoveToObject(Object *, VILLAGER_STATES)
bool Villager::StartMoveToObject(Object* param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 007511b0 mac 1009cd40 Villager::DropResource(RESOURCE_TYPE, unsigned short)
uint16_t Villager::DropResource(RESOURCE_TYPE param_1, unsigned short param_2)
{
    return 0;
}

// win1.41 007511e0 mac 1056f310 Villager::DropFood(unsigned short)
uint16_t Villager::DropFood(unsigned short param_1)
{
    return 0;
}

// win1.41 00751240 mac 1056f220 Villager::DropWood(unsigned short)
uint16_t Villager::DropWood(unsigned short param_1)
{
    return 0;
}

// win1.41 007512a0 mac 1056f160 Villager::IsEnoughFoodInStoragePitForDinner(void)
bool Villager::IsEnoughFoodInStoragePitForDinner()
{
    return 0;
}

// win1.41 007512e0 mac 1056efc0 Villager::FindPotAroundToGoto(RESOURCE_TYPE, unsigned long &, int)
Pot* Villager::FindPotAroundToGoto(RESOURCE_TYPE param_1, unsigned long* param_2, int param_3)
{
    return 0;
}

// win1.41 007513f0 mac 1056ee50 Villager::PickupResource(RESOURCE_TYPE, short, unsigned char)
void Villager::PickupResource(RESOURCE_TYPE param_1, short param_2, unsigned char param_3)
{
}

// win1.41 00751490 mac 1009cfd0 Villager::PickupFood(short)
void Villager::PickupFood(short param_1)
{
}

// win1.41 007514b0 mac 1056ed20 Villager::PickupWood(short, unsigned char)
void Villager::PickupWood(short param_1, unsigned char param_2)
{
}

// win1.41 007514d0 mac 10004d10 Villager::GetFoodCapacity(void)
int Villager::GetFoodCapacity()
{
    return 0;
}

// win1.41 007514f0 mac 1056ec50 Villager::GetWoodCapacity(void)
int Villager::GetWoodCapacity()
{
    return 0;
}

// win1.41 00751510 mac 1056ec00 Villager::RemoveFromDance(int)
void Villager::RemoveFromDance(int param_1)
{
}

// win1.41 00751520 mac 1056eb50 Villager::IsRandomlyLazy(void)
bool Villager::IsRandomlyLazy()
{
    return 0;
}

// win1.41 00751570 mac 100007e0 Villager::GetResourceHeld(RESOURCE_TYPE &)
bool Villager::GetResourceHeld(RESOURCE_TYPE* param_1)
{
    return 0;
}

// win1.41 007515c0 mac 10098ff0 Villager::DecideWhatToDo(void)
bool Villager::DecideWhatToDo()
{
    return 0;
}

// win1.41 007516e0 mac 10003bb0 Villager::CheckTakeResourcesToStoragePit(void)
bool Villager::CheckTakeResourcesToStoragePit()
{
    return 0;
}

// win1.41 00751720 mac 1056e1f0 Villager::DiscipleDecideWhatToDo(void)
bool Villager::DiscipleDecideWhatToDo()
{
    return 0;
}

// win1.41 00751970 mac 1056e1b0 Villager::GetPrayerSite(void)
bool Villager::GetPrayerSite()
{
    return 0;
}

// win1.41 00751980 mac 1056e0e0 Villager::RestartDance(VILLAGER_STATES)
bool Villager::RestartDance(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 007519e0 mac 1056df60 GVillagerInfo::GetInfoFromText(char *)
int GVillagerInfo::GetInfoFromText(char* text)
{
    return 0;
}

// win1.41 00751aa0 mac 10159e50 GTribeInfo::GetTribeTextArray(void)
char* GTribeInfo::GetTribeTextArray()
{
    return 0;
}

// win1.41 00751ab0 mac 1056dea0 Villager::GetVillagerText(char *)
char* Villager::GetVillagerText(char* param_1)
{
    return 0;
}

// win1.41 00751af0 mac 1056dae0 Villager::SaveObject(LHOSFile &, MapCoords const &)
uint32_t Villager::SaveObject(LHOSFile& param_1, const MapCoords& param_2)
{
    return 0;
}

// win1.41 00751cf0 mac 100199f0 Villager::IsFunctional(void)
bool Villager::IsFunctional()
{
    return 0;
}

// win1.41 00751d20 mac 1056d6a0 Villager::GetJobInfo(unsigned char) const
GJobInfo* Villager::GetJobInfo(unsigned char param_1) const
{
    return 0;
}

// win1.41 00751d40 mac inlined Villager::FUN00751d40(void)
bool Villager::FUN00751d40()
{
    return 0;
}

// win1.41 00751d50 mac 10054860 Villager::IsAvailable(void)
bool Villager::IsAvailable()
{
    return 0;
}

// win1.41 00751d70 mac 1000aef0 Villager::IsEffectReceiver(EffectValues *)
bool Villager::IsEffectReceiver(EffectValues* param_1)
{
    return 0;
}

// win1.41 00751db0 mac 1056d490 Villager::GetCitadel(void)
Citadel* Villager::GetCitadel()
{
    return 0;
}

// win1.41 00751dd0 mac 1004ec00 Villager::GetFinalState(void) const
VILLAGER_STATES Villager::GetFinalState() const
{
    return (VILLAGER_STATES)0;
}

// win1.41 00751e10 mac 1056d350 Villager::ResetStateAfterReacting(void)
void Villager::ResetStateAfterReacting()
{
}

// win1.41 00751e50 mac 1056d290 Villager::PopFromPrevious(void)
void Villager::PopFromPrevious()
{
}

// win1.41 00751ea0 mac 1056d250 Villager::GetFootball(void)
Football* Villager::GetFootball()
{
    return 0;
}

// win1.41 00751ee0 mac 1056d170 Villager::GetTribe(void)
GTribeInfo* Villager::GetTribe()
{
    return 0;
}

// win1.41 00751f00 mac 10064360 Villager::GetTown(void)
Town* Villager::GetTown()
{
    return 0;
}

// win1.41 00751f10 mac 1008a5d0 Villager::GetStoragePit(void)
StoragePit* Villager::GetStoragePit()
{
    return 0;
}

// win1.41 00751f40 mac 1056d040 Villager::GetVillagerAvailableState(void)
VILLAGER_STATES Villager::GetVillagerAvailableState()
{
    return (VILLAGER_STATES)0;
}

// win1.41 00751f70 mac inlined Villager::FUN_00751f70(void)
VILLAGER_STATES Villager::FUN_00751f70()
{
    return (VILLAGER_STATES)0;
}

// win1.41 00751fa0 mac 100039f0 Villager::ArriveHome(void)
void Villager::ArriveHome()
{
}

// win1.41 00751fd0 mac 1009fde0 Villager::LeaveHome(void)
void Villager::LeaveHome()
{
}

// win1.41 00752010 mac 1007bba0 Villager::SetTopState(unsigned char)
int Villager::SetTopState(VILLAGER_STATES state)
{
    return 0;
}

int Villager::SetCurrentAndDestinationState(VILLAGER_STATES current, VILLAGER_STATES destination)
{
    return 0;
}

// win1.41 007520e0 mac 10087ab0 Villager::SetCurrentAndDestinationState(unsigned char, unsigned char)
uint32_t Villager::CanPauseForASecond(VILLAGER_STATES state)
{
    return 0;
}

// win1.41 00752160 mac 1000a960 Villager::GetAbode(void)
Abode* Villager::GetAbode()
{
    return 0;
}

// win1.41 007521b0 mac 1056caa0 Villager::ToBeDeleted(int)
void Villager::ToBeDeleted(int param_1)
{
}

// win1.41 007521d0 mac 1004b330 Villager::CallState(void)
uint32_t Villager::CallState()
{
    return 0;
}

// win1.41 00752210 mac 10020260 Villager::IsPregnant(void)
bool Villager::IsPregnant()
{
    return 0;
}

// win1.41 00752240 mac 100201b0 Villager::WomanSpecial(void)
uint32_t Villager::WomanSpecial()
{
    return 0;
}

// win1.41 00752290 mac 1056c8b0 Villager::IsVillagerAvailable(void)
bool Villager::IsVillagerAvailable()
{
    return 0;
}

// win1.41 007522c0 mac 1056c7a0 Villager::IsAvailableToBeSummonedByCreature(void)
bool Villager::IsAvailableToBeSummonedByCreature()
{
    return 0;
}

// win1.41 00752320 mac inlined Villager::CallExitStateFunction(VILLAGER_STATES)
uint32_t Villager::CallExitStateFunction(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 007523d0 mac 10075c50 Villager::CallEntryStateFunction(unsigned char)
uint32_t Villager::CallEntryStateFunction(VILLAGER_STATES state)
{
    return 0;
}

// win1.41 00752440 mac 1007b1b0 Villager::CallEntryStateFunction(unsigned char, unsigned char)
uint32_t Villager::CallEntryStateFunction(VILLAGER_STATES current, VILLAGER_STATES destination)
{
    return 0;
}

// win1.41 007524d0 mac 1009d4c0 Villager::IsStateEntryFunctionSameAs(unsigned long, unsigned long) const
bool Villager::IsStateEntryFunctionSameAs(unsigned long param_1, unsigned long param_2) const
{
    return 0;
}

// win1.41 00752530 mac inlined Villager::IsStateExitFunctionSameAs( const(VILLAGER_STATES))
bool Villager::IsStateExitFunctionSameAs(VILLAGER_STATES param_1) const
{
    return 0;
}

// win1.41 007525b0 mac 1056c220 Villager::IsReactiveState(unsigned long)
bool Villager::IsReactiveState(unsigned long param_1)
{
    return 0;
}

// win1.41 00752600 mac 1001ff70 Villager::IsHungry(void)
bool Villager::IsHungry()
{
    return 0;
}

// win1.41 00752620 mac 1006a7a0 Villager::IsWoman(void)
bool Villager::IsWoman()
{
    return 0;
}

// win1.41 00752650 mac 1056be30 GVillagerInfo::Find(TRIBE_TYPE, VILLAGER_NUMBER)
GVillagerInfo* __cdecl GVillagerInfo::Find(TRIBE_TYPE type, int villager_number)
{
    return 0;
}

// win1.41 00752690 mac 1056bc60 Villager::MakeVillagesMeet(Villager *, VILLAGER_STATES, float)
bool Villager::MakeVillagesMeet(Villager* param_1, VILLAGER_STATES param_2, float param_3)
{
    return 0;
}

// win1.41 00752760 mac 1056bbd0 Villager::MakeVillagerFaceObject(Object *)
bool Villager::MakeVillagerFaceObject(Object* param_1)
{
    return 0;
}

// win1.41 007527a0 mac inlined Villager::ExitReaction(VILLAGER_STATES)
int Villager::ExitReaction(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 007527e0 mac 1056ba70 Villager::ExitDance(unsigned char)
bool Villager::ExitDance(unsigned char param_1)
{
    return 0;
}

// win1.41 00752820 mac 1056b9c0 Villager::IsAvailableForWorshipSite(int)
bool Villager::IsAvailableForWorshipSite(int param_1)
{
    return 0;
}

// win1.41 00752860 mac 1056b900 Villager::IsAtOrOnTheWayToWorshipSite(void)
bool Villager::IsAtOrOnTheWayToWorshipSite()
{
    return 0;
}

// win1.41 007528b0 mac 1056b830 Villager::DebugShowTime(unsigned long, unsigned char, unsigned char)
uint32_t Villager::DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3)
{
    return 0;
}

// win1.41 007528c0 mac 1056b4c0 Villager::SetAge(unsigned long)
void Villager::SetAge(uint32_t age)
{
}

// win1.41 00752a90 mac 1056b340 Villager::SetScaleForAge(unsigned long)
void Villager::SetScaleForAge(unsigned long param_1)
{
}

// win1.41 00752b80 mac 1056b240 Villager::SetStateWhenTappedOnAbode(void)
bool Villager::SetStateWhenTappedOnAbode()
{
    return 0;
}

// win1.41 00752bd0 mac 100a0960 Villager::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t Villager::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
    return 0;
}

// win1.41 00752c40 mac 1056ac90 Villager::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t Villager::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 00753020 mac 10005a00 Villager::GetScriptObjectType(void)
uint32_t Villager::GetScriptObjectType()
{
    return 0;
}

// win1.41 00753040 mac inlined Villager::IsTouching( const(MapCoords *))
bool Villager::IsTouching(MapCoords* param_1) const
{
    return 0;
}

// win1.41 00753080 mac 1056a940 Villager::InterfaceSetInMagicHand(GInterfaceStatus *)
bool Villager::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00753110 mac 1056a8c0 Villager::SetSpeedInMetres(float, int)
void Villager::SetSpeedInMetres(float param_1, int param_2)
{
}

// win1.41 00753140 mac inlined Villager::FUN_00753140(void)
uint32_t Villager::FUN_00753140()
{
    return 0;
}

// win1.41 007531a0 mac 1056a780 Villager::IsVagrant(void)
bool Villager::IsVagrant()
{
    return 0;
}

// win1.41 007531d0 mac 1056a480 Villager::ReleaseFromScript(void)
void Villager::ReleaseFromScript()
{
}

// win1.41 00753340 mac 1056a3d0 Villager::TestSpecial(void)
void Villager::TestSpecial()
{
}

// win1.41 00753390 mac 1056a1a0 Villager::GetResourceFrom(Object *, RESOURCE_TYPE, short)
uint32_t Villager::GetResourceFrom(Object* param_1, RESOURCE_TYPE param_2, short param_3)
{
    return 0;
}

// win1.41 00753410 mac 1056a150 Villager::SetFoodSpeedup(bool)
void Villager::SetFoodSpeedup(bool param_1)
{
}

// win1.41 00753430 mac 10051360 Villager::ProcessFoodSpeedup(void)
void Villager::ProcessFoodSpeedup()
{
}

// win1.41 00753460 mac 1056a0d0 Villager::IncreaseLife(float)
void Villager::IncreaseLife(float param_1)
{
}

// win1.41 00753470 mac 10569f30 Villager::FindPosOutsideAbode(Abode *)
void Villager::FindPosOutsideAbode(Abode* param_1)
{
}

// win1.41 00753540 mac inlined Villager::FUN_00753540(void)
Abode* Villager::FUN_00753540()
{
    return 0;
}

// win1.41 00753560 mac 1006a5f0 Villager::AdjustTownModifier(VILLAGER_STATES, int)
void Villager::AdjustTownModifier(VILLAGER_STATES state, int param_2)
{
}

// win1.41 00753690 mac 1006a4d0 Villager::SetState(unsigned long, unsigned char)
void Villager::SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state)
{
}

// win1.41 00753740 mac 10075d50 Villager::SetStateSpeed(void)
void Villager::SetStateSpeed()
{
}

// win1.41 00753760 mac 10058b20 Villager::SetStateSpeed(unsigned char)
void Villager::SetStateSpeed(unsigned char param_1)
{
}

// win1.41 00753b50 mac 10099cf0 Villager::SetupNothingToDo(void)
uint32_t Villager::SetupNothingToDo()
{
    return 0;
}

// win1.41 00753c70 mac 1000e4e0 Villager::GetChillOutPos(MapCoords &)
uint32_t Villager::GetChillOutPos(MapCoords* coords)
{
    return 0;
}

// win1.41 00753dd0 mac 10569aa0 Villager::VillagerCreated(void)
uint32_t Villager::VillagerCreated()
{
    return 0;
}

// win1.41 00753e00 mac 10569a30 Villager::RemoveFromGame(void)
uint32_t Villager::RemoveFromGame()
{
    return 0;
}

// win1.41 00753e20 mac 10569870 Villager::GetResourceDropoffPos(RESOURCE_TYPE)
GameThingWithPos* Villager::GetResourceDropoffPos(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 00753f00 mac inlined Villager::IsFinalState(VILLAGER_STATES)
bool Villager::IsFinalState(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00753f20 mac 10569710 Villager::GetQueryFirstEnumText(void)
HELP_TEXT Villager::GetQueryFirstEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 00753f90 mac 105695c0 Villager::GetQueryLastEnumText(void)
HELP_TEXT Villager::GetQueryLastEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 00754050 mac 10032e70 Villager::GetFOVHelpMessageSet(void)
uint32_t Villager::GetFOVHelpMessageSet()
{
    return 0;
}

// win1.41 00754060 mac 10569510 Villager::GetFOVHelpCondition(void)
uint32_t Villager::GetFOVHelpCondition()
{
    return 0;
}

// win1.41 00754070 mac 10569470 Villager::SetDiscipleNothingToDo(void)
bool Villager::SetDiscipleNothingToDo()
{
    return 0;
}

// win1.41 007540d0 mac 10569390 Villager::DiscipleNothingToDo(void)
bool Villager::DiscipleNothingToDo()
{
    return 0;
}

// win1.41 00754140 mac 105692c0 Villager::EnterDiscipleNothingToDo(unsigned char, unsigned char)
bool Villager::EnterDiscipleNothingToDo(unsigned char param_1, unsigned char param_2)
{
    return 0;
}

// win1.41 00754180 mac 10569180 Villager::FindDisciplePrayerPos(MapCoords *)
bool Villager::FindDisciplePrayerPos(MapCoords* param_1)
{
    return 0;
}

// win1.41 00754280 mac 10568d70 Villager::Save(GameOSFile &)
bool Villager::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00754580 mac 10568980 Villager::Load(GameOSFile &)
bool Villager::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00754870 mac 10568900 Villager::ResolveLoad(void)
void Villager::ResolveLoad()
{
}

// win1.41 007548a0 mac 10568810 Villager::CallSaveStateFunction(GameOSFile &, STATE_TYPE)
bool Villager::CallSaveStateFunction(GameOSFile& param_1, STATE_TYPE param_2)
{
    return 0;
}

// win1.41 00754910 mac 10568720 Villager::CallLoadStateFunction(GameOSFile &, STATE_TYPE)
bool Villager::CallLoadStateFunction(GameOSFile& param_1, STATE_TYPE param_2)
{
    return 0;
}

// win1.41 00754980 mac 10568670 Villager::SaveStateFunction(GameOSFile &)
bool Villager::SaveStateFunction(GameOSFile& param_1)
{
    return 0;
}

// win1.41 007549b0 mac 105685b0 Villager::LoadStateFunction(GameOSFile &)
bool Villager::LoadStateFunction(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754a00 mac 105684d0 Villager::SaveBuilding(GameOSFile &)
bool Villager::SaveBuilding(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754a60 mac 10568400 Villager::LoadBuilding(GameOSFile &)
bool Villager::LoadBuilding(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754ac0 mac 105682e0 Villager::SaveDance(GameOSFile &)
bool Villager::SaveDance(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754b60 mac 105681d0 Villager::LoadDance(GameOSFile &)
bool Villager::LoadDance(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754c00 mac 10568100 Villager::SaveWorship(GameOSFile &)
bool Villager::SaveWorship(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754c60 mac 10568030 Villager::LoadWorship(GameOSFile &)
bool Villager::LoadWorship(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754cc0 mac 10567f70 Villager::SaveDead(GameOSFile &)
bool Villager::SaveDead(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754d20 mac 10567eb0 Villager::LoadDead(GameOSFile &)
bool Villager::LoadDead(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754cc0 mac 10567f70 Villager::SaveDead(GameOSFile &)
bool Villager::SaveInHand(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754de0 mac 10567d10 Villager::LoadInHand(GameOSFile &)
bool Villager::LoadInHand(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754e40 mac 10567ca0 Villager::SaveFishing(GameOSFile &)
bool Villager::SaveFishing(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754e60 mac 10567c30 Villager::LoadFishing(GameOSFile &)
bool Villager::LoadFishing(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754e40 mac 10567ca0 Villager::SaveFishing(GameOSFile &)
bool Villager::SaveFarming(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754ef0 mac 10567a80 Villager::LoadFarming(GameOSFile &)
bool Villager::LoadFarming(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00754f60 mac 10567900 Villager::SaveFootball(GameOSFile &)
bool Villager::SaveFootball(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755040 mac 105677a0 Villager::LoadFootball(GameOSFile &)
bool Villager::LoadFootball(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755120 mac 10567680 Villager::SaveShepherd(GameOSFile &)
bool Villager::SaveShepherd(GameOSFile& param_1)
{
    return 0;
}

// win1.41 007551c0 mac 10567570 Villager::LoadShepherd(GameOSFile &)
bool Villager::LoadShepherd(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755260 mac 105673b0 Villager::SaveInScript(GameOSFile &)
bool Villager::SaveInScript(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755370 mac 10567210 Villager::LoadInScript(GameOSFile &)
bool Villager::LoadInScript(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755470 mac 10567050 Villager::SaveScriptPos(GameOSFile &)
bool Villager::SaveScriptPos(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755580 mac 10566eb0 Villager::LoadScriptPos(GameOSFile &)
bool Villager::LoadScriptPos(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755680 mac 10566dd0 Villager::SaveFire(GameOSFile &)
bool Villager::SaveFire(GameOSFile& param_1)
{
    return 0;
}

// win1.41 007556f0 mac 10566d00 Villager::LoadFire(GameOSFile &)
bool Villager::LoadFire(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755760 mac 10566c80 Villager::SaveDiscipleNothingToDo(GameOSFile &)
bool Villager::SaveDiscipleNothingToDo(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755780 mac 10566c00 Villager::LoadDiscipleNothingToDo(GameOSFile &)
bool Villager::LoadDiscipleNothingToDo(GameOSFile& param_1)
{
    return 0;
}

// win1.41 007557a0 mac 10566b20 Villager::SaveTrader(GameOSFile &)
bool Villager::SaveTrader(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755810 mac 10566a50 Villager::LoadTrader(GameOSFile &)
bool Villager::LoadTrader(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755880 mac 105669e0 Villager::SaveInspectObject(GameOSFile &)
bool Villager::SaveInspectObject(GameOSFile& param_1)
{
    return 0;
}

// win1.41 007558a0 mac 10566970 Villager::LoadInspectObject(GameOSFile &)
bool Villager::LoadInspectObject(GameOSFile& param_1)
{
    return 0;
}

// win1.41 007558c0 mac 10566930 Villager::SaveReaction(GameOSFile &)
bool Villager::SaveReaction(GameOSFile& param_1)
{
    return 1;
}

// win1.41 007558d0 mac 105668f0 Villager::LoadReaction(GameOSFile &)
bool Villager::LoadReaction(GameOSFile& param_1)
{
    return 1;
}

// win1.41 007558e0 mac 105667d0 Villager::SaveClearArea(GameOSFile &)
bool Villager::SaveClearArea(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755980 mac 105666c0 Villager::LoadClearArea(GameOSFile &)
bool Villager::LoadClearArea(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755a20 mac 105665e0 Villager::SaveBreeder(GameOSFile &)
bool Villager::SaveBreeder(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755a80 mac 10566510 Villager::LoadBreeder(GameOSFile &)
bool Villager::LoadBreeder(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755ae0 mac 105664a0 Villager::SaveForesting(GameOSFile &)
bool Villager::SaveForesting(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755b00 mac 10566430 Villager::LoadForesting(GameOSFile &)
bool Villager::LoadForesting(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755b20 mac 105663a0 Villager::SaveFootPath(GameOSFile &)
bool Villager::SaveFootPath(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755b50 mac 10566310 Villager::LoadFootPath(GameOSFile &)
bool Villager::LoadFootPath(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755b80 mac 105661e0 Villager::SaveInspectionReaction(GameOSFile &)
bool Villager::SaveInspectionReaction(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755c20 mac 105660c0 Villager::LoadInspectionReaction(GameOSFile &)
bool Villager::LoadInspectionReaction(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755cc0 mac 10565f90 Villager::SaveMagicTreeReaction(GameOSFile &)
bool Villager::SaveMagicTreeReaction(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755d60 mac 10565e70 Villager::LoadMagicTreeReaction(GameOSFile &)
uint32_t Villager::LoadMagicTreeReaction(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755e00 mac 10565d40 Villager::SaveHideInBuilding(GameOSFile &)
uint32_t Villager::SaveHideInBuilding(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755ea0 mac 10565c20 Villager::LoadHideInBuilding(GameOSFile &)
uint32_t Villager::LoadHideInBuilding(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755f40 mac 10565b50 Villager::SaveShieldReaction(GameOSFile &)
uint32_t Villager::SaveShieldReaction(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00755fa0 mac 10565a80 Villager::LoadShieldReaction(GameOSFile &)
uint32_t Villager::LoadShieldReaction(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00756000 mac 1000a990 Villager::SetVillagerDisciple(GameThing *, VILLAGER_DISCIPLE, int)
uint32_t Villager::SetVillagerDisciple(GameThing* param_1, VILLAGER_DISCIPLE param_2, int param_3)
{
    return 0;
}

// win1.41 007560e0 mac 10565860 Villager::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t Villager::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
    return 0;
}

// win1.41 00756170 mac 10565770 Villager::ShowDiscipleIcon(VILLAGER_DISCIPLE)
uint32_t Villager::ShowDiscipleIcon(VILLAGER_DISCIPLE param_1)
{
    return 0;
}

// win1.41 00756230 mac 10565730 Villager::DebugValidateState(void)
void Villager::DebugValidateState()
{
}

// win1.41 00756240 mac 105655e0 Villager::ForceMoveVillagerToAbode(Abode*)
void Villager::ForceMoveVillagerToAbode(Abode* abode)
{
}

// win1.41 007562c0 mac 105652e0 Villager::SetSkeleton(int)
void Villager::SetSkeleton(int index)
{
}

// win1.41 00756450 mac 1005f5e0 Villager::InsertMapObject(void)
void Villager::InsertMapObject()
{
}

// win1.41 00756460 mac 10094080 Villager::IsReachable(void)
bool Villager::IsReachable()
{
    return 0;
}

// win1.41 007564a0 mac 105651b0 Villager::ValidForPlaceInHand(GInterfaceStatus *)
bool Villager::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 007564c0 mac 10565140 Villager::CanBecomeAPhysicsObject(void)
bool Villager::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 007564d0 mac 10565060 Villager::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t Villager::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 00756520 mac 10565010 Villager::LookAtPreviousStateReactToTownEmergency(void)
VILLAGER_STATES Villager::LookAtPreviousStateReactToTownEmergency()
{
    return (VILLAGER_STATES)0;
}

// win1.41 00756530 mac 10564fd0 Villager::SetTown(Town*)
void Villager::SetTown(Town* town)
{
}

// win1.41 00756540 mac 10564f50 Villager::ScriptInCrowd(void)
bool Villager::ScriptInCrowd()
{
    return 0;
}

// win1.41 00756570 mac 10564f10 Villager::SaveLanded(GameOSFile &)
bool Villager::SaveLanded(GameOSFile& file)
{
    return 1;
}

// win1.41 00756580 mac 10564ed0 Villager::LoadLanded(GameOSFile &)
bool Villager::LoadLanded(GameOSFile& file)
{
    return 1;
}

// win1.41 00756590 mac inlined Villager::CallIntoAnimationFunction(VILLAGER_STATES)
int Villager::CallIntoAnimationFunction(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00756620 mac inlined Villager::CallOutofAnimationFunction(VILLAGER_STATES)
int Villager::CallOutofAnimationFunction(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 007566c0 mac 10564b90 MissionaryControl::MissionaryControl(void)
MissionaryControl::MissionaryControl()
{
}

// win1.41 00756700 mac 10494550 MissionaryControl::GetPlayer(void)
GPlayer* MissionaryControl::GetPlayer()
{
    return 0;
}

// win1.41 00756710 mac 105638f0 MissionaryControl::GetText(void)
const char* MissionaryControl::GetText()
{
    return (const char*)0xc236b8;
}

// win1.41 00756720 mac 10563930 MissionaryControl::GetSaveType(void)
uint32_t MissionaryControl::GetSaveType()
{
    return 0x9e;
}

// win1.41 00756730 mac 10563970 MissionaryControl::GetDebugText(void)
char* MissionaryControl::GetDebugText()
{
    return (char*)0xc236cc;
}

// win1.41 00756740 mac 10564a00 MissionaryControl::_dt(unsigned int)
MissionaryControl::~MissionaryControl()
{
}

// win1.41 00756760 mac 10564aa0 MissionaryControl::MissionaryControl(Villager *, GPlayer *)
MissionaryControl::MissionaryControl(Villager* param_1, GPlayer* param_2)
{
}

// win1.41 007567c0 mac 10564970 MissionaryControl::GetImpressiveValue(void)
float MissionaryControl::GetImpressiveValue()
{
    return 0;
}

// win1.41 007567e0 mac 105647f0 MissionaryControl::Process(void)
void MissionaryControl::Process()
{
}

// win1.41 00756870 mac 10564750 MissionaryControl::ToBeDeleted(int)
void MissionaryControl::ToBeDeleted(int param_1)
{
}

// win1.41 007568a0 mac 105646b0 MissionaryControl::Load(GameOSFile &)
bool MissionaryControl::Load(GameOSFile& param_1)
{
    return 0;
}

// win1.41 007568e0 mac 10564610 MissionaryControl::Save(GameOSFile &)
bool MissionaryControl::Save(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00756920 mac 10564510 MissionaryControl::GetImpressiveValue(Living *, Reaction *)
float MissionaryControl::GetImpressiveValue(Living* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00756990 mac inlined Villager::FUN_00756990(void)
void Villager::FUN_00756990()
{
}

// win1.41 007569a0 mac 10564420 Villager::MoveToObjectValidate(void)
void Villager::MoveToObjectValidate()
{
}

// win1.41 007569d0 mac 10564390 Villager::MoveOnStructureValidate(void)
void Villager::MoveOnStructureValidate()
{
}

// win1.41 00756a00 mac 10564260 Villager::ReactionValidate(void)
void Villager::ReactionValidate()
{
}

// win1.41 00756a50 mac 10564180 Villager::SexValidate(void)
void Villager::SexValidate()
{
}

// win1.41 00756a80 mac 10564120 Villager::WallhugAndReactionValidate(void)
void Villager::WallhugAndReactionValidate()
{
}

// win1.41 00756aa0 mac 10564040 Villager::ClosestObjectValidate(void)
void Villager::ClosestObjectValidate()
{
}

// win1.41 00756ad0 mac 10563fe0 Villager::GetFinalDestPos(MapCoords *)
MapCoords* Villager::GetFinalDestPos(MapCoords* param_1)
{
    return 0;
}

// win1.41 00756ae0 mac 10563ed0 Villager::ThrowObjectFromHand(GInterfaceStatus *, int)
uint32_t Villager::ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2)
{
    return 0;
}

// win1.41 00756b30 mac 10563e60 Villager::IsDrowning(void)
bool Villager::IsDrowning()
{
    return 0;
}

// win1.41 00756b40 mac 1004b210 Villager::SetLife(float)
void Villager::SetLife(float param_1)
{
}

// win1.41 00756bc0 mac inlined Villager::FUN_00756bc0(float)
void Villager::FUN_00756bc0(float param_1)
{
}

// win1.41 00756be0 mac 10563bb0 Villager::FindChildrenAndOrphanThem(void)
void Villager::FindChildrenAndOrphanThem()
{
}

// win1.41 00756c60 mac 1004d520 Villager::IsMovingForAnimation(void)
bool Villager::IsMovingForAnimation()
{
    return 0;
}
