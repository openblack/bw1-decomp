#include "UniverseRoom.h"

bool32_t (*UniverseRoom::AvailableCallback)() = UniverseRoom::AlwaysAvailable;
