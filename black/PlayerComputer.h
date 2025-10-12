#ifndef BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H
#define BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;

struct GComputerAttitudeToPlayer
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct GComputerAttitudeToPlayer) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed468 mac inlined GComputerAttitudeToPlayer::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25GComputerAttitudeToPlayer asm("??_R0?AVGComputerAttitudeToPlayer@@@8");
// win1.41 009aec38 mac inlined GComputerAttitudeToPlayer::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25GComputerAttitudeToPlayer asm("??_R1A@?0A@A@GComputerAttitudeToPlayer@@8");
// win1.41 009aec50 mac inlined GComputerAttitudeToPlayer::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25GComputerAttitudeToPlayer asm("??_R2GComputerAttitudeToPlayer@@8");
// win1.41 009aec60 mac inlined GComputerAttitudeToPlayer::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25GComputerAttitudeToPlayer asm("??_R3GComputerAttitudeToPlayer@@8");

// Override methods

// win1.41 0055e310 mac 104a4ad0 GComputerAttitudeToPlayer::_dt(void)
void __fastcall __dt__25GComputerAttitudeToPlayerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGComputerAttitudeToPlayer@@UAEPAXI@Z");
// win1.41 0055e300 mac 104a4bc0 GComputerAttitudeToPlayer::GetDebugText(void)
char* __fastcall GetDebugText__25GComputerAttitudeToPlayerFv(struct GameThing* this) asm("?GetDebugText@GComputerAttitudeToPlayer@@UAEPADXZ");
// win1.41 006587d0 mac 104a5760 GComputerAttitudeToPlayer::Load(GameOSFile &)
uint32_t __fastcall Load__25GComputerAttitudeToPlayerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GComputerAttitudeToPlayer@@UAEIAAVGameOSFile@@@Z");
// win1.41 00658830 mac 104a5670 GComputerAttitudeToPlayer::Save(GameOSFile &)
uint32_t __fastcall Save__25GComputerAttitudeToPlayerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GComputerAttitudeToPlayer@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055e2f0 mac 104a4b70 GComputerAttitudeToPlayer::GetSaveType(void)
uint32_t __fastcall GetSaveType__25GComputerAttitudeToPlayerFv(struct GameThing* this) asm("?GetSaveType@GComputerAttitudeToPlayer@@UAEIXZ");

struct GComputerPlayer
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct GComputerPlayer) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becd68 mac inlined GComputerPlayer::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GComputerPlayer asm("??_R0?AVGComputerPlayer@@@8");
// win1.41 009ae160 mac inlined GComputerPlayer::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GComputerPlayer asm("??_R1A@?0A@A@GComputerPlayer@@8");
// win1.41 009ae178 mac inlined GComputerPlayer::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GComputerPlayer asm("??_R2GComputerPlayer@@8");
// win1.41 009ae190 mac inlined GComputerPlayer::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GComputerPlayer asm("??_R3GComputerPlayer@@8");

// Override methods

