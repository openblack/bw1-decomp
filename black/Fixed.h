#ifndef BW1_DECOMP_FIXED_INCLUDED_H
#define BW1_DECOMP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "Object.h" /* For struct Object, struct ObjectVftable */

// Forward Declares

struct FixedObject;
struct GObjectInfo;
struct GameOSFile;
struct GameThing;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct MapCell;
struct MapCoords;
struct NewCollide;
struct SingleMapFixed;

struct FixedObjectVftable
{
  struct ObjectVftable super;  /* 0x0 */
  void (__fastcall* InsertMapObjectToCellAssumeFixed)(struct FixedObject* this, const void* edx, struct MapCell* cell);  /* 0x85c */
  bool (__fastcall* IsObjectFullyInMap)(struct FixedObject* this);  /* 0x860 */
};
static_assert(sizeof(struct FixedObjectVftable) == 0x864, "Data type is of wrong size");

union FixedObjectBase
{
  struct Object super;
  struct ObjectVftable* object_vftable;
  struct FixedObjectVftable* fixed_vftable;
  struct GameThingVftable* gameThing_vftable;
  struct GameThingWithPosVftable* gameThingWithPos_vftable;
};
static_assert(sizeof(union FixedObjectBase) == 0x54, "Data type is of wrong size");

struct FixedObject
{
  union FixedObjectBase base;  /* 0x0 */
  struct GameThing* field_0x54;
};
static_assert(sizeof(struct FixedObject) == 0x58, "Data type is of wrong size");

static struct FixedObjectVftable* const __vt__11FixedObject = (struct FixedObjectVftable* const)0x008db71c;

// Constructors

// win1.41 0052dd80 mac inlined FixedObject::FixedObject(void)
struct FixedObject* __fastcall __ct__11FixedObjectFv(struct FixedObject* this);
// win1.41 0052ddc0 mac 100e1fb0 FixedObject::FixedObject(MapCoords const &, GObjectInfo const *, float, float)
struct FixedObject* __fastcall __ct__11FixedObjectFRC9MapCoordsPC11GObjectInfoff(struct FixedObject* this, const void* edx, const struct MapCoords* coords, const struct GObjectInfo* info, float y_angle, float scale);

// Override methods

