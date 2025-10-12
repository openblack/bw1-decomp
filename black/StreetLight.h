#ifndef BW1_DECOMP_STREET_LIGHT_INCLUDED_H
#define BW1_DECOMP_STREET_LIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct MapCoords;

struct GStreetLight
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
};
static_assert(sizeof(struct GStreetLight) == 0x2c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becb18 mac inlined GStreetLight::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12GStreetLight asm("??_R0?AVGStreetLight@@@8");
// win1.41 009ada30 mac inlined GStreetLight::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12GStreetLight asm("??_R1A@?0A@A@GStreetLight@@8");
// win1.41 009ada48 mac inlined GStreetLight::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12GStreetLight asm("??_R2GStreetLight@@8");
// win1.41 009ada60 mac inlined GStreetLight::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12GStreetLight asm("??_R3GStreetLight@@8");
// win1.41 008eb134 mac 109e1864 GStreetLight::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12GStreetLight asm("??_R4GStreetLight@@6B@");
// win1.41 008eb138 mac 109e186c GStreetLight::`vftable'
extern const struct GameThingWithPosVftable __vt__12GStreetLight asm("??_7GStreetLight@@6B@");

// Override methods

// win1.41 00561420 mac 10535660 GStreetLight::_dt(void)
void __fastcall __dt__12GStreetLightFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGStreetLight@@UAEPAXI@Z");
// win1.41 00734e00 mac 10535d70 GStreetLight::ToBeDeleted(int)
void __fastcall ToBeDeleted__12GStreetLightFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GStreetLight@@UAEXH@Z");
// win1.41 005613d0 mac 10535700 GStreetLight::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__12GStreetLightFv(struct GameThing* this) asm("?GetPlayer@GStreetLight@@UAEPAVGPlayer@@XZ");
// win1.41 00561410 mac 10535800 GStreetLight::GetDebugText(void)
char* __fastcall GetDebugText__12GStreetLightFv(struct GameThing* this) asm("?GetDebugText@GStreetLight@@UAEPADXZ");
// win1.41 00735160 mac 105358a0 GStreetLight::Load(GameOSFile &)
uint32_t __fastcall Load__12GStreetLightFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GStreetLight@@UAEIAAVGameOSFile@@@Z");
// win1.41 00735140 mac 10535910 GStreetLight::Save(GameOSFile &)
uint32_t __fastcall Save__12GStreetLightFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GStreetLight@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561400 mac 105357c0 GStreetLight::GetSaveType(void)
uint32_t __fastcall GetSaveType__12GStreetLightFv(struct GameThing* this) asm("?GetSaveType@GStreetLight@@UAEIXZ");
// win1.41 00735180 mac 10535840 GStreetLight::ResolveLoad(void)
void __fastcall ResolveLoad__12GStreetLightFv(struct GameThing* this) asm("?ResolveLoad@GStreetLight@@UAEXXZ");
// win1.41 00735110 mac 10535980 GStreetLight::GetDistanceFromObject(MapCoords const &)
float __fastcall GetDistanceFromObject__12GStreetLightFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* param_1) asm("?GetDistanceFromObject@GStreetLight@@UAEMPBUMapCoords@@@Z");
// win1.41 005613f0 mac 10535780 GStreetLight::IsStreetLight(void)
uint32_t __fastcall IsStreetLight__12GStreetLightFv(struct GameThingWithPos* this) asm("?IsStreetLight@GStreetLight@@UAEIXZ");
// win1.41 005613e0 mac 10535740 GStreetLight::GetText(void)
const char* __fastcall GetText__12GStreetLightFv(struct GameThingWithPos* this) asm("?GetText@GStreetLight@@UAEPBDXZ");

DECLARE_LH_LIST_HEAD(GStreetLight);

#endif /* BW1_DECOMP_STREET_LIGHT_INCLUDED_H */