// win1.41 0055e3d0 mac 104975d0 GComputerPlayer::_dt(void)
void __fastcall __dt__15GComputerPlayerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGComputerPlayer@@UAEPAXI@Z");
// win1.41 00656f20 mac 104a8fe0 GComputerPlayer::ToBeDeleted(int)
void __fastcall ToBeDeleted__15GComputerPlayerFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GComputerPlayer@@UAEXH@Z");
// win1.41 0055e3b0 mac 10381df0 GComputerPlayer::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__15GComputerPlayerFv(struct GameThing* this) asm("?GetPlayer@GComputerPlayer@@UAEPAVGPlayer@@XZ");
// win1.41 0055e380 mac 104abef0 GComputerPlayer::GetDebugText(void)
char* __fastcall GetDebugText__15GComputerPlayerFv(struct GameThing* this) asm("?GetDebugText@GComputerPlayer@@UAEPADXZ");
// win1.41 006579a0 mac 104a7010 GComputerPlayer::Load(GameOSFile &)
uint32_t __fastcall Load__15GComputerPlayerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GComputerPlayer@@UAEIAAVGameOSFile@@@Z");
// win1.41 00657640 mac 104a7bc0 GComputerPlayer::Save(GameOSFile &)
uint32_t __fastcall Save__15GComputerPlayerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GComputerPlayer@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055e370 mac 104abeb0 GComputerPlayer::GetSaveType(void)
uint32_t __fastcall GetSaveType__15GComputerPlayerFv(struct GameThing* this) asm("?GetSaveType@GComputerPlayer@@UAEIXZ");
// win1.41 00657cd0 mac 104a6f30 GComputerPlayer::SaveExtraData(GameOSFile &)
void __fastcall SaveExtraData__15GComputerPlayerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?SaveExtraData@GComputerPlayer@@UAEXAAVGameOSFile@@@Z");
// win1.41 0055e390 mac 104abf30 GComputerPlayer::SetSpeedInMetres(float, int)
void __fastcall SetSpeedInMetres__15GComputerPlayerFfi(struct GameThingWithPos* this, const void* edx, float param_1, int param_2) asm("?SetSpeedInMetres@GComputerPlayer@@UAEXMH@Z");
// win1.41 0055e3a0 mac 104abf90 GComputerPlayer::GetText(void)
const char* __fastcall GetText__15GComputerPlayerFv(struct GameThingWithPos* this) asm("?GetText@GComputerPlayer@@UAEPBDXZ");
// win1.41 0055e3c0 mac 104abff0 GComputerPlayer::IsComputerPlayer(void)
uint32_t __fastcall IsComputerPlayer__15GComputerPlayerFv(struct GameThingWithPos* this) asm("?IsComputerPlayer@GComputerPlayer@@UAEIXZ");
// win1.41 006587b0 mac 104a5850 GComputerPlayer::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__15GComputerPlayerFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@GComputerPlayer@@UAEIXZ");

struct GComputerPlayerQueue
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct GComputerPlayerQueue) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bee2d0 mac inlined GComputerPlayerQueue::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20GComputerPlayerQueue asm("??_R0?AVGComputerPlayerQueue@@@8");
// win1.41 009b0418 mac inlined GComputerPlayerQueue::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20GComputerPlayerQueue asm("??_R1A@?0A@A@GComputerPlayerQueue@@8");
// win1.41 009b0430 mac inlined GComputerPlayerQueue::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20GComputerPlayerQueue asm("??_R2GComputerPlayerQueue@@8");
// win1.41 009b0440 mac inlined GComputerPlayerQueue::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20GComputerPlayerQueue asm("??_R3GComputerPlayerQueue@@8");

// Override methods

// win1.41 00561c30 mac 104bf6b0 GComputerPlayerQueue::_dt(void)
void __fastcall __dt__20GComputerPlayerQueueFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGComputerPlayerQueue@@UAEPAXI@Z");
// win1.41 00561c20 mac 104be870 GComputerPlayerQueue::GetDebugText(void)
char* __fastcall GetDebugText__20GComputerPlayerQueueFv(struct GameThing* this) asm("?GetDebugText@GComputerPlayerQueue@@UAEPADXZ");
// win1.41 00664660 mac 104beaa0 GComputerPlayerQueue::Load(GameOSFile &)
uint32_t __fastcall Load__20GComputerPlayerQueueFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GComputerPlayerQueue@@UAEIAAVGameOSFile@@@Z");
// win1.41 00664530 mac 104bed40 GComputerPlayerQueue::Save(GameOSFile &)
uint32_t __fastcall Save__20GComputerPlayerQueueFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GComputerPlayerQueue@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561c10 mac 104be830 GComputerPlayerQueue::GetSaveType(void)
uint32_t __fastcall GetSaveType__20GComputerPlayerQueueFv(struct GameThing* this) asm("?GetSaveType@GComputerPlayerQueue@@UAEIXZ");

struct GComputerSeen
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct GComputerSeen) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becd20 mac inlined GComputerSeen::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13GComputerSeen asm("??_R0?AVGComputerSeen@@@8");
// win1.41 009ae070 mac inlined GComputerSeen::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13GComputerSeen asm("??_R1A@?0A@A@GComputerSeen@@8");
// win1.41 009ae088 mac inlined GComputerSeen::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13GComputerSeen asm("??_R2GComputerSeen@@8");
// win1.41 009ae098 mac inlined GComputerSeen::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13GComputerSeen asm("??_R3GComputerSeen@@8");

// Override methods

