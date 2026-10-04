#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include "GameTimeConstants.h"
#include "Container.h"

#include "ContainerInfo.h"
#include "GameOSFile.h"
#include "Player.h"

// rogue includes needed for matching bss: together they move the $S counter so that
// Definitions' destructor guard lands on a number whose name hashes ahead of SecondsPerYear
// in every Windows build ($S123; $S115 before Player.h, PlayerInfo.h, Reward.h and Network.h
// gained their static data members). Game.h alone gave $S113 for 1.20 but $S99 for 1.00 and
// 1.10, which hashes after it.
#include "Creature.h"
#include "Game.h"

// fabricated: an unreferenced 4-byte static at .bss+0 in every Windows build (BW1W120 00c5e5d8),
// just ahead of the destructor guard. Nothing names it; this name hashes ahead of the guard.
static float spare;

GContainerInfo GContainerInfo::Definitions[CONTAINER_INFO_LAST];

Container::Container(const MapCoords& coords, const GContainerInfo* info, GPlayer* player)
{
	this->info = info;
	Pos = coords;
	owner = player;
}

uint32_t Container::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WriteInfo(info.Get());
		file.WritePtr(owner.Get());
		return 1;
	}
	return 0;
}

uint32_t Container::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadInfo((const GBaseInfo**)&info);
		file.ReadPtr((GameThing**)&owner);
		return 1;
	}
	return 0;
}
