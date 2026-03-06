#include "AnimalInfo.h"
#include "AnimalStateTableInfo.h"
#include "Mobile.h"
#include "MobileWallHug.h"
#include "Living.h"
#include "Villager.h"
#include "Animal.h"
#include "GameThingWithPos.h"
#include "Object.h"

// win1.41 00416d20 mac 1016cc30 GAnimalInfo::GetMesh( const(void))
uint32_t GAnimalInfo::GetMesh() const
{
    return 0;
}

// win1.41 00416d30 mac 1016cc70 GAnimalInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GAnimalInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00416da0 mac 1016c970 GAnimalInfo::_dt(void)
GAnimalInfo::~GAnimalInfo()
{
}

// win1.41 00416e10 mac 1016cd20 GAnimalStateTableInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GAnimalStateTableInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00416e80 mac 1016b620 GAnimalStateTableInfo::_dt(void)
GAnimalStateTableInfo::~GAnimalStateTableInfo()
{
}

// win1.41 00416f50 mac 100adcf0 Mobile::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t Mobile::ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2)
{
    return 0;
}

// win1.41 00416f60 mac 100add50 Mobile::ApplyOnlyAfterReleased(void)
uint32_t Mobile::ApplyOnlyAfterReleased()
{
    return 0;
}

// win1.41 00416f70 mac 100482a0 MobileWallHug::GetDestPos(void)
MapCoords* MobileWallHug::GetDestPos()
{
    return 0;
}

// win1.41 00416f80 mac 1002c440 MobileWallHug::IsMobileWallHug( const(void))
bool MobileWallHug::IsMobileWallHug() const
{
    return 0;
}

// win1.41 00416f90 mac 10057470 Living::IsPoisoned(void)
bool Living::IsPoisoned()
{
    return 0;
}

// win1.41 00416fa0 mac 1012f760 Living::SetPoisoned(int)
void Living::SetPoisoned(int param_1)
{
}

// win1.41 00416ff0 mac 1012f810 Living::IsSkeleton( const(void))
bool Living::IsSkeleton() const
{
    return 0;
}

// win1.41 00417000 mac 1012f850 Living::SetSkeleton(int)
void Living::SetSkeleton(int param_1)
{
}

// win1.41 00417040 mac 1012f8d0 Living::StorePreviousState(void)
void Living::StorePreviousState()
{
}

