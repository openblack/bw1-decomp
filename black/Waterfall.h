#ifndef BW1_DECOMP_WATERFALL_INCLUDED_H
#define BW1_DECOMP_WATERFALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct LHOSFile;
struct MapCoords;

struct GWaterfall
{
  struct Object super;  /* 0x0 */
  uint8_t field_0x54[0x4];
};
static_assert(sizeof(struct GWaterfall) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becb58 mac inlined GWaterfall::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GWaterfall asm("??_R0?AVGWaterfall@@@8");
// win1.41 009adb68 mac inlined GWaterfall::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GWaterfall asm("??_R1A@?0A@A@GWaterfall@@8");
// win1.41 009adb80 mac inlined GWaterfall::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GWaterfall asm("??_R2GWaterfall@@8");
// win1.41 009adb98 mac inlined GWaterfall::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GWaterfall asm("??_R3GWaterfall@@8");
// win1.41 008ec148 mac 1075d4a0 GWaterfall::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10GWaterfall asm("??_R4GWaterfall@@6B@");
// win1.41 008ec14c mac 1075d4a8 GWaterfall::`vftable'
extern const struct ObjectVftable __vt__10GWaterfall asm("??_7GWaterfall@@6B@");

// Override methods

// win1.41 0055de60 mac 10154270 GWaterfall::_dt(void)
void __fastcall __dt__10GWaterfallFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGWaterfall@@UAEPAXI@Z");
// win1.41 00734170 mac 10154230 GWaterfall::ToBeDeleted(int)
void __fastcall ToBeDeleted__10GWaterfallFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GWaterfall@@UAEXH@Z");
// win1.41 0055de50 mac 10153430 GWaterfall::GetDebugText(void)
char* __fastcall GetDebugText__10GWaterfallFv(struct GameThing* this) asm("?GetDebugText@GWaterfall@@UAEPADXZ");
// win1.41 00734660 mac 10153470 GWaterfall::Load(GameOSFile &)
uint32_t __fastcall Load__10GWaterfallFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GWaterfall@@UAEIAAVGameOSFile@@@Z");
// win1.41 00734650 mac 101534b0 GWaterfall::Save(GameOSFile &)
uint32_t __fastcall Save__10GWaterfallFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GWaterfall@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055de40 mac 101533f0 GWaterfall::GetSaveType(void)
uint32_t __fastcall GetSaveType__10GWaterfallFv(struct GameThing* this) asm("?GetSaveType@GWaterfall@@UAEIXZ");
// win1.41 007341b0 mac 10154110 GWaterfall::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__10GWaterfallFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@GWaterfall@@UAEXABUMapCoords@@@Z");
// win1.41 007341d0 mac 10154080 GWaterfall::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__10GWaterfallFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@GWaterfall@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LIST_HEAD(GWaterfall);

#endif /* BW1_DECOMP_WATERFALL_INCLUDED_H */
