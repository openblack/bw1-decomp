#ifndef BW1_DECOMP_PLANNED_TOWN_CENTRE_INCLUDED_H
#define BW1_DECOMP_PLANNED_TOWN_CENTRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PlannedAbode.h" /* For struct PlannedAbode */

// Forward Declares

struct Base;
struct GAbodeInfo;
struct GameThing;
struct MapCoords;
struct Town;
struct TownCentre;

struct PlannedTownCentre
{
  struct PlannedAbode super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedTownCentre) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bece38 mac inlined PlannedTownCentre::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17PlannedTownCentre asm("??_R0?AVPlannedTownCentre@@@8");
// win1.41 009ae5b8 mac inlined PlannedTownCentre::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17PlannedTownCentre asm("??_R1A@?0A@A@PlannedTownCentre@@8");
// win1.41 009ae5d0 mac inlined PlannedTownCentre::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17PlannedTownCentre asm("??_R2PlannedTownCentre@@8");
// win1.41 009ae5f0 mac inlined PlannedTownCentre::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17PlannedTownCentre asm("??_R3PlannedTownCentre@@8");
// win1.41 008e46d8 mac 109e3cf0 PlannedTownCentre::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17PlannedTownCentre asm("??_R4PlannedTownCentre@@6B@");
// win1.41 008e46dc mac 109e3cf8 PlannedTownCentre::`vftable'
extern const struct PlannedMultiMapFixedVftable __vt__17PlannedTownCentre asm("??_7PlannedTownCentre@@6B@");

// Static methods

// win1.41 007444d0 mac 1055a160 PlannedTownCentre::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedTownCentre* __cdecl Create__17PlannedTownCentreFRC9MapCoordsPC10GAbodeInfoP4Townff(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float param_4, float param_5) asm("?Create@PlannedTownCentre@@SAPAV1@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MM@Z");

// Constructors

// win1.41 00744460 mac 1055a270 PlannedTownCentre::PlannedTownCentre(TownCentre*)
struct PlannedTownCentre* __fastcall __ct__17PlannedTownCentreFP10TownCentre(struct PlannedTownCentre* this, const void* edx, const struct TownCentre* town_centre) asm("??0PlannedTownCentre@@QAE@PAVTownCentre@@@Z");

// Override methods

// win1.41 0055dc10 mac 10559840 PlannedTownCentre::_dt(void)
void __fastcall __dt__17PlannedTownCentreFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedTownCentre@@UAEPAXI@Z");
// win1.41 0055dc00 mac 10559960 PlannedTownCentre::GetDebugText(void)
char* __fastcall GetDebugText__17PlannedTownCentreFv(struct GameThing* this) asm("?GetDebugText@PlannedTownCentre@@UAEPADXZ");
// win1.41 0055dbf0 mac 10559920 PlannedTownCentre::GetSaveType(void)
uint32_t __fastcall GetSaveType__17PlannedTownCentreFv(struct GameThing* this) asm("?GetSaveType@PlannedTownCentre@@UAEIXZ");

#endif /* BW1_DECOMP_PLANNED_TOWN_CENTRE_INCLUDED_H */
