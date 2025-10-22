#ifndef BW1_DECOMP_POT_STRUCTURE_INCLUDED_H
#define BW1_DECOMP_POT_STRUCTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Pot.h" /* For struct Pot */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GPlayer;
struct GPotInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct Town;

struct PotStructure
{
  struct Pot super;  /* 0x0 */
  struct MultiMapFixed* field_0x78;
  uint32_t field_0x7c;
  bool field_0x80;
};
static_assert(sizeof(struct PotStructure) == 0x84, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becb78 mac inlined PotStructure::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12PotStructure asm("??_R0?AVPotStructure@@@8");
// win1.41 009adbd8 mac inlined PotStructure::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12PotStructure asm("??_R1A@?0A@A@PotStructure@@8");
// win1.41 009ae9f0 mac inlined PotStructure::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12PotStructure asm("??_R2PotStructure@@8");
// win1.41 009aea18 mac inlined PotStructure::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12PotStructure asm("??_R3PotStructure@@8");
// win1.41 008f8dc8 mac 10747844 PotStructure::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12PotStructure asm("??_R4PotStructure@@6B@");
// win1.41 008f8dcc mac 1074784c PotStructure::`vftable'
extern const struct PotVftable __vt__12PotStructure asm("??_7PotStructure@@6B@");

// Constructors

// win1.41 0066d910 mac 1011b5e0 PotStructure::PotStructure(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
struct PotStructure* __fastcall __ct__12PotStructureFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff(struct PotStructure* this, const void* edx, struct MapCoords* coords, struct GPotInfo* param_2, uint32_t param_3, struct MultiMapFixed* param_4, struct Town* param_5, int param_6, float param_7, float param_8) asm("??0PotStructure@@QAE@ABUMapCoords@@PBVGPotInfo@@KPAVMultiMapFixed@@PAVTown@@HMM@Z");

// Override methods

// win1.41 0055d650 mac 101160f0 PotStructure::_dt(void)
void __fastcall __dt__12PotStructureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPotStructure@@UAEPAXI@Z");
// win1.41 0066d960 mac 1011b560 PotStructure::ToBeDeleted(int)
void __fastcall ToBeDeleted__12PotStructureFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PotStructure@@UAEXH@Z");
// win1.41 0066f230 mac 10116cf0 PotStructure::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__12PotStructureFv(struct GameThing* this) asm("?GetPlayer@PotStructure@@UAEPAVGPlayer@@XZ");
// win1.41 0055d620 mac 10115fe0 PotStructure::SetPlayer(GPlayer *)
void __fastcall SetPlayer__12PotStructureFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@PotStructure@@UAEXPAVGPlayer@@@Z");
// win1.41 0066ef60 mac 10117830 PotStructure::GetTown(void)
struct Town* __fastcall GetTown__12PotStructureFv(struct GameThing* this) asm("?GetTown@PotStructure@@UAEPAVTown@@XZ");
// win1.41 0066d9b0 mac 1011b3d0 PotStructure::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t __fastcall JustRemoveResource__12PotStructureF13RESOURCE_TYPEUlPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3) asm("?JustRemoveResource@PotStructure@@UAEIW4RESOURCE_TYPE@@IPA_N@Z");
// win1.41 0066ef00 mac 10077c70 PotStructure::GetResource(RESOURCE_TYPE)
uint32_t __fastcall GetResource__12PotStructureF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?GetResource@PotStructure@@UAEIW4RESOURCE_TYPE@@@Z");
// win1.41 0066ed70 mac 10117b70 PotStructure::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__12PotStructureF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@PotStructure@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 0066ee10 mac 10117970 PotStructure::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__12PotStructureF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@PotStructure@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 0066db10 mac 1011b060 PotStructure::Load(GameOSFile &)
uint32_t __fastcall Load__12PotStructureFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PotStructure@@UAEIAAVGameOSFile@@@Z");
// win1.41 0066da90 mac 1011b150 PotStructure::Save(GameOSFile &)
uint32_t __fastcall Save__12PotStructureFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PotStructure@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d640 mac 101160a0 PotStructure::CanBeThrownByPlayer(void)
uint32_t __fastcall CanBeThrownByPlayer__12PotStructureFv(struct GameThingWithPos* this) asm("?CanBeThrownByPlayer@PotStructure@@UAEIXZ");
// win1.41 0066db90 mac 1011afa0 PotStructure::CallVirtualFunctionsForCreation(const MapCoords&)
void __fastcall CallVirtualFunctionsForCreation__12PotStructureFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@PotStructure@@UAEXABUMapCoords@@@Z");
// win1.41 0066da30 mac 1011b250 PotStructure::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__12PotStructureF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?IsResourceStore@PotStructure@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 0066d480 mac inlined PotStructure::SetSize(void)
void __fastcall SetSize__12PotStructureFv(struct Pot* this) asm("?SetSize@PotStructure@@UAEXXZ");
// win1.41 0066da00 mac 10077bc0 PotStructure::IsPartOfStructure(void)
bool __fastcall IsPartOfStructure__12PotStructureFv(struct Pot* this) asm("?IsPartOfStructure@PotStructure@@UAE_NXZ");
// win1.41 0055d530 mac inlined PotStructure::SetSpeedUp(int)
void __fastcall SetSpeedUp__12PotStructureFi(struct Pot* this, const void* edx, int param_1) asm("?SetSpeedUp@PotStructure@@UAEXH@Z");
// win1.41 0055d630 mac 10116020 PotStructure::SetMultiMapFixed(MultiMapFixed *)
void __fastcall SetMultiMapFixed__12PotStructureFP13MultiMapFixed(struct Pot* this, const void* edx, struct MultiMapFixed* param_1) asm("?SetMultiMapFixed@PotStructure@@UAEXPAVMultiMapFixed@@@Z");

#endif /* BW1_DECOMP_POT_STRUCTURE_INCLUDED_H */
