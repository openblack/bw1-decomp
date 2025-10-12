#ifndef BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H
#define BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct PlannedWorshipSite
{
  struct PlannedCitadelPart super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedWorshipSite) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24d30 mac inlined PlannedWorshipSite::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18PlannedWorshipSite asm("??_R0?AVPlannedWorshipSite@@@8");
// win1.41 009ba320 mac inlined PlannedWorshipSite::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18PlannedWorshipSite asm("??_R1A@?0A@A@PlannedWorshipSite@@8");
// win1.41 009ba338 mac inlined PlannedWorshipSite::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18PlannedWorshipSite asm("??_R2PlannedWorshipSite@@8");
// win1.41 009ba358 mac inlined PlannedWorshipSite::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18PlannedWorshipSite asm("??_R3PlannedWorshipSite@@8");

// Override methods

// win1.41 0077bf10 mac 105ab030 PlannedWorshipSite::_dt(void)
void __fastcall __dt__18PlannedWorshipSiteFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedWorshipSite@@UAEPAXI@Z");
// win1.41 0077bf00 mac 105ab150 PlannedWorshipSite::GetDebugText(void)
char* __fastcall GetDebugText__18PlannedWorshipSiteFv(struct GameThing* this) asm("?GetDebugText@PlannedWorshipSite@@UAEPADXZ");
// win1.41 0077bf90 mac 105b0dc0 PlannedWorshipSite::Load(GameOSFile &)
uint32_t __fastcall Load__18PlannedWorshipSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PlannedWorshipSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0077bf30 mac 105b0ea0 PlannedWorshipSite::Save(GameOSFile &)
uint32_t __fastcall Save__18PlannedWorshipSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PlannedWorshipSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0077bef0 mac 105ab110 PlannedWorshipSite::GetSaveType(void)
uint32_t __fastcall GetSaveType__18PlannedWorshipSiteFv(struct GameThing* this) asm("?GetSaveType@PlannedWorshipSite@@UAEIXZ");

#endif /* BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H */
