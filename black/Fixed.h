#ifndef BW1_DECOMP_FIXED_INCLUDED_H
#define BW1_DECOMP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object, struct ObjectVftable */

// Forward Declares

struct Base;
struct Creature;
struct Fixed;
struct GInterfaceStatus;
struct GObjectInfo;
struct GameOSFile;
struct GameThing;
struct GameThingVftable;
struct GameThingWithPos;
struct GameThingWithPosVftable;
struct GestureSystemPacketData;
struct MapCell;
struct MapCoords;
struct NewCollide;
struct PhysicsObject;
struct SingleMapFixed;
struct Villager;

struct FixedVftable
{
  struct ObjectVftable super;  /* 0x0 */
  void (__fastcall* InsertMapObjectToCellAssumeFixed)(struct Fixed* this, const void* edx, struct MapCell* cell);  /* 0x85c */
  bool (__fastcall* IsObjectFullyInMap)(struct Fixed* this);  /* 0x860 */
};
static_assert(sizeof(struct FixedVftable) == 0x864, "Data type is of wrong size");

union FixedBase
{
  struct Object super;
  struct ObjectVftable* object_vftable;
  struct FixedVftable* fixed_vftable;
  struct GameThingVftable* gameThing_vftable;
  struct GameThingWithPosVftable* gameThingWithPos_vftable;
};
static_assert(sizeof(union FixedBase) == 0x54, "Data type is of wrong size");

