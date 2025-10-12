#ifndef BW1_DECOMP_CHALLENGE_ROOM_CAMERA_INCLUDED_H
#define BW1_DECOMP_CHALLENGE_ROOM_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "InnerCamera.h" /* For struct InnerCamera */

struct ChallengeRoomCamera
{
  struct InnerCamera super;  /* 0x0 */
};
static_assert(sizeof(struct ChallengeRoomCamera) == 0x46c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c28608 mac inlined ChallengeRoomCamera::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19ChallengeRoomCamera asm("??_R0?AUChallengeRoomCamera@@@8");
// win1.41 009baaf8 mac inlined ChallengeRoomCamera::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19ChallengeRoomCamera asm("??_R1A@?0A@A@ChallengeRoomCamera@@8");
// win1.41 009bab10 mac inlined ChallengeRoomCamera::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19ChallengeRoomCamera asm("??_R2ChallengeRoomCamera@@8");
// win1.41 009bab20 mac inlined ChallengeRoomCamera::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19ChallengeRoomCamera asm("??_R3ChallengeRoomCamera@@8");

// Override methods

// win1.41 00785300 mac 101b6a80 ChallengeRoomCamera::Init(char *)
void __fastcall Init__19ChallengeRoomCameraFPc(struct InnerCamera* this, const void* edx, char* param_1) asm("?Init@ChallengeRoomCamera@@UAEXPAD@Z");
// win1.41 00785250 mac 101b6c30 ChallengeRoomCamera::Reinit(void)
void __fastcall Reinit__19ChallengeRoomCameraFv(struct InnerCamera* this) asm("?Reinit@ChallengeRoomCamera@@UAEXXZ");
// win1.41 007854c0 mac 101b6a20 ChallengeRoomCamera::Close(void)
void __fastcall Close__19ChallengeRoomCameraFv(struct InnerCamera* this) asm("?Close@ChallengeRoomCamera@@UAEXXZ");

#endif /* BW1_DECOMP_CHALLENGE_ROOM_CAMERA_INCLUDED_H */