// win1.41 00417060 mac inlined Living::EnterInHand(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Living::EnterInHand(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 00417070 mac inlined Living::IsStateForInterface( const(VILLAGER_STATES))
bool Living::IsStateForInterface(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00417080 mac 1012fa20 Living::IsInterestedInWoodObject(Object *)
bool Living::IsInterestedInWoodObject(Object* param_1)
{
    return 0;
}

// win1.41 00417090 mac 1012fa70 Living::IsAvailableForBeliefButNotReaction(REACTION)
bool Living::IsAvailableForBeliefButNotReaction(REACTION param_1)
{
    return 0;
}

// win1.41 004170a0 mac 1012fac0 Living::UpdateHowImpressed(Reaction *, int)
void Living::UpdateHowImpressed(Reaction* param_1, int param_2)
{
}

// win1.41 004170b0 mac 1012fb00 Living::SetupReactToWood(GameThingWithPos *, Reaction *)
void Living::SetupReactToWood(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004170c0 mac 1012fb50 Living::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
void Living::SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004170d0 mac 1012fbb0 Living::SetupReactToHandPickUp(GameThingWithPos *, Reaction *)
void Living::SetupReactToHandPickUp(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004170e0 mac 1012fc10 Living::SetupReactToHandUsingTotem(GameThingWithPos *, Reaction *)
void Living::SetupReactToHandUsingTotem(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004170f0 mac 1012fc70 Living::SetupReactToObjectCrushed(GameThingWithPos *, Reaction *)
void Living::SetupReactToObjectCrushed(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417100 mac 1012fcd0 Living::SetupReactToFight(GameThingWithPos *, Reaction *)
void Living::SetupReactToFight(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417110 mac 1012fd20 Living::SetupReactToTeleport(GameThingWithPos *, Reaction *)
void Living::SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417120 mac 1012fd80 Living::SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos *, Reaction *)
void Living::SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417130 mac 1012fdf0 Living::SetupReactToDeath(GameThingWithPos *, Reaction *)
void Living::SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417140 mac 1012fe40 Living::SetupReactToDroppedByHand(GameThingWithPos *, Reaction *)
void Living::SetupReactToDroppedByHand(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417150 mac 1012fea0 Living::SetupReactToFainting(GameThingWithPos *, Reaction *)
void Living::SetupReactToFainting(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417160 mac 1012ff00 Living::SetupReactToConfused(GameThingWithPos *, Reaction *)
void Living::SetupReactToConfused(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417170 mac 1012ff60 Living::SetupReactToCrowd(GameThingWithPos *, Reaction *)
void Living::SetupReactToCrowd(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417180 mac 1012ffb0 Living::SetupReactToBreeder(GameThingWithPos *, Reaction *)
void Living::SetupReactToBreeder(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00417190 mac 10130010 Living::SetupReactToTownCelebration(GameThingWithPos *, Reaction *)
void Living::SetupReactToTownCelebration(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004171a0 mac 10130070 Living::SetupReactToVillagerInHand(GameThingWithPos *, Reaction *)
void Living::SetupReactToVillagerInHand(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004171b0 mac 101300d0 Living::SetupReactToBurningObjectInHand(GameThingWithPos *, Reaction *)
void Living::SetupReactToBurningObjectInHand(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004171c0 mac 10130130 Living::SetupReactToMagicShieldStruck(GameThingWithPos *, Reaction *)
void Living::SetupReactToMagicShieldStruck(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004171d0 mac 10130190 Living::SetupReactToMagicShieldDestroyed(GameThingWithPos *, Reaction *)
void Living::SetupReactToMagicShieldDestroyed(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004171e0 mac 101301f0 Living::ReactToCrowdPriority(Reaction *, Reaction *)
uint8_t Living::ReactToCrowdPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004171f0 mac 10130240 Living::ReactToBreederPriority(Reaction *, Reaction *)
uint8_t Living::ReactToBreederPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417200 mac 10130290 Living::ReactToTownCelebrationPriority(Reaction *, Reaction *)
uint8_t Living::ReactToTownCelebrationPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417210 mac 101302f0 Living::ReactToVillagerInHandPriority(Reaction *, Reaction *)
uint8_t Living::ReactToVillagerInHandPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417220 mac 10130350 Living::ReactToBurningObjectInHandPriority(Reaction *, Reaction *)
uint8_t Living::ReactToBurningObjectInHandPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417230 mac 101303b0 Living::ReactToMagicShieldStruckPriority(Reaction *, Reaction *)
uint8_t Living::ReactToMagicShieldStruckPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417240 mac 10130410 Living::ReactToMagicShieldDestroyedPriority(Reaction *, Reaction *)
uint8_t Living::ReactToMagicShieldDestroyedPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417250 mac 10130470 Living::ReactToScaffoldPriority(Reaction *, Reaction *)
uint8_t Living::ReactToScaffoldPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417260 mac 100026a0 Living::IsPosValidForMapCellExistance(MapCoords const &)
uint32_t Living::IsPosValidForMapCellExistance(const MapCoords* param_1)
{
    return 0;
}

// win1.41 00417270 mac 10130570 Living::IsDead(void)
bool Living::IsDead()
{
    return 0;
}

// win1.41 004172a0 mac 10130640 Living::CanBePickedUp(void)
bool Living::CanBePickedUp()
{
    return 0;
}

// win1.41 004172b0 mac 10130680 Living::CanBeCrushed(void)
bool Living::CanBeCrushed()
{
    return 0;
}

// win1.41 004172c0 mac 101306c0 Living::IsStompable(void)
bool Living::IsStompable()
{
    return 0;
}

// win1.41 004172d0 mac 10006820 Living::IsFunctional(void)
bool Living::IsFunctional()
{
    return 0;
}

// win1.41 00417300 mac 10130810 Living::SetStateAfterFinishingDance(void)
void Living::SetStateAfterFinishingDance()
{
}

// win1.41 00417310 mac 10130850 Living::CalculateLifeDesire(void)
float Living::CalculateLifeDesire()
{
    return 0;
}

// win1.41 00417320 mac 100f8730 Living::DanceType(void)
uint32_t Living::DanceType()
{
    return 0;
}

// win1.41 00417330 mac 10130890 Living::IsSuitableForCreatureAction(void)
bool Living::IsSuitableForCreatureAction()
{
    return 0;
}

// win1.41 00417340 mac 101308e0 Living::CanBeThrownByCreature(Creature *)
bool Living::CanBeThrownByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00417350 mac 10130930 Living::CanBeAttackedByCreature(Creature *)
bool Living::CanBeAttackedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00417390 mac 10130a10 Living::CanBePlayedWithByCreature(Creature *)
bool Living::CanBePlayedWithByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004173c0 mac 10130ac0 Living::IsAnimate(void)
bool Living::IsAnimate()
{
    return 0;
}

// win1.41 004173d0 mac 10130af0 Living::CanBeFrighteningToCreature(Creature *)
bool Living::CanBeFrighteningToCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004173e0 mac 10130b40 Living::CanBeInspectedByCreature(Creature *)
bool Living::CanBeInspectedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00417410 mac 10130c00 Living::CanBePoodUponByCreature(Creature *)
bool Living::CanBePoodUponByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00417420 mac 10130c50 Living::CanBeDestroyedByStoning(Creature *)
bool Living::CanBeDestroyedByStoning(Creature* param_1)
{
    return 0;
}

// win1.41 00417430 mac 10130cd0 Living::CanBeStompedOnByCreature(Creature *)
bool Living::CanBeStompedOnByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00417440 mac 10130d50 Living::CanBeDancedWith(Creature *)
bool Living::CanBeDancedWith(Creature* param_1)
{
    return 0;
}

// win1.41 00417450 mac 10130dc0 Living::IsAggressive(Creature *)
bool Living::IsAggressive(Creature* param_1)
{
    return 0;
}

// win1.41 00417460 mac inlined Living::IsLiving_1( const(void))
bool Living::IsLiving() const
{
    return 0;
}

// win1.41 00417470 mac 10130e00 Living::IsNotLiving(void)
bool Living::IsNotLiving()
{
    return 0;
}

// win1.41 00417480 mac inlined Living::SetSpecularColor(LH3DColor)
void Living::SetSpecularColor(LH3DColor param_1)
{
}

// win1.41 00417490 mac 10130e80 Living::GetSpecularColor(void)
// LH3DColor Living::GetSpecularColor()
// {
//     return 0;
// }

// win1.41 004174a0 mac inlined Villager::MoveAllowedForChessGame(void)
bool Villager::MoveAllowedForChessGame()
{
    return 0;
}

// win1.41 004174b0 mac inlined Villager::AttackAllowedForChessGame(void)
bool Villager::AttackAllowedForChessGame()
{
    return 0;
}

// win1.41 004174c0 mac inlined Villager::AddToBoxPositionForChessGame(int, int)
void Villager::AddToBoxPositionForChessGame(int param_1, int param_2)
{
}

// win1.41 004174d0 mac inlined Villager::GetBoxXForChessGame(void)
int Villager::GetBoxXForChessGame()
{
    return 0;
}

// win1.41 004174e0 mac inlined Villager::GetBoxZForChessGame(void)
int Villager::GetBoxZForChessGame()
{
    return 0;
}

// win1.41 004174f0 mac inlined Villager::SetBoxXForChessGame(int)
void Villager::SetBoxXForChessGame(int param_1)
{
}

// win1.41 00417500 mac inlined Villager::SetBoxZForChessGame(int)
void Villager::SetBoxZForChessGame(int param_1)
{
}

// win1.41 00417510 mac inlined Villager::GetTeamForChessGame(void)
uint32_t Villager::GetTeamForChessGame()
{
    return 0;
}

// win1.41 00417530 mac 1012e500 Animal::GetResourceType(void)
RESOURCE_TYPE Animal::GetResourceType()
{
    return (RESOURCE_TYPE)0;
}

// win1.41 00417540 mac 1012e540 Animal::GetMesh( const(void))
int Animal::GetMesh() const
{
    return 0;
}

// win1.41 00417550 mac inlined Animal::GetDetailMesh(int)
int Animal::GetDetailMesh(int param_1)
{
    return 0;
}

// win1.41 00417570 mac inlined Animal::IsScriptState( const(VILLAGER_STATES))
bool Animal::IsScriptState(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00417590 mac inlined Animal::IsScriptInterruptableState( const(VILLAGER_STATES))
bool Animal::IsScriptInterruptableState(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 004175c0 mac 1012e7f0 Animal::FollowObjectPriority(Reaction *, Reaction *)
uint8_t Animal::FollowObjectPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004175d0 mac 1012e840 Animal::LookAtSpellPriority(Reaction *, Reaction *)
uint8_t Animal::LookAtSpellPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004175e0 mac 1012e890 Animal::LookAtNiceSpellPriority(Reaction *, Reaction *)
uint8_t Animal::LookAtNiceSpellPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004175f0 mac 1012e8e0 Animal::FollowSpellPriority(Reaction *, Reaction *)
uint8_t Animal::FollowSpellPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417600 mac 1012e930 Animal::ReactToWoodPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToWoodPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417610 mac 1012e980 Animal::ReactToMagicTreePriority(Reaction *, Reaction *)
uint8_t Animal::ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417620 mac 1012e9e0 Animal::ReactToBallPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToBallPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417630 mac 1012ea30 Animal::ReactToMagicShieldPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417640 mac 1012ea90 Animal::ReactToCreatureGiftPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToCreatureGiftPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417650 mac 1012eaf0 Animal::ReactToNewBuildingPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToNewBuildingPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417660 mac 1012eb50 Animal::ReactToHandPickUpPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417670 mac 1012ebb0 Animal::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417680 mac 1012ec10 Animal::ReactToObjectCrushedPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417690 mac 1012ec70 Animal::ReactToFightPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToFightPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004176a0 mac 1012ecc0 Animal::ReactToTeleportPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToTeleportPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004176b0 mac 1012ed10 Animal::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004176c0 mac 1012ed80 Animal::ReactToDeathPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToDeathPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004176d0 mac 1012edd0 Animal::ReactToDroppedByHandPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004176e0 mac 1012ee30 Animal::ReactToFaintingPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToFaintingPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004176f0 mac 1012ee80 Animal::ReactToConfusedPriority(Reaction *, Reaction *)
uint8_t Animal::ReactToConfusedPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00417700 mac 1012eed0 Animal::ProcessBySpell(Spell *)
uint32_t Animal::ProcessBySpell(Spell* param_1)
{
    return 0;
}

// win1.41 00417780 mac 1012f0d0 Animal::StandAnimation(void)
uint32_t Animal::StandAnimation()
{
    return 0;
}

// win1.41 00417840 mac 1012f3a0 Animal::GetCreatureBeliefType(void)
uint32_t Animal::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00417860 mac 1012f430 Animal::GetTastiness(void)
uint32_t Animal::GetTastiness()
{
    return 0;
}

// win1.41 00417870 mac 1012f470 Animal::CanBeGivenToTown(Creature *)
bool Animal::CanBeGivenToTown(Creature* param_1)
{
    return 0;
}

// win1.41 00417880 mac 1004f080 Animal::IsAnimal(void)
bool Animal::IsAnimal()
{
    return 0;
}

// win1.41 00417890 mac 1012f720 Animal::GetDeathReason(void)
DEATH_REASON Animal::GetDeathReason()
{
    return (DEATH_REASON)0;
}

// win1.41 004178a0 mac 1016c000 Animal::_dt(void)
Animal::~Animal()
{
}

// win1.41 004178d0 mac 10380910 GameThingWithPos::IsWonder(void)
bool GameThingWithPos::IsWonder()
{
    return 0;
}

// win1.41 004178e0 mac 102ff000 GameThingWithPos::CreateBuildingSite(void)
bool GameThingWithPos::CreateBuildingSite()
{
    return 0;
}

// win1.41 004178f0 mac 101bb350 GameThingWithPos::GetDebugText(void)
char* GameThingWithPos::GetDebugText()
{
    return 0;
}

// win1.41 00417b60 mac 1016c0a0 Animal::ToBeDeleted(int)
void Animal::ToBeDeleted(int param_1)
{
}

// win1.41 00417ee0 mac 1004c150 Animal::ProcessState(void)
uint32_t Animal::ProcessState()
{
    return 0;
}

// win1.41 00417fa0 mac 10054d90 Animal::GetAnimId(void)
ANIM_LIST Animal::GetAnimId()
{
    return (ANIM_LIST)0;
}

// win1.41 00417fe0 mac 10084290 Animal::SetSpeed(long)
void Animal::SetSpeed(int param_1)
{
}

// win1.41 00418560 mac 10049170 Animal::SetTowardsAngle(unsigned short)
void Animal::SetTowardsAngle(uint16_t param_1)
{
}

// win1.41 00418aa0 mac 100482e0 Animal::MoveTo3D(void)
void Animal::MoveTo3D()
{
}

// win1.41 00418c90 mac 100540e0 Object::GetMapChild(MapCell const &)
Object* Object::GetMapChild(const MapCell* param_1)
{
    return 0;
}

// win1.41 00418cc0 mac 10053b70 Object::SetMapChild(Object *, MapCell *)
void Object::SetMapChild(Object* child, MapCell* cell)
{
}

// win1.41 00418fc0 mac 100a9d90 Object::Process(void)
uint32_t Object::Process()
{
    return 0;
}

// win1.41 004192c0 mac 100a9dc0 Object::AsMultiMapFixed(void)
MultiMapFixed* Object::AsMultiMapFixed()
{
    return 0;
}

// win1.41 004192d0 mac 100a9e00 Object::IsResourceStore(RESOURCE_TYPE)
bool Object::IsResourceStore(RESOURCE_TYPE type)
{
    return 0;
}

// win1.41 00419300 mac 100a9e50 Object::StartOnFire(void)
void Object::StartOnFire()
{
}

// win1.41 00419310 mac 101696e0 Animal::GetHoldType(void)
HOLD_TYPE Animal::GetHoldType()
{
    return (HOLD_TYPE)0;
}

// win1.41 00419320 mac 10169690 Animal::GetHoldLoweringMultiplier(void)
float Animal::GetHoldLoweringMultiplier()
{
    return 0;
}

// win1.41 00419330 mac 100addd0 Object::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t Object::ValidForLockedSelectProcess(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 004193d0 mac 100ade30 Object::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t Object::NetworkFriendlyStartLockedSelect(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 004196b0 mac 100a5960 Object::InterfaceValidToTap(GInterfaceStatus *)
uint32_t Object::InterfaceValidToTap(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 004196c0 mac 100a59b0 Object::InterfaceTap(GInterfaceStatus *)
uint32_t Object::InterfaceTap(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 00419890 mac 100a9e80 Object::ChecksVerticesVObjects(void)
bool Object::ChecksVerticesVObjects()
{
    return 0;
}

// win1.41 004198a0 mac 101bd530 Object::IsSolidToNewAbode(void)
bool32_t Object::IsSolidToNewAbode()
{
    return 0;
}

// win1.41 00419950 mac 100a9ec0 Object::GetTown(void)
Town* Object::GetTown()
{
    return 0;
}

// win1.41 00419960 mac 100adee0 Object::GetTownArtifact(void)
GameThing* Object::GetTownArtifact()
{
    return 0;
}

// win1.41 00419970 mac 100adf20 Object::IsTownArtifact(void)
bool32_t Object::IsTownArtifact()
{
    return 0;
}

// win1.41 00419a50 mac 100a5a00 Object::ShouldFootpathsGoRound(void)
bool Object::ShouldFootpathsGoRound()
{
    return 0;
}

// win1.41 00419b30 mac 1009cd00 Object::GetCollideData(void)
NewCollide* Object::GetCollideData()
{
    return 0;
}

// win1.41 00419b40 mac 10168830 Animal::ValidForPlaceInHand(GInterfaceStatus *)
bool Animal::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00419b60 mac 10168730 Animal::InterfaceSetInMagicHand(GInterfaceStatus *)
bool Animal::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00419bc0 mac 10168630 Animal::IsInterestedInFoodObject(Object *)
bool Animal::IsInterestedInFoodObject(Object* param_1)
{
    return 0;
}
