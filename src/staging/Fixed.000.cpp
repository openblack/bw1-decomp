#include "Fixed.h"

// win1.41 00401460 mac 10554e40 FixedObject::VillagerMustAvoid(Villager *)
bool Fixed::VillagerMustAvoid(Villager* param_1)
{
    return true;
}

// win1.41 00401470 mac 1057ad40 FixedObject::GetTownArtifact(void)
GameThing* Fixed::GetTownArtifact()
{
    return town_artifact;
}

// win1.41 00401480 mac 10588280 FixedObject::IsTownArtifact(void)
bool Fixed::IsTownArtifact()
{
    return town_artifact != NULL;
}
