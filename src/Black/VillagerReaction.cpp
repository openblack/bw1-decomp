#include "Villager.h"

#include "MapCoords.h"
#include "Reaction.h"

// BW1W120 00763390
bool32_t Villager::IsAvailableForReaction(REACTION param_1)
{
	return false;
}

// BW1W120 00763410
bool32_t Villager::IsAvailableForBeliefButNotReaction(REACTION param_1)
{
	return false;
}

// BW1W120 00763440
void Villager::AddReaction(Reaction* param_1, VILLAGER_STATES param_2) {}

// BW1W120 00763470
void Villager::StorePreviousState() {}

// BW1W120 007634c0
void Villager::UpdateHowImpressed(Reaction* param_1, int param_2) {}

// BW1W120 007637d0
void Villager::StopReacting() {}

// BW1W120 00763800
bool32_t Villager::SetupMoveToPos(const MapCoords& param_1, VILLAGER_STATES param_2)
{
	return false;
}

// BW1W120 00763820
void Villager::SetupReactToMagicTree(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00763850
uint8_t Villager::FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00763980
uint8_t Villager::ReactToScaffoldPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00763990
void Villager::SetupFleeFromPredator(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 007639d0
void Villager::SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00763aa0
void Villager::SetupLookAtObject(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00763ac0
void Villager::SetupLookAtSpell(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00763ae0
void Villager::SetupLookAtNiceSpell(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00763b00
bool32_t Villager::FleeingFromObjectReaction()
{
	return 0;
}

// BW1W120 00763b40
bool32_t Villager::FleeingFromPredatorReaction()
{
	return false;
}

// BW1W120 00763cb0
bool32_t Villager::SetupGoAndHideInNearbyBuilding(GameThingWithPos* param_1)
{
	return false;
}

// BW1W120 00763d90
bool32_t Villager::GoAndHideInNearbyBuilding()
{
	return false;
}

// BW1W120 00763f00
Abode* Villager::GetAbodeToHideInAtPos(const MapCoords& param_1)
{
	return NULL;
}

// BW1W120 00763f80
bool32_t Villager::LookToSeeIfItIsSafe()
{
	return false;
}

// BW1W120 007640a0
uint32_t Villager::NumGameTurnsToReactToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
	return 0;
}

// BW1W120 007640e0
uint32_t Villager::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2,
                                                                     float param_3)
{
	return 0;
}

// BW1W120 00764110
uint32_t Villager::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2,
                                                              float param_3)
{
	return 0;
}

// BW1W120 00764130
uint32_t Villager::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2,
                                                                          float param_3)
{
	return 0;
}

// BW1W120 007641a0
uint32_t Villager::NumGameTurnsToReactToShieldFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
	return 0;
}

// BW1W120 00764230
uint32_t Villager::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
                                                                   float param_3)
{
	return 0;
}

// BW1W120 007642c0
bool32_t Villager::LookingAtObjectReaction()
{
	return false;
}

// BW1W120 00764310
bool32_t Villager::FleeingAndLookingAtObjectReaction()
{
	return false;
}

// BW1W120 00764320
bool32_t Villager::FollowingObjectReaction()
{
	return false;
}

// BW1W120 00764350
bool32_t Villager::InspectObjectReaction()
{
	return false;
}

// BW1W120 00764410
bool32_t Villager::PerformInspectionReaction()
{
	return false;
}

// BW1W120 00764490
bool32_t Villager::ApproachObjectReaction()
{
	return false;
}

// BW1W120 00764610
bool32_t Villager::InitialiseTellOthersAboutObject()
{
	return false;
}

// BW1W120 00764650
bool32_t Villager::TellOthersAboutInterestingObject()
{
	return false;
}

// BW1W120 00764660
bool32_t Villager::InitialiseLookAroundForVillagerToTell()
{
	return false;
}

// BW1W120 00764670
bool32_t Villager::LookAroundForVillagerToTell()
{
	return false;
}

// BW1W120 00764680
bool32_t Villager::ApproachVillagerToTalkTo()
{
	return false;
}

// BW1W120 00764690
bool32_t Villager::TellParticularVillagerAboutObject()
{
	return false;
}

// BW1W120 007646a0
bool32_t Villager::GotoFoodReaction()
{
	return false;
}

// BW1W120 007646d0
bool32_t Villager::GotoWoodReaction()
{
	return false;
}

// BW1W120 00764720
bool32_t Villager::ArrivesAtWoodReaction()
{
	return false;
}

// BW1W120 007648d0
uint32_t Villager::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
                                                                         float param_3)
{
	return 0;
}

// BW1W120 00764920
bool32_t Villager::ArrivesAtFoodReaction()
{
	return false;
}

// BW1W120 00764aa0
bool32_t Villager::InitialiseBewilderedByMagicTreeReaction()
{
	return false;
}

// BW1W120 00764b50
bool32_t Villager::PerformBewilderedByMagicTreeReaction()
{
	return false;
}

// BW1W120 00764d10
bool32_t Villager::TurnToFaceMagicTree()
{
	return false;
}

// BW1W120 00764d70
bool32_t Villager::LookAtMagicTree()
{
	return false;
}

// BW1W120 00764df0
bool Villager::IsInterestedInFoodObject(Object* param_1)
{
	return false;
}

