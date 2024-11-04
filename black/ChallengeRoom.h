#ifndef BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H
#define BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include "PictureRoom.h" /* For struct PictureRoomBase */

struct ChallengeRoom
{
  struct PictureRoomBase super;  /* 0x0 */
};
static_assert(sizeof(struct ChallengeRoom) == 0x160, "Data type is of wrong size");

static struct TempleRoomVftable* __vt__13ChallengeRoom = (struct TempleRoomVftable*)0x0099ead8;

// Static methods

// win1.41 00784b30 mac 101abfe0 ChallengeRoom::CreateChallengeFiles(char*)
bool __stdcall CreateChallengeFiles__13ChallengeRoomFPc(void);

// Constructors

// win1.41 00781a60 mac 101b4180 ChallengeRoom::ChallengeRoom(void)
struct ChallengeRoom* __fastcall __ct__13ChallengeRoomFv(struct ChallengeRoom* this);

#endif /* BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H */
