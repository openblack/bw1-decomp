#include "Villager.h"
#include "Town.h"

// win1.41 00767630 mac 10596820 Villager::SetupReactToCreature(GameThingWithPos *, Reaction *)
void Villager::SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 007676e0 mac 10596540 Villager::ReactToCreaturePriority(Reaction *, Reaction *)
uint8_t Villager::ReactToCreaturePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 007678a0 mac 10596410 Villager::InspectCreatureReaction(void)
bool Villager::InspectCreatureReaction()
{
    return false;
}

// win1.41 00767970 mac 105962d0 Villager::PerformInspectCreatureReaction(void)
bool Villager::PerformInspectCreatureReaction()
{
    return false;
}

// win1.41 00767a00 mac 10596080 Villager::ApproachCreatureReaction(void)
bool Villager::ApproachCreatureReaction()
{
    return false;
}

// win1.41 00767ba0 mac 10595f40 Villager::InitialiseRespectCreatureReaction(void)
bool Villager::InitialiseRespectCreatureReaction()
{
    return false;
}

// win1.41 00767c80 mac 10595e50 Villager::TurnToFaceCreatureReaction(void)
bool Villager::TurnToFaceCreatureReaction()
{
    return false;
}

// win1.41 00767ce0 mac 10595cf0 Villager::PerformRespectCreatureReaction(void)
bool Villager::PerformRespectCreatureReaction()
{
    return false;
}

// win1.41 00767dc0 mac 10595c30 Villager::FinishRespectCreatureReaction(void)
bool Villager::FinishRespectCreatureReaction()
{
    return false;
}

// win1.41 00767e00 mac 10595a30 Villager::FleeingFromCreatureReaction(void)
bool Villager::FleeingFromCreatureReaction()
{
    return false;
}

// win1.41 00767f70 mac 10595930 Villager::MoveTowardsCreatureReaction(void)
bool Villager::MoveTowardsCreatureReaction()
{
    return false;
}

// win1.41 00767fe0 mac 10595660 LivingMapCell::LivingMapCell(JustMapXZ &)
LivingMapCell::LivingMapCell(JustMapXZ* param_1)
{
}

// win1.41 007680d0 mac 105953b0 LivingMapCell::FindFreePosition(JustMapXZ &, MapCoords const &, MapCoords *)
bool LivingMapCell::FindFreePosition(JustMapXZ* param_1, const MapCoords* param_2, MapCoords* param_3)
{
    return false;
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
bool Villager::UpdateReactiveStateFromAttitudeToCreature()
{
    return false;
}

// win1.41 00768510 mac 10594d70 Villager::SetupMoveToCreatureReaction(MapCoords const &, unsigned char)
void Villager::SetupMoveToCreatureReaction(const MapCoords* param_1, unsigned char param_2)
{
}

// win1.41 00768540 mac 10594d20 GameThingWithPos::AttitudeToCreatureNone(void)
uint32_t GameThingWithPos::AttitudeToCreatureNone()
{
    return 1;
}

// win1.41 00768550 mac 00768550 GameThingWithPos::AttitudeToCreatureFear(void)
uint32_t GameThingWithPos::AttitudeToCreatureFear()
{
    return 3;
}

// win1.41 00768560 mac 10594c80 GameThingWithPos::AttitudeToCreatureRespect(void)
uint32_t GameThingWithPos::AttitudeToCreatureRespect()
{
    return 4;
}

// win1.41 00768570 mac 10594c30 GameThingWithPos::AttitudeToCreatureEating(void)
uint32_t GameThingWithPos::AttitudeToCreatureEating()
{
    return 1;
}

// win1.41 00768580 mac 10594bb0 Living::AttitudeToCreatureEating(void)
uint32_t Living::AttitudeToCreatureEating()
{
    return 1;
}
