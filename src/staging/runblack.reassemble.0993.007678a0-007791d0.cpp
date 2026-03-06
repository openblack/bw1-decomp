#include "Villager.h"
#include "GameThingWithPos.h"
#include "Living.h"
#include "VillagerStateTableInfo.h"
#include "VirtualInfluence.h"
#include "Fragment.h"
#include "VortexSave.h"
#include "WayPoint.h"
#include "WeatherInfo.h"
#include "Weather.h"
#include "ClimateInfo.h"
#include "Climate.h"
#include "ClimateRainInfo.h"
#include "WeatherThing.h"
#include "Whale.h"
#include "Wonder.h"

// win1.41 007678a0 mac 10596410 Villager::InspectCreatureReaction(void)
bool32_t Villager::InspectCreatureReaction()
{
    return 0;
}

// win1.41 00767970 mac 105962d0 Villager::PerformInspectCreatureReaction(void)
bool32_t Villager::PerformInspectCreatureReaction()
{
    return 0;
}

// win1.41 00767a00 mac 10596080 Villager::ApproachCreatureReaction(void)
bool32_t Villager::ApproachCreatureReaction()
{
    return 0;
}

// win1.41 00767ba0 mac 10595f40 Villager::InitialiseRespectCreatureReaction(void)
bool32_t Villager::InitialiseRespectCreatureReaction()
{
    return 0;
}

// win1.41 00767c80 mac 10595e50 Villager::TurnToFaceCreatureReaction(void)
bool32_t Villager::TurnToFaceCreatureReaction()
{
    return 0;
}

// win1.41 00767ce0 mac 10595cf0 Villager::PerformRespectCreatureReaction(void)
bool32_t Villager::PerformRespectCreatureReaction()
{
    return 0;
}

// win1.41 00767dc0 mac 10595c30 Villager::FinishRespectCreatureReaction(void)
bool32_t Villager::FinishRespectCreatureReaction()
{
    return 0;
}

// win1.41 00767e00 mac 10595a30 Villager::FleeingFromCreatureReaction(void)
bool32_t Villager::FleeingFromCreatureReaction()
{
    return 0;
}

// win1.41 00767f70 mac 10595930 Villager::MoveTowardsCreatureReaction(void)
bool32_t Villager::MoveTowardsCreatureReaction()
{
    return 0;
}

// win1.41 007682a0 mac 10595080 Villager::CalculateNearestFreeDestination(MapCoords *)
void Villager::CalculateNearestFreeDestination(MapCoords* param_1)
{
}

// win1.41 007683f0 mac 10595020 Villager::UpdateAttitudeToCreature(void)
void Villager::UpdateAttitudeToCreature()
{
}

// win1.41 00768400 mac 10594e00 Villager::UpdateReactiveStateFromAttitudeToCreature(void)
bool32_t Villager::UpdateReactiveStateFromAttitudeToCreature()
{
    return 0;
}

// win1.41 00768510 mac 10594d70 Villager::SetupMoveToCreatureReaction(MapCoords const &, unsigned char)
void Villager::SetupMoveToCreatureReaction(const MapCoords* param_1, unsigned char param_2)
{
}

// win1.41 00768540 mac 10594d20 GameThingWithPos::AttitudeToCreatureNone(void)
uint32_t GameThingWithPos::AttitudeToCreatureNone()
{
    return 0;
}

// win1.41 00768550 mac 00768550 GameThingWithPos::AttitudeToCreatureFear(void)
uint32_t GameThingWithPos::AttitudeToCreatureFear()
{
    return 0;
}

// win1.41 00768560 mac 10594c80 GameThingWithPos::AttitudeToCreatureRespect(void)
uint32_t GameThingWithPos::AttitudeToCreatureRespect()
{
    return 0;
}

// win1.41 00768570 mac 10594c30 GameThingWithPos::AttitudeToCreatureEating(void)
uint32_t GameThingWithPos::AttitudeToCreatureEating()
{
    return 0;
}

// win1.41 00768580 mac 10594bb0 Living::AttitudeToCreatureEating(void)
uint32_t Living::AttitudeToCreatureEating()
{
    return 0;
}

// win1.41 00768630 mac 10597660 Villager::IsReadyForNewScriptAction(void)
bool Villager::IsReadyForNewScriptAction()
{
    return 0;
}

// win1.41 00768640 mac 105975c0 Living::CannotExitState(unsigned char)
bool32_t Living::CannotExitState(unsigned char param_1)
{
    return 0;
}

// win1.41 00768680 mac 105974b0 Villager::SetupScriptWanderToPos(MapCoords const &, float, unsigned short, unsigned short)
bool32_t Villager::SetupScriptWanderToPos(const MapCoords* param_1, float param_2, unsigned short param_3, unsigned short param_4)
{
    return 0;
}

