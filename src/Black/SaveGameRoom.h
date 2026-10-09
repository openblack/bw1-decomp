#ifndef BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H
#define BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */

#include "PictureRoom.h" /* For struct PictureRoomBase */

enum
{
	SAVE_GAME_ROOM_CIRCLE_FIRST_SLOT = 15,
	SAVE_GAME_ROOM_CIRCLE_SLOT_COUNT = 3,
	SAVE_GAME_ROOM_AUTO_SAVE_SLOT = 20,
};

class SaveGameRoom : public PictureRoomBase
{
public:
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
