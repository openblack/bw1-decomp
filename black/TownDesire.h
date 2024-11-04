#ifndef BW1_DECOMP_TOWN_DESIRE_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For TOWN_DESIRE_INFO_LAST, enum TOWN_DESIRE_INFO */

#include "Base.h" /* For struct Base */

// Forward Declares

struct Town;
struct Villager;

struct DesireSort
{
  uint32_t field_0x0;
  float field_0x4;
  enum TOWN_DESIRE_INFO field_0x8;
};
static_assert(sizeof(struct DesireSort) == 0xc, "Data type is of wrong size");

struct TownDesire__field_0x8
{
  uint8_t field_0x0[0x8];
};
static_assert(sizeof(struct TownDesire__field_0x8) == 0x8, "Data type is of wrong size");

struct TownDesire
{
  struct Base super;  /* 0x0 */
  struct TownDesire__field_0x8 field_0x8[TOWN_DESIRE_INFO_LAST];
  float field_0x90[TOWN_DESIRE_INFO_LAST];
  float field_0xd4[TOWN_DESIRE_INFO_LAST];
  float field_0x118[TOWN_DESIRE_INFO_LAST];
  uint32_t field_0x15fc;  /* 0x15c */
  struct Town* town;  /* 0x160 */
  float field_0x164;
  float field_0x168[TOWN_DESIRE_INFO_LAST];
  uint32_t field_0x1ac[TOWN_DESIRE_INFO_LAST];
  uint32_t field_0x1f0[TOWN_DESIRE_INFO_LAST];
  uint32_t field_0x234[TOWN_DESIRE_INFO_LAST];
  struct DesireSort sorts[TOWN_DESIRE_INFO_LAST];  /* 0x278 */
  struct DesireSort sorts2[TOWN_DESIRE_INFO_LAST];  /* 0x344 */
  uint32_t field_0x410[TOWN_DESIRE_INFO_LAST];
  float field_0x454[TOWN_DESIRE_INFO_LAST];
  uint32_t field_0x498[TOWN_DESIRE_INFO_LAST];
  float field_0x4dc[TOWN_DESIRE_INFO_LAST];
  uint32_t field_0x520[TOWN_DESIRE_INFO_LAST];
};
static_assert(sizeof(struct TownDesire) == 0x564, "Data type is of wrong size");

static struct BaseVftable* const __vt__10TownDesire = (struct BaseVftable* const)0x0099a0c8;

// Constructors

// win1.41 00745710 mac 1055ead0 TownDesire::TownDesire(void)
struct TownDesire* __fastcall __ct__10TownDesireFv(struct TownDesire* this);

// Non-virtual methods

// win1.41 00745ae0 mac 1005c8d0 TownDesire::Process(void)
void __fastcall Process__10TownDesireFv(struct TownDesire* this);

struct GTownDesireFunction
{
  const char* name;  /* 0x0 */
  uint32_t field_0x4;
  uint32_t field_0x8;
  uint32_t field_0xc;
  float (__fastcall* CalculateDesire)(struct Town* this);  /* 0x10 */
  uint32_t field_0x14;
  uint32_t field_0x18;
  int field_0x1c;
  int (__fastcall* CalculateActualNumber)(struct Town* this);  /* 0x20 */
  uint32_t field_0x24;
  uint32_t field_0x28;
  int field_0x2c;
  int (__fastcall* CalculateDesiredNumber)(struct Town* this);  /* 0x30 */
  uint32_t field_0x34;
  uint32_t field_0x38;
  int field_0x3c;
  bool (__fastcall* CheckSatisfyDesire)(struct Villager* this);  /* 0x40 */
  uint32_t field_0x44;
  uint32_t field_0x48;
  int field_0x4c;
  float (__fastcall* GetDesireVillagerModification)(struct Town* this);  /* 0x50 */
  uint32_t field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
  int field_0x60;
  uint32_t field_0x64;
};
static_assert(sizeof(struct GTownDesireFunction) == 0x68, "Data type is of wrong size");

#endif /* BW1_DECOMP_TOWN_DESIRE_INCLUDED_H */
