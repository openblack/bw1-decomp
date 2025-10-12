#ifndef BW1_DECOMP_WINDMILL_INCLUDED_H
#define BW1_DECOMP_WINDMILL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct Base;
struct GAbodeInfo;
struct GameThing;
struct MapCoords;
struct Object;
struct Town;

struct Windmill
{
  struct Abode super;  /* 0x0 */
};
static_assert(sizeof(struct Windmill) == 0xc4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8030 mac inlined Windmill::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Windmill asm("??_R0?AVWindmill@@@8");
// win1.41 009a6508 mac inlined Windmill::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Windmill asm("??_R1A@?0A@A@Windmill@@8");
// win1.41 009a6520 mac inlined Windmill::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Windmill asm("??_R2Windmill@@8");
// win1.41 009a6548 mac inlined Windmill::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Windmill asm("??_R3Windmill@@8");
// win1.41 008aa8e0 mac 1073c6e0 Windmill::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Windmill asm("??_R4Windmill@@6B@");
// win1.41 008aa8e4 mac 1073c6e8 Windmill::`vftable'
extern const struct AbodeVftable __vt__8Windmill asm("??_7Windmill@@6B@");

// Static methods

// win1.41 00405890 mac 10199b40 Windmill::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
struct Windmill* __cdecl Create__8WindmillFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood) asm("?Create@Windmill@@SAPAVAbode@@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");

// Non-virtual methods

// win1.41 00405980 mac 103f15c0 Windmill::Open(void)
void __fastcall Open__8WindmillFv(struct Windmill* this) asm("?Open@Windmill@@QAEXXZ");
// win1.41 004059d0 mac 10241170 Windmill::Close(void)
void __fastcall Close__8WindmillFv(struct Windmill* this) asm("?Close@Windmill@@QAEXXZ");
// win1.41 004059f0 mac 1007d870 Windmill::PreDraw(void)
void __fastcall PreDraw__8WindmillFv(struct Windmill* this) asm("?PreDraw@Windmill@@QAEIXZ");

// Override methods

// win1.41 00405920 mac 100cb620 Windmill::_dt(void)
void __fastcall __dt__8WindmillFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWindmill@@UAEPAXI@Z");
// win1.41 00405910 mac 100cb6f0 Windmill::GetDebugText(void)
char* __fastcall GetDebugText__8WindmillFv(struct GameThing* this) asm("?GetDebugText@Windmill@@UAEPADXZ");
// win1.41 00405900 mac 100cb6b0 Windmill::GetSaveType(void)
uint32_t __fastcall GetSaveType__8WindmillFv(struct GameThing* this) asm("?GetSaveType@Windmill@@UAEIXZ");
// win1.41 00516320 mac 100cb390 Windmill::Draw(void)
void __fastcall Draw__8WindmillFv(struct Object* this) asm("?Draw@Windmill@@UAEXXZ");
// win1.41 00405950 mac 102aa970 Windmill::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__8WindmillFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Windmill@@UAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_WINDMILL_INCLUDED_H */
