#ifndef BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H
#define BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct PlannedCitadelPart
{
  struct PlannedMultiMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedCitadelPart) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cea10 mac inlined PlannedCitadelPart::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18PlannedCitadelPart asm("??_R0?AVPlannedCitadelPart@@@8");
// win1.41 009a8f80 mac inlined PlannedCitadelPart::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18PlannedCitadelPart asm("??_R1A@?0A@A@PlannedCitadelPart@@8");
// win1.41 009a9198 mac inlined PlannedCitadelPart::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18PlannedCitadelPart asm("??_R2PlannedCitadelPart@@8");
// win1.41 009a91b0 mac inlined PlannedCitadelPart::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18PlannedCitadelPart asm("??_R3PlannedCitadelPart@@8");

// Override methods

// win1.41 00469670 mac 101bff10 PlannedCitadelPart::_dt(void)
void __fastcall __dt__18PlannedCitadelPartFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedCitadelPart@@UAEPAXI@Z");
// win1.41 00469690 mac 101c2f70 PlannedCitadelPart::ToBeDeleted(int)
void __fastcall ToBeDeleted__18PlannedCitadelPartFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PlannedCitadelPart@@UAEXH@Z");
// win1.41 00465590 mac 101c2130 PlannedCitadelPart::GetDebugText(void)
char* __fastcall GetDebugText__18PlannedCitadelPartFv(struct GameThing* this) asm("?GetDebugText@PlannedCitadelPart@@UAEPADXZ");
// win1.41 00469720 mac 101c2e30 PlannedCitadelPart::Load(GameOSFile &)
uint32_t __fastcall Load__18PlannedCitadelPartFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PlannedCitadelPart@@UAEIAAVGameOSFile@@@Z");
// win1.41 004696f0 mac 101c2ed0 PlannedCitadelPart::Save(GameOSFile &)
uint32_t __fastcall Save__18PlannedCitadelPartFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PlannedCitadelPart@@UAEIAAVGameOSFile@@@Z");
// win1.41 00465580 mac 101c20f0 PlannedCitadelPart::GetSaveType(void)
uint32_t __fastcall GetSaveType__18PlannedCitadelPartFv(struct GameThing* this) asm("?GetSaveType@PlannedCitadelPart@@UAEIXZ");

#endif /* BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H */
