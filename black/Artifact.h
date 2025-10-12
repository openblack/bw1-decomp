#ifndef BW1_DECOMP_ARTIFACT_INCLUDED_H
#define BW1_DECOMP_ARTIFACT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct Town;
struct Villager;

struct TownArtifact
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x2c];
};
static_assert(sizeof(struct TownArtifact) == 0x40, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c96f8 mac inlined TownArtifact::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12TownArtifact asm("??_R0?AVTownArtifact@@@8");
// win1.41 009a7bd8 mac inlined TownArtifact::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12TownArtifact asm("??_R1A@?0A@A@TownArtifact@@8");
// win1.41 009a7bf0 mac inlined TownArtifact::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12TownArtifact asm("??_R2TownArtifact@@8");
// win1.41 009a7c00 mac inlined TownArtifact::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12TownArtifact asm("??_R3TownArtifact@@8");
// win1.41 008c47cc mac 10736fe0 TownArtifact::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12TownArtifact asm("??_R4TownArtifact@@6B@");
// win1.41 008c47d0 mac 10736fe8 TownArtifact::`vftable'
extern const struct GameThingVftable __vt__12TownArtifact asm("??_7TownArtifact@@6B@");

// Override methods

// win1.41 00425d80 mac 100adf60 TownArtifact::_dt(void)
void __fastcall __dt__12TownArtifactFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTownArtifact@@UAEPAXI@Z");
// win1.41 00425e70 mac 100af950 TownArtifact::ToBeDeleted(int)
void __fastcall ToBeDeleted__12TownArtifactFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@TownArtifact@@UAEXH@Z");
// win1.41 00425d40 mac 100adff0 TownArtifact::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__12TownArtifactFv(struct GameThing* this) asm("?GetPlayer@TownArtifact@@UAEPAVGPlayer@@XZ");
// win1.41 00425d50 mac 100ae030 TownArtifact::SetPlayer(GPlayer *)
void __fastcall SetPlayer__12TownArtifactFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@TownArtifact@@UAEXPAVGPlayer@@@Z");
// win1.41 00425d60 mac 100ae070 TownArtifact::GetTown(void)
struct Town* __fastcall GetTown__12TownArtifactFv(struct GameThing* this) asm("?GetTown@TownArtifact@@UAEPAVTown@@XZ");
// win1.41 004262d0 mac 100aedc0 TownArtifact::GetVillagerActivityDesire(Villager *)
float __fastcall GetVillagerActivityDesire__12TownArtifactFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?GetVillagerActivityDesire@TownArtifact@@UAEMPAVVillager@@@Z");
// win1.41 00426470 mac 100aeac0 TownArtifact::SetVillagerActivity(Villager *)
uint32_t __fastcall SetVillagerActivity__12TownArtifactFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?SetVillagerActivity@TownArtifact@@UAEIPAVVillager@@@Z");
// win1.41 004266c0 mac 100ae750 TownArtifact::Load(GameOSFile &)
uint32_t __fastcall Load__12TownArtifactFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@TownArtifact@@UAEIAAVGameOSFile@@@Z");
// win1.41 004265a0 mac 100ae900 TownArtifact::Save(GameOSFile &)
uint32_t __fastcall Save__12TownArtifactFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@TownArtifact@@UAEIAAVGameOSFile@@@Z");
// win1.41 00425d70 mac 100ae0b0 TownArtifact::GetSaveType(void)
uint32_t __fastcall GetSaveType__12TownArtifactFv(struct GameThing* this) asm("?GetSaveType@TownArtifact@@UAEIXZ");

DECLARE_LH_LINKED_LIST(TownArtifact);

#endif /* BW1_DECOMP_ARTIFACT_INCLUDED_H */
