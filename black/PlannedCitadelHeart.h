#ifndef BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

struct Base;
struct GameThingWithPos;
struct MultiMapFixed;
struct PlannedMultiMapFixed;

struct PlannedCitadelHeart
{
  struct PlannedCitadelPart super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedCitadelHeart) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cea38 mac inlined PlannedCitadelHeart::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19PlannedCitadelHeart asm("??_R0?AVPlannedCitadelHeart@@@8");
// win1.41 009a8f98 mac inlined PlannedCitadelHeart::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19PlannedCitadelHeart asm("??_R1A@?0A@A@PlannedCitadelHeart@@8");
// win1.41 009a8fb0 mac inlined PlannedCitadelHeart::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19PlannedCitadelHeart asm("??_R2PlannedCitadelHeart@@8");
// win1.41 009a8fd0 mac inlined PlannedCitadelHeart::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19PlannedCitadelHeart asm("??_R3PlannedCitadelHeart@@8");

// Override methods

// win1.41 004655a0 mac 101c2050 PlannedCitadelHeart::_dt(void)
void __fastcall __dt__19PlannedCitadelHeartFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedCitadelHeart@@UAEPAXI@Z");
// win1.41 00468df0 mac 101bbe50 PlannedCitadelHeart::CreateBuildingSite(void)
uint32_t __fastcall CreateBuildingSite__19PlannedCitadelHeartFv(struct GameThingWithPos* this) asm("?CreateBuildingSite@PlannedCitadelHeart@@UAEIXZ");
// win1.41 00465a20 mac 101bf550 PlannedCitadelHeart::CreatePlanned(float)
struct MultiMapFixed* __fastcall CreatePlanned__19PlannedCitadelHeartFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlanned@PlannedCitadelHeart@@UAEPAVMultiMapFixed@@M@Z");

#endif /* BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H */