// BW1W120 00764f60
bool Villager::IsInterestedInWoodObject(Object* param_1)
{
	return false;
}

// BW1W120 00765140
bool32_t Villager::ApproachHandReaction()
{
	return false;
}

// BW1W120 007651a0
bool32_t Villager::FindNearbyVillagerWhoIsntReacting()
{
	return false;
}

// BW1W120 00765260
uint8_t Villager::ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00765320
bool32_t Villager::ArrivesAtPickupBallReaction()
{
	return false;
}

// BW1W120 007653f0
bool32_t Villager::WatchFlyingObjectReaction()
{
	return false;
}

// BW1W120 00765450
bool32_t Villager::PointAtFlyingObjectReaction()
{
	return false;
}

// BW1W120 00765540
void Villager::SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00765610
uint8_t Villager::ReactToFirePriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00765870
bool32_t Villager::ReactToFire()
{
	return false;
}

// BW1W120 00765b70
void Villager::SetupReactToWood(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00765bb0
uint8_t Villager::ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00765c60
void Villager::SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00765e00
bool32_t Villager::AmazedByMagicShieldReaction()
{
	return false;
}

// BW1W120 00766010
void Villager::SetupReactToNewBuilding(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00766130
bool32_t Villager::DanceWhileReacting()
{
	return false;
}

// BW1W120 00766200
uint8_t Villager::ReactToTeleportPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00766250
void Villager::SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 007662f0
bool32_t Villager::GoToTeleportReaction()
{
	return false;
}

// BW1W120 00766380
bool32_t Villager::GoToTeleportReactionQuickly()
{
	return false;
}

// BW1W120 00766390
bool32_t Villager::ExitReactToTeleport(unsigned char param_1)
{
	return false;
}

// BW1W120 007663f0
bool32_t Villager::TeleportReaction()
{
	return false;
}

// BW1W120 00766440
uint8_t Villager::ReactToDeathPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007664b0
uint8_t Villager::ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007665b0
void Villager::SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00766620
void Villager::SetupReactToDroppedByHand(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00766680
bool32_t Villager::PointAtDeadPerson()
{
	return false;
}

// BW1W120 00766700
bool32_t Villager::GoTowardsDeadPerson()
{
	return false;
}

// BW1W120 00766810
bool32_t Villager::LookAtDeadPerson()
{
	return false;
}

// BW1W120 00766850
bool32_t Villager::MournDeadPerson()
{
	return false;
}

// BW1W120 007668c0
void Villager::SetupReactToFainting(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 007668e0
bool32_t Villager::FaintingReaction()
{
	return false;
}

// BW1W120 007668f0
void Villager::SetupReactToConfused(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00766910
bool32_t Villager::StartConfusedReaction()
{
	return false;
}

// BW1W120 00766930
bool32_t Villager::ConfusedReaction()
{
	return false;
}

// BW1W120 00766a10
uint8_t Villager::ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00766a20
void Villager::SetupReactToFallingTree(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00766a50
uint8_t Villager::ReactToCrowdPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00766a60
void Villager::SetupReactToCrowd(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00766a90
bool32_t Villager::CrowdReaction()
{
	return false;
}

// BW1W120 00766c60
bool32_t Villager::MoveTowardsObjectToLookAt()
{
	return false;
}

// BW1W120 00766d00
bool32_t Villager::InitialiseImpressedReaction()
{
	return false;
}

// BW1W120 00766d60
bool32_t Villager::PerformImpressedReaction()
{
	return false;
}

// BW1W120 00766df0
uint8_t Villager::ReactToFightPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00766e30
void Villager::SetupReactToFight(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00766e50
bool32_t Villager::InitialiseFightReaction()
{
	return false;
}

// BW1W120 00766fd0
void Villager::SetupReactToTownCelebration(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00767180
uint8_t Villager::ReactToTownCelebrationPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007671e0
void Villager::SetupReactToBreeder(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00767210
uint8_t Villager::ReactToBreederPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00767280
bool32_t Villager::ReactToBreeder()
{
	return false;
}

// BW1W120 007672c0
bool32_t Villager::GoAndHaveSexWith(Villager* param_1)
{
	return false;
}

// BW1W120 007672f0
void Villager::SetupReactToVillagerInHand(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00767320
uint8_t Villager::ReactToVillagerInHandPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007673a0
bool32_t Villager::WaitForMate()
{
	return false;
}

// BW1W120 00767410
bool32_t Villager::EnterDrowning(unsigned char param_1, unsigned char param_2)
{
	return false;
}

// BW1W120 00767420
bool32_t Villager::ExitDrowning(unsigned char param_1)
{
	return false;
}

// BW1W120 00767430
uint8_t Villager::ReactToBurningObjectInHandPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 00767490
void Villager::SetupReactToBurningObjectInHand(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 007674b0
void Villager::SetupReactToMagicShieldStruck(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00767520
void Villager::SetupReactToMagicShieldDestroyed(GameThingWithPos* param_1, Reaction* param_2) {}

// BW1W120 00767540
uint8_t Villager::ReactToMagicShieldStruckPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}

// BW1W120 007675a0
uint8_t Villager::ReactToMagicShieldDestroyedPriority(Reaction* param_1, Reaction* param_2)
{
	return 0;
}
