#include "CreatureInfo.h"
#include "DifferentCreatureInfo.h"
#include "Creature.h"
#include "CreaturePlan.h"
#include "CreatureSubAction.h"
#include "MobileWallHug.h"
#include "Living.h"
#include "Villager.h"
#include "Alignment.h"
#include "Mobile.h"

// win1.41 00472c10 mac 101e2980 CreatureInfo::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00472c80 mac 101d2300 CreatureInfo::_dt(void)
CreatureInfo::~CreatureInfo()
{
}

// win1.41 00472cf0 mac 101e2a50 DifferentCreatureInfo::GetBaseInfo(unsigned long &)
GBaseInfo* DifferentCreatureInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00472d50 mac 101d2170 DifferentCreatureInfo::_dt(void)
DifferentCreatureInfo::~DifferentCreatureInfo()
{
}

// win1.41 00472dc0 mac 101e16f0 Creature::ProcessState(void)
uint32_t Creature::ProcessState()
{
    return 0;
}

// win1.41 00473b70 mac 10278860 CreaturePlan::_dt(void)
CreaturePlan::~CreaturePlan()
{
}

// win1.41 00473db0 mac 101e0720 CreatureSubAction::CreatureSubAction(void)
CreatureSubAction::CreatureSubAction()
{
}

// win1.41 00473dd0 mac 101deb60 CreatureSubAction::_dt(void)
CreatureSubAction::~CreatureSubAction()
{
}

// win1.41 00473e40 mac 10079ab0 MobileWallHug::SetTowardsAngle(unsigned short)
void MobileWallHug::SetTowardsAngle(uint16_t param_1)
{
}

// win1.41 00473e50 mac 101e3470 Living::SetStateSpeed(void)
void Living::SetStateSpeed()
{
}

