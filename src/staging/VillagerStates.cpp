#include "Villager.h"
#include "VillagerStateTableInfo.h"

// win1.41 00769580 mac 1059c630 GVillagerStateTableInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GVillagerStateTableInfo::GetBaseInfo(uint32_t& param_1)
{
    return NULL;
}

void __cdecl FUN_007695a0(void)
{
}

void __cdecl FUN_007695b0(void)
{
}

// win1.41 007695f0 mac 1059c500 GVillagerStateTableInfo::_dt(void)
GVillagerStateTableInfo::~GVillagerStateTableInfo()
{
}

// win1.41 00769620 mac 10096900 Villager::GotoStoragePitForDropOff(void)
uint32_t Villager::GotoStoragePitForDropOff()
{
    return 0;
}

// win1.41 007696d0 mac 100062f0 Villager::ArrivesAtStoragePitForDropOff(void)
uint32_t Villager::ArrivesAtStoragePitForDropOff()
{
    return 0;
}

// win1.41 00769830 mac 10096ac0 Villager::GotoStoragePitForFood(void)
bool32_t Villager::GotoStoragePitForFood()
{
    return false;
}

// win1.41 007696d0 mac 100062f0 Villager::ArrivesAtStoragePitForDropOff(void)
bool32_t Villager::ArrivesAtStoragePitForFood()
{
    return false;
}

// win1.41 007698d0 mac 1059bc90 Villager::ArrivesAtStoragePitForResource(RESOURCE_TYPE, unsigned long, VILLAGER_STATES, VILLAGER_STATES)
bool32_t Villager::ArrivesAtStoragePitForResource(RESOURCE_TYPE param_1, unsigned long param_2, VILLAGER_STATES param_3, VILLAGER_STATES param_4)
{
    return false;
}

// win1.41 00769b30 mac 1059bbc0 Villager::ArrivesAtHomeWithFood(void)
bool32_t Villager::ArrivesAtHomeWithFood()
{
    return false;
}

// win1.41 00769b80 mac 1059baa0 Villager::CheckTrader(void)
bool32_t Villager::CheckTrader()
{
    return false;
}

// win1.41 00769c10 mac 1059ba60 Villager::CheckMissionary(void)
bool32_t Villager::CheckMissionary()
{
    return false;
}

// win1.41 00769c20 mac 1059b860 Villager::CheckTraderPickUpOrDropOff(RESOURCE_TYPE)
bool32_t Villager::CheckTraderPickUpOrDropOff(RESOURCE_TYPE param_1)
{
    return false;
}

// win1.41 00769d20 mac 1059b730 Villager::ArrivesAtStoragePitForTraderPickUp(void)
bool32_t Villager::ArrivesAtStoragePitForTraderPickUp()
{
    return false;
}

// win1.41 00769dc0 mac 1059b590 Villager::ArrivesAtStoragePitForTraderDropOff(void)
bool32_t Villager::ArrivesAtStoragePitForTraderDropOff()
{
    return false;
}

// win1.41 00769ea0 mac 1059b4c0 Villager::SetTraderNothingToDo(void)
bool32_t Villager::SetTraderNothingToDo()
{
    return false;
}

// win1.41 00769ee0 mac 1059b190 Villager::SetupBreederDisciple(void)
bool32_t Villager::SetupBreederDisciple()
{
    return false;
}

// win1.41 0076a1b0 mac 1059b020 Villager::BreederDisciple(void)
bool32_t Villager::BreederDisciple()
{
    return false;
}

// win1.41 0076a220 mac 1059af00 Villager::MissionaryDisciple(void)
bool32_t Villager::MissionaryDisciple()
{
    return false;
}

// win1.41 0076a2a0 mac 1059ae60 Villager::EnterBreeder(unsigned char, unsigned char)
bool32_t Villager::EnterBreeder(unsigned char param_1, unsigned char param_2)
{
    return false;
}

// win1.41 0076a2d0 mac 1059ae00 Villager::ExitBreeder(unsigned char)
bool32_t Villager::ExitBreeder(unsigned char param_1)
{
    return false;
}

// win1.41 0076a2f0 mac 1059ac90 Villager::AtStructureRemoveResource(MultiMapFixed *, RESOURCE_TYPE, unsigned long, bool *)
uint32_t Villager::AtStructureRemoveResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long param_3, bool* param_4)
{
    return 0;
}

// win1.41 0076a3b0 mac 100094e0 Villager::AtStructureAddResource(MultiMapFixed *, RESOURCE_TYPE, unsigned long &, bool)
uint32_t Villager::AtStructureAddResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long* param_3, bool param_4)
{
    return 0;
}

// win1.41 0076a4c0 mac 1059a990 Villager::SetDying(void)
bool32_t Villager::SetDying()
{
    return false;
}

// win1.41 0076a570 mac 1059a890 Villager::Dying(void)
bool32_t Villager::Dying()
{
    return false;
}

// win1.41 0076a5e0 mac 1059a580 Villager::Dead(void)
bool32_t Villager::Dead()
{
    return false;
}

// win1.41 0076a780 mac 1059a490 Villager::Drowning(void)
bool32_t Villager::Drowning()
{
    return false;
}

// win1.41 0076a7e0 mac 1059a340 Villager::MakeScaredStiff(void)
bool32_t Villager::MakeScaredStiff()
{
    return false;
}

// win1.41 0076a8b0 mac 1059a2d0 Villager::ScaredStiff(void)
bool32_t Villager::ScaredStiff()
{
    return false;
}

