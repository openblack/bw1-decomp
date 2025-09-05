#ifndef BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H
#define BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "Mobile.h" /* For struct Mobile, struct MobileVftable */

// Forward Declares

struct GMobileObjectInfo;
struct MapCell;
struct MapCoords;
struct Object;

struct MobileObjectVftable
{
  struct MobileVftable super;  /* 0x0 */
};
static_assert(sizeof(struct MobileObjectVftable) == 0x85c, "Data type is of wrong size");

union MobileObjectBase
{
  struct Mobile super;
  struct MobileObjectVftable* vftable;
};
static_assert(sizeof(union MobileObjectBase) == 0x58, "Data type is of wrong size");

struct MobileObject
{
  union MobileObjectBase base;  /* 0x0 */
  struct Object* object;  /* 0x58 */
  uint32_t field_0x5C;
  uint32_t field_0x60;
  uint32_t field_0x64;
};
static_assert(sizeof(struct MobileObject) == 0x68, "Data type is of wrong size");

// win1.41 008eed18 mac 106f3288 MobileObject::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12MobileObject asm("??_R4MobileObject@@6B@");

// win1.41 008eed1c mac 109ab974 MobileObject::`vftable'
extern const struct MobileObjectVftable __vt__12MobileObject asm("??_7MobileObject@@6B@");

// Static methods

// win1.41 00606fc0 mac 1008e240 MobileObject::AddMobileObjectCheckSum(void)
void __cdecl AddMobileObjectCheckSum__12MobileObjectFv(void);

// Constructors

// win1.41 00600d80 mac 1011a5a0 MobileObject::MobileObject(void)
struct MobileObject* __fastcall __ct__12MobileObjectFv(struct MobileObject* this);
// win1.41 00606e40 mac 103bde00 MobileObject::MobileObject(MapCoords const &, GMobileObjectInfo const *, Object *, float, float)
struct MobileObject* __fastcall __ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff(const struct MobileObject* this, const void* edx, struct MapCoords* coords, const struct GMobileObjectInfo* info, struct Object* param_4, float param_5, float param_6);

// Override methods

// win1.41 00607250 mac 103bd0c0 MobileObject::InsertMapObjectToCell(MapCell *)
void __fastcall InsertMapObjectToCell__12MobileObjectFP7MapCell(struct MobileObject* this, const void* edx, struct MapCell* cell);
// win1.41 00607265 mac 103bd050 MobileObject::RemoveMapObjectFromCell(MapCell *)
void __fastcall RemoveMapObjectFromCell__12MobileObjectFP7MapCell(struct MobileObject* this, const void* edx, struct MapCell* cell);

DECLARE_LH_LINKED_LIST(MobileObject);

#endif /* BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H */
