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

// Object Oriented datastructures

// win1.41 00c24e98 mac inlined ChallengeRoom::`RTTI Type Descriptor'
extern const struct RTTITypeDescriptor __RTTITypeDescriptor__13ChallengeRoom asm("??_R0?AVChallengeRoom@@@8");
// win1.41 009ba5a8 mac inlined ChallengeRoom::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13ChallengeRoom asm("??_R1A@?0A@A@ChallengeRoom@@8");
// win1.41 009ba5c0 mac inlined ChallengeRoom::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13ChallengeRoom asm("??_R2ChallengeRoom@@8");
// win1.41 009ba5d0 mac inlined ChallengeRoom::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13ChallengeRoom asm("??_R3ChallengeRoom@@8");
// win1.41 0099ead4 mac 10777d4c ChallengeRoom::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13ChallengeRoom asm("??_R4ChallengeRoom@@6B@");
// win1.41 0099ead8 mac 10777d54 ChallengeRoom::`vftable'
extern const struct TempleRoomVftable __vt__13ChallengeRoom asm("??_7ChallengeRoom@@6B@");

// Static methods

// win1.41 00784b30 mac 101abfe0 ChallengeRoom::CreateChallengeFiles(char*)
bool __stdcall CreateChallengeFiles__13ChallengeRoomFPc(void);

// Constructors

// win1.41 00781a60 mac 101b4180 ChallengeRoom::ChallengeRoom(void)
struct ChallengeRoom* __fastcall __ct__13ChallengeRoomFv(struct ChallengeRoom* this);

#endif /* BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H */
