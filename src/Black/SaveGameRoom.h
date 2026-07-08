#ifndef BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H
#define BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "PictureRoom.h" /* For struct PictureRoomBase */

class SaveGameRoom : public PictureRoomBase
{
public:
	// Static methods

	// BW1W120 007923a0 BW1M100 104ce930 SaveGameRoom::CreateSaveGameFiles(char*)
	static bool CreateSaveGameFiles();

	// Constructors

	// BW1W120 0078f960 BW1M100 104d5aa0 SaveGameRoom::SaveGameRoom(void)
	SaveGameRoom();
};

#endif /* BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H */
