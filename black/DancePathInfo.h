#ifndef BW1_DECOMP_DANCE_PATH_INFO_INCLUDED_H
#define BW1_DECOMP_DANCE_PATH_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;

struct DancePathInfo
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14;
  uint8_t field_0x15[0x3];
  uint8_t (*field_0x18)[0xc];
  uint32_t field_0x1c;
};
static_assert(sizeof(struct DancePathInfo) == 0x20, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00beff20 mac inlined DancePathInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13DancePathInfo asm("??_R0?AVDancePathInfo@@@8");
// win1.41 009b0df8 mac inlined DancePathInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13DancePathInfo asm("??_R1A@?0A@A@DancePathInfo@@8");
// win1.41 009b0e10 mac inlined DancePathInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13DancePathInfo asm("??_R2DancePathInfo@@8");
// win1.41 009b0e20 mac inlined DancePathInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13DancePathInfo asm("??_R3DancePathInfo@@8");
// win1.41 00900910 mac 10744cf0 DancePathInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13DancePathInfo asm("??_R4DancePathInfo@@6B@");
// win1.41 00900914 mac 10744cf8 DancePathInfo::`vftable'
extern const struct GameThingVftable __vt__13DancePathInfo asm("??_7DancePathInfo@@6B@");

// Override methods

// win1.41 005961c0 mac 100fafe0 DancePathInfo::_dt(void)
void __fastcall __dt__13DancePathInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDancePathInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_DANCE_PATH_INFO_INCLUDED_H */
