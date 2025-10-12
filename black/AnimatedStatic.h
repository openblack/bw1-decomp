#ifndef BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Feature.h" /* For struct Feature */

// Forward Declares

struct Base;
struct LHOSFile;
struct MapCoords;
struct Object;

struct AnimatedStatic
{
  struct Feature super;  /* 0x0 */
  uint8_t field_0x7c[0x1c];
};
static_assert(sizeof(struct AnimatedStatic) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9560 mac inlined AnimatedStatic::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14AnimatedStatic asm("??_R0?AVAnimatedStatic@@@8");
// win1.41 009a7948 mac inlined AnimatedStatic::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14AnimatedStatic asm("??_R1A@?0A@A@AnimatedStatic@@8");
// win1.41 009a7960 mac inlined AnimatedStatic::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14AnimatedStatic asm("??_R2AnimatedStatic@@8");
// win1.41 009a7988 mac inlined AnimatedStatic::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14AnimatedStatic asm("??_R3AnimatedStatic@@8");
// win1.41 008c1a0c mac 10735450 AnimatedStatic::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14AnimatedStatic asm("??_R4AnimatedStatic@@6B@");
// win1.41 008c1a10 mac 10735458 AnimatedStatic::`vftable'
extern const struct MultiMapFixedVftable __vt__14AnimatedStatic asm("??_7AnimatedStatic@@6B@");

// Override methods

// win1.41 004221a0 mac 100a5e20 AnimatedStatic::_dt(void)
void __fastcall __dt__14AnimatedStaticFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAnimatedStatic@@UAEPAXI@Z");
// win1.41 004225a0 mac 100a6cb0 AnimatedStatic::ToBeDeleted(int)
void __fastcall ToBeDeleted__14AnimatedStaticFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@AnimatedStatic@@UAEXH@Z");
// win1.41 00422300 mac 100a6f10 AnimatedStatic::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__14AnimatedStaticFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@AnimatedStatic@@UAEXABUMapCoords@@@Z");
// win1.41 00422650 mac 100a6a10 AnimatedStatic::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__14AnimatedStaticFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@AnimatedStatic@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LINKED_LIST(AnimatedStatic);

#endif /* BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H */
