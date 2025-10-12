#ifndef BW1_DECOMP_CITADEL_ENTRANCE_INCLUDED_H
#define BW1_DECOMP_CITADEL_ENTRANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;

struct CitadelEntrance
{
  struct Object super;  /* 0x0 */
};
static_assert(sizeof(struct CitadelEntrance) == 0x54, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ceb00 mac inlined CitadelEntrance::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15CitadelEntrance asm("??_R0?AVCitadelEntrance@@@8");
// win1.41 009a90f8 mac inlined CitadelEntrance::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15CitadelEntrance asm("??_R1A@?0A@A@CitadelEntrance@@8");
// win1.41 009a9110 mac inlined CitadelEntrance::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15CitadelEntrance asm("??_R2CitadelEntrance@@8");
// win1.41 009a9128 mac inlined CitadelEntrance::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15CitadelEntrance asm("??_R3CitadelEntrance@@8");

// Override methods

// win1.41 00468e80 mac 101bb490 CitadelEntrance::_dt(void)
void __fastcall __dt__15CitadelEntranceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCitadelEntrance@@UAEPAXI@Z");
// win1.41 00468e70 mac 101bb5b0 CitadelEntrance::GetDebugText(void)
char* __fastcall GetDebugText__15CitadelEntranceFv(struct GameThing* this) asm("?GetDebugText@CitadelEntrance@@UAEPADXZ");
// win1.41 00468e60 mac 101bb570 CitadelEntrance::GetSaveType(void)
uint32_t __fastcall GetSaveType__15CitadelEntranceFv(struct GameThing* this) asm("?GetSaveType@CitadelEntrance@@UAEIXZ");
// win1.41 00469380 mac 101bb5f0 CitadelEntrance::ResolveLoad(void)
void __fastcall ResolveLoad__15CitadelEntranceFv(struct GameThing* this) asm("?ResolveLoad@CitadelEntrance@@UAEXXZ");
// win1.41 00468f90 mac 101bbbe0 CitadelEntrance::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__15CitadelEntranceFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@CitadelEntrance@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00468fa0 mac 101bbb70 CitadelEntrance::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__15CitadelEntranceFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@CitadelEntrance@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00468f50 mac 101bbc30 CitadelEntrance::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__15CitadelEntranceFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@CitadelEntrance@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00468ef0 mac 101bbce0 CitadelEntrance::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__15CitadelEntranceFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@CitadelEntrance@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00468e50 mac 101bb520 CitadelEntrance::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__15CitadelEntranceFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@CitadelEntrance@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_CITADEL_ENTRANCE_INCLUDED_H */
