#ifndef BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H
#define BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "PictureRoom.h" /* For struct PictureRoomBase */

class SaveGameRoom: public PictureRoomBase
{
public:

    // Static methods

    // win1.41 007923a0 mac 104ce930 SaveGameRoom::CreateSaveGameFiles(char*)
    static bool CreateSaveGameFiles();

    // Constructors

    // win1.41 0078f960 mac 104d5aa0 SaveGameRoom::SaveGameRoom(void)
    SaveGameRoom();
};

#endif /* BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H */
