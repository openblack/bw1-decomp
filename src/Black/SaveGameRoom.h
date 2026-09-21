#ifndef BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H
#define BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */

#include "PictureRoom.h" /* For struct PictureRoomBase */

class SaveGameRoom : public PictureRoomBase
{
public:
	// TODO: Original global name unknown.
	// BW1W120 00e05fc0
	static long CurrentSlot;

	// Static methods

	// BW1W120 00792fb0 BW1M119 014d38b0
	static void InstantSaveGame(long slot);

	// BW1W120 007923a0 BW1M119 014d4ca0
	static bool32_t CreateSaveGameFiles(char* path);

	// Constructors

	// BW1W120 0078f960 BW1M119 014dbe00
	SaveGameRoom();
};

#endif /* BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H */
