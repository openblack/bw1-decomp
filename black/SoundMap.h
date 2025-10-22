#ifndef BW1_DECOMP_SOUND_MAP_INCLUDED_H
#define BW1_DECOMP_SOUND_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

struct GSoundMap
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0xc][0xe];
  uint16_t field_0xb0;
  uint32_t field_0xb4[0xe];
  struct LHPoint field_0xec;
  struct MapCoords field_0xf8;
  uint8_t field_0xfc[0xc];  /* 0x104 */
};
static_assert(sizeof(struct GSoundMap) == 0x110, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec3d8 mac inlined GSoundMap::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GSoundMap asm("??_R0?AVGSoundMap@@@8");
// win1.41 009ad150 mac inlined GSoundMap::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GSoundMap asm("??_R1A@?0A@A@GSoundMap@@8");
// win1.41 009ad168 mac inlined GSoundMap::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GSoundMap asm("??_R2GSoundMap@@8");
// win1.41 009ad178 mac inlined GSoundMap::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GSoundMap asm("??_R3GSoundMap@@8");
// win1.41 008df79c mac 109d7980 GSoundMap::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GSoundMap asm("??_R4GSoundMap@@6B@");
// win1.41 008df7a0 mac 109d7988 GSoundMap::`vftable'
extern const struct BaseVftable __vt__9GSoundMap asm("??_7GSoundMap@@6B@");

// Constructors

// win1.41 0054b9d0 mac inlined GSoundMap::GSoundMap(void)
struct GSoundMap* __fastcall __ct__9GSoundMapFv(struct GSoundMap* this) asm("??0GSoundMap@@QAE@XZ");

// Override methods

// win1.41 0054ba10 mac 100cb590 GSoundMap::_dt(void)
void __fastcall __dt__9GSoundMapFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSoundMap@@UAEPAXI@Z");
// win1.41 0071d990 mac 10068330 GSoundMap::Dump(void)
void __fastcall Dump__9GSoundMapFv(struct Base* this) asm("?Dump@GSoundMap@@UAEXXZ");

#endif /* BW1_DECOMP_SOUND_MAP_INCLUDED_H */
