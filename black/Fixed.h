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

// win1.41 0052e170 mac inlined FixedObject::Load(GameOSFile &)
uint32_t __fastcall Load__11FixedObjectFR10GameOSFile(struct FixedObject* this, const void* edx, struct GameOSFile* file);
// win1.41 0052de30 mac 100e1ea0 FixedObject::Create3DObject(void)
void __fastcall Create3DObject__11FixedObjectFv(struct FixedObject* this);
// win1.41 0052dea0 mac 100e1d30 FixedObject::InsertMapObjectToCell(MapCell *)
void __fastcall InsertMapObjectToCell__11FixedObjectFP7MapCell(struct FixedObject* this, const void* edx, struct MapCell* cell);
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
