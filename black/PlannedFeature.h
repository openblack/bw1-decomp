#ifndef BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H
#define BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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
