#ifndef BW1_DECOMP_FIELD_INCLUDED_H
#define BW1_DECOMP_FIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct GAbodeInfo;
struct GFieldTypeInfo;
struct MapCoords;
struct Town;

struct Field
{
  struct Abode super;  /* 0x0 */
  struct Field* next;  /* 0xc4 */
  uint32_t field_0xc8;
  uint8_t field_0xcc;
  uint32_t field_0xd0;
  uint32_t field_0xd4;
  uint32_t field_0xd8;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
  float field_0xe4;
  float field_0xe8;
  float field_0xec;
  uint32_t field_0xf0;
  uint32_t field_0xf4;
  uint32_t field_0xf8;
  uint32_t field_0xfc;
  uint32_t field_0x100;
  float field_0x104;
  uint32_t field_0x108;
  uint32_t field_0x10c;
  uint32_t field_0x110;
  uint32_t field_0x114;
  struct Town* town;
  int field_0x11c;
  struct GFieldTypeInfo* type_info;  /* 0x120 */
};
static_assert(sizeof(struct Field) == 0x124, "Data type is of wrong size");

static struct MultiMapFixedVftable* __vt__5Field = (struct MultiMapFixedVftable*)0x008d9b7c;

// Static methods

// win1.41 00528280 mac 100d5130 Field::Create(MapCoords const &, GFieldTypeInfo const *, Town *, float, float, int)
struct Field* __cdecl Create__5FieldFRC9MapCoordsPC14GFieldTypeInfoP4Townffi(struct MapCoords* coords, struct GFieldTypeInfo* type_info, struct Town* town, float param_4, float param_5, int param_6);

// Constructors

// win1.41 00527dd0 mac 100d5910 Field::Field(MapCoords const &, GFieldTypeInfo const *, GAbodeInfo const *, Town *, float, float, int)
struct Field* __fastcall __ct__5FieldFRC9MapCoordsPC14GFieldTypeInfoPC10GAbodeInfoP4Townffi(struct Field* this, const void* edx, struct MapCoords* coords, struct GFieldTypeInfo* type_info, struct GAbodeInfo* abode_info, struct Town* town, float param_5, float param_6, int param_7);

DECLARE_LH_LINKED_LIST(Field);
DECLARE_LH_LIST_HEAD(Field);

#endif /* BW1_DECOMP_FIELD_INCLUDED_H */
