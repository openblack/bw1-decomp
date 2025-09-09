#ifndef BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */
#include "BaseInfo.h" /* For struct GBaseInfo */
#include "CreatureMentalDesireSource.h" /* For struct CreatureDesireSource */

// Forward Declares

struct Creature;
struct CreatureInfo;

struct CreatureDesires
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8[0x28];
  float field_0xa8[0x28];
  uint32_t field_0x148[0x28];
  uint32_t field_0x1e8[0x28];
  uint32_t field_0x288[0x28];
  struct LHLinkedList__CreatureDesireSource source_lists[0x28];  /* 0x328 */
  uint32_t field_0x468[0x28];
  uint32_t field_0x508[0x28];
  uint32_t field_0x5a8[0x28];
  struct Creature* creature;  /* 0x648 */
  struct CreatureInfo* creature_info;
  uint32_t field_0x650;
  uint32_t field_0x654;
  uint32_t field_0x658[0x28];
  uint32_t field_0x6f8;
  uint32_t field_0x6fc;
  uint32_t field_0x700;
  uint32_t field_0x704;
};
static_assert(sizeof(struct CreatureDesires) == 0x708, "Data type is of wrong size");

// win1.41 008cff98 mac 1098a9fc CreatureDesires::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15CreatureDesires asm("??_R4CreatureDesires@@6B@");

// win1.41 008cff9c mac 1098aa04 CreatureDesires::`vftable'
extern const struct BaseVftable __vt__15CreatureDesires asm("??_7CreatureDesires@@6B@");

// Constructors

// win1.41 004dbff0 mac 1025b030 CreatureDesires::__ct(Creature *, CreatureInfo const *)
struct CreatureDesires* __fastcall __ct__15CreatureDesiresFP8CreaturePC12CreatureInfo(struct CreatureDesires* this, const void* edx, struct Creature* creature, const struct CreatureInfo* info);

// Override methods

// win1.41 004dc040 mac 1025ad30 CreatureDesires::_dt(void)
void __fastcall __dt__15CreatureDesiresFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDesires@@UAEPAXI@Z");

struct CreatureDesireActionEntry
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDesireActionEntry) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00491980 mac 1022e3c0 CreatureDesireActionEntry::_dt(void)
void __fastcall __dt__25CreatureDesireActionEntryFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDesireActionEntry@@UAEPAXI@Z");
// win1.41 00491910 mac 1022ed30 CreatureDesireActionEntry::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__25CreatureDesireActionEntryFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureDesireActionEntry@@UAEPAVGBaseInfo@@AAI@Z");

struct CreatureDesireAttributeEntry
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDesireAttributeEntry) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00491b70 mac 1022e150 CreatureDesireAttributeEntry::_dt(void)
void __fastcall __dt__28CreatureDesireAttributeEntryFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDesireAttributeEntry@@UAEPAXI@Z");
// win1.41 00491b10 mac 1022edf0 CreatureDesireAttributeEntry::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__28CreatureDesireAttributeEntryFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureDesireAttributeEntry@@UAEPAVGBaseInfo@@AAI@Z");

struct CreatureDesireDependency
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDesireDependency) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004db350 mac 10259590 CreatureDesireDependency::_dt(void)
void __fastcall __dt__24CreatureDesireDependencyFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDesireDependency@@UAEPAXI@Z");
// win1.41 004db2e0 mac 1025c710 CreatureDesireDependency::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__24CreatureDesireDependencyFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureDesireDependency@@UAEPAVGBaseInfo@@AAI@Z");

struct CreatureDesireForType
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDesireForType) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004db420 mac 1025ac00 CreatureDesireForType::_dt(void)
void __fastcall __dt__21CreatureDesireForTypeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDesireForType@@UAEPAXI@Z");
// win1.41 004db3c0 mac 1025c650 CreatureDesireForType::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__21CreatureDesireForTypeFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureDesireForType@@UAEPAVGBaseInfo@@AAI@Z");

struct CreatureDesireSourceTable
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDesireSourceTable) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004dd1f0 mac 1025c960 CreatureDesireSourceTable::_dt(void)
void __fastcall __dt__25CreatureDesireSourceTableFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDesireSourceTable@@UAEPAXI@Z");
// win1.41 004dd180 mac 1025efa0 CreatureDesireSourceTable::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__25CreatureDesireSourceTableFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureDesireSourceTable@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H */