// win1.41 0055e350 mac 104ac030 GComputerSeen::_dt(void)
void __fastcall __dt__13GComputerSeenFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGComputerSeen@@UAEPAXI@Z");
// win1.41 0055e340 mac 104ac100 GComputerSeen::GetDebugText(void)
char* __fastcall GetDebugText__13GComputerSeenFv(struct GameThing* this) asm("?GetDebugText@GComputerSeen@@UAEPADXZ");
// win1.41 00656bf0 mac 104a9840 GComputerSeen::Load(GameOSFile &)
uint32_t __fastcall Load__13GComputerSeenFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GComputerSeen@@UAEIAAVGameOSFile@@@Z");
// win1.41 00656b80 mac 104a9930 GComputerSeen::Save(GameOSFile &)
uint32_t __fastcall Save__13GComputerSeenFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GComputerSeen@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055e330 mac 104ac0c0 GComputerSeen::GetSaveType(void)
uint32_t __fastcall GetSaveType__13GComputerSeenFv(struct GameThing* this) asm("?GetSaveType@GComputerSeen@@UAEIXZ");

struct GComputerSpellCast
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct GComputerSpellCast) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becbd0 mac inlined GComputerSpellCast::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18GComputerSpellCast asm("??_R0?AVGComputerSpellCast@@@8");
// win1.41 009adc78 mac inlined GComputerSpellCast::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18GComputerSpellCast asm("??_R1A@?0A@A@GComputerSpellCast@@8");
// win1.41 009adc90 mac inlined GComputerSpellCast::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18GComputerSpellCast asm("??_R2GComputerSpellCast@@8");
// win1.41 009adca0 mac inlined GComputerSpellCast::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18GComputerSpellCast asm("??_R3GComputerSpellCast@@8");

// Override methods

// win1.41 005614b0 mac 104c1010 GComputerSpellCast::_dt(void)
void __fastcall __dt__18GComputerSpellCastFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGComputerSpellCast@@UAEPAXI@Z");
// win1.41 005614a0 mac 104c0fd0 GComputerSpellCast::GetDebugText(void)
char* __fastcall GetDebugText__18GComputerSpellCastFv(struct GameThing* this) asm("?GetDebugText@GComputerSpellCast@@UAEPADXZ");
// win1.41 00665c00 mac 104c2930 GComputerSpellCast::Load(GameOSFile &)
uint32_t __fastcall Load__18GComputerSpellCastFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GComputerSpellCast@@UAEIAAVGameOSFile@@@Z");
// win1.41 00665b90 mac 104c2a20 GComputerSpellCast::Save(GameOSFile &)
uint32_t __fastcall Save__18GComputerSpellCastFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GComputerSpellCast@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561490 mac 104c0f90 GComputerSpellCast::GetSaveType(void)
uint32_t __fastcall GetSaveType__18GComputerSpellCastFv(struct GameThing* this) asm("?GetSaveType@GComputerSpellCast@@UAEIXZ");

struct PlayerActionState
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct PlayerActionState) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed438 mac inlined PlayerActionState::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17PlayerActionState asm("??_R0?AVPlayerActionState@@@8");
// win1.41 009aebe0 mac inlined PlayerActionState::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17PlayerActionState asm("??_R1A@?0A@A@PlayerActionState@@8");
// win1.41 009aebf8 mac inlined PlayerActionState::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17PlayerActionState asm("??_R2PlayerActionState@@8");
// win1.41 009aec10 mac inlined PlayerActionState::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17PlayerActionState asm("??_R3PlayerActionState@@8");

// Override methods

