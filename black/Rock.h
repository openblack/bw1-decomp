#ifndef BW1_DECOMP_ROCK_INCLUDED_H
#define BW1_DECOMP_ROCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MobileStatic.h" /* For struct MobileStatic */
#include "MultiMapFixed.h" /* For struct MultiMapFixedVftable */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GMobileStaticInfo;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;
struct PhysicsObject;
struct Rock;

struct RockVftable
{
  struct MultiMapFixedVftable super;  /* 0x0 */
  bool (__fastcall* IsMovable)(struct Rock* this);  /* 0x90c */
};
static_assert(sizeof(struct RockVftable) == 0x910, "Data type is of wrong size");

struct Rock
{
  struct MobileStatic super;  /* 0x0 */
  uint32_t field_0x88;
  float field_0x8c;
  struct GPlayer* player;  /* 0x90 */
};
static_assert(sizeof(struct Rock) == 0x94, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd328 mac inlined Rock::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Rock asm("??_R0?AVRock@@@8");
// win1.41 009a8510 mac inlined Rock::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Rock asm("??_R1A@?0A@A@Rock@@8");
// win1.41 009ae568 mac inlined Rock::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Rock asm("??_R2Rock@@8");
// win1.41 009ae590 mac inlined Rock::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Rock asm("??_R3Rock@@8");
// win1.41 008e20fc mac 107387e8 Rock::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__4Rock asm("??_R4Rock@@6B@");
// win1.41 008e2100 mac 10738828 Rock::`vftable'
extern const struct RockVftable __vt__4Rock asm("??_7Rock@@6B@");

// Constructors

// win1.41 006e6f70 mac 1013dda0 Rock::Rock(MapCoords const &, GMobileStaticInfo const *, Object *, GPlayer *, float, float)
struct Rock* __fastcall __ct__4RockFRC9MapCoordsPC17GMobileStaticInfoP6ObjectP7GPlayerff(struct Rock* this, const void* edx, struct MapCoords* coords, struct GMobileStaticInfo* info, struct Object* param_3, struct GPlayer* param_4, float param_5, float param_6) asm("??0Rock@@QAE@ABUMapCoords@@PBVGMobileStaticInfo@@PAVObject@@PAVGPlayer@@MM@Z");

// Override methods

// win1.41 005613a0 mac 100b4de0 Rock::_dt(void)
void __fastcall __dt__4RockFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRock@@UAEPAXI@Z");
// win1.41 006e77a0 mac 1013d1f0 Rock::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__4RockFv(struct GameThing* this) asm("?GetPlayer@Rock@@UAEPAVGPlayer@@XZ");
// win1.41 00439720 mac 100b3f50 Rock::SetPlayer(GPlayer *)
void __fastcall SetPlayer__4RockFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@Rock@@UAEXPAVGPlayer@@@Z");
// win1.41 006e7170 mac 1013d800 Rock::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__4RockF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@Rock@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 006e70d0 mac 1013d970 Rock::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__4RockF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@Rock@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 00561390 mac 100c4210 Rock::GetDebugText(void)
char* __fastcall GetDebugText__4RockFv(struct GameThing* this) asm("?GetDebugText@Rock@@UAEPADXZ");
// win1.41 0071bcd0 mac 1050fda0 Rock::GetSampleForAttack(void)
uint32_t __fastcall GetSampleForAttack__4RockFv(struct GameThing* this) asm("?GetSampleForAttack@Rock@@UAEIXZ");
// win1.41 006e7870 mac 1013cfa0 Rock::Load(GameOSFile &)
uint32_t __fastcall Load__4RockFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Rock@@UAEIAAVGameOSFile@@@Z");
// win1.41 006e77b0 mac 1013d0c0 Rock::Save(GameOSFile &)
uint32_t __fastcall Save__4RockFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Rock@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561380 mac 100c41e0 Rock::GetSaveType(void)
uint32_t __fastcall GetSaveType__4RockFv(struct GameThing* this) asm("?GetSaveType@Rock@@UAEIXZ");
// win1.41 006e79f0 mac 1013c460 Rock::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__4RockFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@Rock@@UAEXH@Z");
// win1.41 006e7a60 mac 1013c420 Rock::GetOverwriteTapToolTip(void)
uint32_t __fastcall GetOverwriteTapToolTip__4RockFv(struct GameThingWithPos* this) asm("?GetOverwriteTapToolTip@Rock@@UAEIXZ");
// win1.41 00439730 mac inlined Rock::IsRock_0(void)
uint32_t __fastcall IsRock_0__4RockFv(struct GameThingWithPos* this) asm("?IsRock@Rock@@UAEIXZ");
// win1.41 00439760 mac 100b4030 Rock::CanBeAttackedByCreature(Creature *)
uint32_t __fastcall CanBeAttackedByCreature__4RockFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeAttackedByCreature@Rock@@UAEIPAVCreature@@@Z");
// win1.41 006e7a70 mac 1013c3c0 Rock::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__4RockFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@Rock@@UAEIPAVCreature@@@Z");
// win1.41 00439750 mac 100b3ff0 Rock::GetCreatureMimicType(void)
uint32_t __fastcall GetCreatureMimicType__4RockFv(struct GameThingWithPos* this) asm("?GetCreatureMimicType@Rock@@UAEIXZ");
// win1.41 006e7070 mac 1013dbc0 Rock::CanBeThrownByPlayer(void)
uint32_t __fastcall CanBeThrownByPlayer__4RockFv(struct GameThingWithPos* this) asm("?CanBeThrownByPlayer@Rock@@UAEIXZ");
// win1.41 006e79e0 mac 1000ef30 Rock::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__4RockFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Rock@@UAEIXZ");
// win1.41 006e7210 mac 1013d710 Rock::ActualMoveMapObject(MapCoords const &)
void __fastcall ActualMoveMapObject__4RockFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?ActualMoveMapObject@Rock@@UAEXPBUMapCoords@@@Z");
// win1.41 00517f10 mac 10042fe0 Rock::Draw(void)
void __fastcall Draw__4RockFv(struct Object* this) asm("?Draw@Rock@@UAEXXZ");
// win1.41 00439710 mac 100b3f00 Rock::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__4RockF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?IsResourceStore@Rock@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 006e70c0 mac 1013dad0 Rock::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__4RockFv(struct Object* this) asm("?GetResourceType@Rock@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 006e7090 mac 1013db10 Rock::GetDefaultResource(void)
int __fastcall GetDefaultResource__4RockFv(struct Object* this) asm("?GetDefaultResource@Rock@@UAEHXZ");
// win1.41 006e7030 mac 1013dc40 Rock::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__4RockFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@Rock@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e7450 mac 1013d680 Rock::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__4RockFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@Rock@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e7480 mac 1013d4e0 Rock::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__4RockFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@Rock@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e6ff0 mac 1013dd60 Rock::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__4RockFv(struct Object* this) asm("?GetPhysicsConstantsType@Rock@@UAEIXZ");
// win1.41 006e7000 mac 1013dd00 Rock::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__4RockFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Rock@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00561370 mac 100c41a0 Rock::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__4RockFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Rock@@UAE_NXZ");
// win1.41 006e7930 mac 1013ce40 Rock::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__4RockFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Rock@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00439770 mac 100b4080 Rock::ShouldFootpathsGoRound(void)
bool __fastcall ShouldFootpathsGoRound__4RockFv(struct Object* this) asm("?ShouldFootpathsGoRound@Rock@@UAE_NXZ");
// win1.41 00439740 mac 100b3fc0 Rock::IsMovable(void)
bool __fastcall IsMovable__4RockFv(struct Rock* this) asm("?IsMovable@Rock@@UAE_NXZ");

#endif /* BW1_DECOMP_ROCK_INCLUDED_H */
