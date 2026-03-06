#include "Villager.h"
#include "Animal.h"
#include "Living.h"
#include "LobbyBox.h"

// win1.41 005f0a60 mac 103846d0 Villager::EndPhysics(PhysicsObject *, bool)
void Villager::EndPhysics(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 005f0d80 mac 10384510 Animal::EndPhysics(PhysicsObject *, bool)
void Animal::EndPhysics(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 005f0f30 mac inlined Living::AddReaction(Reaction *, VILLAGER_STATES)
void Living::AddReaction(Reaction* param_1, VILLAGER_STATES param_2)
{
}

// win1.41 005f1140 mac 10389590 Living::StopReacting(void)
void Living::StopReacting()
{
}

// win1.41 005f11c0 mac 103894f0 Living::StopReactingAndSetState(void)
void Living::StopReactingAndSetState()
{
}

// win1.41 005f11f0 mac 10019a90 Living::IsAvailableForReaction(REACTION)
bool Living::IsAvailableForReaction(REACTION param_1)
{
    return 0;
}

// win1.41 005f1270 mac 1004b9b0 Living::ProcessReaction(void)
void Living::ProcessReaction()
{
}

// win1.41 005f1360 mac 10388d10 Living::SetupFleeFromObject(GameThingWithPos *, Reaction *)
void Living::SetupFleeFromObject(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f1390 mac 10388c90 Living::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
void Living::SetupFleeFromPredator(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f13b0 mac 10388be0 Living::SetupLookAtObject(GameThingWithPos *, Reaction *)
void Living::SetupLookAtObject(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f13e0 mac 10388b60 Living::SetupLookAtSpell(GameThingWithPos *, Reaction *)
void Living::SetupLookAtSpell(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f1400 mac 10388ae0 Living::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
void Living::SetupLookAtNiceSpell(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f1420 mac 10388a30 Living::SetupFollowObject(GameThingWithPos *, Reaction *)
void Living::SetupFollowObject(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f1450 mac 10388920 Living::SetupReactToCreature(GameThingWithPos *, Reaction *)
void Living::SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f14c0 mac 10388840 Living::SetupReactToFood(GameThingWithPos *, Reaction *)
void Living::SetupReactToFood(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f1500 mac 10388790 Living::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
void Living::SetupReactToMagicTree(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f1530 mac 103886e0 Living::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
void Living::SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f1560 mac 10388630 Living::SetupReactToBall(GameThingWithPos *, Reaction *)
void Living::SetupReactToBall(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f1590 mac 103885b0 Living::SetupReactToCreatureGift(GameThingWithPos *, Reaction *)
void Living::SetupReactToCreatureGift(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f15b0 mac 10388550 Living::SetupReactToNewBuilding(GameThingWithPos *, Reaction *)
void Living::SetupReactToNewBuilding(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 005f15c0 mac 103884e0 Living::FleeFromObjectPriority(Reaction *, Reaction *)
uint8_t Living::FleeFromObjectPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f15d0 mac 10388410 Living::FleeFromPredatorPriority(Reaction *, Reaction *)
uint8_t Living::FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1610 mac 103883a0 Living::LookAtObjectPriority(Reaction *, Reaction *)
uint8_t Living::LookAtObjectPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1620 mac 10388330 Living::FollowObjectPriority(Reaction *, Reaction *)
uint8_t Living::FollowObjectPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1630 mac 10388250 Living::FleeFromSpellPriority(Reaction *, Reaction *)
uint8_t Living::FleeFromSpellPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1690 mac 103881e0 Living::LookAtSpellPriority(Reaction *, Reaction *)
uint8_t Living::LookAtSpellPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f16a0 mac 10388120 Living::LookAtNiceSpellPriority(Reaction *, Reaction *)
uint8_t Living::LookAtNiceSpellPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f16e0 mac 103880b0 Living::FollowSpellPriority(Reaction *, Reaction *)
uint8_t Living::FollowSpellPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f16f0 mac 10388020 Living::ReactToCreaturePriority(Reaction *, Reaction *)
uint8_t Living::ReactToCreaturePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1710 mac 10387ee0 Living::ReactToFoodPriority(Reaction *, Reaction *)
uint8_t Living::ReactToFoodPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f17a0 mac 10387e10 Living::ReactToWoodPriority(Reaction *, Reaction *)
uint8_t Living::ReactToWoodPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f17f0 mac 10387d90 Living::ReactToMagicTreePriority(Reaction *, Reaction *)
uint8_t Living::ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1800 mac 10387cd0 Living::ReactToFlyingObjectPriority(Reaction *, Reaction *)
uint8_t Living::ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1820 mac 10387c30 Living::ReactToBallPriority(Reaction *, Reaction *)
uint8_t Living::ReactToBallPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1860 mac 10387bb0 Living::ReactToMagicShieldPriority(Reaction *, Reaction *)
uint8_t Living::ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1870 mac 10387b30 Living::ReactToCreatureGiftPriority(Reaction *, Reaction *)
uint8_t Living::ReactToCreatureGiftPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f1880 mac 10387a90 Living::ReactToNewBuildingPriority(Reaction *, Reaction *)
uint8_t Living::ReactToNewBuildingPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f18a0 mac 10387a20 Living::ReactToFaintingPriority(Reaction *, Reaction *)
uint8_t Living::ReactToFaintingPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f18b0 mac 103879b0 Living::ReactToConfusedPriority(Reaction *, Reaction *)
uint8_t Living::ReactToConfusedPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 005f18c0 mac 10387890 Living::StandardNumGameTurnsToReactFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::StandardNumGameTurnsToReactFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1920 mac 10081310 Living::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1980 mac 103875b0 Living::NumGameTurnsToReactToPredatorFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::NumGameTurnsToReactToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1a00 mac 10387450 Living::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1a90 mac 103873c0 Living::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1ab0 mac 10387320 Living::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1ad0 mac 10387290 Living::NumGameTurnsToReactToShieldFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::NumGameTurnsToReactToShieldFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1af0 mac 10387200 Living::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1b10 mac 10387040 Living::NumGameTurnsToReactToCreatureFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::NumGameTurnsToReactToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1c00 mac 10386e40 Living::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f1d90 mac 10386bd0 Living::FleeFromObjectIfComingTowardsMe(GameThingWithPos *, VILLAGER_STATES, VILLAGER_STATES)
bool32_t Living::FleeFromObjectIfComingTowardsMe(GameThingWithPos* param_1, VILLAGER_STATES param_2, VILLAGER_STATES param_3)
{
    return 0;
}

// win1.41 005f2010 mac 10386800 Living::GetFleeingPositionFromStationaryObject(MapCoords *, GameThingWithPos *, float)
void Living::GetFleeingPositionFromStationaryObject(MapCoords* param_1, GameThingWithPos* param_2, float param_3)
{
}

// win1.41 005f2160 mac 103864c0 Living::GetFleeingPositionFromMovingObject(MapCoords *, GameThingWithPos *, float)
void Living::GetFleeingPositionFromMovingObject(MapCoords* param_1, GameThingWithPos* param_2, float param_3)
{
}

// win1.41 005f2630 mac 10385ed0 Living::ArrivesAtFoodReaction(void)
bool Living::ArrivesAtFoodReaction()
{
    return 0;
}

// win1.41 005f2640 mac 10385e00 Living::GotoPickupBallReaction(void)
uint32_t Living::GotoPickupBallReaction()
{
    return 0;
}

// win1.41 005f26d0 mac 10385ce0 Living::LookAtFlyingObjectReaction(void)
bool Living::LookAtFlyingObjectReaction()
{
    return 0;
}

// win1.41 005f2710 mac 10385c50 Living::AmILikelyToMove(void)
bool Living::AmILikelyToMove()
{
    return 0;
}

// win1.41 005f2720 mac 10385bb0 Living::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t Living::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 005f27f0 mac 10056110 Living::GetTopState(void)
VILLAGER_STATES Living::GetTopState()
{
    return (VILLAGER_STATES)0;
}

// win1.41 005f2800 mac 1038a340 Living::SetupMoveToObject(Object *, unsigned char)
bool Living::SetupMoveToObject(Object* param_1, unsigned char param_2)
{
    return 0;
}

// win1.41 005f2830 mac 10029240 Living::SetupMoveToPos(MapCoords const &, unsigned char)
uint32_t Living::SetupMoveToPos(const MapCoords* param_2, uint8_t param_3)
{
    return 0;
}

// win1.41 005f2890 mac 10010f60 Living::SetupMoveToWithHug(MapCoords const &, unsigned char)
uint32_t Living::SetupMoveToWithHug(const MapCoords* coords, uint8_t state)
{
    return 0;
}

// win1.41 005f28e0 mac 10075940 Living::SetTopState(unsigned char)
int Living::SetTopState(VILLAGER_STATES state)
{
    return 0;
}

// win1.41 005f2980 mac 10076180 Living::SetCurrentAndDestinationState(unsigned char, unsigned char)
int Living::SetCurrentAndDestinationState(VILLAGER_STATES current, VILLAGER_STATES destination)
{
    return 0;
}

// win1.41 005f2a80 mac 10072250 Living::SetState(unsigned long, unsigned char)
void Living::SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state)
{
}

// win1.41 005f5250 mac 105d7ac0 LobbyBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void LobbyBox::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 005f5a40 mac 105d7a60 LobbyBox::Destroy(void)
void LobbyBox::Destroy()
{
}

// win1.41 005f5a50 mac 105d78e0 LobbyBox::InitControls(void)
void LobbyBox::InitControls()
{
}