// win1.41 007686d0 mac 10597370 Villager::SetupNewScriptWander(void)
bool32_t Villager::SetupNewScriptWander()
{
    return 0;
}

// win1.41 00768780 mac inlined Living::ExitNoChangeState(VILLAGER_STATES)
int Living::ExitNoChangeState(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 007687d0 mac inlined Living::EnterScriptWander(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Living::EnterScriptWander(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 007687f0 mac 105971a0 Villager::ScriptWanderAroundPos(void)
bool32_t Villager::ScriptWanderAroundPos()
{
    return 0;
}

// win1.41 00768830 mac inlined Living::ExitScriptWander(VILLAGER_STATES)
int Living::ExitScriptWander(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00768840 mac inlined Living::EnterPlayAnim(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Living::EnterPlayAnim(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 00768970 mac 10005f50 Villager::ScriptPlayAnim(void)
bool32_t Villager::ScriptPlayAnim()
{
    return 0;
}

// win1.41 007689c0 mac inlined Living::ExitPlayAnim(VILLAGER_STATES)
int Living::ExitPlayAnim(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 007689d0 mac 1000afa0 Villager::IsScriptAnimationComplete(void)
bool32_t Villager::IsScriptAnimationComplete()
{
    return 0;
}

// win1.41 00768a00 mac 10596c60 Villager::ScriptAnimation(void)
bool32_t Villager::ScriptAnimation()
{
    return 0;
}

// win1.41 00768a10 mac 10596c20 Villager::WeakOnGround(void)
bool32_t Villager::WeakOnGround()
{
    return 0;
}

// win1.41 00768a20 mac 105969d0 Villager::ScriptGoAndMoveAlongPath(void)
bool32_t Villager::ScriptGoAndMoveAlongPath()
{
    return 0;
}

// win1.41 00768be0 mac 10598820 Villager::VillagerBecomesShepherd(Flock *)
bool32_t Villager::VillagerBecomesShepherd(Flock* param_1)
{
    return 0;
}

// win1.41 00768c30 mac 105986f0 Villager::ShepherdLookForFlock(void)
bool32_t Villager::ShepherdLookForFlock()
{
    return 0;
}

// win1.41 00768c90 mac 10598650 Villager::FindClosestFlockAnimal(void)
bool32_t Villager::FindClosestFlockAnimal()
{
    return 0;
}

// win1.41 00768cc0 mac 105984c0 Villager::ShepherdMoveFlockToWater(void)
bool32_t Villager::ShepherdMoveFlockToWater()
{
    return 0;
}

// win1.41 00768dd0 mac 10006020 Villager::ShepherdWaitForFlock(void)
bool32_t Villager::ShepherdWaitForFlock()
{
    return 0;
}

// win1.41 00768e30 mac 105981b0 Villager::ShepherdGotoFlock(void)
bool32_t Villager::ShepherdGotoFlock()
{
    return 0;
}

// win1.41 00768ec0 mac 105980a0 Villager::ShepherdTakesControlOfFlock(void)
bool32_t Villager::ShepherdTakesControlOfFlock()
{
    return 0;
}

// win1.41 00768f20 mac 10597fd0 Villager::ShepherdReleasesControlOfFlock(void)
bool32_t Villager::ShepherdReleasesControlOfFlock()
{
    return 0;
}

// win1.41 00768f50 mac 10597f10 Villager::ExitShepherding(unsigned char)
bool32_t Villager::ExitShepherding(unsigned char param_1)
{
    return 0;
}

// win1.41 00768fb0 mac 10597d80 Villager::ShepherdDecideWhatToDoWithFlock(void)
bool32_t Villager::ShepherdDecideWhatToDoWithFlock()
{
    return 0;
}

// win1.41 00769070 mac 10597cc0 Villager::ShepherdMoveFlockBack(void)
bool32_t Villager::ShepherdMoveFlockBack()
{
    return 0;
}

// win1.41 007690d0 mac 10597c80 Villager::ShepherdMoveFlockToFood(void)
bool32_t Villager::ShepherdMoveFlockToFood()
{
    return 0;
}

// win1.41 007690e0 mac 10597ae0 Villager::ShepherdTakeAnimalForSlaughter(void)
bool32_t Villager::ShepherdTakeAnimalForSlaughter()
{
    return 0;
}

// win1.41 007691a0 mac 10026690 Villager::ShepherdCheckAnimalForSlaughter(void)
bool32_t Villager::ShepherdCheckAnimalForSlaughter()
{
    return 0;
}

// win1.41 00769390 mac 10597830 Villager::ShepherdSlaughterAnimal(void)
bool32_t Villager::ShepherdSlaughterAnimal()
{
    return 0;
}

// win1.41 00769430 mac 10006770 Villager::SlaughterAnimalIsClose(float, Living *)
bool32_t Villager::SlaughterAnimalIsClose(float param_1, Living* param_2)
{
    return 0;
}

// win1.41 00769460 mac 105976d0 Villager::ShepherdFetchStray(void)
bool32_t Villager::ShepherdFetchStray()
{
    return 0;
}

// win1.41 00769580 mac 1059c630 GVillagerStateTableInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GVillagerStateTableInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
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
    return 0;
}

// win1.41 007698b0 mac 1059c070 Villager::ArrivesAtStoragePitForFood(void)
bool32_t Villager::ArrivesAtStoragePitForFood()
{
    return 0;
}

// win1.41 007698d0 mac 1059bc90 Villager::ArrivesAtStoragePitForResource(RESOURCE_TYPE, unsigned long, VILLAGER_STATES, VILLAGER_STATES)
bool32_t Villager::ArrivesAtStoragePitForResource(RESOURCE_TYPE param_1, unsigned long param_2, VILLAGER_STATES param_3, VILLAGER_STATES param_4)
{
    return 0;
}

// win1.41 00769b30 mac 1059bbc0 Villager::ArrivesAtHomeWithFood(void)
bool32_t Villager::ArrivesAtHomeWithFood()
{
    return 0;
}

// win1.41 00769b80 mac 1059baa0 Villager::CheckTrader(void)
bool32_t Villager::CheckTrader()
{
    return 0;
}

// win1.41 00769c10 mac 1059ba60 Villager::CheckMissionary(void)
bool32_t Villager::CheckMissionary()
{
    return 0;
}

// win1.41 00769c20 mac 1059b860 Villager::CheckTraderPickUpOrDropOff(RESOURCE_TYPE)
bool32_t Villager::CheckTraderPickUpOrDropOff(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 00769d20 mac 1059b730 Villager::ArrivesAtStoragePitForTraderPickUp(void)
bool32_t Villager::ArrivesAtStoragePitForTraderPickUp()
{
    return 0;
}

// win1.41 00769dc0 mac 1059b590 Villager::ArrivesAtStoragePitForTraderDropOff(void)
bool32_t Villager::ArrivesAtStoragePitForTraderDropOff()
{
    return 0;
}

// win1.41 00769ea0 mac 1059b4c0 Villager::SetTraderNothingToDo(void)
bool32_t Villager::SetTraderNothingToDo()
{
    return 0;
}

// win1.41 00769ee0 mac 1059b190 Villager::SetupBreederDisciple(void)
bool32_t Villager::SetupBreederDisciple()
{
    return 0;
}

// win1.41 0076a1b0 mac 1059b020 Villager::BreederDisciple(void)
bool32_t Villager::BreederDisciple()
{
    return 0;
}

// win1.41 0076a220 mac 1059af00 Villager::MissionaryDisciple(void)
bool32_t Villager::MissionaryDisciple()
{
    return 0;
}

// win1.41 0076a2a0 mac 1059ae60 Villager::EnterBreeder(unsigned char, unsigned char)
bool32_t Villager::EnterBreeder(unsigned char param_1, unsigned char param_2)
{
    return 0;
}

// win1.41 0076a2d0 mac 1059ae00 Villager::ExitBreeder(unsigned char)
bool32_t Villager::ExitBreeder(unsigned char param_1)
{
    return 0;
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
bool Villager::SetDying()
{
    return 0;
}

// win1.41 0076a570 mac 1059a890 Villager::Dying(void)
bool Villager::Dying()
{
    return 0;
}

// win1.41 0076a5e0 mac 1059a580 Villager::Dead(void)
bool Villager::Dead()
{
    return 0;
}

// win1.41 0076a780 mac 1059a490 Villager::Drowning(void)
bool32_t Villager::Drowning()
{
    return 0;
}

// win1.41 0076a7e0 mac 1059a340 Villager::MakeScaredStiff(void)
bool32_t Villager::MakeScaredStiff()
{
    return 0;
}

// win1.41 0076a8b0 mac 1059a2d0 Villager::ScaredStiff(void)
bool32_t Villager::ScaredStiff()
{
    return 0;
}

// win1.41 0076a8d0 mac 1059a060 Villager::VagrantStart(void)
bool32_t Villager::VagrantStart()
{
    return 0;
}

// win1.41 0076aa60 mac 1059a010 Villager::MornDeath(void)
bool32_t Villager::MornDeath()
{
    return 0;
}

// win1.41 0076aa70 mac 10599fd0 Villager::EatOutside(void)
bool32_t Villager::EatOutside()
{
    return 0;
}

// win1.41 0076aa80 mac 10599f40 Villager::GetImportance(void)
float Villager::GetImportance()
{
    return 0;
}

// win1.41 0076aab0 mac 10599d10 Villager::SetupInspectObject(Object *)
bool32_t Villager::SetupInspectObject(Object* param_1)
{
    return 0;
}

// win1.41 0076ac40 mac 10599c00 Villager::InspectObject(void)
bool32_t Villager::InspectObject()
{
    return 0;
}

// win1.41 0076acb0 mac inlined Villager::ExitInFlying(VILLAGER_STATES)
int Villager::ExitInFlying(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 0076ace0 mac 10599b50 Villager::EnterSex(unsigned char, unsigned char)
bool32_t Villager::EnterSex(unsigned char param_1, unsigned char param_2)
{
    return 0;
}

// win1.41 0076acf0 mac 10599a60 Villager::SetupWander(JustWholeMapXZ &, VILLAGER_STATES)
bool32_t Villager::SetupWander(JustWholeMapXZ* param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 0076ad80 mac 10599960 Villager::ExitSex(unsigned char)
bool32_t Villager::ExitSex(unsigned char param_1)
{
    return 0;
}

// win1.41 0076ade0 mac 1000abe0 Villager::InHand(void)
bool Villager::InHand()
{
    return 0;
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
    return 0;
}

// win1.41 0076b060 mac 10599640 Villager::SetupWaitForCounter(unsigned short, VILLAGER_STATES)
bool32_t Villager::SetupWaitForCounter(unsigned short param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 0076b090 mac 1009deb0 Villager::SetupPauseForASecond(VILLAGER_STATES)
uint32_t Villager::SetupPauseForASecond(VILLAGER_STATES state)
{
    return 0;
}

// win1.41 0076b0b0 mac 1000e650 Villager::PauseForASecond(void)
bool32_t Villager::PauseForASecond()
{
    return 0;
}

// win1.41 0076b0d0 mac 105993e0 Villager::SetupPanicReaction(Reaction *, MapCoords &)
bool32_t Villager::SetupPanicReaction(Reaction* param_1, MapCoords* param_2)
{
    return 0;
}

// win1.41 0076b1c0 mac 10599350 Villager::PanicReaction(void)
bool32_t Villager::PanicReaction()
{
    return 0;
}

// win1.41 0076b200 mac 10599180 Villager::GotoCongregateInTownAfterEmergency(void)
bool32_t Villager::GotoCongregateInTownAfterEmergency()
{
    return 0;
}

// win1.41 0076b300 mac 10599090 Villager::CongregateInTownAfterEmergency(void)
bool32_t Villager::CongregateInTownAfterEmergency()
{
    return 0;
}

// win1.41 0076b380 mac 10598f90 Villager::BeingEaten(void)
bool Villager::BeingEaten()
{
    return 0;
}

// win1.41 0076b3f0 mac 1001b410 Villager::GoAndChilloutOutsideHome(void)
bool32_t Villager::GoAndChilloutOutsideHome()
{
    return 0;
}

// win1.41 0076b4e0 mac 1005fc40 Villager::SitAndChillout(void)
bool32_t Villager::SitAndChillout()
{
    return 0;
}

// win1.41 0076b570 mac 10005660 Villager::EnterSitAndChillOut(unsigned char, unsigned char)
bool32_t Villager::EnterSitAndChillOut(unsigned char param_1, unsigned char param_2)
{
    return 0;
}

// win1.41 0076b590 mac 10598c80 Villager::GoAndChilloutInTown(void)
bool32_t Villager::GoAndChilloutInTown()
{
    return 0;
}

// win1.41 0076b610 mac 100118e0 Villager::GetMeToMyChillOutPos(int (Villager::)(void const *, void* , MapCoords &), MapCoords &, float, MapCoords const &)
void Villager::GetMeToMyChillOutPos(int (* callback)(MapCoords&), MapCoords& param_5, float param_6, const MapCoords& param_7)
{
}

// win1.41 0076b7e0 mac 10598b40 Villager::ArrivesHomeFromWorship(void)
bool32_t Villager::ArrivesHomeFromWorship()
{
    return 0;
}

// win1.41 0076b7f0 mac 10598ae0 Villager::SleepInTentFromWorship(void)
bool32_t Villager::SleepInTentFromWorship()
{
    return 0;
}

// win1.41 0076b800 mac 10598930 Villager::BreederJustLanded(void)
bool32_t Villager::BreederJustLanded()
{
    return 0;
}

// win1.41 0076b980 mac 1059c830 Villager::ArrivesInAbodeToPickUpExcess(void)
bool32_t Villager::ArrivesInAbodeToPickUpExcess()
{
    return 0;
}

// win1.41 0076b990 mac 1059c7f0 Villager::ArrivesInAbodeToTrade(void)
bool32_t Villager::ArrivesInAbodeToTrade()
{
    return 0;
}

// win1.41 0076b9a0 mac 1059c7b0 Villager::SetupFoodForWoodTrade(long)
void Villager::SetupFoodForWoodTrade(long param_1)
{
}

// win1.41 0076b9b0 mac 1059c770 Villager::ExcessFood(void)
bool32_t Villager::ExcessFood()
{
    return 0;
}

// win1.41 0076b9c0 mac 1059c730 Villager::SetupWoodForFoodTrade(long)
void Villager::SetupWoodForFoodTrade(long param_1)
{
}

// win1.41 0076b9d0 mac 1059c6f0 Villager::ExcessWood(void)
bool32_t Villager::ExcessWood()
{
    return 0;
}

// win1.41 0076ba60 mac 10096dd0 Villager::CheckNeededForWorship(void)
float Villager::CheckNeededForWorship()
{
    return 0;
}

// win1.41 0076bae0 mac 1059ec20 Villager::CheckWorshipActivity(int)
float Villager::CheckWorshipActivity(int param_1)
{
    return 0;
}

// win1.41 0076bc20 mac 1059eaf0 Villager::CanIGetToTheWorshipSite(MagicTeleport * &)
bool32_t Villager::CanIGetToTheWorshipSite(MagicTeleport** param_1)
{
    return 0;
}

// win1.41 0076bcc0 mac 1059e8f0 Villager::GotoWorshipSiteForWorship(void)
bool32_t Villager::GotoWorshipSiteForWorship()
{
    return 0;
}

// win1.41 0076bda0 mac 1059e810 Villager::SetGotoWorshipSpeed(void)
bool32_t Villager::SetGotoWorshipSpeed()
{
    return 0;
}

// win1.41 0076be00 mac 1059e6f0 Villager::ArrivesAtWorshipSiteForWorship(void)
bool32_t Villager::ArrivesAtWorshipSiteForWorship()
{
    return 0;
}

// win1.41 0076bec0 mac 1059e520 Villager::CheckVillagerGoBackToTownFromWorship(void)
bool32_t Villager::CheckVillagerGoBackToTownFromWorship()
{
    return 0;
}

// win1.41 0076bf90 mac 1059e4b0 Villager::CheckNeededForSupplyWorship(void)
bool32_t Villager::CheckNeededForSupplyWorship()
{
    return 0;
}

// win1.41 0076bfa0 mac 1059e310 Villager::GotoStoragePitForWorshipSupplies(void)
bool32_t Villager::GotoStoragePitForWorshipSupplies()
{
    return 0;
}

// win1.41 0076c080 mac 1059e1e0 Villager::ArrivesAtStoragePitForWorshipSupplies(void)
bool32_t Villager::ArrivesAtStoragePitForWorshipSupplies()
{
    return 0;
}

// win1.41 0076c100 mac 1059e190 Villager::GotoWorshipSiteWithSupplies(void)
bool32_t Villager::GotoWorshipSiteWithSupplies()
{
    return 0;
}

// win1.41 0076c110 mac 1059e140 Villager::MoveToWorshipSiteWithSupplies(void)
bool32_t Villager::MoveToWorshipSiteWithSupplies()
{
    return 0;
}

// win1.41 0076c120 mac 1059e070 Villager::ExitMoveToWorshipSiteWithSupplies(unsigned char)
bool32_t Villager::ExitMoveToWorshipSiteWithSupplies(unsigned char param_1)
{
    return 0;
}

// win1.41 0076c170 mac 1059df70 Villager::ExitMoveToWorshipSite(unsigned char)
bool32_t Villager::ExitMoveToWorshipSite(unsigned char param_1)
{
    return 0;
}

// win1.41 0076c1f0 mac 1059de40 Villager::ExitAtWorshipSite(unsigned char)
bool32_t Villager::ExitAtWorshipSite(unsigned char param_1)
{
    return 0;
}

// win1.41 0076c280 mac 1059dd90 Villager::ExitGetFoodAtWorship(unsigned char)
bool32_t Villager::ExitGetFoodAtWorship(unsigned char param_1)
{
    return 0;
}

// win1.41 0076c2d0 mac 1059dc80 Villager::ArrivesAtWorshipSiteWithSupplies(void)
bool32_t Villager::ArrivesAtWorshipSiteWithSupplies()
{
    return 0;
}

// win1.41 0076c340 mac 1059db90 Villager::GetWorshipSite(void)
WorshipSite* Villager::GetWorshipSite()
{
    return 0;
}

// win1.41 0076c390 mac 1059daf0 Villager::RestartWorshippingAtWorshipSite(void)
bool32_t Villager::RestartWorshippingAtWorshipSite()
{
    return 0;
}

// win1.41 0076c3c0 mac 1059da60 Villager::RestartWorshippingCreature(void)
bool32_t Villager::RestartWorshippingCreature()
{
    return 0;
}

// win1.41 0076c3f0 mac 1059d990 Villager::AddVillagerToWorshipSite(void)
bool32_t Villager::AddVillagerToWorshipSite()
{
    return 0;
}

// win1.41 0076c440 mac 1059d850 Villager::RemoveVillagerFromWorshipSite(void)
bool32_t Villager::RemoveVillagerFromWorshipSite()
{
    return 0;
}

// win1.41 0076c4c0 mac 1059d740 Villager::StartWorshippingAtWorshipSite(void)
bool32_t Villager::StartWorshippingAtWorshipSite()
{
    return 0;
}

// win1.41 0076c550 mac 1059d640 Villager::StartHidingAtWorshipSite(void)
bool32_t Villager::StartHidingAtWorshipSite()
{
    return 0;
}

// win1.41 0076c5e0 mac 1059d530 Villager::HidingAtWorshipSite(void)
bool32_t Villager::HidingAtWorshipSite()
{
    return 0;
}

// win1.41 0076c680 mac 1059d470 Villager::WorshippingAtWorshipSite(void)
bool32_t Villager::WorshippingAtWorshipSite()
{
    return 0;
}

// win1.41 0076c6e0 mac 1059d310 Villager::StartWorshippingCreature(Creature *)
bool32_t Villager::StartWorshippingCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0076c7c0 mac 1059d280 Villager::WorshippingCreature(void)
bool32_t Villager::WorshippingCreature()
{
    return 0;
}

// win1.41 0076c800 mac 1059d130 Villager::ReduceVillagerLifeByChant(void)
bool32_t Villager::ReduceVillagerLifeByChant()
{
    return 0;
}

// win1.41 0076c890 mac 1059d090 Villager::ProcessInWorship(void)
bool32_t Villager::ProcessInWorship()
{
    return 0;
}

// win1.41 0076c8d0 mac 1059cfa0 Villager::CheckRequestGoHome(void)
bool32_t Villager::CheckRequestGoHome()
{
    return 0;
}

// win1.41 0076c930 mac 1059ce60 Villager::CheckNeededForWorshipSiteBuilding(void)
bool32_t Villager::CheckNeededForWorshipSiteBuilding()
{
    return 0;
}

// win1.41 0076c9a0 mac 1059cd40 Villager::CheckAllowedToRestAtWorshipSite(int)
bool32_t Villager::CheckAllowedToRestAtWorshipSite(int param_1)
{
    return 0;
}

// win1.41 0076ca30 mac 1059cbd0 Villager::GetFoodAtWorshipSite(void)
bool32_t Villager::GetFoodAtWorshipSite()
{
    return 0;
}

// win1.41 0076caf0 mac 1059cb80 Villager::GetFoodDesireAtWorshipSite(void)
bool32_t Villager::GetFoodDesireAtWorshipSite()
{
    return 0;
}

// win1.41 0076cb00 mac 1059caa0 Villager::GotoAltarForRest(void)
bool32_t Villager::GotoAltarForRest()
{
    return 0;
}

// win1.41 0076cb80 mac 1059ca10 Villager::ArrivesAtAltarForRest(void)
bool32_t Villager::ArrivesAtAltarForRest()
{
    return 0;
}

// win1.41 0076cbb0 mac 1059c980 Villager::AtAltarRest(void)
bool32_t Villager::AtAltarRest()
{
    return 0;
}

// win1.41 0076cbe0 mac 1059c8f0 Villager::AtAltarFinishedRest(void)
bool32_t Villager::AtAltarFinishedRest()
{
    return 0;
}

// win1.41 0076cc00 mac 1059c880 Villager::CheckSatisfySuppyWorship(void)
bool32_t Villager::CheckSatisfySuppyWorship()
{
    return 0;
}

// win1.41 0076cca0 mac 1015a6f0 GVirtualInfluence::GVirtualInfluence(GInterfaceStatus *)
GVirtualInfluence::GVirtualInfluence(GInterfaceStatus* status)
{
}

// win1.41 0076cd10 mac 1015a660 GVirtualInfluence::_dt(void)
GVirtualInfluence::~GVirtualInfluence()
{
}

// win1.41 0076e900 mac 1015c440 Fragment::Fragment(void)
// Fragment::Fragment()
// {
// }

// win1.41 0076e930 mac 1015aab0 Fragment::CanBePickedUpByCreature(Creature *)
bool Fragment::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0076e940 mac 1015ab00 Fragment::ValidForPlaceInHand(GInterfaceStatus *)
bool Fragment::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0076e950 mac 1015ab50 Fragment::InterfaceValidToTap(GInterfaceStatus *)
uint32_t Fragment::InterfaceValidToTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0076e960 mac 1015aba0 Fragment::CanBeThrownByPlayer(void)
bool Fragment::CanBeThrownByPlayer()
{
    return 0;
}

// win1.41 0076e970 mac 1015abe0 Fragment::GetInHandImmersionTexture(void)
IMMERSION_EFFECT_TYPE Fragment::GetInHandImmersionTexture()
{
    return (IMMERSION_EFFECT_TYPE)0;
}

// win1.41 0076e980 mac 1015ac40 Fragment::GetSaveType(void)
uint32_t Fragment::GetSaveType()
{
    return 0;
}

// win1.41 0076e990 mac 1015ac80 Fragment::GetDebugText(void)
char* Fragment::GetDebugText()
{
    return 0;
}

// win1.41 0076e9a0 mac 1015aa20 Fragment::_dt(void)
Fragment::~Fragment()
{
}

// // win1.41 0076e9d0 mac 1015c250 Fragment::Fragment(MapCoords const &, FragMesh *, GPlayer *)
// Fragment::Fragment(MapCoords* coords, FragMesh* frag_mesh, GPlayer* player)
// {
// }

// win1.41 0076ea70 mac 1015c0b0 Fragment::ToBeDeleted(int)
void Fragment::ToBeDeleted(int param_1)
{
}

// win1.41 0076ec00 mac 1015be10 Fragment::Draw(void)
void Fragment::Draw()
{
}

// win1.41 0076ec40 mac 1015bdd0 Fragment::GetPhysicsConstantsType(void)
uint32_t Fragment::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 0076ec50 mac 1015b540 Fragment::SetUpPhysOb(PhysOb *)
void Fragment::SetUpPhysOb(PhysOb* param_1)
{
}

// win1.41 0076f3d0 mac 1015b4f0 Fragment::InteractsWithPhysicsObjects(void)
bool Fragment::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 0076f3e0 mac 1015b4a0 Fragment::ReactToPhysicsImpact(PhysicsObject *, bool)
void Fragment::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 0076f3f0 mac 1015b270 Fragment::EndPhysics(PhysicsObject *, bool)
void Fragment::EndPhysics(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 0076f5d0 mac 1015b130 Fragment::Save(GameOSFile &)
bool Fragment::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0076f6a0 mac 1015afa0 Fragment::Load(GameOSFile &)
bool Fragment::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0076f7b0 mac 1015af50 Fragment::ResolveLoad(void)
void Fragment::ResolveLoad()
{
}

// win1.41 0076f7c0 mac 1015aef0 Fragment::GetScriptObjectType(void)
uint32_t Fragment::GetScriptObjectType()
{
    return 0;
}

// win1.41 0076f7d0 mac 1015aeb0 Fragment::GetCollideSoundType(void)
SOUND_COLLISION_TYPE Fragment::GetCollideSoundType()
{
    return (SOUND_COLLISION_TYPE)0;
}

// win1.41 0076f7e0 mac 1015ae70 Fragment::ShouldFootpathsGoRound(void)
bool Fragment::ShouldFootpathsGoRound()
{
    return 0;
}

// win1.41 0076f7f0 mac 1015ae00 Fragment::CreatureMustAvoid(Creature *)
bool Fragment::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 0076f860 mac 1015e730 VortexSave::GetSaveType(void)
uint32_t VortexSave::GetSaveType()
{
    return 0;
}

// win1.41 0076f870 mac 1015f3f0 VortexSave::_dt(void)
VortexSave::~VortexSave()
{
}

// win1.41 0076fb40 mac 1015ed90 VortexSave::Save(GameOSFile &)
bool VortexSave::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0076fdc0 mac 1015e890 VortexSave::Load(GameOSFile &)
bool VortexSave::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0076ffe0 mac 1015e770 VortexSave::ResolveLoad(void)
void VortexSave::ResolveLoad()
{
}

// win1.41 00770b20 mac 1015f710 WayPoint::GetSaveType(void)
uint32_t WayPoint::GetSaveType()
{
    return 0;
}

// win1.41 00770b30 mac 1015f750 WayPoint::GetDebugText(void)
char* WayPoint::GetDebugText()
{
    return 0;
}

// win1.41 00770b40 mac 1015f790 WayPoint::GetText(void)
const char* WayPoint::GetText()
{
    return 0;
}

// win1.41 00770b50 mac 1015fc80 WayPoint::_dt(void)
WayPoint::~WayPoint()
{
}

// win1.41 00770c00 mac 1015fa00 WayPoint::ToBeDeleted(int)
void WayPoint::ToBeDeleted(int param_1)
{
}

// win1.41 00770dd0 mac 105a3640 GWeatherInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GWeatherInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00770e30 mac 105a3520 GWeatherInfo::_dt(void)
GWeatherInfo::~GWeatherInfo()
{
}

// win1.41 00770e80 mac 105a36f0 GWeather::_dt(void)
GWeather::~GWeather()
{
}

// win1.41 00770f80 mac 105a3780 GClimateInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GClimateInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00770ff0 mac 105a16b0 GClimateInfo::_dt(void)
GClimateInfo::~GClimateInfo()
{
}

// win1.41 007713e0 mac 105a2620 GClimate::ToBeDeleted(int)
void GClimate::ToBeDeleted(int param_1)
{
}

// win1.41 00773320 mac 1059f860 GClimate::Save(GameOSFile &)
bool GClimate::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 007736e0 mac 1059ef90 GClimate::Load(GameOSFile &)
bool GClimate::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00773c90 mac 105a39e0 GClimateRainInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GClimateRainInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00773ce0 mac 105a3a30 GClimateRainInfo::_dt(void)
GClimateRainInfo::~GClimateRainInfo()
{
}

// win1.41 00774130 mac 105a4f00 WeatherThing::ToBeDeleted(int)
void WeatherThing::ToBeDeleted(int param_1)
{
}

// win1.41 007742e0 mac 105a4be0 WeatherThing::SetPos(MapCoords const &)
void WeatherThing::SetPos(const MapCoords* param_1)
{
}

// win1.41 00774360 mac 105a4b40 WeatherThing::GetScriptObjectType(void)
uint32_t WeatherThing::GetScriptObjectType()
{
    return 0;
}

// win1.41 00774580 mac 105a4680 WeatherThing::SetSpeedInMetres(float, int)
void WeatherThing::SetSpeedInMetres(float param_1, int param_2)
{
}

// win1.41 007745c0 mac 105a4300 WeatherThing::Save(GameOSFile &)
bool WeatherThing::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 007747e0 mac 105a3fe0 WeatherThing::Load(GameOSFile &)
bool WeatherThing::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00774c00 mac 10160d10 Whale::ToBeDeleted(int)
void Whale::ToBeDeleted(int param_1)
{
}

// win1.41 00774ca0 mac 10160a20 Whale::CallVirtualFunctionsForCreation(MapCoords const &)
void Whale::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00774e10 mac 101609a0 Whale::Draw(void)
void Whale::Draw()
{
}

// win1.41 00775280 mac 10160150 Whale::Process(void)
uint32_t Whale::Process()
{
    return 0;
}

// win1.41 007752a0 mac 101600f0 Whale::Save(GameOSFile &)
bool Whale::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 007752c0 mac 10160090 Whale::Load(GameOSFile &)
bool Whale::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 007752e0 mac 10160040 Whale::ResolveLoad(void)
void Whale::ResolveLoad()
{
}

// // win1.41 00778e00 mac 10161c40 Wonder::Wonder(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
// Wonder::Wonder(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood)
// {
// }

// win1.41 00778e40 mac 10161bc0 Wonder::ToBeDeleted(int)
void Wonder::ToBeDeleted(int param_1)
{
}

// win1.41 00778e80 mac 101619e0 Wonder::Create(const MapCoords&, const GAbodeInfo*, Town*, float, float, float, int)
Wonder* Wonder::Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood)
{
    return 0;
}

// win1.41 00778f30 mac 10161920 Wonder::Built(void)
bool Wonder::Built()
{
    return 0;
}

// win1.41 00778f50 mac 10161810 Wonder::RemoveFromPlayer(void)
void Wonder::RemoveFromPlayer()
{
}

// win1.41 00778fc0 mac 10161700 Wonder::AddToPlayer(void)
void Wonder::AddToPlayer()
{
}

// win1.41 00779060 mac inlined Wonder::SetZero(void)
void Wonder::SetZero()
{
}

// win1.41 00779070 mac 10161620 Wonder::SetPower(float)
void Wonder::SetPower(float param_1)
{
}

// win1.41 00779080 mac 10161540 Wonder::Save(GameOSFile &)
bool Wonder::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 007790f0 mac 10161470 Wonder::Load(GameOSFile &)
bool Wonder::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00779160 mac 101613c0 Wonder::CallVirtualFunctionsForCreation(const MapCoords&)
void Wonder::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 00779190 mac 10161310 Wonder::Get3DType(void)
LH3DObject::ObjectType Wonder::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}
