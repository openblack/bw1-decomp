#include "Villager.h"
#include "Town.h"

// win1.41 00763390 mac 10021260 Villager::IsAvailableForReaction(REACTION)
bool Villager::IsAvailableForReaction(REACTION param_1)
{
    return 0;
}

// win1.41 00763410 mac 1000edf0 Villager::IsAvailableForBeliefButNotReaction(REACTION)
bool Villager::IsAvailableForBeliefButNotReaction(REACTION param_1)
{
    return 0;
}

// win1.41 00763440 mac inlined Villager::AddReaction(Reaction *, VILLAGER_STATES)
void Villager::AddReaction(Reaction* param_1, VILLAGER_STATES param_2)
{
}

// win1.41 00763470 mac 10594430 Villager::StorePreviousState(void)
void Villager::StorePreviousState()
{
}

// win1.41 007634c0 mac 100072a0 Villager::UpdateHowImpressed(Reaction *, int)
void Villager::UpdateHowImpressed(Reaction* param_1, int param_2)
{
}

// win1.41 007635d0 mac 10012ce0 Town::DisplayHowImpressed(void)
bool Town::DisplayHowImpressed()
{
    return 0;
}

// win1.41 007637d0 mac 105941a0 Villager::StopReacting(void)
void Villager::StopReacting()
{
}

