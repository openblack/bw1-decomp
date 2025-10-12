#ifndef BW1_DECOMP_TERRAIN_MAP_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "TerrainMapInfo.h" /* For struct TerrainMapInfo */

struct GTerrainMap
{
  struct Base super;  /* 0x0 */
  struct TerrainMapInfo list[0x400];
  struct TerrainMapInfo map_info;  /* 0x4a008 */
};
static_assert(sizeof(struct GTerrainMap) == 0x4a130, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec458 mac inlined GTerrainMap::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GTerrainMap asm("??_R0?AVGTerrainMap@@@8");
// win1.41 009ad290 mac inlined GTerrainMap::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GTerrainMap asm("??_R1A@?0A@A@GTerrainMap@@8");
// win1.41 009ad2a8 mac inlined GTerrainMap::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11GTerrainMap asm("??_R2GTerrainMap@@8");
// win1.41 009ad2b8 mac inlined GTerrainMap::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11GTerrainMap asm("??_R3GTerrainMap@@8");
// win1.41 008df81c mac 10730ba8 GTerrainMap::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11GTerrainMap asm("??_R4GTerrainMap@@6B@");
// win1.41 008df820 mac 10730bb0 GTerrainMap::`vftable'
extern const struct BaseVftable __vt__11GTerrainMap asm("??_7GTerrainMap@@6B@");

// Override methods

// win1.41 0054bd90 mac 1040fcc0 GTerrainMap::_dt(void)
void __fastcall __dt__11GTerrainMapFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGTerrainMap@@UAEPAXI@Z");

#endif /* BW1_DECOMP_TERRAIN_MAP_INCLUDED_H */
