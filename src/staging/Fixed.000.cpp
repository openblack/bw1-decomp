#include "Fixed.h"

// win1.41 00401400 mac 10513b00 FixedObject::CanBeFrighteningToCreature(Creature *)
bool32_t Fixed::CanBeFrighteningToCreature(Creature* creature)
{
    return false;
}

// win1.41 00401410 mac 10570f10 FixedObject::CanBeSleptNextToByCreature(Creature *)
bool32_t Fixed::CanBeSleptNextToByCreature(Creature* creature)
{
    return true;
}

// win1.41 00401420 mac 105e81f0 FixedObject::CanBeDestroyedByStoning(Creature *)
bool32_t Fixed::CanBeDestroyedByStoning(Creature* creature)
{
    return true;
}

// win1.41 00401430 mac 100b19c0 FixedObject::CanBeSetOnFire(Creature *)
bool32_t Fixed::CanBeSetOnFire(Creature* creature)
{
    return (field_0xa & 0x8) == 0;
}

// win1.41 00401440 mac 1056c2a0 FixedObject::CanBePickedUpByCreature(Creature *)
bool32_t Fixed::CanBePickedUpByCreature(Creature* creature)
{
    return false;
}

// win1.41 00401450 mac 1057a200 FixedObject::CanBeCrushed(void)
bool32_t Fixed::CanBeCrushed()
{
    return true;
}

// win1.41 00401460 mac 10554e40 FixedObject::VillagerMustAvoid(Villager *)
bool32_t Fixed::VillagerMustAvoid(Villager* param_1)
{
    return true;
}

// win1.41 00401470 mac 1057ad40 FixedObject::GetTownArtifact(void)
GameThing* Fixed::GetTownArtifact()
{
    return town_artifact;
}

// win1.41 00401480 mac 10588280 FixedObject::IsTownArtifact(void)
bool32_t Fixed::IsTownArtifact()
{
    return town_artifact != NULL;
}
