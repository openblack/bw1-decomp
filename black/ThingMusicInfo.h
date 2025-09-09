#ifndef BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H
#define BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;

struct ThingMusicInfo
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct ThingMusicInfo) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00429320 mac 1017c8b0 ThingMusicInfo::_dt(void)
void __fastcall __dt__14ThingMusicInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GThingMusicInfo@@UAEPAXI@Z");
// win1.41 00429310 mac 1017c980 ThingMusicInfo::GetDebugText(void)
char* __fastcall GetDebugText__14ThingMusicInfoFv(struct GameThing* this) asm("?GetDebugText@ThingMusicInfo@@UAEPADXZ");
// win1.41 00429ae0 mac 1017c9c0 ThingMusicInfo::Load(GameOSFile &)
uint32_t __fastcall Load__14ThingMusicInfoFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ThingMusicInfo@@UAEIAAVGameOSFile@@@Z");
// win1.41 00429950 mac 1017cc10 ThingMusicInfo::Save(GameOSFile &)
uint32_t __fastcall Save__14ThingMusicInfoFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ThingMusicInfo@@UAEIAAVGameOSFile@@@Z");
// win1.41 00429300 mac 1017c940 ThingMusicInfo::GetSaveType(void)
uint32_t __fastcall GetSaveType__14ThingMusicInfoFv(struct GameThing* this) asm("?GetSaveType@ThingMusicInfo@@UAEIXZ");

#endif /* BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H */