// win1.41 0055e2a0 mac 1049d580 PlayerActionState::_dt(void)
void __fastcall __dt__17PlayerActionStateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlayerActionState@@UAEPAXI@Z");
// win1.41 00650100 mac 1049be30 PlayerActionState::ToBeDeleted(int)
void __fastcall ToBeDeleted__17PlayerActionStateFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PlayerActionState@@UAEXH@Z");
// win1.41 006508e0 mac 1049aee0 PlayerActionState::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__17PlayerActionStateFv(struct GameThing* this) asm("?GetPlayer@PlayerActionState@@UAEPAVGPlayer@@XZ");
// win1.41 00651a20 mac 10498ce0 PlayerActionState::Load(GameOSFile &)
uint32_t __fastcall Load__17PlayerActionStateFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PlayerActionState@@UAEIAAVGameOSFile@@@Z");
// win1.41 00651740 mac 104993e0 PlayerActionState::Save(GameOSFile &)
uint32_t __fastcall Save__17PlayerActionStateFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PlayerActionState@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055e290 mac 1049d660 PlayerActionState::GetSaveType(void)
uint32_t __fastcall GetSaveType__17PlayerActionStateFv(struct GameThing* this) asm("?GetSaveType@PlayerActionState@@UAEIXZ");
// win1.41 00651d20 mac 10498c00 PlayerActionState::SaveExtraData(GameOSFile &)
void __fastcall SaveExtraData__17PlayerActionStateFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?SaveExtraData@PlayerActionState@@UAEXAAVGameOSFile@@@Z");
// win1.41 0055e280 mac 1049d620 PlayerActionState::GetText(void)
const char* __fastcall GetText__17PlayerActionStateFv(struct GameThingWithPos* this) asm("?GetText@PlayerActionState@@UAEPBDXZ");

struct PlayerSubAction
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct PlayerSubAction) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed418 mac inlined PlayerSubAction::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15PlayerSubAction asm("??_R0?AVPlayerSubAction@@@8");
// win1.41 009aeb90 mac inlined PlayerSubAction::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15PlayerSubAction asm("??_R1A@?0A@A@PlayerSubAction@@8");
// win1.41 009aeba8 mac inlined PlayerSubAction::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15PlayerSubAction asm("??_R2PlayerSubAction@@8");
// win1.41 009aebb8 mac inlined PlayerSubAction::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15PlayerSubAction asm("??_R3PlayerSubAction@@8");

// Override methods

// win1.41 0055e210 mac 1049a870 PlayerSubAction::_dt(void)
void __fastcall __dt__15PlayerSubActionFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlayerSubAction@@UAEPAXI@Z");
// win1.41 00651e70 mac 104985c0 PlayerSubAction::Load(GameOSFile &)
uint32_t __fastcall Load__15PlayerSubActionFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PlayerSubAction@@UAEIAAVGameOSFile@@@Z");
// win1.41 00651d80 mac 10498a40 PlayerSubAction::Save(GameOSFile &)
uint32_t __fastcall Save__15PlayerSubActionFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PlayerSubAction@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055e200 mac 1049d540 PlayerSubAction::GetSaveType(void)
uint32_t __fastcall GetSaveType__15PlayerSubActionFv(struct GameThing* this) asm("?GetSaveType@PlayerSubAction@@UAEIXZ");

struct PlayerSubActionArgument
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct PlayerSubActionArgument) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed3f0 mac inlined PlayerSubActionArgument::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23PlayerSubActionArgument asm("??_R0?AVPlayerSubActionArgument@@@8");
// win1.41 009aeb40 mac inlined PlayerSubActionArgument::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23PlayerSubActionArgument asm("??_R1A@?0A@A@PlayerSubActionArgument@@8");
// win1.41 009aeb58 mac inlined PlayerSubActionArgument::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23PlayerSubActionArgument asm("??_R2PlayerSubActionArgument@@8");
// win1.41 009aeb68 mac inlined PlayerSubActionArgument::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23PlayerSubActionArgument asm("??_R3PlayerSubActionArgument@@8");

// Override methods

// win1.41 0055e1c0 mac 10497ca0 PlayerSubActionArgument::_dt(void)
void __fastcall __dt__23PlayerSubActionArgumentFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlayerSubActionArgument@@UAEPAXI@Z");
// win1.41 00652140 mac 10497ea0 PlayerSubActionArgument::Load(GameOSFile &)
uint32_t __fastcall Load__23PlayerSubActionArgumentFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PlayerSubActionArgument@@UAEIAAVGameOSFile@@@Z");
// win1.41 00651f80 mac 10498220 PlayerSubActionArgument::Save(GameOSFile &)
uint32_t __fastcall Save__23PlayerSubActionArgumentFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PlayerSubActionArgument@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055e1b0 mac 10497c50 PlayerSubActionArgument::GetSaveType(void)
uint32_t __fastcall GetSaveType__23PlayerSubActionArgumentFv(struct GameThing* this) asm("?GetSaveType@PlayerSubActionArgument@@UAEIXZ");

#endif /* BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H */