// win1.41 00473e60 mac inlined Living::IsScriptState( const(VILLAGER_STATES))
bool Living::IsScriptState(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00473e70 mac inlined Living::IsScriptInterruptableState( const(VILLAGER_STATES))
bool Living::IsScriptInterruptableState(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00473e80 mac inlined Living::IsStateExitFunctionSameAs( const(VILLAGER_STATES))
bool Living::IsStateExitFunctionSameAs(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00473e90 mac 101e3580 Living::IsInterestedInFoodObject(Object *)
bool Living::IsInterestedInFoodObject(Object* param_1)
{
    return 0;
}

// win1.41 00473ea0 mac 101e35d0 Living::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
void Living::SetupReactToFallingTree(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00473eb0 mac 101e3630 Living::ReactToDroppedByHandPriority(Reaction *, Reaction *)
uint8_t Living::ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00473ec0 mac 101e3690 Living::ReactToFallingTreePriority(Reaction *, Reaction *)
uint8_t Living::ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00473ed0 mac 101e36f0 Living::IsChild(void)
bool Living::IsChild()
{
    return 0;
}

// win1.41 00473ee0 mac inlined Villager::IsPosValidForTurnAngle(MapCoords const &)
bool Villager::IsPosValidForTurnAngle(const MapCoords* param_1)
{
    return 0;
}

// win1.41 00473ef0 mac 101e2be0 Creature::GetAnimId(void)
ANIM_LIST Creature::GetAnimId()
{
    return (ANIM_LIST)0;
}

// win1.41 00473f00 mac inlined Creature::CallIntoAnimationFunction(VILLAGER_STATES)
int Creature::CallIntoAnimationFunction(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00473f10 mac inlined Creature::CallOutofAnimationFunction(VILLAGER_STATES)
int Creature::CallOutofAnimationFunction(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00473f20 mac 100a0db0 Creature::GetPlayer(void)
GPlayer* Creature::GetPlayer()
{
    return 0;
}

// win1.41 00473f30 mac 101e2cc0 Creature::RemoveDance(void)
void Creature::RemoveDance()
{
}

// win1.41 00473f40 mac inlined Creature::IsFinalState(VILLAGER_STATES)
bool Creature::IsFinalState(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00473f50 mac 101e2d40 Creature::IsReachable(void)
bool Creature::IsReachable()
{
    return 0;
}

// win1.41 00473f60 mac 101e2d80 Creature::ValidForPlaceInHand(GInterfaceStatus *)
bool Creature::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00473f70 mac 101e2dd0 Creature::GetCreatureBeliefType(void)
uint32_t Creature::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00473f80 mac 101e2e10 Creature::GetCreatureMimicType(void)
uint32_t Creature::GetCreatureMimicType()
{
    return 0;
}

// win1.41 00473f90 mac inlined Creature::SetAnim__i(int)
void Creature::SetAnim__i(int param_1)
{
}

// win1.41 00473fa0 mac inlined Creature::CallExitStateFunction(VILLAGER_STATES)
uint32_t Creature::CallExitStateFunction(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00473fb0 mac inlined Creature::CallEntryStateFunctionUc(VILLAGER_STATES)
uint32_t Creature::CallEntryStateFunction(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00473fc0 mac inlined Creature::CallEntryStateFunctionUcUc(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Creature::CallEntryStateFunction(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 00473fd0 mac 101e2f50 Creature::IsSuitableForCreatureActivity(void)
bool Creature::IsSuitableForCreatureActivity()
{
    return 0;
}

// win1.41 00473fe0 mac 101e2fa0 Creature::CanBePickedUp(void)
bool Creature::CanBePickedUp()
{
    return 0;
}

// win1.41 00473ff0 mac 101e2fe0 Creature::CanBeExaminedByCreature(Creature *)
bool Creature::CanBeExaminedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00474010 mac 101e3070 Creature::CastCreature(void)
Creature* Creature::CastCreature()
{
    return 0;
}

// win1.41 00474020 mac 101e30a0 Creature::IsActivityObjectWhichCompassionAppliesTo(Creature *)
bool Creature::IsActivityObjectWhichCompassionAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 00474030 mac 101e3100 Creature::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
bool Creature::IsActivityObjectWhichPlayfulnessAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 00474040 mac 101e3160 Creature::CanBeSleptNextToByCreature(Creature *)
bool Creature::CanBeSleptNextToByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00474050 mac 101e31b0 Creature::CanBeEatenByCreature(Creature *)
bool Creature::CanBeEatenByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00474060 mac 101e3200 Creature::CanBeBefriendedByCreature(Creature *)
bool Creature::CanBeBefriendedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00474070 mac 101e3250 Creature::CanBePlayedWithByCreature(Creature *)
bool Creature::CanBePlayedWithByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00474080 mac inlined Creature::IsCreature_1(void)
bool Creature::IsCreature_1()
{
    return 0;
}

// win1.41 00474090 mac 101e32a0 Creature::IsCreature(Creature *)
bool Creature::IsCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004740a0 mac 101e3320 Creature::CanBeFoughtByCreature(Creature *)
bool Creature::CanBeFoughtByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004740b0 mac 101e33a0 Creature::CanBeFrighteningToCreature(Creature *)
bool Creature::CanBeFrighteningToCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004740c0 mac 101e33f0 Creature::GetSaveType(void)
uint32_t Creature::GetSaveType()
{
    return 0;
}

// win1.41 004740d0 mac 101e3430 Creature::GetDebugText(void)
char* Creature::GetDebugText()
{
    return 0;
}

// win1.41 004740e0 mac 101debf0 GAlignment::_dt(void)
GAlignment::~GAlignment()
{
}

// win1.41 00474100 mac 101de750 Creature::_dt(void)
Creature::~Creature()
{
}

// win1.41 00474690 mac 101dfe30 Creature::Creature(void)
// Creature::Creature()
// {
// }

// win1.41 00474890 mac 101e0bb0 MobileWallHug::MobileWallHug(void)
MobileWallHug::MobileWallHug()
{
}

// win1.41 004748e0 mac 100c0800 Mobile::_dt(void)
Mobile::~Mobile()
{
}

// win1.41 00474910 mac 103c19a0 MobileWallHug::_dt(void)
MobileWallHug::~MobileWallHug()
{
}

// win1.41 00474940 mac 103838c0 Living::DecideWhatToDo(void)
bool Living::DecideWhatToDo()
{
    return 0;
}

// win1.41 00474950 mac 10383900 Living::SetupReactToFire(GameThingWithPos *, Reaction *)
void Living::SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00474960 mac 10383950 Living::ReactToFirePriority(Reaction *, Reaction *)
uint8_t Living::ReactToFirePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00474970 mac 10148240 Living::ReactToHandPickUpPriority(Reaction *, Reaction *)
uint8_t Living::ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00474980 mac 101482a0 Living::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
uint8_t Living::ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00474990 mac 10148300 Living::ReactToObjectCrushedPriority(Reaction *, Reaction *)
uint8_t Living::ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004749a0 mac 103839a0 Living::ReactToFightPriority(Reaction *, Reaction *)
uint8_t Living::ReactToFightPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004749b0 mac 103839f0 Living::ReactToTeleportPriority(Reaction *, Reaction *)
uint8_t Living::ReactToTeleportPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004749c0 mac 10148360 Living::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
uint8_t Living::ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004749d0 mac 10383a40 Living::ReactToDeathPriority(Reaction *, Reaction *)
uint8_t Living::ReactToDeathPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004749e0 mac 1012f950 Living::GetFinalState( const(void))
VILLAGER_STATES Living::GetFinalState()
{
    return (VILLAGER_STATES)0;
}

// win1.41 004749f0 mac 1016c750 Living::_dt(void)
Living::~Living()
{
}

// win1.41 00474a20 mac 101dfc60 Creature::Create(MapCoords const &, CreatureInfo const *, GPlayer *)
Creature* Creature::Create(const MapCoords* coords, const GCreatureInfo* info, GPlayer* player)
{
    return 0;
}

// win1.41 00474b50 mac 101dfb90 Creature::CreateCreature(MapCoords const &, CreatureInfo const *, GPlayer *)
Creature* Creature::CreateCreature(const MapCoords* coords, const GCreatureInfo* info, GPlayer* player)
{
    return 0;
}

// win1.41 00474f00 mac 101df130 Creature::ToBeDeleted(int)
void Creature::ToBeDeleted(int param_1)
{
}

// win1.41 004753c0 mac 101de710 Creature::GetDestPos(void)
MapCoords* Creature::GetDestPos()
{
    return 0;
}

// win1.41 004753d0 mac 101de690 Creature::GetFinalDestPos(MapCoords *)
MapCoords* Creature::GetFinalDestPos(MapCoords* param_1)
{
    return 0;
}

// win1.41 00475730 mac 101ddff0 Creature::FinishActionUnsuccessfully(char *, int, int)
void Creature::FinishActionUnsuccessfully(char* param_1, int param_2, int param_3)
{
}
