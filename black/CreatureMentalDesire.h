#ifndef BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00bdf508 mac inlined CreatureDesires::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15CreatureDesires asm("??_R0?AVCreatureDesires@@@8");
// win1.41 009aac20 mac inlined CreatureDesires::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15CreatureDesires asm("??_R1A@?0A@A@CreatureDesires@@8");
// win1.41 009aac38 mac inlined CreatureDesires::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15CreatureDesires asm("??_R2CreatureDesires@@8");
// win1.41 009aac48 mac inlined CreatureDesires::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15CreatureDesires asm("??_R3CreatureDesires@@8");
// win1.41 008cff98 mac 1098a9fc CreatureDesires::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15CreatureDesires asm("??_R4CreatureDesires@@6B@");
// win1.41 008cff9c mac 1098aa04 CreatureDesires::`vftable'
extern const struct BaseVftable __vt__15CreatureDesires asm("??_7CreatureDesires@@6B@");

// Constructors

// win1.41 004dbff0 mac 1025b030 CreatureDesires::__ct(Creature *, CreatureInfo const *)
struct CreatureDesires* __fastcall __ct__15CreatureDesiresFP8CreaturePC12CreatureInfo(struct CreatureDesires* this, const void* edx, struct Creature* creature, const struct CreatureInfo* info) asm("??0CreatureDesires@@QAE@PAVCreature@@PBVCreatureInfo@@@Z");

// Override methods

// win1.41 004dc040 mac 1025ad30 CreatureDesires::_dt(void)
void __fastcall __dt__15CreatureDesiresFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDesires@@UAEPAXI@Z");

struct CreatureDesireActionEntry
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDesireActionEntry) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009d7d68 mac inlined CreatureDesireActionEntry::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25CreatureDesireActionEntry asm("??_R0?AVCreatureDesireActionEntry@@@8");
// win1.41 009a9a00 mac inlined CreatureDesireActionEntry::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25CreatureDesireActionEntry asm("??_R1A@?0A@A@CreatureDesireActionEntry@@8");
// win1.41 009a9a18 mac inlined CreatureDesireActionEntry::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25CreatureDesireActionEntry asm("??_R2CreatureDesireActionEntry@@8");
// win1.41 009a9a28 mac inlined CreatureDesireActionEntry::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25CreatureDesireActionEntry asm("??_R3CreatureDesireActionEntry@@8");

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

// Object Oriented datastructures

// win1.41 009d7d90 mac inlined CreatureDesireAttributeEntry::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__28CreatureDesireAttributeEntry asm("??_R0?AVCreatureDesireAttributeEntry@@@8");
// win1.41 009a9a50 mac inlined CreatureDesireAttributeEntry::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__28CreatureDesireAttributeEntry asm("??_R1A@?0A@A@CreatureDesireAttributeEntry@@8");
// win1.41 009a9a68 mac inlined CreatureDesireAttributeEntry::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__28CreatureDesireAttributeEntry asm("??_R2CreatureDesireAttributeEntry@@8");
// win1.41 009a9a78 mac inlined CreatureDesireAttributeEntry::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__28CreatureDesireAttributeEntry asm("??_R3CreatureDesireAttributeEntry@@8");

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

// Object Oriented datastructures

// win1.41 00bdf458 mac inlined CreatureDesireDependency::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24CreatureDesireDependency asm("??_R0?AVCreatureDesireDependency@@@8");
// win1.41 009aaae0 mac inlined CreatureDesireDependency::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24CreatureDesireDependency asm("??_R1A@?0A@A@CreatureDesireDependency@@8");
// win1.41 009aaaf8 mac inlined CreatureDesireDependency::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24CreatureDesireDependency asm("??_R2CreatureDesireDependency@@8");
// win1.41 009aab08 mac inlined CreatureDesireDependency::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24CreatureDesireDependency asm("??_R3CreatureDesireDependency@@8");

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

// Object Oriented datastructures

// win1.41 00bdf480 mac inlined CreatureDesireForType::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21CreatureDesireForType asm("??_R0?AVCreatureDesireForType@@@8");
// win1.41 009aab30 mac inlined CreatureDesireForType::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21CreatureDesireForType asm("??_R1A@?0A@A@CreatureDesireForType@@8");
// win1.41 009aab48 mac inlined CreatureDesireForType::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21CreatureDesireForType asm("??_R2CreatureDesireForType@@8");
// win1.41 009aab58 mac inlined CreatureDesireForType::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21CreatureDesireForType asm("??_R3CreatureDesireForType@@8");

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

// Object Oriented datastructures

// win1.41 00bdf560 mac inlined CreatureDesireSourceTable::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25CreatureDesireSourceTable asm("??_R0?AVCreatureDesireSourceTable@@@8");
// win1.41 009aac70 mac inlined CreatureDesireSourceTable::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25CreatureDesireSourceTable asm("??_R1A@?0A@A@CreatureDesireSourceTable@@8");
// win1.41 009aac88 mac inlined CreatureDesireSourceTable::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25CreatureDesireSourceTable asm("??_R2CreatureDesireSourceTable@@8");
// win1.41 009aac98 mac inlined CreatureDesireSourceTable::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25CreatureDesireSourceTable asm("??_R3CreatureDesireSourceTable@@8");

// Override methods

// win1.41 004dd1f0 mac 1025c960 CreatureDesireSourceTable::_dt(void)
void __fastcall __dt__25CreatureDesireSourceTableFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDesireSourceTable@@UAEPAXI@Z");
// win1.41 004dd180 mac 1025efa0 CreatureDesireSourceTable::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__25CreatureDesireSourceTableFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureDesireSourceTable@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H */
