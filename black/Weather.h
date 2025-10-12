#ifndef BW1_DECOMP_WEATHER_INCLUDED_H
#define BW1_DECOMP_WEATHER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <lionhead/lh3dlib/development/LH3DStorm.h> /* For struct LH3DStorm */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct LHPoint;
struct WeatherInfo;

struct GWeather
{
  struct LH3DStorm super;  /* 0x0 */
};
static_assert(sizeof(struct GWeather) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24798 mac inlined GWeather::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8GWeather asm("??_R0?AVGWeather@@@8");
// win1.41 009ba040 mac inlined GWeather::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8GWeather asm("??_R1A@?0A@A@GWeather@@8");
// win1.41 009ba058 mac inlined GWeather::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8GWeather asm("??_R2GWeather@@8");
// win1.41 009ba068 mac inlined GWeather::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8GWeather asm("??_R3GWeather@@8");

// Override methods

// win1.41 0083f900 mac inlined GWeather::Update(float)
void __fastcall Update__8GWeatherFf(struct LH3DStorm* this, const void* edx, float param_1) asm("?Update@GWeather@@UAEXM@Z");
// win1.41 0083fc90 mac inlined GWeather::DrawClouds(void)
void __fastcall DrawClouds__8GWeatherFv(struct LH3DStorm* this) asm("?DrawClouds@GWeather@@UAEXXZ");
// win1.41 008402e0 mac inlined GWeather::DebugDraw(void)
void __fastcall DebugDraw__8GWeatherFv(struct LH3DStorm* this) asm("?DebugDraw@GWeather@@UAEXXZ");
// win1.41 008400e0 mac inlined GWeather::CalcAtmos(LHPoint *, WeatherInfo *)
void __fastcall CalcAtmos__8GWeatherFP7LHPointP11WeatherInfo(struct LH3DStorm* this, const void* edx, struct LHPoint* param_1, struct WeatherInfo* param_2) asm("?CalcAtmos@GWeather@@UAEXPAULHPoint@@PAUWeatherInfo@@@Z");
// win1.41 00770e80 mac 105a36f0 GWeather::_dt(void)
void __fastcall __dt__8GWeatherFv(struct LH3DStorm* this) asm("??_GGWeather@@UAEPAXI@Z");

#endif /* BW1_DECOMP_WEATHER_INCLUDED_H */
