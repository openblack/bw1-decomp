#ifndef BW1_DECOMP_MAP_INCLUDED_H
#define BW1_DECOMP_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum OBJECT_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

// Forward Declares

struct Fixed;
struct Object;

struct MapCell
{
  struct Object* first_object_mobile;  /* 0x0 */
  struct Object* first_object_fixed;
};
static_assert(sizeof(struct MapCell) == 0x8, "Data type is of wrong size");

// Static methods

// win1.41 00601510 mac 1000b040 MapCell::DoesObjectTypeCountAsFixed(OBJECT_TYPE)
bool __cdecl DoesObjectTypeCountAsFixed__7MapCellF11OBJECT_TYPE(enum OBJECT_TYPE type) asm("?DoesObjectTypeCountAsFixed@MapCell@@SA_NW4OBJECT_TYPE@@@Z");

// Non-virtual methods

// win1.41 00601b60 mac 10054090 MapCell::SetFirstObjectMobile(Object *)
void __fastcall SetFirstObjectMobile__7MapCellFP6Object(struct MapCell* this, const void* edx, struct Object* object) asm("?SetFirstObjectMobile@MapCell@@QAEXPAVObject@@@Z");
// win1.41 00601b70 mac 104a6ee0 MapCell::SetFirstObjectFixed(Object *)
void __fastcall SetFirstObjectFixed__7MapCellFP6Object(struct MapCell* this, const void* edx, struct Object* object) asm("?SetFirstObjectFixed@MapCell@@QAEXPAVObject@@@Z");
// win1.41 00601380 mac 101cbfc0 MapCell::Clean(void)
void __fastcall Clean__7MapCellFv(struct MapCell* this) asm("?Clean@MapCell@@QAEXXZ");
// win1.41 006015e0 mac 100121f0 MapCell::FindTypeOnMap(OBJECT_TYPE, Object *) const
struct Object* __fastcall FindTypeOnMap__7MapCellCF11OBJECT_TYPEP6Object(struct MapCell* this, const void* edx, enum OBJECT_TYPE type, struct Object* object) asm("?FindTypeOnMap@MapCell@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z");
// win1.41 00601b80 mac 100544d0 MapCell::GetX(void) const
uint32_t __fastcall GetX__7MapCellCFv(const struct MapCell* this) asm("?GetX@MapCell@@QBEIXZ");
// win1.41 00601ba0 mac 10054640 MapCell::GetZ(void) const
uint32_t __fastcall GetZ__7MapCellCFv(const struct MapCell* this) asm("?GetZ@MapCell@@QBEIXZ");
// win1.41 00601690 mac 10570500 MapCell::FindFixedOnMap(Object *)
struct Fixed* __fastcall FindFixedOnMap__7MapCellFP6Object(struct MapCell* this, const void* edx, struct Object* param_1) asm("?FindFixedOnMap@MapCell@@QAEPAVFixed@@PAVObject@@@Z");

struct MapCellIterator
{
  struct Object* object;  /* 0x0 */
  bool is_fixed;
  struct MapCell* cell;
};
static_assert(sizeof(struct MapCellIterator) == 0xc, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac 1002c620 MapCellIterator::MoveToMobileObsIfNeededAndPoss(void)
void __fastcall MoveToMobileObsIfNeededAndPoss__15MapCellIteratorFv(struct MapCellIterator* this) asm("?MoveToMobileObsIfNeededAndPoss@MapCellIterator@@QAEXXZ");

struct GMap
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8;
  uint8_t field_0x9;
  uint8_t field_0xa;
  uint8_t field_0xb;
  uint32_t cell_extent_zx[0x2];
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint8_t field_0x3c;
  uint8_t field_0x3d;
  uint8_t field_0x3e;
  uint8_t field_0x3f;
  uint32_t field_0x40;
  struct MapCell cells[0x200][0x200];
  uint16_t count_0x200044;
  uint8_t field_0x200046;
  uint8_t field_0x200047;
  uint8_t field_0x200048;
  uint8_t field_0x200049;
  uint8_t field_0x20004a;
  uint8_t field_0x20004b;
  uint8_t field_0x20004c;
  uint8_t field_0x20004d;
  uint8_t field_0x20004e;
  uint8_t field_0x20004f;
};
static_assert(sizeof(struct GMap) == 0x200050, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4140 mac inlined GMap::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4GMap asm("??_R0?AVGMap@@@8");
// win1.41 009b1ef0 mac inlined GMap::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4GMap asm("??_R1A@?0A@A@GMap@@8");
// win1.41 009b1f08 mac inlined GMap::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4GMap asm("??_R2GMap@@8");
// win1.41 009b1f18 mac inlined GMap::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4GMap asm("??_R3GMap@@8");

// Constructors

// win1.41 00601080 mac 10552040 GMap::GMap(void)
struct GMap* __fastcall __ct__4GMapFv(struct GMap* this) asm("??0GMap@@QAE@XZ");

// Non-virtual methods

// win1.41 00612660 mac 100fddf0 GMap::ToMap(long, long)
struct MapCell* __fastcall ToMap__4GMapFll(struct GMap* this, const void* edx, uint32_t cell_x, uint32_t cell_z) asm("?ToMap@GMap@@QAEPAUMapCell@@JJ@Z");
// win1.41 00612690 mac 10049c10 GMap::InBounds(long, long)
bool __fastcall InBounds__4GMapCFll(struct GMap* this, const void* edx, uint32_t x, uint32_t z) asm("?InBounds@GMap@@QBE_NJJ@Z");

// Override methods

// win1.41 006010c0 mac 1055f620 GMap::_dt(void)
void __fastcall __dt__4GMapFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMap@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAP_INCLUDED_H */
