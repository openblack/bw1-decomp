#ifndef BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H
#define BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PictureRoom.h" /* For struct PictureRoomBase */

// Forward Declares

struct GameOSFile;

struct TempleChallenge
{
  uint8_t field_0x0[0xd8];
};
static_assert(sizeof(struct TempleChallenge) == 0xd8, "Data type is of wrong size");

// Constructors

// win1.41 00781210 mac 101b5750 TempleChallenge::TempleChallenge(GameOSFile &)
struct TempleChallenge* __fastcall __ct__15TempleChallengeFR10GameOSFile(struct TempleChallenge* this, const void* edx, struct GameOSFile* param_1) asm("??0TempleChallenge@@QAE@AAVGameOSFile@@@Z");

// Non-virtual methods

// win1.41 00781460 mac 101b51f0 TempleChallenge::StartScript(int)
void __fastcall StartScript__15TempleChallengeFi(struct TempleChallenge* this, const void* edx, int param_1) asm("?StartScript@TempleChallenge@@QAEXH@Z");
// win1.41 007817a0 mac 101b4310 TempleChallenge::LoadChallenge(GameOSFile &)
void __fastcall LoadChallenge__15TempleChallengeFR10GameOSFile(struct TempleChallenge* this, const void* edx, struct GameOSFile* param_1) asm("?LoadChallenge@TempleChallenge@@QAEXAAVGameOSFile@@@Z");

struct ChallengeRoom
{
  struct PictureRoomBase super;  /* 0x0 */
};
static_assert(sizeof(struct ChallengeRoom) == 0x160, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24e98 mac inlined ChallengeRoom::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13ChallengeRoom asm("??_R0?AVChallengeRoom@@@8");
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
struct ChallengeRoom* __fastcall __ct__13ChallengeRoomFv(struct ChallengeRoom* this) asm("??0ChallengeRoom@@QAE@XZ");

// Non-virtual methods

// win1.41 00784c10 mac 101abd90 ChallengeRoom::StartScript(unsigned long)
bool __fastcall StartScript__13ChallengeRoomFUl(struct ChallengeRoom* this, const void* edx, unsigned long param_1) asm("?StartScript@ChallengeRoom@@QAE_NK@Z");
// win1.41 00784d10 mac 101aba10 ChallengeRoom::ChallengeLoad(GameOSFile &)
void __fastcall ChallengeLoad__13ChallengeRoomFR10GameOSFile(struct ChallengeRoom* this, const void* edx, struct GameOSFile* param_1) asm("?ChallengeLoad@ChallengeRoom@@QAEXAAVGameOSFile@@@Z");

#endif /* BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H */
