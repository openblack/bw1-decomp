#ifndef BW1_DECOMP_WORLD_ROOM_INCLUDED_H
#define BW1_DECOMP_WORLD_ROOM_INCLUDED_H

#include "TempleRoom.h"

class GameOSFile;

class WorldRoom : public TempleRoom
{
public:
	// BW1W120 0079d260 BW1M119 015ac2a0
	virtual bool32_t IsAvailable();
	static int       ShowInfluence; // 00c2a478; descriptive name, button-config state
	// TODO: Instance members are not recovered. Do not instantiate using this partial declaration.
	// TODO: Original static member name is unrecovered.
	// BW1W120 00e3a1b0
	static int RoomsAvailable;
	// BW1W120 0079f640 BW1M119 015ac4d0
	static void SaveButtonConfig(GameOSFile& file);
	// BW1W120 0079f790 BW1M119 015ac2e0
	static void LoadButtonConfig(GameOSFile& file);
};

#endif /* BW1_DECOMP_WORLD_ROOM_INCLUDED_H */
