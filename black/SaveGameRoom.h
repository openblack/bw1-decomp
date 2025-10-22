#ifndef BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H
#define BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PictureRoom.h" /* For struct PictureRoomBase */

struct SaveGameRoom
{
  struct PictureRoomBase super;  /* 0x0 */
};
static_assert(sizeof(struct SaveGameRoom) == 0x160, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c286a0 mac inlined SaveGameRoom::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12SaveGameRoom asm("??_R0?AVSaveGameRoom@@@8");
// win1.41 009bab48 mac inlined SaveGameRoom::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12SaveGameRoom asm("??_R1A@?0A@A@SaveGameRoom@@8");
// win1.41 009bab60 mac inlined SaveGameRoom::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12SaveGameRoom asm("??_R2SaveGameRoom@@8");
// win1.41 009bab70 mac inlined SaveGameRoom::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12SaveGameRoom asm("??_R3SaveGameRoom@@8");
// win1.41 0099edf8 mac 109c207c SaveGameRoom::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12SaveGameRoom asm("??_R4SaveGameRoom@@6B@");
// win1.41 0099edfc mac 109c2084 SaveGameRoom::`vftable'
extern const struct TempleRoomVftable __vt__12SaveGameRoom asm("??_7SaveGameRoom@@6B@");

// Static methods

// win1.41 007923a0 mac 104ce930 SaveGameRoom::CreateSaveGameFiles(char*)
bool __stdcall CreateSaveGameFiles__12SaveGameRoomFPc(void);

// Constructors

// win1.41 0078f960 mac 104d5aa0 SaveGameRoom::SaveGameRoom(void)
struct SaveGameRoom* __fastcall __ct__12SaveGameRoomFv(struct SaveGameRoom* this) asm("??0SaveGameRoom@@QAE@XZ");

#endif /* BW1_DECOMP_SAVE_GAME_ROOM_INCLUDED_H */
