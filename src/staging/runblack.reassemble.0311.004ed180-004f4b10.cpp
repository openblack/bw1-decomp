#include "CreaturePenInfo.h"
#include "CreaturePen.h"
#include "PlannedCreaturePen.h"
#include "CreaturePhysical.h"
#include "Creature.h"
#include "CreaturePlan.h"

// win1.41 004eedc0 mac 102755a0 GCreaturePenInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GCreaturePenInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 004eee30 mac 10274c20 GCreaturePenInfo::_dt(void)
GCreaturePenInfo::~GCreaturePenInfo()
{
}

// win1.41 004eeed0 mac 10275140 CreaturePen::_dt(void)
CreaturePen::~CreaturePen()
{
}

// win1.41 004eefc0 mac 10274e70 CreaturePen::ConvertToPlanned(void)
PlannedMultiMapFixed* CreaturePen::ConvertToPlanned()
{
    return 0;
}

// win1.41 004ef040 mac 10274940 PlannedCreaturePen::GetText(void)
const char* PlannedCreaturePen::GetText()
{
    return 0;
}

// win1.41 004ef050 mac 102748a0 PlannedCreaturePen::_dt(void)
PlannedCreaturePen::~PlannedCreaturePen()
{
}

// win1.41 004ef100 mac 10274980 CreaturePen::SaveObject(LHOSFile &, MapCoords const &)
uint32_t CreaturePen::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 004ef2c0 mac 102767c0 CreaturePhysical::CreaturePhysical(MapCoords const &, unsigned short, CreatureInfo const *, Creature *)
CreaturePhysical::CreaturePhysical(const MapCoords* coords, uint16_t param_2, const CreatureInfo* info, Creature* creature)
{
}

// win1.41 004ef4c0 mac 101defb0 CreaturePhysical::_dt(void)
CreaturePhysical::~CreaturePhysical()
{
}

// win1.41 004f0560 mac 1027a2e0 Creature::DecideWhatToDo(void)
bool Creature::DecideWhatToDo()
{
    return 0;
}

// win1.41 004f1230 mac 10278a10 CreaturePlan::CreaturePlan(CREATURE_DESIRES, CREATURE_ACTION, CreatureBelief *, CreatureBelief *, CreatureBelief *, float)
CreaturePlan::CreaturePlan(CREATURE_DESIRES param_1, CREATURE_ACTION param_2, CreatureBelief* param_3, CreatureBelief* param_4, CreatureBelief* param_5, float param_6)
{
}

// win1.41 004f2680 mac inlined Creature::AddReaction(Reaction *, VILLAGER_STATES)
void Creature::AddReaction(Reaction* param_1, VILLAGER_STATES param_2)
{
}

// win1.41 004f26d0 mac 1027ddf0 Creature::StartReacting(REACTION, GameThingWithPos *, Reaction *)
void Creature::StartReacting(REACTION param_1, GameThingWithPos* param_2, Reaction* param_3)
{
}

// win1.41 004f2780 mac 1027dca0 Creature::UpdateHowImpressed(Reaction *, int)
void Creature::UpdateHowImpressed(Reaction* param_1, int param_2)
{
}

// win1.41 004f2820 mac 1027db00 Creature::IsAvailableForReaction(REACTION)
bool Creature::IsAvailableForReaction(REACTION param_1)
{
    return 0;
}

// win1.41 004f29c0 mac 1027d840 Creature::StandardNumGameTurnsToReactFunction(GameThingWithPos *, unsigned long, float)
uint32_t Creature::StandardNumGameTurnsToReactFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 004f2a20 mac 1027d730 Creature::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t Creature::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 004f2a70 mac 1027d6b0 Creature::NumGameTurnsToReactToCreatureFunction(GameThingWithPos *, unsigned long, float)
uint32_t Creature::NumGameTurnsToReactToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 004f2a90 mac 1027d620 Creature::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos *, unsigned long, float)
uint32_t Creature::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    return 0;
}

