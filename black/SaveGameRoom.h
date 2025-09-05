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

// win1.41 0099edf8 mac 109c207c SaveGameRoom::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12SaveGameRoom asm("??_R4SaveGameRoom@@6B@");

// win1.41 0099edfc mac 109c2084 SaveGameRoom::`vftable'
extern const struct TempleRoomVftable __vt__12SaveGameRoom asm("??_7SaveGameRoom@@6B@");

// Static methods

// win1.41 007923a0 mac 104ce930 SaveGameRoom::CreateSaveGameFiles(char*)
bool __stdcall CreateSaveGameFiles__12SaveGameRoomFPc(void);

// Constructors

// win1.41 0078f960 mac 104d5aa0 SaveGameRoom::SaveGameRoom(void)
struct SaveGameRoom* __fastcall __ct__12SaveGameRoomFv(struct SaveGameRoom* this);

#endif /* BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H */
