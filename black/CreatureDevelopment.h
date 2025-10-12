#ifndef BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H
#define BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct CreatureDevelopmentDurationEntry
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDevelopmentDurationEntry) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf4d8 mac inlined CreatureDevelopmentDurationEntry::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__32CreatureDevelopmentDurationEntry asm("??_R0?AVCreatureDevelopmentDurationEntry@@@8");
// win1.41 009aabd0 mac inlined CreatureDevelopmentDurationEntry::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__32CreatureDevelopmentDurationEntry asm("??_R1A@?0A@A@CreatureDevelopmentDurationEntry@@8");
// win1.41 009aabe8 mac inlined CreatureDevelopmentDurationEntry::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__32CreatureDevelopmentDurationEntry asm("??_R2CreatureDevelopmentDurationEntry@@8");
// win1.41 009aabf8 mac inlined CreatureDevelopmentDurationEntry::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__32CreatureDevelopmentDurationEntry asm("??_R3CreatureDevelopmentDurationEntry@@8");

// Override methods

// win1.41 004db5c0 mac 1025bfd0 CreatureDevelopmentDurationEntry::_dt(void)
void __fastcall __dt__32CreatureDevelopmentDurationEntryFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDevelopmentDurationEntry@@UAEPAXI@Z");
// win1.41 004db560 mac 1025c590 CreatureDevelopmentDurationEntry::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__32CreatureDevelopmentDurationEntryFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureDevelopmentDurationEntry@@UAEPAVGBaseInfo@@AAI@Z");

struct CreatureDevelopmentPhaseEntry
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureDevelopmentPhaseEntry) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf4a8 mac inlined CreatureDevelopmentPhaseEntry::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__29CreatureDevelopmentPhaseEntry asm("??_R0?AVCreatureDevelopmentPhaseEntry@@@8");
// win1.41 009aab80 mac inlined CreatureDevelopmentPhaseEntry::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__29CreatureDevelopmentPhaseEntry asm("??_R1A@?0A@A@CreatureDevelopmentPhaseEntry@@8");
// win1.41 009aab98 mac inlined CreatureDevelopmentPhaseEntry::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__29CreatureDevelopmentPhaseEntry asm("??_R2CreatureDevelopmentPhaseEntry@@8");
// win1.41 009aaba8 mac inlined CreatureDevelopmentPhaseEntry::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__29CreatureDevelopmentPhaseEntry asm("??_R3CreatureDevelopmentPhaseEntry@@8");

// Override methods

// win1.41 004db4f0 mac 1025c220 CreatureDevelopmentPhaseEntry::_dt(void)
void __fastcall __dt__29CreatureDevelopmentPhaseEntryFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureDevelopmentPhaseEntry@@UAEPAXI@Z");
// win1.41 004db480 mac 1025c4d0 CreatureDevelopmentPhaseEntry::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__29CreatureDevelopmentPhaseEntryFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureDevelopmentPhaseEntry@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H */
