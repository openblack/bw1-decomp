#ifndef BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BuildingSite.h" /* For struct BuildingSite */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GameThing;
struct MapCoords;

struct WorkshopBuildingSite
{
  struct BuildingSite super;  /* 0x0 */
};
static_assert(sizeof(struct WorkshopBuildingSite) == 0x644, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd4b0 mac inlined WorkshopBuildingSite::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20WorkshopBuildingSite asm("??_R0?AVWorkshopBuildingSite@@@8");
// win1.41 009a8690 mac inlined WorkshopBuildingSite::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20WorkshopBuildingSite asm("??_R1A@?0A@A@WorkshopBuildingSite@@8");
// win1.41 009a86a8 mac inlined WorkshopBuildingSite::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20WorkshopBuildingSite asm("??_R2WorkshopBuildingSite@@8");
// win1.41 009a86c0 mac inlined WorkshopBuildingSite::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20WorkshopBuildingSite asm("??_R3WorkshopBuildingSite@@8");

// Override methods

// win1.41 0043d970 mac 100b7a40 WorkshopBuildingSite::_dt(void)
void __fastcall __dt__20WorkshopBuildingSiteFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWorkshopBuildingSite@@UAEPAXI@Z");
// win1.41 0043db20 mac 100b74c0 WorkshopBuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__20WorkshopBuildingSiteF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@WorkshopBuildingSite@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 0043db60 mac 100b7370 WorkshopBuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__20WorkshopBuildingSiteF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@WorkshopBuildingSite@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");

#endif /* BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H */
