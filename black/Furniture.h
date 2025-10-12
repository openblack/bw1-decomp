#ifndef BW1_DECOMP_FURNITURE_INCLUDED_H
#define BW1_DECOMP_FURNITURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct GameThing;
struct LHOSFile;
struct MapCoords;

struct Furniture
{
  struct Object super;  /* 0x0 */
};
static_assert(sizeof(struct Furniture) == 0x54, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea928 mac inlined Furniture::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9Furniture asm("??_R0?AVFurniture@@@8");
// win1.41 009acfb8 mac inlined Furniture::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9Furniture asm("??_R1A@?0A@A@Furniture@@8");
// win1.41 009acfd0 mac inlined Furniture::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9Furniture asm("??_R2Furniture@@8");
// win1.41 009acfe8 mac inlined Furniture::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9Furniture asm("??_R3Furniture@@8");

// Override methods

// win1.41 0054a470 mac inlined Furniture::_dt(void)
void __fastcall __dt__9FurnitureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFurniture@@UAEPAXI@Z");
// win1.41 0054a460 mac inlined Furniture::GetDebugText(void)
char* __fastcall GetDebugText__9FurnitureFv(struct GameThing* this) asm("?GetDebugText@Furniture@@UAEPADXZ");
// win1.41 0054a450 mac inlined Furniture::GetSaveType(void)
uint32_t __fastcall GetSaveType__9FurnitureFv(struct GameThing* this) asm("?GetSaveType@Furniture@@UAEIXZ");
// win1.41 0054a440 mac inlined Furniture::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__9FurnitureFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Furniture@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_FURNITURE_INCLUDED_H */