// win1.41 004f2ab0 mac 1027d550 Creature::FleeFromSpellPriority(Reaction *, Reaction *)
uint8_t Creature::FleeFromSpellPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f2b00 mac 1027d490 Creature::SetupFleeFromObject(GameThingWithPos *, Reaction *)
void Creature::SetupFleeFromObject(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f2b40 mac 1027d3d0 Creature::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
void Creature::SetupLookAtNiceSpell(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f2b80 mac 1027d2e0 Creature::SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos *, Reaction *)
void Creature::SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f2bc0 mac 1027d200 Creature::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f2bf0 mac 1027d060 Creature::ReactToCreaturePriority(Reaction *, Reaction *)
uint8_t Creature::ReactToCreaturePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f2ce0 mac 1027cef0 Creature::SetupReactToCreature(GameThingWithPos *, Reaction *)
void Creature::SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f2d90 mac 1027ce00 Creature::ReactToFoodPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToFoodPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f2de0 mac 1027cd30 Creature::SetupReactToFood(GameThingWithPos *, Reaction *)
void Creature::SetupReactToFood(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f2e20 mac 1027cc70 Creature::ReactToMagicTreePriority(Reaction *, Reaction *)
uint8_t Creature::ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f2e50 mac 1027cbf0 Creature::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
void Creature::SetupReactToMagicTree(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f2e70 mac 1027cb30 Creature::ReactToBallPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToBallPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f2ea0 mac 1027ca50 Creature::SetupReactToBall(GameThingWithPos *, Reaction *)
void Creature::SetupReactToBall(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f2ee0 mac 1027c920 Creature::ReactToFirePriority(Reaction *, Reaction *)
uint8_t Creature::ReactToFirePriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f2f70 mac 1027c710 Creature::SetupReactToFire(GameThingWithPos *, Reaction *)
void Creature::SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f3090 mac 1027c690 Creature::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
void Creature::SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f3480 mac 1027bd70 Creature::ReactToFlyingObjectPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f35a0 mac 1027bc30 Creature::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
void Creature::SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f3620 mac 1027bac0 Creature::ReactToHandPickUpPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f36b0 mac 1027b920 Creature::SetupReactToHandPickUp(GameThingWithPos *, Reaction *)
void Creature::SetupReactToHandPickUp(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f37d0 mac 1027b830 Creature::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f3820 mac 1027b720 Creature::SetupReactToHandUsingTotem(GameThingWithPos *, Reaction *)
void Creature::SetupReactToHandUsingTotem(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f3870 mac 1027b560 Creature::ReactToObjectCrushedPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f3930 mac 1027b440 Creature::SetupReactToObjectCrushed(GameThingWithPos *, Reaction *)
void Creature::SetupReactToObjectCrushed(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f3990 mac 1027b340 Creature::ReactToFightPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToFightPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f3a00 mac 1027b2e0 Creature::SetupReactToFight(GameThingWithPos *, Reaction *)
void Creature::SetupReactToFight(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f3a10 mac 1027b200 Creature::ReactToTeleportPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToTeleportPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f3a60 mac 1027b080 Creature::SetupReactToTeleport(GameThingWithPos *, Reaction *)
void Creature::SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f3b20 mac 1027afe0 Creature::ReactToDeathPriority(Reaction *, Reaction *)
uint8_t Creature::ReactToDeathPriority(Reaction* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 004f3b50 mac 1027af10 Creature::SetupReactToDeath(GameThingWithPos *, Reaction *)
void Creature::SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f3b90 mac 1027ae30 Creature::SetupReactToFainting(GameThingWithPos *, Reaction *)
void Creature::SetupReactToFainting(GameThingWithPos* param_1, Reaction* param_2)
{
}

// win1.41 004f3bd0 mac 1027ad40 Creature::SetupReactToConfused(GameThingWithPos *, Reaction *)
void Creature::SetupReactToConfused(GameThingWithPos* param_1, Reaction* param_2)
{
}
