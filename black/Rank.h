#ifndef BW1_DECOMP_RANK_INCLUDED_H
#define BW1_DECOMP_RANK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct Rank
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct Rank) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09c68 mac inlined Rank::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Rank asm("??_R0?AVRank@@@8");
// win1.41 009b8bf8 mac inlined Rank::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Rank asm("??_R1A@?0A@A@Rank@@8");
// win1.41 009b8c10 mac inlined Rank::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Rank asm("??_R2Rank@@8");
// win1.41 009b8c20 mac inlined Rank::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Rank asm("??_R3Rank@@8");

// Override methods

// win1.41 006e0b80 mac inlined Rank::_dt(void)
void __fastcall __dt__4RankFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRank@@UAEPAXI@Z");

#endif /* BW1_DECOMP_RANK_INCLUDED_H */
