#ifndef BW1_DECOMP_CREDITS_ROOM_INCLUDED_H
#define BW1_DECOMP_CREDITS_ROOM_INCLUDED_H

#include "PictureRoom.h"

class GameOSFile;

class CreditsRoom : public PictureRoomBase
{
public:
	// TODO: Instance members are not recovered. Do not instantiate using this partial declaration.
	// BW1W120 0078ce70 BW1M100 102a4940 CreditsRoom::DYKSave(GameOSFile &)
	static void DYKSave(GameOSFile& file);
	// BW1W120 0078d150 BW1M100 102a4530 CreditsRoom::DYKLoad(GameOSFile &)
	static void DYKLoad(GameOSFile& file);
};

#endif /* BW1_DECOMP_CREDITS_ROOM_INCLUDED_H */
