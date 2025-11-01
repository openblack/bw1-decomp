#ifndef BW1_DECOMP_TOWN_STATS_INCLUDED_H
#define BW1_DECOMP_TOWN_STATS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For VILLAGER_DISCIPLE_LAST, enum VILLAGER_DISCIPLE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

// Forward Declares

struct BaseVftable;
struct BuildingSite;
struct PlannedMultiMapFixed;
struct Villager;

struct TownStats
{
  struct Base super;  /* 0x0 */
  int num_adults;
  int num_children;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  int field_0x44;
  int field_0x48;
  uint32_t field_0x4c;
  uint32_t field_0x50;
  uint32_t field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c[0x8];
  uint32_t field_0x7c[0xa];
  uint32_t field_0xa4[0x9];
  uint8_t num_disciples[VILLAGER_DISCIPLE_LAST];  /* 0xc8 */
  uint32_t field_0xd8;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
  uint32_t field_0xe4;
  uint32_t field_0xe8;
  float wood_used;
  float field_0xf0;
  float field_0xf4;
  float total_food;
  float total_wood;
  uint32_t field_0x100;
  uint32_t field_0x104;
  uint32_t field_0x108;
  struct BaseVftable* field_0x10c;
  uint32_t field_0x110;
  uint32_t field_0x114;
};
static_assert(sizeof(struct TownStats) == 0x118, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22ba0 mac inlined TownStats::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9TownStats asm("??_R0?AVTownStats@@@8");
// win1.41 009b9a40 mac inlined TownStats::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9TownStats asm("??_R1A@?0A@A@TownStats@@8");
// win1.41 009b9a58 mac inlined TownStats::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9TownStats asm("??_R2TownStats@@8");
// win1.41 009b9a68 mac inlined TownStats::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9TownStats asm("??_R3TownStats@@8");
// win1.41 0099a008 mac 109e3664 TownStats::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9TownStats asm("??_R4TownStats@@6B@");
// win1.41 0099a00c mac 109e366c TownStats::`vftable'
extern const struct BaseVftable __vt__9TownStats asm("??_7TownStats@@6B@");

// Non-virtual methods

// win1.41 007493c0 mac 10562b60 TownStats::Remove(Villager *)
void __fastcall Remove__9TownStatsFP8Villager(struct TownStats* this, const void* edx, struct Villager* villager) asm("?Remove@TownStats@@QAEXPAVVillager@@@Z");
// win1.41 00749490 mac 10562ac0 TownStats::ChildToAdult(Villager *)
void __fastcall ChildToAdult__9TownStatsFP8Villager(struct TownStats* this, const void* edx, struct Villager* param_1) asm("?ChildToAdult@TownStats@@QAEXPAVVillager@@@Z");
// win1.41 007494c0 mac 10562a10 TownStats::VillagerMoveOutOfAbode(Villager *)
void __fastcall VillagerMoveOutOfAbode__9TownStatsFP8Villager(struct TownStats* this, const void* edx, struct Villager* villager) asm("?VillagerMoveOutOfAbode@TownStats@@QAEXPAVVillager@@@Z");
// win1.41 00749a60 mac 10562330 TownStats::Add(PlannedMultiMapFixed *)
void __fastcall Add__9TownStatsFP20PlannedMultiMapFixed(struct TownStats* this, const void* edx, struct PlannedMultiMapFixed* planned) asm("?Add@TownStats@@QAEXPAVPlannedMultiMapFixed@@@Z");
// win1.41 00749aa0 mac 10562220 TownStats::Add(BuildingSite *)
void __fastcall Add__9TownStatsFP12BuildingSite(struct TownStats* this, const void* edx, struct BuildingSite* param_1) asm("?Add@TownStats@@QAEXPAVBuildingSite@@@Z");
// win1.41 00749c60 mac 10561dd0 TownStats::IncrementNumOfDisciples(VILLAGER_DISCIPLE)
void __fastcall IncrementNumOfDisciples__9TownStatsF17VILLAGER_DISCIPLE(struct TownStats* this, const void* edx, enum VILLAGER_DISCIPLE param_1) asm("?IncrementNumOfDisciples@TownStats@@QAEXW4VILLAGER_DISCIPLE@@@Z");
// win1.41 00749c80 mac 10561d60 TownStats::DecrementNumOfDisciples(VILLAGER_DISCIPLE)
void __fastcall DecrementNumOfDisciples__9TownStatsF17VILLAGER_DISCIPLE(struct TownStats* this, const void* edx, enum VILLAGER_DISCIPLE param_1) asm("?DecrementNumOfDisciples@TownStats@@QAEXW4VILLAGER_DISCIPLE@@@Z");

// Override methods

// win1.41 007391a0 mac 10558800 TownStats::_dt(void)
void __fastcall __dt__9TownStatsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTownStats@@UAEPAXI@Z");

#endif /* BW1_DECOMP_TOWN_STATS_INCLUDED_H */
