#ifndef BW1_DECOMP_WEATHER_THING_INCLUDED_H
#define BW1_DECOMP_WEATHER_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct MapCoords;

struct WeatherThing
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x28[0x60];
};
static_assert(sizeof(struct WeatherThing) == 0x88, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becd00 mac inlined WeatherThing::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12WeatherThing asm("??_R0?AVWeatherThing@@@8");
// win1.41 009ae018 mac inlined WeatherThing::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12WeatherThing asm("??_R1A@?0A@A@WeatherThing@@8");
// win1.41 009ae030 mac inlined WeatherThing::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12WeatherThing asm("??_R2WeatherThing@@8");
// win1.41 009ae048 mac inlined WeatherThing::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12WeatherThing asm("??_R3WeatherThing@@8");
// win1.41 008ebc44 mac 109ea360 WeatherThing::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12WeatherThing asm("??_R4WeatherThing@@6B@");
// win1.41 008ebc48 mac 109ea368 WeatherThing::`vftable'
extern const struct GameThingWithPosVftable __vt__12WeatherThing asm("??_7WeatherThing@@6B@");

// Override methods

// win1.41 0055df60 mac 105a3e00 WeatherThing::_dt(void)
void __fastcall __dt__12WeatherThingFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWeatherThing@@UAEPAXI@Z");
// win1.41 00774130 mac 105a4f00 WeatherThing::ToBeDeleted(int)
void __fastcall ToBeDeleted__12WeatherThingFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@WeatherThing@@UAEXH@Z");
// win1.41 0055df50 mac 105a3fa0 WeatherThing::GetDebugText(void)
char* __fastcall GetDebugText__12WeatherThingFv(struct GameThing* this) asm("?GetDebugText@WeatherThing@@UAEPADXZ");
// win1.41 007747e0 mac 105a3fe0 WeatherThing::Load(GameOSFile &)
uint32_t __fastcall Load__12WeatherThingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@WeatherThing@@UAEIAAVGameOSFile@@@Z");
// win1.41 007745c0 mac 105a4300 WeatherThing::Save(GameOSFile &)
uint32_t __fastcall Save__12WeatherThingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@WeatherThing@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055df40 mac 105a3f60 WeatherThing::GetSaveType(void)
uint32_t __fastcall GetSaveType__12WeatherThingFv(struct GameThing* this) asm("?GetSaveType@WeatherThing@@UAEIXZ");
// win1.41 007742e0 mac 105a4be0 WeatherThing::SetPos(MapCoords const &)
void __fastcall SetPos__12WeatherThingFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* param_1) asm("?SetPos@WeatherThing@@UAEXPBUMapCoords@@@Z");
// win1.41 00774580 mac 105a4680 WeatherThing::SetSpeedInMetres(float, int)
void __fastcall SetSpeedInMetres__12WeatherThingFfi(struct GameThingWithPos* this, const void* edx, float param_1, int param_2) asm("?SetSpeedInMetres@WeatherThing@@UAEXMH@Z");
// win1.41 0055df10 mac 105a3ea0 WeatherThing::IsWeather( const(void))
uint32_t __fastcall IsWeather__12WeatherThingCFv(const struct GameThingWithPos* this) asm("?IsWeather@WeatherThing@@UBEIXZ");
// win1.41 0055df30 mac 105a3f20 WeatherThing::GetText(void)
const char* __fastcall GetText__12WeatherThingFv(struct GameThingWithPos* this) asm("?GetText@WeatherThing@@UAEPBDXZ");
// win1.41 00774360 mac 105a4b40 WeatherThing::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__12WeatherThingFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@WeatherThing@@UAEIXZ");
// win1.41 0055df20 mac 105a3ee0 WeatherThing::SetAffectedByWind(int)
void __fastcall SetAffectedByWind__12WeatherThingFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?SetAffectedByWind@WeatherThing@@UAEXH@Z");

DECLARE_LH_LIST_HEAD(WeatherThing);

#endif /* BW1_DECOMP_WEATHER_THING_INCLUDED_H */
