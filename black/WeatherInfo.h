#ifndef BW1_DECOMP_WEATHER_INFO_INCLUDED_H
#define BW1_DECOMP_WEATHER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct WeatherInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint8_t field_0x10[0x54];
};
static_assert(sizeof(struct WeatherInfo) == 0x64, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 0099b9b4 mac 109ea14c WeatherInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11WeatherInfo asm("??_R4WeatherInfo@@6B@");
// win1.41 0099b9b8 mac 109ea154 WeatherInfo::`vftable'
extern const struct GBaseInfoVftable __vt__11WeatherInfo asm("??_7WeatherInfo@@6B@");

struct GWeatherInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GWeatherInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24760 mac inlined GWeatherInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12GWeatherInfo asm("??_R0?AVGWeatherInfo@@@8");
// win1.41 009b9fd8 mac inlined GWeatherInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12GWeatherInfo asm("??_R1A@?0A@A@GWeatherInfo@@8");
// win1.41 009b9ff0 mac inlined GWeatherInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12GWeatherInfo asm("??_R2GWeatherInfo@@8");
// win1.41 009ba000 mac inlined GWeatherInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12GWeatherInfo asm("??_R3GWeatherInfo@@8");

// Override methods

// win1.41 00770e30 mac 105a3520 GWeatherInfo::_dt(void)
void __fastcall __dt__12GWeatherInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGWeatherInfo@@UAEPAXI@Z");
// win1.41 00770dd0 mac 105a3640 GWeatherInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__12GWeatherInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GWeatherInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_WEATHER_INFO_INCLUDED_H */
