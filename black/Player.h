#ifndef BW1_DECOMP_PLAYER_INCLUDED_H
#define BW1_DECOMP_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */
#include <uchar.h> /* For char16_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */
#include "PlayerInfo.h" /* For enum PLAYER_TYPE */
#include "Town.h" /* For struct Town */

// Forward Declares

struct Base;
struct Citadel;
struct Creature;
struct GAlignment;
struct GInterface;
struct GInterfaceStatus;
struct GameStats;
struct PSysProcessInfo;
struct Spell;

enum PLAYER_NAME
{
  PLAYER_NAME_PLAYER_ONE = 0x0,
  PLAYER_NAME_PLAYER_TWO = 0x1,
  PLAYER_NAME_PLAYER_THREE = 0x2,
  PLAYER_NAME_PLAYER_FOUR = 0x3,
  PLAYER_NAME_PLAYER_FIVE = 0x4,
  PLAYER_NAME_PLAYER_SIX = 0x5,
  PLAYER_NAME_PLAYER_SEVEN = 0x6,
  PLAYER_NAME_NEUTRAL = 0x7,
  _PLAYER_NAME_COUNT = 0x8
};
static_assert(sizeof(enum PLAYER_NAME) == 0x4, "Data type is of wrong size");

static const char* PLAYER_NAME_strs[_PLAYER_NAME_COUNT] = {
  "PLAYER_NAME_PLAYER_ONE",
  "PLAYER_NAME_PLAYER_TWO",
  "PLAYER_NAME_PLAYER_THREE",
  "PLAYER_NAME_PLAYER_FOUR",
  "PLAYER_NAME_PLAYER_FIVE",
  "PLAYER_NAME_PLAYER_SIX",
  "PLAYER_NAME_PLAYER_SEVEN",
  "PLAYER_NAME_NEUTRAL",
};

