#ifndef BW1_DECOMP_TOWN_DESIRE_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For TOWN_DESIRE_INFO_LAST, enum TOWN_DESIRE_INFO */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

// Forward Declares

struct GTownDesireInfo;
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

// Object Oriented datastructures

// win1.41 00c22d68 mac inlined TownDesire::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10TownDesire asm("??_R0?AVTownDesire@@@8");
// win1.41 009b9c28 mac inlined TownDesire::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10TownDesire asm("??_R1A@?0A@A@TownDesire@@8");
// win1.41 009b9c40 mac inlined TownDesire::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10TownDesire asm("??_R2TownDesire@@8");
// win1.41 009b9c50 mac inlined TownDesire::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10TownDesire asm("??_R3TownDesire@@8");
// win1.41 0099a0c4 mac 109e5838 TownDesire::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10TownDesire asm("??_R4TownDesire@@6B@");
// win1.41 0099a0c8 mac 109e5840 TownDesire::`vftable'
extern const struct BaseVftable __vt__10TownDesire asm("??_7TownDesire@@6B@");

// Constructors

// win1.41 00745710 mac 1055ead0 TownDesire::TownDesire(void)
struct TownDesire* __fastcall __ct__10TownDesireFv(struct TownDesire* this) asm("??0TownDesire@@QAE@XZ");

// Non-virtual methods

// win1.41 00745ae0 mac 1005c8d0 TownDesire::Process(void)
void __fastcall Process__10TownDesireFv(struct TownDesire* this) asm("?Process@TownDesire@@QAEXXZ");
// win1.41 00745f80 mac 1005d280 TownDesire::GetInfo(unsigned long) const
struct GTownDesireInfo* __fastcall GetInfo__10TownDesireCFUl(const struct TownDesire* this, const void* edx, unsigned long param_1) asm("?GetInfo@TownDesire@@QBEPAVGTownDesireInfo@@K@Z");

// Override methods

// win1.41 00745730 mac 1055ea40 TownDesire::_dt(void)
void __fastcall __dt__10TownDesireFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTownDesire@@UAEPAXI@Z");

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
