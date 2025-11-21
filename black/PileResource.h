#ifndef BW1_DECOMP_PILE_RESOURCE_INCLUDED_H
#define BW1_DECOMP_PILE_RESOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PotStructure.h" /* For struct PotStructure */

// Forward Declares

struct Base;
struct ControlHandUpdateInfo;
struct Creature;
struct GInterfaceStatus;
struct GPotInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct Town;

struct PileResource
{
  struct PotStructure super;  /* 0x0 */
  float field_0x84;
  float field_0x88;
  uint32_t field_0x8c;
  uint32_t field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  float field_0xa0;
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t field_0xac;
  uint32_t field_0xb0;
};
static_assert(sizeof(struct PileResource) == 0xb4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becb98 mac inlined PileResource::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12PileResource asm("??_R0?AVPileResource@@@8");
// win1.41 009adbf0 mac inlined PileResource::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12PileResource asm("??_R1A@?0A@A@PileResource@@8");
// win1.41 009b34a0 mac inlined PileResource::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12PileResource asm("??_R2PileResource@@8");
// win1.41 009b34c8 mac inlined PileResource::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12PileResource asm("??_R3PileResource@@8");
// win1.41 009338d0 mac 107481fc PileResource::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12PileResource asm("??_R4PileResource@@6B@");
// win1.41 009338d4 mac 10748244 PileResource::`vftable'
extern const struct PotVftable __vt__12PileResource asm("??_7PileResource@@6B@");

// Constructors

// win1.41 0066ec70 mac 10117e50 PileResource::PileResource(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
struct PileResource* __fastcall __ct__12PileResourceFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff(struct PileResource* this, const void* edx, struct MapCoords* param_1, struct GPotInfo* info, uint32_t param_3, struct MultiMapFixed* param_4, struct Town* param_5, int param_6, float param_7, float param_8) asm("??0PileResource@@QAE@ABUMapCoords@@PBVGPotInfo@@KPAVMultiMapFixed@@PAVTown@@HMM@Z");

// Override methods

// win1.41 0066ecb0 mac 1011a3b0 PileResource::_dt(void)
void __fastcall __dt__12PileResourceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPileResource@@UAEPAXI@Z");
// win1.41 0066d330 mac 10003c80 PileResource::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
uint32_t __fastcall JustAddResource__12PileResourceF13RESOURCE_TYPEUlb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool param_3) asm("?JustAddResource@PileResource@@UAEIW4RESOURCE_TYPE@@I_N@Z");
// win1.41 0066f690 mac 101163b0 PileResource::Load(GameOSFile &)
uint32_t __fastcall Load__12PileResourceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PileResource@@UAEIAAVGameOSFile@@@Z");
// win1.41 0066f620 mac 10116490 PileResource::Save(GameOSFile &)
uint32_t __fastcall Save__12PileResourceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PileResource@@UAEIAAVGameOSFile@@@Z");
// win1.41 0066e3d0 mac 10119880 PileResource::GetLife(void)
float __fastcall GetLife__12PileResourceFv(struct GameThingWithPos* this) asm("?GetLife@PileResource@@UAEMXZ");
// win1.41 0066e3c0 mac inlined PileResource::IsField_1(Creature *)
uint32_t __fastcall IsField_1__12PileResourceFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsField@PileResource@@UAEIPAVCreature@@@Z");
// win1.41 0066e390 mac 101199a0 PileResource::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__12PileResourceFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@PileResource@@UAEIPAVCreature@@@Z");
// win1.41 0066ed60 mac 10117ce0 PileResource::IsPileResource(void)
uint32_t __fastcall IsPileResource__12PileResourceFv(struct GameThingWithPos* this) asm("?IsPileResource@PileResource@@UAEIXZ");
// win1.41 0066e400 mac 101196c0 PileResource::SetLife(float)
void __fastcall SetLife__12PileResourceFf(struct Object* this, const void* edx, float param_1) asm("?SetLife@PileResource@@UAEXM@Z");
// win1.41 0066e300 mac 10119a80 PileResource::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__12PileResourceFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@PileResource@@UAEXABUMapCoords@@@Z");
// win1.41 0055d680 mac 1011d530 PileResource::IsLockedInInteract(void)
bool __fastcall IsLockedInInteract__12PileResourceFv(struct Object* this) asm("?IsLockedInInteract@PileResource@@UAE_NXZ");
// win1.41 0066e4f0 mac 10119600 PileResource::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t __fastcall ValidForLockedSelectProcess__12PileResourceFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForLockedSelectProcess@PileResource@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0066e710 mac 10119060 PileResource::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyStartLockedSelect__12PileResourceFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyStartLockedSelect@PileResource@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0066e830 mac 10118ff0 PileResource::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
uint32_t __fastcall NetworkUnfriendlyLockedSelect__12PileResourceFP21ControlHandUpdateInfo(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1) asm("?NetworkUnfriendlyLockedSelect@PileResource@@UAEIPAUControlHandUpdateInfo@@@Z");
// win1.41 0066e840 mac 10118fa0 PileResource::NetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyEndLockedSelect__12PileResourceFv(struct Object* this) asm("?NetworkUnfriendlyEndLockedSelect@PileResource@@UAEIXZ");
// win1.41 0066e850 mac 10118e70 PileResource::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
uint32_t __fastcall NetworkFriendlyEndLockedSelect__12PileResourceFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyEndLockedSelect@PileResource@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0066ece0 mac 10117d60 PileResource::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__12PileResourceFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@PileResource@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0066ef80 mac 10117380 PileResource::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__12PileResourceFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@PileResource@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0066e3b0 mac 10119960 PileResource::IsTuggable(void)
uint32_t __fastcall IsTuggable__12PileResourceFv(struct Object* this) asm("?IsTuggable@PileResource@@UAEIXZ");
// win1.41 0066e520 mac 101192c0 PileResource::ProcessInInteract(GInterfaceStatus *)
uint32_t __fastcall ProcessInInteract__12PileResourceFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ProcessInInteract@PileResource@@UAEIPAVGInterfaceStatus@@@Z");

#endif /* BW1_DECOMP_PILE_RESOURCE_INCLUDED_H */