struct GPlayer
{
  struct GameThing super;  /* 0x0 */
  struct GInterface* interfaces[0x1];  /* 0x14 */
  int field_0x18;
  uint8_t field_0x1c[0x44];
  struct GAlignment* alignment;  /* 0x60 */
  uint32_t field_0x64;
  float field_0x68;
  float field_0x6c;
  float field_0x70;
  float field_0x74;
  float field_0x78;
  float field_0x7c;
  float field_0x80;
  float field_0x84;
  float field_0x88;
  float field_0x8c;
  float field_0x90;
  uint8_t field_0x94[0x20];
  uint8_t field_0xb4;
  uint8_t player_number;
  uint8_t field_0xb6;
  uint8_t field_0xb7;
  float field_0xb8;
  float field_0xbc;
  float field_0xc0;
  float field_0xc4;
  float field_0xc8;
  float field_0xcc;
  float field_0xd0;
  float field_0xd4;
  float field_0xd8;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
  uint32_t field_0xe4;
  uint32_t field_0xe8;
  uint32_t field_0xec;
  uint8_t field_0xf0[0x7f0];
  enum PLAYER_TYPE type;  /* 0x8e0 */
  char16_t name[0x1e];
  uint32_t field_0x920;
  uint32_t field_0x924;
  uint32_t field_0x928;
  int field_0x92c;
  uint8_t field_0x930[0x14];
  uintptr_t field_0x944;
  uint8_t field_0x948[0x28];
  int magic_remainder[0x2a];  /* 0x970 */
  bool magic_enabled[0x2a];  /* 0xa18 */
  struct GameStats* game_stats;  /* 0xa44 */
  struct Citadel* citadel;
  struct Creature* creature;
  struct LHListHead__Town towns;  /* 0xa50 */
  uint32_t field_0xa58;
  uint32_t field_0xa5c;
};
static_assert(sizeof(struct GPlayer) == 0xa60, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bff140 mac inlined GPlayer::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7GPlayer asm("??_R0?AVGPlayer@@@8");
// win1.41 009b3210 mac inlined GPlayer::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7GPlayer asm("??_R1A@?0A@A@GPlayer@@8");
// win1.41 009b3228 mac inlined GPlayer::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7GPlayer asm("??_R2GPlayer@@8");
// win1.41 009b3238 mac inlined GPlayer::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7GPlayer asm("??_R3GPlayer@@8");
// win1.41 00932be4 mac 109bdcf4 GPlayer::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__7GPlayer asm("??_R4GPlayer@@6B@");
// win1.41 00932be8 mac 109bdcfc GPlayer::`vftable'
extern const struct GameThingVftable __vt__7GPlayer asm("??_7GPlayer@@6B@");

// Static methods

// win1.41 00649a20 mac 100620c0 GPlayer::ProcessPlayers(void)
void __cdecl ProcessPlayers__7GPlayerFv(void) asm("?ProcessPlayers@GPlayer@@SAXXZ");
// win1.41 0064ab90 mac 10495bf0 GPlayer::PostLoadCleanup(void)
void __cdecl PostLoadCleanup__7GPlayerFv(void) asm("?PostLoadCleanup@GPlayer@@SAXXZ");
// win1.41 0064b5e0 mac 10494e00 GPlayer::GetPlayerFromText(char *)
struct GPlayer* __cdecl GetPlayerFromText__7GPlayerFPc(const char* str) asm("?GetPlayerFromText@GPlayer@@SAPAV1@PAD@Z");

// Non-virtual methods

// win1.41 00649190 mac 10497020 GPlayer::Init(PLAYER_TYPE, unsigned char, wchar_t *, unsigned char)
void __fastcall Init__7GPlayerF11PLAYER_TYPEUcPwUc(struct GPlayer* this, const void* edx, enum PLAYER_TYPE type, uint8_t player_number, char16_t* param_3, unsigned char param_4) asm("?Init@GPlayer@@QAEXW4PLAYER_TYPE@@EPA_WE@Z");
// win1.41 006494e0 mac 10036020 GPlayer::Process(void)
void __fastcall Process__7GPlayerFv(struct GPlayer* this) asm("?Process@GPlayer@@QAEXXZ");
// win1.41 0064a6b0 mac 104965e0 GPlayer::Birthday(void)
void __fastcall Birthday__7GPlayerFv(struct GPlayer* this) asm("?Birthday@GPlayer@@QAEXXZ");
// win1.41 0064a790 mac 1005c3d0 GPlayer::GetPlayerNumber(void) const
uint8_t __fastcall GetPlayerNumber__7GPlayerCFv(const struct GPlayer* this) asm("?GetPlayerNumber@GPlayer@@QBEEXZ");
// win1.41 0064aac0 mac 10035b60 GPlayer::GetNextInterfaceStatus(GInterfaceStatus *)
struct GInterfaceStatus* __fastcall GetNextInterfaceStatus__7GPlayerFP16GInterfaceStatus(struct GPlayer* this, const void* edx, struct GInterfaceStatus* param_1) asm("?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z");
// win1.41 0064ac00 mac 100306d0 GPlayer::IsNeutral(void)
bool __fastcall IsNeutral__7GPlayerFv(const struct GPlayer* this) asm("?IsNeutral@GPlayer@@QAE_NXZ");
// win1.41 0064ad00 mac 1004d120 GPlayer::CalculateInfluencePower(void)
float __fastcall CalculateInfluencePower__7GPlayerFv(struct GPlayer* this) asm("?CalculateInfluencePower@GPlayer@@QAEMXZ");
// win1.41 0064b590 mac 10494ee0 GPlayer::GetPlayer3DColor(void)
struct LH3DColor* __fastcall GetPlayer3DColor__7GPlayerFv(struct GPlayer* this, const void* edx, struct LH3DColor* color) asm("?GetPlayer3DColor@GPlayer@@QAEPAULH3DColor@@XZ");
// win1.41 0064c220 mac 10492490 GPlayer::IsMagicTypeEnabled(MAGIC_TYPE)
bool32_t __fastcall IsMagicTypeEnabled__7GPlayerF10MAGIC_TYPE(struct GPlayer* this, const void* edx, enum MAGIC_TYPE type) asm("?IsMagicTypeEnabled@GPlayer@@QAEIW4MAGIC_TYPE@@@Z");
// win1.41 0064d120 mac 10051520 GPlayer::GetRealInterface(unsigned long)
struct GInterface* __fastcall GetRealInterface__7GPlayerFUl(struct GPlayer* this, const void* edx, int param_2) asm("?GetRealInterface@GPlayer@@QAEPAVGInterface@@K@Z");
// win1.41 0064d750 mac 10033320 GPlayer::IsMemberOfThisPlayer(GInterfaceStatus *)
bool __fastcall IsMemberOfThisPlayer__7GPlayerFP16GInterfaceStatus(struct GPlayer* this, const void* edx, struct GInterfaceStatus* param_1) asm("?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0064d800 mac 10021970 GPlayer::GetPlayerColour(void) const
struct LH3DColor __fastcall GetPlayerColour__7GPlayerCFv(struct GPlayer* this) asm("?GetPlayerColour@GPlayer@@QBE?AULH3DColor@@XZ");

// Override methods

// win1.41 00648eb0 mac 10497380 GPlayer::_dt(void)
void __fastcall __dt__7GPlayerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPlayer@@UAEPAXI@Z");
// win1.41 006490b0 mac 10497310 GPlayer::ToBeDeleted(int)
void __fastcall ToBeDeleted__7GPlayerFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GPlayer@@UAEXH@Z");
// win1.41 0064a6d0 mac 10496550 GPlayer::Dump(void)
void __fastcall Dump__7GPlayerFv(struct Base* this) asm("?Dump@GPlayer@@UAEXXZ");
// win1.41 00648e70 mac 1048ea90 GPlayer::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__7GPlayerFv(struct GameThing* this) asm("?GetPlayer@GPlayer@@UAEPAVGPlayer@@XZ");
// win1.41 0064b670 mac 1002b8e0 GPlayer::GetMaxAlignmentChangePerGameTurn(void)
float __fastcall GetMaxAlignmentChangePerGameTurn__7GPlayerFv(struct GameThing* this) asm("?GetMaxAlignmentChangePerGameTurn@GPlayer@@UAEMXZ");
// win1.41 0064c430 mac inlined GPlayer::MaintainSpell(unsigned int, float)
void __fastcall MaintainSpell__7GPlayerFUif(struct GameThing* this, const void* edx, uint32_t param_1, float param_2) asm("?MaintainSpell@GPlayer@@UAEXIM@Z");
// win1.41 0064c470 mac 10491f30 GPlayer::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void __fastcall UpdateSpellInfo__7GPlayerFP5SpellP15PSysProcessInfo(struct GameThing* this, const void* edx, struct Spell* param_1, struct PSysProcessInfo* param_2) asm("?UpdateSpellInfo@GPlayer@@UAEXPAVSpell@@PAUPSysProcessInfo@@@Z");
// win1.41 00648e80 mac 1048eac0 GPlayer::CastPlayer(void)
struct GPlayer* __fastcall CastPlayer__7GPlayerFv(struct GameThing* this) asm("?CastPlayer@GPlayer@@UAEPAVGPlayer@@XZ");

DECLARE_LH_LIST_HEAD(GPlayer);

// win1.41 0064d790 mac 100218a0 GetRemapedPlayer(unsigned long)
int __cdecl GetRemapedPlayer__FUl(int index);

#endif /* BW1_DECOMP_PLAYER_INCLUDED_H */
