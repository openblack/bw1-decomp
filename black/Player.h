#ifndef BW1_DECOMP_PLAYER_INCLUDED_H
#define BW1_DECOMP_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */
#include <uchar.h> /* For char16_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "GameThing.h" /* For struct GameThing */
#include "PlayerInfo.h" /* For enum PLAYER_TYPE */
#include "Town.h" /* For struct Town */

// Forward Declares

struct Citadel;
struct Creature;
struct GAlignment;
struct GInterface;
struct GameStats;

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

static struct GameThingVftable* __vt__7GPlayer = (struct GameThingVftable*)0x00932be8;

// Static methods

// win1.41 00649a20 mac 100620c0 GPlayer::ProcessPlayers(void)
void __cdecl ProcessPlayers__7GPlayerFv(void);
// win1.41 0064ab90 mac 10495bf0 GPlayer::PostLoadCleanup(void)
void __cdecl PostLoadCleanup__7GPlayerFv(void);
// win1.41 0064b5e0 mac 10494e00 GPlayer::GetPlayerFromText(char *)
struct GPlayer* __cdecl GetPlayerFromText__7GPlayerFPc(const char* str);

// Non-virtual methods

// win1.41 00649190 mac 10497020 GPlayer::Init(PLAYER_TYPE, unsigned char, wchar_t *, unsigned char)
void __fastcall Init__7GPlayerF11PLAYER_TYPEUcPwUc(struct GPlayer* this, const void* edx, enum PLAYER_TYPE type, uint8_t player_number, char16_t* param_3, unsigned char param_4);
// win1.41 006494e0 mac 10036020 GPlayer::Process(void)
void __fastcall Process__7GPlayerFv(struct GPlayer* this);
// win1.41 0064a6b0 mac 104965e0 GPlayer::Birthday(void)
void __fastcall Birthday__7GPlayerFv(struct GPlayer* this);
// win1.41 0064a790 mac 1005c3d0 GPlayer::GetPlayerNumber(void) const
uint8_t __fastcall GetPlayerNumber__7GPlayerCFv(const struct GPlayer* this);
// win1.41 0064ac00 mac 100306d0 GPlayer::IsNeutral(void)
bool __fastcall IsNeutral__7GPlayerFv(const struct GPlayer* this);
// win1.41 0064ad00 mac 1004d120 GPlayer::CalculateInfluencePower(void)
float __fastcall CalculateInfluencePower__7GPlayerFv(struct GPlayer* this);
// win1.41 0064b590 mac 10494ee0 GPlayer::GetPlayer3DColor(void)
struct LH3DColor* __fastcall GetPlayer3DColor__7GPlayerFv(struct GPlayer* this, const void* edx, struct LH3DColor* color);
// win1.41 0064c220 mac 10492490 GPlayer::IsMagicTypeEnabled(MAGIC_TYPE)
bool32_t __fastcall IsMagicTypeEnabled__7GPlayerF10MAGIC_TYPE(struct GPlayer* this, const void* edx, enum MAGIC_TYPE type);
// win1.41 0064d120 mac 10051520 GPlayer::GetRealInterface(unsigned long)
struct GInterface* __fastcall GetRealInterface__7GPlayerFUl(struct GPlayer* this, const void* edx, int param_2);
// win1.41 0064d800 mac 10021970 GPlayer::GetPlayerColour(void) const
struct LH3DColor __fastcall GetPlayerColour__7GPlayerCFv(struct GPlayer* this);

DECLARE_LH_LIST_HEAD(GPlayer);

// win1.41 0064d790 mac 100218a0 GetRemapedPlayer(unsigned long)
int __cdecl GetRemapedPlayer__FUl(int index);

#endif /* BW1_DECOMP_PLAYER_INCLUDED_H */