// win1.41 0076a8d0 mac 1059a060 Villager::VagrantStart(void)
bool32_t Villager::VagrantStart()
{
    return false;
}

// win1.41 0076aa60 mac 1059a010 Villager::MornDeath(void)
bool32_t Villager::MornDeath()
{
    return false;
}

// win1.41 0076aa70 mac 10599fd0 Villager::EatOutside(void)
bool32_t Villager::EatOutside()
{
    return true;
}

// win1.41 0076aa80 mac 10599f40 Villager::GetImportance(void)
float Villager::GetImportance()
{
    return 0.0f;
}

// win1.41 0076aab0 mac 10599d10 Villager::SetupInspectObject(Object *)
bool32_t Villager::SetupInspectObject(Object* param_1)
{
    return false;
}

// win1.41 0076ac40 mac 10599c00 Villager::InspectObject(void)
bool32_t Villager::InspectObject()
{
    return false;
}

// win1.41 0076acb0 mac inlined Villager::ExitInFlying(VILLAGER_STATES)
int Villager::ExitInFlying(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 0076ace0 mac 10599b50 Villager::EnterSex(unsigned char, unsigned char)
bool32_t Villager::EnterSex(unsigned char param_1, unsigned char param_2)
{
    return 1;
}

// win1.41 0076acf0 mac 10599a60 Villager::SetupWander(JustWholeMapXZ &, VILLAGER_STATES)
bool32_t Villager::SetupWander(JustWholeMapXZ* param_1, VILLAGER_STATES param_2)
{
    return false;
}

// win1.41 0076ad80 mac 10599960 Villager::ExitSex(unsigned char)
bool32_t Villager::ExitSex(unsigned char param_1)
{
    return false;
}

// win1.41 0076ade0 mac 1000abe0 Villager::InHand(void)
bool32_t Villager::InHand()
{
    return false;
}

// win1.41 0076afe0 mac inlined Villager::EnterInHand(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Villager::EnterInHand(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 0076b000 mac inlined Villager::ExitInHand(VILLAGER_STATES)
int Villager::ExitInHand(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 0076b030 mac 1000ab40 Villager::IsInACreaturesHand(void)
bool32_t Villager::IsInACreaturesHand()
{
    return false;
}

// win1.41 0076b060 mac 10599640 Villager::SetupWaitForCounter(unsigned short, VILLAGER_STATES)
bool32_t Villager::SetupWaitForCounter(unsigned short param_1, VILLAGER_STATES param_2)
{
    return false;
}

// win1.41 0076b090 mac 1009deb0 Villager::SetupPauseForASecond(VILLAGER_STATES)
uint32_t Villager::SetupPauseForASecond(VILLAGER_STATES state)
{
    return 0;
}

// win1.41 0076b0b0 mac 1000e650 Villager::PauseForASecond(void)
bool32_t Villager::PauseForASecond()
{
    return false;
}

// win1.41 0076b0d0 mac 105993e0 Villager::SetupPanicReaction(Reaction *, MapCoords &)
bool32_t Villager::SetupPanicReaction(Reaction* param_1, MapCoords* param_2)
{
    return false;
}

// win1.41 0076b1c0 mac 10599350 Villager::PanicReaction(void)
bool32_t Villager::PanicReaction()
{
    return false;
}

// win1.41 0076b200 mac 10599180 Villager::GotoCongregateInTownAfterEmergency(void)
bool32_t Villager::GotoCongregateInTownAfterEmergency()
{
    return false;
}

// win1.41 0076b300 mac 10599090 Villager::CongregateInTownAfterEmergency(void)
bool32_t Villager::CongregateInTownAfterEmergency()
{
    return false;
}

// win1.41 0076b380 mac 10598f90 Villager::BeingEaten(void)
bool32_t Villager::BeingEaten()
{
    return false;
}

// win1.41 0076b3f0 mac 1001b410 Villager::GoAndChilloutOutsideHome(void)
bool32_t Villager::GoAndChilloutOutsideHome()
{
    return false;
}

// win1.41 0076b4e0 mac 1005fc40 Villager::SitAndChillout(void)
bool32_t Villager::SitAndChillout()
{
    return false;
}

// win1.41 0076b570 mac 10005660 Villager::EnterSitAndChillOut(unsigned char, unsigned char)
bool32_t Villager::EnterSitAndChillOut(unsigned char param_1, unsigned char param_2)
{
    return false;
}

// win1.41 0076b590 mac 10598c80 Villager::GoAndChilloutInTown(void)
bool32_t Villager::GoAndChilloutInTown()
{
    return false;
}

// win1.41 0076b610 mac 100118e0 Villager::GetMeToMyChillOutPos(int (Villager::)(void const *, void* , MapCoords &), MapCoords &, float, MapCoords const &)
void Villager::GetMeToMyChillOutPos(int (* callback)(MapCoords&), MapCoords& param_5, float param_6, const MapCoords& param_7)
{
}

// win1.41 0076b7e0 mac 10598b40 Villager::ArrivesHomeFromWorship(void)
bool32_t Villager::ArrivesHomeFromWorship()
{
    return false;
}

// win1.41 0076b7f0 mac 10598ae0 Villager::SleepInTentFromWorship(void)
bool32_t Villager::SleepInTentFromWorship()
{
    return false;
}

// win1.41 0076b800 mac 10598930 Villager::BreederJustLanded(void)
bool32_t Villager::BreederJustLanded()
{
    return false;
}
