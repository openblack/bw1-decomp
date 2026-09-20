#ifndef BW1_DECOMP_WORLD_ROOM_INCLUDED_H
#define BW1_DECOMP_WORLD_ROOM_INCLUDED_H

#include "TempleRoom.h"

class GameOSFile;

class WorldRoom : public TempleRoom
{
public:
	// BW1W120 0079d260 WorldRoom::IsAvailable(void)
	virtual uint32_t IsAvailable();
	static int       ShowInfluence; // 00c2a478; descriptive name, button-config state
	// TODO: Instance members are not recovered. Do not instantiate using this partial declaration.
	// BW1W120 00e3a1b0. TODO: Original static member name is unrecovered.
	static int RoomsAvailable;
	// BW1W120 0079f640 BW1M100 105a5630 WorldRoom::SaveButtonConfig(GameOSFile &)
	static void SaveButtonConfig(GameOSFile& file);
	// BW1W120 0079f790 BW1M100 105a5440 WorldRoom::LoadButtonConfig(GameOSFile &)
	static void LoadButtonConfig(GameOSFile& file);
};

#endif /* BW1_DECOMP_WORLD_ROOM_INCLUDED_H */
