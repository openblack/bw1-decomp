#ifndef BW1_DECOMP_SCAFFOLD_INCLUDED_H
#define BW1_DECOMP_SCAFFOLD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct GestureSystemPacketData;
struct LHOSFile;
struct LHPoint;
struct Living;
struct MapCoords;
struct Object;
struct PhysicsObject;
struct Reaction;
struct Town;

struct Scaffold
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0x34];
};
static_assert(sizeof(struct Scaffold) == 0x9c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bece58 mac inlined Scaffold::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Scaffold asm("??_R0?AVScaffold@@@8");
// win1.41 009ae618 mac inlined Scaffold::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Scaffold asm("??_R1A@?0A@A@Scaffold@@8");
// win1.41 009ae630 mac inlined Scaffold::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Scaffold asm("??_R2Scaffold@@8");
// win1.41 009ae650 mac inlined Scaffold::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Scaffold asm("??_R3Scaffold@@8");
// win1.41 008e5528 mac 1075a2f8 Scaffold::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Scaffold asm("??_R4Scaffold@@6B@");
// win1.41 008e552c mac 1075a300 Scaffold::`vftable'
extern const struct MobileObjectVftable __vt__8Scaffold asm("??_7Scaffold@@6B@");

// Override methods

// win1.41 0055e150 mac 10143e00 Scaffold::_dt(void)
void __fastcall __dt__8ScaffoldFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GScaffold@@UAEPAXI@Z");
// win1.41 006e83e0 mac 10143cd0 Scaffold::ToBeDeleted(int)
void __fastcall ToBeDeleted__8ScaffoldFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Scaffold@@UAEXH@Z");
// win1.41 0055e120 mac 1013e660 Scaffold::GetTown(void)
struct Town* __fastcall GetTown__8ScaffoldFv(struct GameThing* this) asm("?GetTown@Scaffold@@UAEPAVTown@@XZ");
// win1.41 006eaef0 mac 1013eaf0 Scaffold::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__8ScaffoldF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@Scaffold@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 005181a0 mac 100c8e20 Scaffold::DrawInHand(GInterfaceStatus *)
void __fastcall DrawInHand__8ScaffoldFP16GInterfaceStatus(struct GameThing* this, const void* edx, struct GInterfaceStatus* param_1) asm("?DrawInHand@Scaffold@@UAEXPAVGInterfaceStatus@@@Z");
// win1.41 0055e140 mac 1013e6d0 Scaffold::GetDebugText(void)
char* __fastcall GetDebugText__8ScaffoldFv(struct GameThing* this) asm("?GetDebugText@Scaffold@@UAEPADXZ");
// win1.41 006ea3d0 mac 10140100 Scaffold::Load(GameOSFile &)
uint32_t __fastcall Load__8ScaffoldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Scaffold@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ea240 mac 10140340 Scaffold::Save(GameOSFile &)
uint32_t __fastcall Save__8ScaffoldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Scaffold@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055e130 mac 1013e690 Scaffold::GetSaveType(void)
uint32_t __fastcall GetSaveType__8ScaffoldFv(struct GameThing* this) asm("?GetSaveType@Scaffold@@UAEIXZ");
// win1.41 006ea560 mac 1013ffc0 Scaffold::ResolveLoad(void)
void __fastcall ResolveLoad__8ScaffoldFv(struct GameThing* this) asm("?ResolveLoad@Scaffold@@UAEXXZ");
// win1.41 006ea9d0 mac 1013f6d0 Scaffold::GetOverwritePickUpToolTip(void)
uint32_t __fastcall GetOverwritePickUpToolTip__8ScaffoldFv(struct GameThingWithPos* this) asm("?GetOverwritePickUpToolTip@Scaffold@@UAEIXZ");
// win1.41 006e9860 mac 10141650 Scaffold::GetOverwriteDropToolTip(void)
uint32_t __fastcall GetOverwriteDropToolTip__8ScaffoldFv(struct GameThingWithPos* this) asm("?GetOverwriteDropToolTip@Scaffold@@UAEIXZ");
// win1.41 006ea770 mac 1013fba0 Scaffold::GetImpressiveValue(Living *, Reaction *)
float __fastcall GetImpressiveValue__8ScaffoldFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2) asm("?GetImpressiveValue@Scaffold@@UAEMPAVLiving@@PAVReaction@@@Z");
// win1.41 006ea9e0 mac 1013f670 Scaffold::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
float __fastcall GetUpdateOfBoredomValue__8ScaffoldFP8ReactionP16GameThingWithPos(struct GameThingWithPos* this, const void* edx, struct Reaction* param_1, struct GameThingWithPos* param_2) asm("?GetUpdateOfBoredomValue@Scaffold@@UAEMPAVReaction@@PAVGameThingWithPos@@@Z");
// win1.41 004e3fc0 mac 105e6330 Scaffold::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__8ScaffoldFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@Scaffold@@UAEIPAVCreature@@@Z");
// win1.41 004e3ff0 mac 105e6220 Scaffold::CanBeStolenByCreature(Creature *)
uint32_t __fastcall CanBeStolenByCreature__8ScaffoldFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStolenByCreature@Scaffold@@UAEIPAVCreature@@@Z");
// win1.41 004e4070 mac 105e6100 Scaffold::IsStealableScaffold(Creature *)
uint32_t __fastcall IsStealableScaffold__8ScaffoldFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStealableScaffold@Scaffold@@UAEIPAVCreature@@@Z");
// win1.41 0055e100 mac 1013e5d0 Scaffold::IsScaffold(void)
uint32_t __fastcall IsScaffold__8ScaffoldFv(struct GameThingWithPos* this) asm("?IsScaffold@Scaffold@@UAEIXZ");
// win1.41 006eab60 mac 1013f280 Scaffold::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__8ScaffoldFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Scaffold@@UAEIXZ");
// win1.41 006e9890 mac 10141590 Scaffold::ActualMoveMapObject(MapCoords const &)
void __fastcall ActualMoveMapObject__8ScaffoldFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?ActualMoveMapObject@Scaffold@@UAEXPBUMapCoords@@@Z");
// win1.41 006ea5c0 mac 1013fd30 Scaffold::Draw(void)
void __fastcall Draw__8ScaffoldFv(struct Object* this) asm("?Draw@Scaffold@@UAEXXZ");
// win1.41 006e8540 mac 10143a70 Scaffold::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__8ScaffoldFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Scaffold@@UAEXABUMapCoords@@@Z");
// win1.41 006eaea0 mac 1013ec20 Scaffold::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__8ScaffoldF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?IsResourceStore@Scaffold@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 006eaec0 mac 1013eb90 Scaffold::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool __fastcall DeleteObjectAndTakeResource__8ScaffoldFP6ObjectP16GInterfaceStatus(struct Object* this, const void* edx, struct Object* param_1, struct GInterfaceStatus* param_2) asm("?DeleteObjectAndTakeResource@Scaffold@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z");
// win1.41 0055e0f0 mac 1013e590 Scaffold::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__8ScaffoldFv(struct Object* this) asm("?GetResourceType@Scaffold@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 006e9d30 mac 10140dd0 Scaffold::GetDefaultResource(void)
int __fastcall GetDefaultResource__8ScaffoldFv(struct Object* this) asm("?GetDefaultResource@Scaffold@@UAEHXZ");
// win1.41 006e96a0 mac 10141b10 Scaffold::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__8ScaffoldFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@Scaffold@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e96e0 mac 101419a0 Scaffold::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__8ScaffoldFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@Scaffold@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e9770 mac 10141720 Scaffold::InterfaceSetOutMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetOutMagicHand__8ScaffoldFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetOutMagicHand@Scaffold@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e9900 mac 101413a0 Scaffold::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__8ScaffoldFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@Scaffold@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 006e99e0 mac 10141130 Scaffold::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__8ScaffoldFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@Scaffold@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 006e9d80 mac 10140c50 Scaffold::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__8ScaffoldFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@Scaffold@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e9dd0 mac 10140af0 Scaffold::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__8ScaffoldFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@Scaffold@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006eab70 mac 1013f210 Scaffold::ThrowObjectFromHand(GInterfaceStatus *, int)
uint32_t __fastcall ThrowObjectFromHand__8ScaffoldFP16GInterfaceStatusi(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, int param_2) asm("?ThrowObjectFromHand@Scaffold@@UAEIPAVGInterfaceStatus@@H@Z");
// win1.41 006ea8a0 mac 1013f9a0 Scaffold::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
uint32_t __fastcall InitialisePhysicsFromHand__8ScaffoldFR7LHPointR7LHPointP16GInterfaceStatusP6Objecti(struct Object* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, struct GInterfaceStatus* param_3, struct Object* param_4, int param_5) asm("?InitialisePhysicsFromHand@Scaffold@@UAEIAAULHPoint@@0PAVGInterfaceStatus@@PAVObject@@H@Z");
// win1.41 006ea840 mac 1013faa0 Scaffold::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
uint32_t __fastcall InitialisePhysics__8ScaffoldFRC7LHPointRC7LHPointP6ObjectbP16GInterfaceStatus(struct Object* this, const void* edx, const struct LHPoint* param_1, const struct LHPoint* param_2, struct Object* param_3, bool param_4, struct GInterfaceStatus* param_5) asm("?InitialisePhysics@Scaffold@@UAEIABULHPoint@@0PAVObject@@_NPAVGInterfaceStatus@@@Z");
// win1.41 006e8770 mac 10143680 Scaffold::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__8ScaffoldFv(struct Object* this) asm("?GetPhysicsConstantsType@Scaffold@@UAEIXZ");
// win1.41 006e8780 mac 101434e0 Scaffold::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__8ScaffoldFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Scaffold@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0055e110 mac 1013e610 Scaffold::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__8ScaffoldFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Scaffold@@UAE_NXZ");
// win1.41 006ea940 mac 1013f890 Scaffold::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__8ScaffoldFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Scaffold@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 006ea910 mac 1013f8e0 Scaffold::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__8ScaffoldFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Scaffold@@UAE_NXZ");
// win1.41 006e8570 mac 101436c0 Scaffold::ProcessInHand(void)
bool __fastcall ProcessInHand__8ScaffoldFv(struct Object* this) asm("?ProcessInHand@Scaffold@@UAE_NXZ");
// win1.41 006eaf30 mac 1013e710 Scaffold::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__8ScaffoldFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Scaffold@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_SCAFFOLD_INCLUDED_H */
