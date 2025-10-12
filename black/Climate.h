#ifndef BW1_DECOMP_CLIMATE_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;

struct GClimate
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x74];
};
static_assert(sizeof(struct GClimate) == 0x88, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed368 mac inlined GClimate::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8GClimate asm("??_R0?AVGClimate@@@8");
// win1.41 009aeaf0 mac inlined GClimate::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8GClimate asm("??_R1A@?0A@A@GClimate@@8");
// win1.41 009aeb08 mac inlined GClimate::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8GClimate asm("??_R2GClimate@@8");
// win1.41 009aeb18 mac inlined GClimate::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8GClimate asm("??_R3GClimate@@8");
// win1.41 008f9f98 mac 109ea018 GClimate::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8GClimate asm("??_R4GClimate@@6B@");
// win1.41 008f9f9c mac 109ea020 GClimate::`vftable'
extern const struct GameThingVftable __vt__8GClimate asm("??_7GClimate@@6B@");

// Override methods

// win1.41 0055dee0 mac 105a2870 GClimate::_dt(void)
void __fastcall __dt__8GClimateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGClimate@@UAEPAXI@Z");
// win1.41 007713e0 mac 105a2620 GClimate::ToBeDeleted(int)
void __fastcall ToBeDeleted__8GClimateFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GClimate@@UAEXH@Z");
// win1.41 0055ded0 mac 1059ef50 GClimate::GetDebugText(void)
char* __fastcall GetDebugText__8GClimateFv(struct GameThing* this) asm("?GetDebugText@GClimate@@UAEPADXZ");
// win1.41 007736e0 mac 1059ef90 GClimate::Load(GameOSFile &)
uint32_t __fastcall Load__8GClimateFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GClimate@@UAEIAAVGameOSFile@@@Z");
// win1.41 00773320 mac 1059f860 GClimate::Save(GameOSFile &)
uint32_t __fastcall Save__8GClimateFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GClimate@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055dec0 mac 1059ef10 GClimate::GetSaveType(void)
uint32_t __fastcall GetSaveType__8GClimateFv(struct GameThing* this) asm("?GetSaveType@GClimate@@UAEIXZ");

DECLARE_LH_LINKED_LIST(GClimate);

#endif /* BW1_DECOMP_CLIMATE_INCLUDED_H */
