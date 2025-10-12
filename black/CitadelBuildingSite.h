#ifndef BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BuildingSite.h" /* For struct BuildingSite */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct MapCoords;
struct Pot;
struct PotStructure;

struct CitadelBuildingSite
{
  struct BuildingSite super;  /* 0x0 */
};
static_assert(sizeof(struct CitadelBuildingSite) == 0x644, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd430 mac inlined CitadelBuildingSite::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19CitadelBuildingSite asm("??_R0?AVCitadelBuildingSite@@@8");
// win1.41 009a85e0 mac inlined CitadelBuildingSite::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19CitadelBuildingSite asm("??_R1A@?0A@A@CitadelBuildingSite@@8");
// win1.41 009a85f8 mac inlined CitadelBuildingSite::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19CitadelBuildingSite asm("??_R2CitadelBuildingSite@@8");
// win1.41 009a8610 mac inlined CitadelBuildingSite::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19CitadelBuildingSite asm("??_R3CitadelBuildingSite@@8");

// Override methods

// win1.41 0043d1b0 mac 100be2b0 CitadelBuildingSite::_dt(void)
void __fastcall __dt__19CitadelBuildingSiteFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCitadelBuildingSite@@UAEPAXI@Z");
// win1.41 0043d220 mac 100b9060 CitadelBuildingSite::ToBeDeleted(int)
void __fastcall ToBeDeleted__19CitadelBuildingSiteFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@CitadelBuildingSite@@UAEXH@Z");
// win1.41 0043d320 mac 100b8e30 CitadelBuildingSite::GetResource(RESOURCE_TYPE)
uint32_t __fastcall GetResource__19CitadelBuildingSiteF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?GetResource@CitadelBuildingSite@@UAEIW4RESOURCE_TYPE@@@Z");
// win1.41 0043d360 mac 100b8cc0 CitadelBuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__19CitadelBuildingSiteF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@CitadelBuildingSite@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 0043d3f0 mac 100b8ba0 CitadelBuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__19CitadelBuildingSiteF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@CitadelBuildingSite@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 0043d1a0 mac 100be380 CitadelBuildingSite::GetDebugText(void)
char* __fastcall GetDebugText__19CitadelBuildingSiteFv(struct GameThing* this) asm("?GetDebugText@CitadelBuildingSite@@UAEPADXZ");
// win1.41 0043d620 mac 100b8580 CitadelBuildingSite::Load(GameOSFile &)
uint32_t __fastcall Load__19CitadelBuildingSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@CitadelBuildingSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0043d5e0 mac 100b8620 CitadelBuildingSite::Save(GameOSFile &)
uint32_t __fastcall Save__19CitadelBuildingSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CitadelBuildingSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0043d190 mac 100be340 CitadelBuildingSite::GetSaveType(void)
uint32_t __fastcall GetSaveType__19CitadelBuildingSiteFv(struct GameThing* this) asm("?GetSaveType@CitadelBuildingSite@@UAEIXZ");
// win1.41 0043d660 mac 100b84d0 CitadelBuildingSite::Process(void)
void __fastcall Process__19CitadelBuildingSiteFv(struct BuildingSite* this) asm("?Process@CitadelBuildingSite@@UAEXXZ");
// win1.41 0043d500 mac 100b8830 CitadelBuildingSite::GetPileWood(MapCoords const &)
struct Pot* __fastcall GetPileWood__19CitadelBuildingSiteFRC9MapCoords(struct BuildingSite* this, const void* edx, const struct MapCoords* param_1) asm("?GetPileWood@CitadelBuildingSite@@UAEPAVPot@@ABUMapCoords@@@Z");
// win1.41 0043d180 mac 100b9190 CitadelBuildingSite::SetPileWood(Pot *)
void __fastcall SetPileWood__19CitadelBuildingSiteFP3Pot(struct BuildingSite* this, const void* edx, struct Pot* param_1) asm("?SetPileWood@CitadelBuildingSite@@UAEXPAVPot@@@Z");
// win1.41 0043d460 mac 100b8b60 CitadelBuildingSite::CreatePileWood(void)
void __fastcall CreatePileWood__19CitadelBuildingSiteFv(struct BuildingSite* this) asm("?CreatePileWood@CitadelBuildingSite@@UAEXXZ");
// win1.41 0043d470 mac inlined CitadelBuildingSite::GetResourcePosAndYAngle(unsigned int, unsigned int, float *)
void __fastcall GetResourcePosAndYAngle__19CitadelBuildingSiteFUiUiPf(struct BuildingSite* this, const void* edx, uint32_t param_1, uint32_t param_2, float* param_3) asm("?GetResourcePosAndYAngle@CitadelBuildingSite@@UAEXIIPAM@Z");
// win1.41 0043d5b0 mac 100b86c0 CitadelBuildingSite::RemovePotFromStructure(PotStructure *)
void __fastcall RemovePotFromStructure__19CitadelBuildingSiteFP12PotStructure(struct BuildingSite* this, const void* edx, struct PotStructure* param_1) asm("?RemovePotFromStructure@CitadelBuildingSite@@UAEXPAVPotStructure@@@Z");
// win1.41 0043d580 mac 100b8750 CitadelBuildingSite::IsLinkedToThisBuildingSite(Pot *)
bool __fastcall IsLinkedToThisBuildingSite__19CitadelBuildingSiteFP3Pot(struct BuildingSite* this, const void* edx, struct Pot* param_1) asm("?IsLinkedToThisBuildingSite@CitadelBuildingSite@@UAE_NPAVPot@@@Z");

#endif /* BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H */
