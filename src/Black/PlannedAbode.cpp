#include "PlannedAbode.h"
#include "Town.h"

void PlannedAbode::Init(Town* town_)
{
    town = town_;
    if (town != NULL)
    {
        town->AddPlanned(this);
    }
}