struct Fixed
{
  union FixedBase base;  /* 0x0 */
  struct GameThing* town_artifact;  /* 0x54 */
};
static_assert(sizeof(struct Fixed) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c7f68 mac inlined FixedObject::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11FixedObject asm("??_R0?AVFixed@@@8");
// win1.41 009a6408 mac inlined FixedObject::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11FixedObject asm("??_R1A@?0A@A@Fixed@@8");
// win1.41 009ac3f8 mac inlined FixedObject::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11FixedObject asm("??_R2Fixed@@8");
// win1.41 009ac410 mac inlined FixedObject::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11FixedObject asm("??_R3Fixed@@8");
// win1.41 009ac420 mac 1073397c FixedObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11FixedObject asm("??_R4Fixed@@6B@");
// win1.41 008db71c mac 107339a4 FixedObject::`vftable'
extern const struct FixedVftable __vt__11FixedObject asm("??_7Fixed@@6B@");

// Constructors

// win1.41 0052dd80 mac inlined FixedObject::FixedObject(void)
struct Fixed* __fastcall __ct__11FixedObjectFv(struct Fixed* this) asm("??0FixedObject@@QAE@XZ");
// win1.41 0052ddc0 mac 100e1fb0 FixedObject::FixedObject(MapCoords const &, GObjectInfo const *, float, float)
struct Fixed* __fastcall __ct__11FixedObjectFRC9MapCoordsPC11GObjectInfoff(struct Fixed* this, const void* edx, const struct MapCoords* coords, const struct GObjectInfo* info, float y_angle, float scale) asm("??0FixedObject@@QAE@ABUMapCoords@@PBVGObjectInfo@@MM@Z");

// Non-virtual Destructors

// win1.41 0052dda0 mac 100e1f20 FixedObject::_dt(void)
struct Base* __fastcall __dt__11FixedObjectFv(struct Fixed* this, const void* edx, uint8_t param_1) asm("??1Fixed@@UAE@XZ");

// Override methods

// win1.41 0052df20 mac 100e1bd0 FixedObject::GetTownArtifactValue(void)
float __fastcall GetTownArtifactValue__11FixedObjectFv(struct GameThing* this) asm("?GetTownArtifactValue@Fixed@@UAEMXZ");
// win1.41 0052e170 mac inlined FixedObject::Load(GameOSFile &)
uint32_t __fastcall Load__11FixedObjectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@Fixed@@QAEIAAVGGameOSFile@@@Z");
// win1.41 0052e140 mac 100e17b0 FixedObject::Save(GameOSFile &)
uint32_t __fastcall Save__11FixedObjectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@Fixed@@UAEIPAVGameOSFile@@@Z");
// win1.41 00401400 mac 10513b00 FixedObject::CanBeFrighteningToCreature(Creature *)
bool32_t __fastcall CanBeFrighteningToCreature__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeFrighteningToCreature@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401410 mac 10570f10 FixedObject::CanBeSleptNextToByCreature(Creature *)
bool32_t __fastcall CanBeSleptNextToByCreature__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeSleptNextToByCreature@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401440 mac 1056c2a0 FixedObject::CanBePickedUpByCreature(Creature *)
bool32_t __fastcall CanBePickedUpByCreature__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePickedUpByCreature@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401430 mac 100b19c0 FixedObject::CanBeSetOnFire(Creature *)
bool32_t __fastcall CanBeSetOnFire__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeSetOnFire@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401420 mac 105e81f0 FixedObject::CanBeDestroyedByStoning(Creature *)
bool32_t __fastcall CanBeDestroyedByStoning__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeDestroyedByStoning@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 004d1b80 mac 10242ed0 FixedObject::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__11FixedObjectFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@Fixed@@UAEMXZ");
// win1.41 0052de30 mac 100e1ea0 FixedObject::Create3DObject(void)
void __fastcall Create3DObject__11FixedObjectFv(struct Object* this) asm("?Create3DObject@Fixed@@UAEXXZ");
// win1.41 0052e530 mac 100e0b90 FixedObject::InsertMapObject(void)
void __fastcall InsertMapObject__11FixedObjectFv(struct Object* this) asm("?InsertMapObject@Fixed@@UAEXXZ");
// win1.41 0052e5c0 mac 100e0af0 FixedObject::RemoveMapObject(void)
void __fastcall RemoveMapObject__11FixedObjectFv(struct Object* this) asm("?RemoveMapObject@Fixed@@UAEXXZ");
// win1.41 0052dea0 mac 100e1d30 FixedObject::InsertMapObjectToCell(MapCell *)
void __fastcall InsertMapObjectToCell__11FixedObjectFP7MapCell(struct Object* this, const void* edx, struct MapCell* cell) asm("?InsertMapObjectToCell@Fixed@@UAEXPAUMapCell@@@Z");
// win1.41 00401450 mac 1057a200 FixedObject::CanBeCrushed(void)
bool32_t __fastcall CanBeCrushed__11FixedObjectFv(struct Object* this) asm("?CanBeCrushed@Fixed@@UAE_NXZ");
// win1.41 0052eb90 mac 100dff80 FixedObject::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t __fastcall ValidForLockedSelectProcess__11FixedObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?ValidForLockedSelectProcess@Fixed@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0052eba0 mac 100dff20 FixedObject::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyStartLockedSelect__11FixedObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?NetworkFriendlyStartLockedSelect@Fixed@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0052e0e0 mac 100e1840 FixedObject::InterfaceSetInMagicHand(GInterfaceStatus *)
bool32_t __fastcall InterfaceSetInMagicHand__11FixedObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceSetInMagicHand@Fixed@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0052df50 mac 100e1950 FixedObject::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__11FixedObjectFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Fixed@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00401460 mac 10554e40 FixedObject::VillagerMustAvoid(Villager *)
bool32_t __fastcall VillagerMustAvoid__11FixedObjectFP8Villager(struct Object* this, const void* edx, struct Villager* param_1) asm("?VillagerMustAvoid@Fixed@@UAE_NPAVVillager@@@Z");
// win1.41 0052de50 mac 100e1df0 FixedObject::GetSpecialPos(unsigned long, MapCoords *)
bool32_t __fastcall GetSpecialPos__11FixedObjectFUlP9MapCoords(struct Object* this, const void* edx, uint32_t index, struct MapCoords* pos) asm("?GetSpecialPos@Fixed@@UAE_NIPAUMapCoords@@@Z");
// win1.41 00401470 mac 1057ad40 FixedObject::GetTownArtifact(void)
struct GameThing* __fastcall GetTownArtifact__11FixedObjectFv(struct Object* this) asm("?GetTownArtifact@Fixed@@UAEPAVGameThing@@XZ");
// win1.41 00401480 mac 10588280 FixedObject::IsTownArtifact(void)
bool32_t __fastcall IsTownArtifact__11FixedObjectFv(struct Object* this) asm("?IsTownArtifact@Fixed@@UAE_NXZ");
// win1.41 0052dee0 mac 100e1c70 FixedObject::InsertMapObjectToCellAssumeFixed(MapCell *)
void __fastcall InsertMapObjectToCellAssumeFixed__11FixedObjectFP7MapCell(struct Fixed* this, const void* edx, struct MapCell* cell) asm("?InsertMapObjectToCellAssumeFixed@Fixed@@UAEXPAUMapCell@@@Z");
// win1.41 004252f0 mac 100a9cd0 FixedObject::IsObjectFullyInMap(void)
bool __fastcall IsObjectFullyInMap__11FixedObjectFv(struct Fixed* this) asm("?IsObjectFullyInMap@Fixed@@UAE_NXZ");

struct SingleMapFixedVftable
{
  struct FixedVftable super;  /* 0x0 */
  void (__fastcall* CreateCollideData)(struct SingleMapFixed* this);  /* 0x864 */
};
static_assert(sizeof(struct SingleMapFixedVftable) == 0x868, "Data type is of wrong size");

struct SingleMapFixed
{
  struct Fixed super;  /* 0x0 */
  struct NewCollide* collide_data;  /* 0x58 */
};
static_assert(sizeof(struct SingleMapFixed) == 0x5c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9ec8 mac inlined SingleMapFixed::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14SingleMapFixed asm("??_R0?AVSingleMapFixed@@@8");
// win1.41 009ac480 mac inlined SingleMapFixed::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14SingleMapFixed asm("??_R1A@?0A@A@SingleMapFixed@@8");
// win1.41 009ac498 mac inlined SingleMapFixed::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14SingleMapFixed asm("??_R2SingleMapFixed@@8");
// win1.41 009ac4b8 mac inlined SingleMapFixed::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14SingleMapFixed asm("??_R3SingleMapFixed@@8");
// win1.41 008dc890 mac 10740de0 SingleMapFixed::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14SingleMapFixed asm("??_R4SingleMapFixed@@6B@");
// win1.41 008dc894 mac 10740de8 SingleMapFixed::`vftable'
extern const struct SingleMapFixedVftable __vt__14SingleMapFixed asm("??_7SingleMapFixed@@6B@");

// Override methods

// win1.41 0052eb40 mac 100e00a0 SingleMapFixed::_dt(void)
void __fastcall __dt__14SingleMapFixedFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSingleMapFixed@@UAEPAXI@Z");
// win1.41 0052e620 mac 100e0990 SingleMapFixed::InsertMapObject(void)
void __fastcall InsertMapObject__14SingleMapFixedFv(struct Object* this) asm("?InsertMapObject@SingleMapFixed@@UAEXXZ");
// win1.41 0052e600 mac 100e0a30 SingleMapFixed::RemoveMapObject(void)
void __fastcall RemoveMapObject__14SingleMapFixedFv(struct Object* this) asm("?RemoveMapObject@SingleMapFixed@@UAEXXZ");
// win1.41 0052f440 mac 100de110 SingleMapFixed::InsertMapObjectToCell(MapCell *)
void __fastcall InsertMapObjectToCell__14SingleMapFixedFP7MapCell(struct Object* this, const void* edx, struct MapCell* param_1) asm("?InsertMapObjectToCell@SingleMapFixed@@UAEXPAUMapCell@@@Z");
// win1.41 0052f450 mac 100de0a0 SingleMapFixed::RemoveMapObjectFromCell(MapCell *)
void __fastcall RemoveMapObjectFromCell__14SingleMapFixedFP7MapCell(struct Object* this, const void* edx, struct MapCell* param_1) asm("?RemoveMapObjectFromCell@SingleMapFixed@@UAEXPAUMapCell@@@Z");
// win1.41 0052eb10 mac 100e32e0 SingleMapFixed::GetMesh( const(void))
int __fastcall GetMesh__14SingleMapFixedCFv(const struct Object* this) asm("?GetMesh@SingleMapFixed@@UBEHXZ");
// win1.41 00518100 mac 10038230 SingleMapFixed::Draw(void)
void __fastcall Draw__14SingleMapFixedFv(struct Object* this) asm("?Draw@SingleMapFixed@@UAEXXZ");
// win1.41 0052e880 mac 100e0470 SingleMapFixed::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__14SingleMapFixedFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@SingleMapFixed@@UAEXABUMapCoords@@@Z");
// win1.41 0052eaf0 mac 100e3210 SingleMapFixed::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__14SingleMapFixedFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@SingleMapFixed@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0052eb00 mac 100e3270 SingleMapFixed::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToApplyThisToMapCoord__14SingleMapFixedFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ValidToApplyThisToMapCoord@SingleMapFixed@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z");
// win1.41 0052f420 mac 100de180 SingleMapFixed::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToMapCoord__14SingleMapFixedFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToMapCoord@SingleMapFixed@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z");
// win1.41 0052eb20 mac 100e3350 SingleMapFixed::ApplyOnlyAfterReleased(void)
uint32_t __fastcall ApplyOnlyAfterReleased__14SingleMapFixedFv(struct Object* this) asm("?ApplyOnlyAfterReleased@SingleMapFixed@@UAEIXZ");
// win1.41 0052eb30 mac 10095a30 SingleMapFixed::GetCollideData(void)
struct NewCollide* __fastcall GetCollideData__14SingleMapFixedFv(const struct Object* this) asm("?GetCollideData@SingleMapFixed@@UAEPAUNewCollide@@XZ");
// win1.41 0052f510 mac 100dde20 SingleMapFixed::CreateCollideData(void)
void __fastcall CreateCollideData__14SingleMapFixedFv(struct SingleMapFixed* this) asm("?CreateCollideData@SingleMapFixed@@UAEXXZ");

#endif /* BW1_DECOMP_FIXED_INCLUDED_H */