// win1.41 0052dda0 mac 100e1f20 FixedObject::_dt(void)
struct Base * __fastcall __dt__11FixedObjectFv(struct Base* this, const void* edx, uint8_t param_1) asm("??1Fixed@@UAE@XZ");
// win1.41 0052df20 mac 100e1bd0 FixedObject::GetTownArtifactValue(void)
float __fastcall GetTownArtifactValue__11FixedObjectFv(struct GameThing* this) asm("?GetTownArtifactValue@Fixed@@UAEMXZ");
// win1.41 0052e170 mac inlined FixedObject::Load(GameOSFile &)
uint32_t __fastcall Load__11FixedObjectFR10GameOSFile(struct FixedObject* this, const void* edx, struct GameOSFile* file);
// win1.41 0052e140 mac 100e17b0 FixedObject::Save(GameOSFile &)
uint32_t __fastcall Save__11FixedObjectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@Fixed@@UAEIPAVGameOSFile@@@Z");
// win1.41 00425c60 mac 100ade90 FixedObject::CanBeFrighteningToCreature(Creature *)
bool __fastcall CanBeFrighteningToCreature__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeFrighteningToCreature@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401410 mac 10570f10 FixedObject::CanBeSleptNextToByCreature(Creature *)
bool __fastcall CanBeSleptNextToByCreature__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeSleptNextToByCreature@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401440 mac 1056c2a0 FixedObject::CanBePickedUpByCreature(Creature *)
bool __fastcall CanBePickedUpByCreature__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePickedUpByCreature@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401430 mac 100b19c0 FixedObject::CanBeSetOnFire(Creature *)
bool __fastcall CanBeSetOnFire__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeSetOnFire@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401420 mac 105e81f0 FixedObject::CanBeDestroyedByStoning(Creature *)
bool __fastcall CanBeDestroyedByStoning__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeDestroyedByStoning@Fixed@@UAE_NPAVCreature@@@Z");
// win1.41 004d1b80 mac 10242ed0 FixedObject::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__11FixedObjectFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@Fixed@@UAEMXZ");
// win1.41 0052de30 mac 100e1ea0 FixedObject::Create3DObject(void)
void __fastcall Create3DObject__11FixedObjectFv(struct Object* this) asm("?Create3DObject@Fixed@@UAEXXZ");
// win1.41 0052e530 mac 100e0b90 FixedObject::InsertMapObject(void)
void __fastcall InsertMapObject__11FixedObjectFv(struct Object* this) asm("?InsertMapObject@Fixed@@UAEXXZ");
// win1.41 0052e5c0 mac 100e0af0 FixedObject::RemoveMapObject(void)
void __fastcall RemoveMapObject__11FixedObjectFv(struct Object* this) asm("?RemoveMapObject@Fixed@@UAEXXZ");
// win1.41 0052dea0 mac 100e1d30 FixedObject::InsertMapObjectToCell(MapCell *)
void __fastcall InsertMapObjectToCell__11FixedObjectFP7MapCell(struct Object* this, const void* edx, struct MapCell* cell);
// win1.41 00401450 mac 1057a200 FixedObject::CanBeCrushed(void)
bool __fastcall CanBeCrushed__11FixedObjectFv(struct Object* this) asm("?CanBeCrushed@Fixed@@UAE_NXZ");
// win1.41 0052eb90 mac 100dff80 FixedObject::ValidForLockedSelectProcess(GInterfaceStatus *)
bool __fastcall ValidForLockedSelectProcess__11FixedObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?ValidForLockedSelectProcess@Fixed@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0052eba0 mac 100dff20 FixedObject::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool __fastcall NetworkFriendlyStartLockedSelect__11FixedObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?NetworkFriendlyStartLockedSelect@Fixed@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0052e0e0 mac 100e1840 FixedObject::InterfaceSetInMagicHand(GInterfaceStatus *)
bool __fastcall InterfaceSetInMagicHand__11FixedObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceSetInMagicHand@Fixed@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0052df50 mac 100e1950 FixedObject::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__11FixedObjectFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Fixed@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00401460 mac 10554e40 FixedObject::VillagerMustAvoid(Villager *)
bool __fastcall VillagerMustAvoid__11FixedObjectFP8Villager(struct Object* this, const void* edx, struct Villager* param_1) asm("?VillagerMustAvoid@Fixed@@UAE_NPAVVillager@@@Z");
// win1.41 0052de50 mac 100e1df0 FixedObject::GetSpecialPos(unsigned long, MapCoords *)
bool32_t __fastcall GetSpecialPos__11FixedObjectFUlP9MapCoords(struct Object* this, const void* edx, uint32_t index, struct MapCoords* pos) asm("?GetSpecialPos@Fixed@@UAE_NIPAUMapCoords@@@Z");
// win1.41 00401470 mac 1057ad40 FixedObject::GetTownArtifact(void)
struct GameThing * __fastcall GetTownArtifact__11FixedObjectFv(struct Object* this) asm("?GetTownArtifact@Fixed@@UAEPAVGameThing@@XZ");
// win1.41 00401480 mac 10588280 FixedObject::IsTownArtifact(void)
bool __fastcall IsTownArtifact__11FixedObjectFv(struct Object* this) asm("?IsTownArtifact@Fixed@@UAE_NXZ");
// win1.41 0052dee0 mac 100e1c70 FixedObject::InsertMapObjectToCellAssumeFixed(MapCell *)
void __fastcall InsertMapObjectToCellAssumeFixed__11FixedObjectFP7MapCell(struct FixedObject* this, const void* edx, struct MapCell* cell);
// win1.41 004252f0 mac 100a9cd0 FixedObject::IsObjectFullyInMap(void)
bool __fastcall IsObjectFullyInMap__11FixedObjectFv(struct FixedObject* this);

struct SingleMapFixedVftable
{
  struct FixedObjectVftable super;  /* 0x0 */
  void (__fastcall* CreateCollideData)(struct SingleMapFixed* this);  /* 0x864 */
};
static_assert(sizeof(struct SingleMapFixedVftable) == 0x868, "Data type is of wrong size");

struct SingleMapFixed
{
  struct FixedObject super;  /* 0x0 */
  struct NewCollide* collide_data;  /* 0x58 */
};
static_assert(sizeof(struct SingleMapFixed) == 0x5c, "Data type is of wrong size");

static struct SingleMapFixedVftable* const __vt__14SingleMapFixed = (struct SingleMapFixedVftable* const)0x008dc894;

// Override methods

// win1.41 0052eb30 mac 10095a30 SingleMapFixed::GetCollideData(void)
struct NewCollide* __fastcall GetCollideData__14SingleMapFixedFv(struct SingleMapFixed* this);
// win1.41 0052f510 mac 100dde20 SingleMapFixed::CreateCollideData(void)
void __fastcall CreateCollideData__14SingleMapFixedFv(struct SingleMapFixed* this);

#endif /* BW1_DECOMP_FIXED_INCLUDED_H */
