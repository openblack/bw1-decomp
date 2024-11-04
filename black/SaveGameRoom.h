#ifndef BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H
#define BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include "PictureRoom.h" /* For struct PictureRoomBase */

struct SaveGameRoom
{
  struct PictureRoomBase super;  /* 0x0 */
};
static_assert(sizeof(struct SaveGameRoom) == 0x160, "Data type is of wrong size");

static struct TempleRoomVftable* __vt__12SaveGameRoom = (struct TempleRoomVftable*)0x0099edfc;

// Static methods

// win1.41 007923a0 mac 104ce930 SaveGameRoom::CreateSaveGameFiles(char*)
bool __stdcall CreateSaveGameFiles__12SaveGameRoomFPc(void);

// Constructors

// win1.41 0078f960 mac 104d5aa0 SaveGameRoom::SaveGameRoom(void)
struct SaveGameRoom* __fastcall __ct__12SaveGameRoomFv(struct SaveGameRoom* this);

#endif /* BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H */
