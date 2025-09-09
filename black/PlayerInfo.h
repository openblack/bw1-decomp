#ifndef BW1_DECOMP_PLAYER_INFO_INCLUDED_H
#define BW1_DECOMP_PLAYER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;
struct CPDesireNodeInfo;

enum PLAYER_TYPE
{
  PLAYER_TYPE_0 = 0x0,
  _PLAYER_TYPE_COUNT = 0x1
};
static_assert(sizeof(enum PLAYER_TYPE) == 0x4, "Data type is of wrong size");

static const char* PLAYER_TYPE_strs[_PLAYER_TYPE_COUNT] = {
  "PLAYER_TYPE_0",
};

struct CPDesireNodeInfoVftable
{
  int (__fastcall* GetNumChildren)(struct CPDesireNodeInfo* this);  /* 0x0 */
};
static_assert(sizeof(struct CPDesireNodeInfoVftable) == 0x4, "Data type is of wrong size");

struct CPDesireNodeInfo
{
  struct CPDesireNodeInfoVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct CPDesireNodeInfo) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00655b70 mac 104ab970 CPDesireNodeInfo::GetNumChildren(void)
int __fastcall GetNumChildren__16CPDesireNodeInfoFv(struct CPDesireNodeInfo* this) asm("?GetNumChildren@CPDesireNodeInfo@@UAEHXZ");

struct GPlayerInfo
{
  struct GBaseInfo super;  /* 0x0 */
  float field_0x10;
  float field_0x14;
  float field_0x18;
  float field_0x1c;
  uint32_t field_0x20;
  float field_0x24;
  float field_0x28;
  float field_0x2c;
  float field_0x30;
  float field_0x34;
  float field_0x38;
  float field_0x3c;
  float field_0x40;
  uint32_t field_0x44;
  float field_0x48;
  float field_0x4c;
  uint8_t field_0x50[0x40];
};
static_assert(sizeof(struct GPlayerInfo) == 0x90, "Data type is of wrong size");

// win1.41 008df72c mac 10730be8 GPlayerInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__11GPlayerInfo asm("??_R4GPlayerInfo@@6B@");

// win1.41 008df730 mac 10730bf0 GPlayerInfo::`vftable'
extern const struct GBaseInfoVftable __vt__11GPlayerInfo asm("??_7GPlayerInfo@@6B@");

// Override methods

// win1.41 0054be50 mac 104e7bd0 GPlayerInfo::_dt(void)
void __fastcall __dt__11GPlayerInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPlayerInfo@@UAEPAXI@Z");
// win1.41 0054b830 mac 1058eb00 GPlayerInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__11GPlayerInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPlayerInfo@@UAEPAVGBaseInfo@@AAI@Z");

struct PlayerInfo
{
  uint8_t field_0x0[0x8];
};
static_assert(sizeof(struct PlayerInfo) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 00648d50 mac 10375150 PlayerInfo::PlayerInfo(void)
void __fastcall __ct__10PlayerInfoFv(struct PlayerInfo* this);

#endif /* BW1_DECOMP_PLAYER_INFO_INCLUDED_H */
