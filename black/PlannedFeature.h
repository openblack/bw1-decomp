#ifndef BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H
#define BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct MultiMapFixed;

struct PlannedFeature
{
  struct PlannedMultiMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedFeature) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9cb0 mac inlined PlannedFeature::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14PlannedFeature asm("??_R0?AVPlannedFeature@@@8");
// win1.41 009ac058 mac inlined PlannedFeature::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14PlannedFeature asm("??_R1A@?0A@A@PlannedFeature@@8");
// win1.41 009ac070 mac inlined PlannedFeature::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14PlannedFeature asm("??_R2PlannedFeature@@8");
// win1.41 009ac088 mac inlined PlannedFeature::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14PlannedFeature asm("??_R3PlannedFeature@@8");

// Override methods

// win1.41 005274a0 mac 100d1600 PlannedFeature::_dt(void)
void __fastcall __dt__14PlannedFeatureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedFeature@@UAEPAXI@Z");
// win1.41 00527490 mac 100d16e0 PlannedFeature::GetDebugText(void)
char* __fastcall GetDebugText__14PlannedFeatureFv(struct GameThing* this) asm("?GetDebugText@PlannedFeature@@UAEPADXZ");
// win1.41 00527580 mac 100d0f60 PlannedFeature::Load(GameOSFile &)
uint32_t __fastcall Load__14PlannedFeatureFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PlannedFeature@@UAEIAAVGameOSFile@@@Z");
// win1.41 00527550 mac 100d0ff0 PlannedFeature::Save(GameOSFile &)
uint32_t __fastcall Save__14PlannedFeatureFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PlannedFeature@@UAEIAAVGameOSFile@@@Z");
// win1.41 00527480 mac 100d16a0 PlannedFeature::GetSaveType(void)
uint32_t __fastcall GetSaveType__14PlannedFeatureFv(struct GameThing* this) asm("?GetSaveType@PlannedFeature@@UAEIXZ");
// win1.41 005274d0 mac 100d1080 PlannedFeature::CreatePlanned(float)
struct MultiMapFixed* __fastcall CreatePlanned__14PlannedFeatureFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlanned@PlannedFeature@@UAEPAVMultiMapFixed@@M@Z");

#endif /* BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H */
