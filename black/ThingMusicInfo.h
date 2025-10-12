#ifndef BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H
#define BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;

struct ThingMusicInfo
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct ThingMusicInfo) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cb3a0 mac inlined ThingMusicInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14ThingMusicInfo asm("??_R0?AVThingMusicInfo@@@8");
// win1.41 009a7c78 mac inlined ThingMusicInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14ThingMusicInfo asm("??_R1A@?0A@A@ThingMusicInfo@@8");
// win1.41 009a7c90 mac inlined ThingMusicInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14ThingMusicInfo asm("??_R2ThingMusicInfo@@8");
// win1.41 009a7ca0 mac inlined ThingMusicInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14ThingMusicInfo asm("??_R3ThingMusicInfo@@8");

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
