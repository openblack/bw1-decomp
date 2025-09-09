#ifndef BW1_DECOMP_WINDMILL_INCLUDED_H
#define BW1_DECOMP_WINDMILL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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

// win1.41 008aa8e0 mac 1073c6e0 Windmill::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8Windmill asm("??_R4Windmill@@6B@");

// win1.41 008aa8e4 mac 1073c6e8 Windmill::`vftable'
extern const struct AbodeVftable __vt__8Windmill asm("??_7Windmill@@6B@");

// Static methods

// win1.41 00405890 mac 10199b40 Windmill::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
struct Windmill* __cdecl Create__8WindmillFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood) asm("?Create@Windmill@@SAPAVAbode@@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");

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
