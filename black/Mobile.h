#ifndef BW1_DECOMP_MOBILE_INCLUDED_H
#define BW1_DECOMP_MOBILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object, struct ObjectVftable */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GMobileInfo;
struct GameOSFile;
struct GameThing;
struct GestureSystemPacketData;
struct MapCoords;

struct MobileVftable
{
  struct ObjectVftable super;  /* 0x0 */
};
static_assert(sizeof(struct MobileVftable) == 0x85c, "Data type is of wrong size");

union MobileBase
{
  struct Object super;
  struct MobileVftable* vftable;
};
static_assert(sizeof(union MobileBase) == 0x54, "Data type is of wrong size");

struct Mobile
{
  union MobileBase base;  /* 0x0 */
  uint16_t field_0x54;
};
static_assert(sizeof(struct Mobile) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8db0 mac inlined Mobile::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6Mobile asm("??_R0?AVMobile@@@8");
// win1.41 009a6be8 mac inlined Mobile::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Mobile asm("??_R1A@?0A@A@Mobile@@8");
// win1.41 009a9688 mac inlined Mobile::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6Mobile asm("??_R2Mobile@@8");
// win1.41 009a96a0 mac inlined Mobile::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6Mobile asm("??_R3Mobile@@8");
// win1.41 008ce74c mac 10732c28 Mobile::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6Mobile asm("??_R4Mobile@@6B@");
// win1.41 008ce750 mac 10732c50 Mobile::`vftable'
extern const struct MobileVftable __vt__6Mobile asm("??_7Mobile@@6B@");

// Constructors

// win1.41 0055c790 mac 100c0890 Mobile::Mobile(void)
struct Mobile* __fastcall __ct__6MobileFv(struct Mobile* this) asm("??0Mobile@@QAE@XZ");
// win1.41 005ec000 mac inlined Mobile::Mobile(MapCoords const &, GMobileInfo const *)
struct Mobile* __fastcall __ct__6MobileFRC9MapCoordsPC11GMobileInfo(struct Mobile* this, const void* edx, struct MapCoords* coords, struct GMobileInfo* info) asm("??0Mobile@@QAE@ABUMapCoords@@PBVGMobileInfo@@@Z");

// Override methods

// win1.41 004748e0 mac 100c0800 Mobile::_dt(void)
void __fastcall __dt__6MobileFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMobile@@UAEPAXI@Z");
// win1.41 00606c70 mac 103ba4e0 Mobile::Load(GameOSFile &)
uint32_t __fastcall Load__6MobileFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Mobile@@UAEIAAVGameOSFile@@@Z");
// win1.41 00606c10 mac 103ba5b0 Mobile::Save(GameOSFile &)
uint32_t __fastcall Save__6MobileFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Mobile@@UAEIAAVGameOSFile@@@Z");
// win1.41 00606cd0 mac 103ba4a0 Mobile::BlocksTownClearArea( const(void))
bool __fastcall BlocksTownClearArea__6MobileCFv(const struct Object* this) asm("?BlocksTownClearArea@Mobile@@UBE_NXZ");
// win1.41 00425b00 mac 100adca0 Mobile::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__6MobileFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@Mobile@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00416f50 mac 100adcf0 Mobile::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToApplyThisToMapCoord__6MobileFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ValidToApplyThisToMapCoord@Mobile@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z");
// win1.41 00606bf0 mac 103ba690 Mobile::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToMapCoord__6MobileFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToMapCoord@Mobile@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z");
// win1.41 00416f60 mac 100add50 Mobile::ApplyOnlyAfterReleased(void)
uint32_t __fastcall ApplyOnlyAfterReleased__6MobileFv(struct Object* this) asm("?ApplyOnlyAfterReleased@Mobile@@UAEIXZ");

#endif /* BW1_DECOMP_MOBILE_INCLUDED_H */