// win1.41 00763800 mac 1001a3e0 Villager::SetupMoveToPos(MapCoords const &, VILLAGER_STATES)
bool Villager::SetupMoveToPos(const MapCoords* param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 00763820 mac 10593f50 Villager::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
void Villager::SetupReactToMagicTree(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00763850 mac 10593d10 Villager::FleeFromPredatorPriority(Reaction *, Reaction *)
uint8_t Villager::FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00763980 mac 10593c90 Villager::ReactToScaffoldPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToScaffoldPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00763990 mac 10593b90 Villager::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
void Villager::SetupFleeFromPredator(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 007639d0 mac 10593a40 Villager::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
void Villager::SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00763aa0 mac 105939d0 Villager::SetupLookAtObject(GameThingWithPos *, Reaction *)
void Villager::SetupLookAtObject(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00763ac0 mac 10593960 Villager::SetupLookAtSpell(GameThingWithPos *, Reaction *)
void Villager::SetupLookAtSpell(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00763ae0 mac 105938e0 Villager::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
void Villager::SetupLookAtNiceSpell(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00763b00 mac 10593810 Villager::FleeingFromObjectReaction(void)
bool Villager::FleeingFromObjectReaction()
{
    return 0;
}

// win1.41 00763b40 mac 105935e0 Villager::FleeingFromPredatorReaction(void)
bool Villager::FleeingFromPredatorReaction()
{
    return 0;
}

// win1.41 00763cb0 mac 10593430 Villager::SetupGoAndHideInNearbyBuilding(GameThingWithPos *)
bool Villager::SetupGoAndHideInNearbyBuilding(GameThingWithPos* param_1)
{
    return 0;
}

// win1.41 00763d90 mac 105931e0 Villager::GoAndHideInNearbyBuilding(void)
bool Villager::GoAndHideInNearbyBuilding()
{
    return 0;
}

// win1.41 00763f00 mac 105930c0 Villager::GetAbodeToHideInAtPos(MapCoords const &)
Abode* Villager::GetAbodeToHideInAtPos(const MapCoords* param_1)
{
    return 0;
}

// win1.41 00763f80 mac 10592f10 Villager::LookToSeeIfItIsSafe(void)
bool Villager::LookToSeeIfItIsSafe()
{
    return 0;
}

// win1.41 007640a0 mac 10592e20 Villager::NumGameTurnsToReactToPredatorFunction(GameThingWithPos *, unsigned long, float)
uint32_t Villager::NumGameTurnsToReactToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 007640e0 mac 10592d30 Villager::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos *, unsigned long, float)
uint32_t Villager::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 00764110 mac 10592ca0 Villager::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
uint32_t Villager::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 00764130 mac 10592b70 Villager::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
uint32_t Villager::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 007641a0 mac 10592a30 Villager::NumGameTurnsToReactToShieldFunction(GameThingWithPos *, unsigned long, float)
uint32_t Villager::NumGameTurnsToReactToShieldFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 00764230 mac 105928c0 Villager::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t Villager::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 007642c0 mac 105927e0 Villager::LookingAtObjectReaction(void)
bool Villager::LookingAtObjectReaction()
{
    return 0;
}

// win1.41 00764310 mac 10592770 Villager::FleeingAndLookingAtObjectReaction(void)
bool Villager::FleeingAndLookingAtObjectReaction()
{
    return 0;
}

// win1.41 00764320 mac 105926d0 Villager::FollowingObjectReaction(void)
bool Villager::FollowingObjectReaction()
{
    return 0;
}

// win1.41 00764350 mac 105925b0 Villager::InspectObjectReaction(void)
bool Villager::InspectObjectReaction()
{
    return 0;
}

// win1.41 00764410 mac 105924a0 Villager::PerformInspectionReaction(void)
bool Villager::PerformInspectionReaction()
{
    return 0;
}

// win1.41 00764490 mac 10592220 Villager::ApproachObjectReaction(void)
bool Villager::ApproachObjectReaction()
{
    return 0;
}

// win1.41 00764610 mac 10592150 Villager::InitialiseTellOthersAboutObject(void)
bool Villager::InitialiseTellOthersAboutObject()
{
    return 0;
}

// win1.41 00764650 mac 10592100 Villager::TellOthersAboutInterestingObject(void)
bool Villager::TellOthersAboutInterestingObject()
{
    return 0;
}

// win1.41 00764660 mac 105920b0 Villager::InitialiseLookAroundForVillagerToTell(void)
bool Villager::InitialiseLookAroundForVillagerToTell()
{
    return 0;
}

// win1.41 00764670 mac 10592060 Villager::LookAroundForVillagerToTell(void)
bool Villager::LookAroundForVillagerToTell()
{
    return 0;
}

// win1.41 00764680 mac 10592020 Villager::ApproachVillagerToTalkTo(void)
bool Villager::ApproachVillagerToTalkTo()
{
    return 0;
}

// win1.41 00764690 mac 10591fd0 Villager::TellParticularVillagerAboutObject(void)
bool Villager::TellParticularVillagerAboutObject()
{
    return 0;
}

// win1.41 007646a0 mac 10591f20 Villager::GotoFoodReaction(void)
bool Villager::GotoFoodReaction()
{
    return 0;
}

// win1.41 007646d0 mac 10591e40 Villager::GotoWoodReaction(void)
bool Villager::GotoWoodReaction()
{
    return 0;
}

// win1.41 00764720 mac 10591b50 Villager::ArrivesAtWoodReaction(void)
bool Villager::ArrivesAtWoodReaction()
{
    return 0;
}

// win1.41 007648d0 mac 10591a30 Villager::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t Villager::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 00764920 mac 10591770 Villager::ArrivesAtFoodReaction(void)
bool Villager::ArrivesAtFoodReaction()
{
    return 0;
}

// win1.41 00764aa0 mac 10591600 Villager::InitialiseBewilderedByMagicTreeReaction(void)
bool Villager::InitialiseBewilderedByMagicTreeReaction()
{
    return 0;
}

// win1.41 00764b50 mac 10591340 Villager::PerformBewilderedByMagicTreeReaction(void)
bool Villager::PerformBewilderedByMagicTreeReaction()
{
    return 0;
}

// win1.41 00764d10 mac 10591260 Villager::TurnToFaceMagicTree(void)
bool Villager::TurnToFaceMagicTree()
{
    return 0;
}

// win1.41 00764d70 mac 10591140 Villager::LookAtMagicTree(void)
bool Villager::LookAtMagicTree()
{
    return 0;
}

// win1.41 00764df0 mac 10590f30 Villager::IsInterestedInFoodObject(Object *)
bool Villager::IsInterestedInFoodObject(Object* param_1)
{
    return 0;
}

// win1.41 00764f60 mac 10590c40 Villager::IsInterestedInWoodObject(Object *)
bool Villager::IsInterestedInWoodObject(Object* param_1)
{
    return 0;
}

// win1.41 00765140 mac 10590b80 Villager::ApproachHandReaction(void)
bool Villager::ApproachHandReaction()
{
    return 0;
}

// win1.41 007651a0 mac 10590a00 Villager::FindNearbyVillagerWhoIsntReacting(void)
bool Villager::FindNearbyVillagerWhoIsntReacting()
{
    return 0;
}

// win1.41 00765260 mac 105908a0 Villager::ReactToFlyingObjectPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00765320 mac 10590720 Villager::ArrivesAtPickupBallReaction(void)
bool Villager::ArrivesAtPickupBallReaction()
{
    return 0;
}

// win1.41 007653f0 mac 10590650 Villager::WatchFlyingObjectReaction(void)
bool Villager::WatchFlyingObjectReaction()
{
    return 0;
}

// win1.41 00765450 mac 10590520 Villager::PointAtFlyingObjectReaction(void)
bool Villager::PointAtFlyingObjectReaction()
{
    return 0;
}

// win1.41 00765540 mac 10590390 Villager::SetupReactToFire(GameThingWithPos *, Reaction *)
void Villager::SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00765610 mac 10590060 Villager::ReactToFirePriority(Reaction *, Reaction *)
uint8_t Villager::ReactToFirePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00765870 mac 1058fce0 Villager::ReactToFire(void)
bool Villager::ReactToFire()
{
    return 0;
}

// win1.41 00765b70 mac 1058fc00 Villager::SetupReactToWood(GameThingWithPos *, Reaction *)
void Villager::SetupReactToWood(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00765bb0 mac 1058fa80 Villager::ReactToMagicShieldPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00765c60 mac 1058f820 Villager::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
void Villager::SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00765e00 mac 1058f550 Villager::AmazedByMagicShieldReaction(void)
bool Villager::AmazedByMagicShieldReaction()
{
    return 0;
}

// win1.41 00766010 mac 1058f360 Villager::SetupReactToNewBuilding(GameThingWithPos *, Reaction *)
void Villager::SetupReactToNewBuilding(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00766130 mac 1058f230 Villager::DanceWhileReacting(void)
bool Villager::DanceWhileReacting()
{
    return 0;
}

// win1.41 00766200 mac 1058f150 Villager::ReactToTeleportPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToTeleportPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00766250 mac 1058f020 Villager::SetupReactToTeleport(GameThingWithPos *, Reaction *)
void Villager::SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 007662f0 mac 1058eec0 Villager::GoToTeleportReaction(void)
bool Villager::GoToTeleportReaction()
{
    return 0;
}

// win1.41 00766380 mac 1058ee60 Villager::GoToTeleportReactionQuickly(void)
bool Villager::GoToTeleportReactionQuickly()
{
    return 0;
}

// win1.41 00766390 mac 1058ed70 Villager::ExitReactToTeleport(unsigned char)
bool Villager::ExitReactToTeleport(unsigned char param_1)
{
    return 0;
}

// win1.41 007663f0 mac 1058eca0 Villager::TeleportReaction(void)
bool Villager::TeleportReaction()
{
    return 0;
}

// win1.41 00766440 mac 1058eb60 Villager::ReactToDeathPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToDeathPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 007664b0 mac 1058e910 Villager::ReactToDroppedByHandPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 007665b0 mac 1058e7d0 Villager::SetupReactToDeath(GameThingWithPos *, Reaction *)
void Villager::SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00766620 mac 1058e6f0 Villager::SetupReactToDroppedByHand(GameThingWithPos *, Reaction *)
void Villager::SetupReactToDroppedByHand(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00766680 mac 1058e5f0 Villager::PointAtDeadPerson(void)
bool Villager::PointAtDeadPerson()
{
    return 0;
}

// win1.41 00766700 mac 1058e420 Villager::GoTowardsDeadPerson(void)
bool Villager::GoTowardsDeadPerson()
{
    return 0;
}

// win1.41 00766810 mac 1058e390 Villager::LookAtDeadPerson(void)
bool Villager::LookAtDeadPerson()
{
    return 0;
}

// win1.41 00766850 mac 1058e2b0 Villager::MournDeadPerson(void)
bool Villager::MournDeadPerson()
{
    return 0;
}

// win1.41 007668c0 mac 1058e200 Villager::SetupReactToFainting(GameThingWithPos *, Reaction *)
void Villager::SetupReactToFainting(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 007668e0 mac 1058e1c0 Villager::FaintingReaction(void)
bool Villager::FaintingReaction()
{
    return 1;
}

// win1.41 007668f0 mac 1058e110 Villager::SetupReactToConfused(GameThingWithPos *, Reaction *)
void Villager::SetupReactToConfused(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00766910 mac 1058e090 Villager::StartConfusedReaction(void)
bool Villager::StartConfusedReaction()
{
    return 0;
}

// win1.41 00766930 mac 1058df30 Villager::ConfusedReaction(void)
bool Villager::ConfusedReaction()
{
    return 0;
}

// win1.41 00766a10 mac 1058deb0 Villager::ReactToFallingTreePriority(Reaction *, Reaction *)
uint8_t Villager::ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00766a20 mac 1058de00 Villager::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
void Villager::SetupReactToFallingTree(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00766a50 mac 1058dd90 Villager::ReactToCrowdPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToCrowdPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00766a60 mac 1058dce0 Villager::SetupReactToCrowd(GameThingWithPos *, Reaction *)
void Villager::SetupReactToCrowd(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00766a90 mac 1058dac0 Villager::CrowdReaction(void)
bool Villager::CrowdReaction()
{
    return 0;
}

// win1.41 00766c60 mac 1058d970 Villager::MoveTowardsObjectToLookAt(void)
bool Villager::MoveTowardsObjectToLookAt()
{
    return 0;
}

// win1.41 00766d00 mac 1058d890 Villager::InitialiseImpressedReaction(void)
bool Villager::InitialiseImpressedReaction()
{
    return 0;
}

// win1.41 00766d60 mac 1058d780 Villager::PerformImpressedReaction(void)
bool Villager::PerformImpressedReaction()
{
    return 0;
}

// win1.41 00766df0 mac 1058d6d0 Villager::ReactToFightPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToFightPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00766e30 mac 1058d620 Villager::SetupReactToFight(GameThingWithPos *, Reaction *)
void Villager::SetupReactToFight(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00766e50 mac 1058d3c0 Villager::InitialiseFightReaction(void)
bool Villager::InitialiseFightReaction()
{
    return 0;
}

// win1.41 00766fd0 mac 1058cfd0 Villager::SetupReactToTownCelebration(GameThingWithPos *, Reaction *)
void Villager::SetupReactToTownCelebration(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00767180 mac 1058ced0 Villager::ReactToTownCelebrationPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToTownCelebrationPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 007671e0 mac 1058ce20 Villager::SetupReactToBreeder(GameThingWithPos *, Reaction *)
void Villager::SetupReactToBreeder(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00767210 mac 1058ccf0 Villager::ReactToBreederPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToBreederPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00767280 mac 1058cc50 Villager::ReactToBreeder(void)
bool Villager::ReactToBreeder()
{
    return 0;
}

// win1.41 007672c0 mac 1058cba0 Villager::GoAndHaveSexWith(Villager *)
bool Villager::GoAndHaveSexWith(Villager* param_1)
{
    return 0;
}

// win1.41 007672f0 mac 1058cae0 Villager::SetupReactToVillagerInHand(GameThingWithPos *, Reaction *)
void Villager::SetupReactToVillagerInHand(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00767320 mac 1058c970 Villager::ReactToVillagerInHandPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToVillagerInHandPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 007673a0 mac 1058c890 Villager::WaitForMate(void)
bool Villager::WaitForMate()
{
    return 0;
}

// win1.41 00767410 mac 1058c850 Villager::EnterDrowning(unsigned char, unsigned char)
bool Villager::EnterDrowning(unsigned char param_1, unsigned char param_2)
{
    return 1;
}

// win1.41 00767420 mac 1058c810 Villager::ExitDrowning(unsigned char)
bool Villager::ExitDrowning(unsigned char param_1)
{
    return 1;
}

// win1.41 00767430 mac 1058c710 Villager::ReactToBurningObjectInHandPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToBurningObjectInHandPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00767490 mac 1058c650 Villager::SetupReactToBurningObjectInHand(GameThingWithPos *, Reaction *)
void Villager::SetupReactToBurningObjectInHand(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 007674b0 mac 1058c4f0 Villager::SetupReactToMagicShieldStruck(GameThingWithPos *, Reaction *)
void Villager::SetupReactToMagicShieldStruck(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00767520 mac 1058c460 Villager::SetupReactToMagicShieldDestroyed(GameThingWithPos *, Reaction *)
void Villager::SetupReactToMagicShieldDestroyed(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 00767540 mac 1058c2b0 Villager::ReactToMagicShieldStruckPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToMagicShieldStruckPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 007675a0 mac 1058c230 Villager::ReactToMagicShieldDestroyedPriority(Reaction *, Reaction *)
uint8_t Villager::ReactToMagicShieldDestroyedPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}
