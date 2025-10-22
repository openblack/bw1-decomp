#ifndef BW1_DECOMP_CITADEL_INCLUDED_H
#define BW1_DECOMP_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "Container.h" /* For struct Container */

// Forward Declares

struct Base;
struct CitadelHeart;
struct Creature;
struct GCitadelHeartInfo;
struct GTribeInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LH3DMesh;
struct Living;
struct MapCoords;
struct Town;
struct WorshipSite;

struct Citadel
{
  struct Container super;  /* 0x0 */
  struct CitadelHeart* heart;  /* 0x30 */
  struct WorshipSite* worship_sites[0x6];
  struct LHListHead__CitadelPart part_list;  /* 0x4c */
  uint32_t field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
  uint32_t field_0x60;
  uint32_t field_0x64;
  uint32_t field_0x68;
  float influence;
  uint32_t field_0x70;
  uint32_t field_0x74;
  uint32_t field_0x78;
  struct Living* living;
};
static_assert(sizeof(struct Citadel) == 0x80, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce848 mac inlined Citadel::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7Citadel asm("??_R0?AVCitadel@@@8");
// win1.41 009a8dd8 mac inlined Citadel::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7Citadel asm("??_R1A@?0A@A@Citadel@@8");
// win1.41 009a8df0 mac inlined Citadel::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7Citadel asm("??_R2Citadel@@8");
// win1.41 009a8e08 mac inlined Citadel::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7Citadel asm("??_R3Citadel@@8");
// win1.41 008c7e64 mac 10779c40 Citadel::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__7Citadel asm("??_R4Citadel@@6B@");
// win1.41 008c7e68 mac 10779c48 Citadel::`vftable'
extern const struct ContainerVftable __vt__7Citadel asm("??_7Citadel@@6B@");

// Static methods

// win1.41 00463240 mac 101b9230 Citadel::CreateCitadel(MapCoords const &, GCitadelHeartInfo const *, unsigned char, float, float)
struct Citadel* __cdecl CreateCitadel__7CitadelFRC9MapCoordsPC17GCitadelHeartInfoUcff(struct MapCoords* coords, struct GCitadelHeartInfo* info, uint8_t param_3, float param_4, float param_5) asm("?CreateCitadel@Citadel@@SAPAV1@ABUMapCoords@@PBVGCitadelHeartInfo@@EMM@Z");

// Non-virtual methods

// win1.41 00463130 mac 101b9680 Citadel::AddTown(Town*)
void* __fastcall AddTown__7CitadelFP4Town(struct Citadel* this, const void* edx, struct Town* town) asm("?AddTown@Citadel@@QAEPAXPAVTown@@@Z");
// win1.41 00463220 mac 101b9420 Citadel::FindOrCreateWorshipSite(GTribeInfo const *)
struct WorshipSite* __fastcall FindOrCreateWorshipSite__7CitadelFPC10GTribeInfo(struct Citadel* this, const void* edx, struct GTribeInfo* tribe_info) asm("?FindOrCreateWorshipSite@Citadel@@QAEPAVWorshipSite@@PBVGTribeInfo@@@Z");

// Override methods

// win1.41 00462ae0 mac 101b6d30 Citadel::_dt(void)
void __fastcall __dt__7CitadelFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCitadel@@UAEPAXI@Z");
// win1.41 00462b90 mac 101ba6a0 Citadel::ToBeDeleted(int)
void __fastcall ToBeDeleted__7CitadelFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Citadel@@UAEXH@Z");
// win1.41 00462ad0 mac 101b6ff0 Citadel::GetDebugText(void)
char* __fastcall GetDebugText__7CitadelFv(struct GameThing* this) asm("?GetDebugText@Citadel@@UAEPADXZ");
// win1.41 00463dc0 mac 101b71d0 Citadel::Load(GameOSFile &)
uint32_t __fastcall Load__7CitadelFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Citadel@@UAEIAAVGameOSFile@@@Z");
// win1.41 00463b00 mac 101b7db0 Citadel::Save(GameOSFile &)
uint32_t __fastcall Save__7CitadelFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Citadel@@UAEIAAVGameOSFile@@@Z");
// win1.41 00462ac0 mac 101b6fb0 Citadel::GetSaveType(void)
uint32_t __fastcall GetSaveType__7CitadelFv(struct GameThing* this) asm("?GetSaveType@Citadel@@UAEIXZ");
// win1.41 00462a60 mac 101b6e50 Citadel::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__7CitadelFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Citadel@@UAEIXZ");
// win1.41 00462a70 mac 101b6e90 Citadel::GetCreatureBeliefListType(void)
uint32_t __fastcall GetCreatureBeliefListType__7CitadelFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefListType@Citadel@@UAEIXZ");
// win1.41 00462a80 mac 101b6ed0 Citadel::GetOrigin(void)
uint32_t __fastcall GetOrigin__7CitadelFv(struct GameThingWithPos* this) asm("?GetOrigin@Citadel@@UAEIXZ");
// win1.41 004e40e0 mac 105e5f60 Citadel::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichAngerAppliesTo__7CitadelFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichAngerAppliesTo@Citadel@@UAE_NPAVCreature@@@Z");
// win1.41 00462a90 mac 101b6f00 Citadel::IsSuitableForCreatureActivity(void)
uint32_t __fastcall IsSuitableForCreatureActivity__7CitadelFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureActivity@Citadel@@UAEIXZ");
// win1.41 004d1b50 mac 10242fd0 Citadel::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__7CitadelFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@Citadel@@UAEMXZ");
// win1.41 00462aa0 mac 101b6f50 Citadel::GetText(void)
const char* __fastcall GetText__7CitadelFv(struct GameThingWithPos* this) asm("?GetText@Citadel@@UAEPBDXZ");
// win1.41 00462ab0 mac 101b6f80 Citadel::IsCitadel(void)
uint32_t __fastcall IsCitadel__7CitadelFv(struct GameThingWithPos* this) asm("?IsCitadel@Citadel@@UAEIXZ");

// win1.41 004699c0 mac 101c4740 CPController::Init(LH3DMesh*)
void __cdecl Init__12CPControllerFP8LH3DMesh(struct LH3DMesh* mesh) asm("?Init@CPController@@SAXPAULH3DMesh@@@Z");
// win1.41 00469990 mac 101c4ca0 CPController::Init(void)
void __stdcall Init__12CPControllerFv(void);

#endif /* BW1_DECOMP_CITADEL_INCLUDED_H */
