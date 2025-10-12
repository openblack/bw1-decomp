#ifndef BW1_DECOMP_FLOWERS_INCLUDED_H
#define BW1_DECOMP_FLOWERS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Feature.h" /* For struct Feature */

// Forward Declares

struct Base;
struct GameThing;
struct LHOSFile;
struct MapCoords;
struct Object;

struct Flowers
{
  struct Feature super;  /* 0x0 */
};
static_assert(sizeof(struct Flowers) == 0x7c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9d00 mac inlined Flowers::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7Flowers asm("??_R0?AVFlowers@@@8");
// win1.41 009ac110 mac inlined Flowers::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7Flowers asm("??_R1A@?0A@A@Flowers@@8");
// win1.41 009ac128 mac inlined Flowers::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7Flowers asm("??_R2Flowers@@8");
// win1.41 009ac150 mac inlined Flowers::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7Flowers asm("??_R3Flowers@@8");

// Override methods

// win1.41 005279b0 mac 100d0030 Flowers::_dt(void)
void __fastcall __dt__7FlowersFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFlowers@@UAEPAXI@Z");
// win1.41 005279a0 mac 100d0130 Flowers::GetDebugText(void)
char* __fastcall GetDebugText__7FlowersFv(struct GameThing* this) asm("?GetDebugText@Flowers@@UAEPADXZ");
// win1.41 00527990 mac 100d00f0 Flowers::GetSaveType(void)
uint32_t __fastcall GetSaveType__7FlowersFv(struct GameThing* this) asm("?GetSaveType@Flowers@@UAEIXZ");
// win1.41 00527a30 mac 100d0310 Flowers::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__7FlowersFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Flowers@@UAEXABUMapCoords@@@Z");
// win1.41 00527980 mac 100d00c0 Flowers::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__7FlowersFv(struct Object* this) asm("?Get3DType@Flowers@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 00527a80 mac 100d0170 Flowers::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__7FlowersFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Flowers@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_FLOWERS_INCLUDED_H */
