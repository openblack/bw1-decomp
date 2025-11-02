#ifndef BW1_DECOMP_WORKSHOP_INCLUDED_H
#define BW1_DECOMP_WORKSHOP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;
struct Scaffold;
struct Villager;

struct Workshop
{
  struct Abode super;  /* 0x0 */
  uint8_t field_0xc4[0x24];
};
static_assert(sizeof(struct Workshop) == 0xe8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf1a10 mac inlined Workshop::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Workshop asm("??_R0?AVWorkshop@@@8");
// win1.41 009ba258 mac inlined Workshop::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Workshop asm("??_R1A@?0A@A@Workshop@@8");
// win1.41 009ba270 mac inlined Workshop::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Workshop asm("??_R2Workshop@@8");
// win1.41 009ba298 mac inlined Workshop::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Workshop asm("??_R3Workshop@@8");
// win1.41 0099bb1c mac 1075a25c Workshop::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Workshop asm("??_R4Workshop@@6B@");
// win1.41 0099bb20 mac 106f651c Workshop::`vftable'
extern const struct AbodeVftable __vt__8Workshop asm("??_7Workshop@@6B@");

// Non-virtual methods

// win1.41 00779af0 mac 10163550 Workshop::GetSpaceInStore(void)
int __fastcall GetSpaceInStore__8WorkshopFv(struct Workshop* this) asm("?GetSpaceInStore@Workshop@@QAEHXZ");
// win1.41 00779b60 mac 101633e0 Workshop::GetDesireToBeSupplied(void)
float __fastcall GetDesireToBeSupplied__8WorkshopFv(struct Workshop* this) asm("?GetDesireToBeSupplied@Workshop@@QAEMXZ");
// win1.41 00779b90 mac 101632f0 Workshop::GetVisualWoodDesire(void)
float __fastcall GetVisualWoodDesire__8WorkshopFv(struct Workshop* this) asm("?GetVisualWoodDesire@Workshop@@QAEMXZ");

// Override methods

// win1.41 00779320 mac 101644f0 Workshop::_dt(void)
void __fastcall __dt__8WorkshopFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWorkshop@@UAEPAXI@Z");
// win1.41 00779480 mac 101642d0 Workshop::ToBeDeleted(int)
void __fastcall ToBeDeleted__8WorkshopFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Workshop@@UAEXH@Z");
// win1.41 00779e00 mac 10162ee0 Workshop::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__8WorkshopF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@Workshop@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 00779ec0 mac 10162dc0 Workshop::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__8WorkshopF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@Workshop@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 00779310 mac 10164960 Workshop::GetDebugText(void)
char* __fastcall GetDebugText__8WorkshopFv(struct GameThing* this) asm("?GetDebugText@Workshop@@UAEPADXZ");
// win1.41 0077a630 mac 10161f20 Workshop::GetShowNeedsPos(unsigned long, MapCoords *)
uint32_t __fastcall GetShowNeedsPos__8WorkshopFUlP9MapCoords(struct GameThing* this, const void* edx, uint32_t param_1, struct MapCoords* param_2) asm("?GetShowNeedsPos@Workshop@@UAEIIPAUMapCoords@@@Z");
// win1.41 0077a130 mac 101625f0 Workshop::Load(GameOSFile &)
uint32_t __fastcall Load__8WorkshopFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Workshop@@UAEIAAVGameOSFile@@@Z");
// win1.41 00779f40 mac 101629d0 Workshop::Save(GameOSFile &)
uint32_t __fastcall Save__8WorkshopFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Workshop@@UAEIAAVGameOSFile@@@Z");
// win1.41 00779300 mac 10164920 Workshop::GetSaveType(void)
uint32_t __fastcall GetSaveType__8WorkshopFv(struct GameThing* this) asm("?GetSaveType@Workshop@@UAEIXZ");
// win1.41 0077a330 mac 101625a0 Workshop::ResolveLoad(void)
void __fastcall ResolveLoad__8WorkshopFv(struct GameThing* this) asm("?ResolveLoad@Workshop@@UAEXXZ");
// win1.41 007792e0 mac 10164890 Workshop::CanActAsAContainer(Creature *)
uint32_t __fastcall CanActAsAContainer__8WorkshopFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanActAsAContainer@Workshop@@UAEIPAVCreature@@@Z");
// win1.41 007792f0 mac 101648e0 Workshop::IsStoragePit(Creature *)
uint32_t __fastcall IsStoragePit__8WorkshopFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStoragePit@Workshop@@UAEIPAVCreature@@@Z");
// win1.41 007792c0 mac inlined Workshop::IsWorkshop_0(void)
uint32_t __fastcall IsWorkshop_0__8WorkshopFv(struct GameThingWithPos* this) asm("?IsWorkshop@Workshop@@UAEIXZ");
// win1.41 007792d0 mac inlined Workshop::IsWorkshop_1(Creature *)
uint32_t __fastcall IsWorkshop_1__8WorkshopFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsWorkshop@Workshop@@UAEIPAVCreature@@@Z");
// win1.41 0077a6d0 mac 10161cd0 Workshop::CreateBuildingSite(void)
uint32_t __fastcall CreateBuildingSite__8WorkshopFv(struct GameThingWithPos* this) asm("?CreateBuildingSite@Workshop@@UAEIXZ");
// win1.41 0077a610 mac 10161f90 Workshop::ScaffoldMoved(Scaffold *)
void __fastcall ScaffoldMoved__8WorkshopFP8Scaffold(struct Object* this, const void* edx, struct Scaffold* param_1) asm("?ScaffoldMoved@Workshop@@UAEXPAVScaffold@@@Z");
// win1.41 007797f0 mac 10163a50 Workshop::Process(void)
uint32_t __fastcall Process__8WorkshopFv(struct Object* this) asm("?Process@Workshop@@UAEIXZ");
// win1.41 0051cbf0 mac 100c4240 Workshop::Draw(void)
void __fastcall Draw__8WorkshopFv(struct Object* this) asm("?Draw@Workshop@@UAEXXZ");
// win1.41 0077a340 mac 10162470 Workshop::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__8WorkshopFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2) asm("?GetDiscipleStateIfInteractedWith@Workshop@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 007793e0 mac 101643c0 Workshop::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__8WorkshopFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Workshop@@UAEXABUMapCoords@@@Z");
// win1.41 007792b0 mac 101647d0 Workshop::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__8WorkshopFv(struct Object* this) asm("?Get3DType@Workshop@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 0077a650 mac 10161e90 Workshop::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__8WorkshopF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?IsResourceStore@Workshop@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 00779f20 mac 10162d40 Workshop::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool __fastcall DeleteObjectAndTakeResource__8WorkshopFP6ObjectP16GInterfaceStatus(struct Object* this, const void* edx, struct Object* param_1, struct GInterfaceStatus* param_2) asm("?DeleteObjectAndTakeResource@Workshop@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z");
// win1.41 0077a680 mac 10161d90 Workshop::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
bool __fastcall DoCreatureMimicAfterAddingResource__8WorkshopF13RESOURCE_TYPER16GInterfaceStatus(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1, struct GInterfaceStatus* param_2) asm("?DoCreatureMimicAfterAddingResource@Workshop@@UAE_NW4RESOURCE_TYPE@@AAVGInterfaceStatus@@@Z");

#endif /* BW1_DECOMP_WORKSHOP_INCLUDED_H */
