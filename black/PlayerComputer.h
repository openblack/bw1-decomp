#ifndef BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H
#define BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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
