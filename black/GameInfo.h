#ifndef BW1_DECOMP_GAME_INFO_INCLUDED_H
#define BW1_DECOMP_GAME_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct GGameInfo
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8;
  uint8_t field_0x9;
  uint8_t field_0xa;
  uint8_t field_0xb;
  int time_scale;
  float elapsed_days;  /* 0x10 */
  float elapsed_years;
  float seconds_per_day;
  uint32_t current_year;
  double elapsed_seconds_since_start;  /* 0x20 */
  int32_t start_year;
  int32_t start_month;
  int32_t start_day;  /* 0x30 */
  int32_t start_hour;
  int32_t start_minute;
  int32_t start_second;
  uint32_t field_0x40;
  float visual_time_scale;
  float field_0x48;
  float field_0x4c;
  float field_0x50;
  uint32_t field_0x54;
};
static_assert(sizeof(struct GGameInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec968 mac inlined GGameInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GGameInfo asm("??_R0?AVGGameInfo@@@8");
// win1.41 009ad3d0 mac inlined GGameInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GGameInfo asm("??_R1A@?0A@A@GGameInfo@@8");
// win1.41 009ad3e8 mac inlined GGameInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GGameInfo asm("??_R2GGameInfo@@8");
// win1.41 009ad3f8 mac inlined GGameInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GGameInfo asm("??_R3GGameInfo@@8");
// win1.41 008df8f4 mac 1099a584 GGameInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GGameInfo asm("??_R4GGameInfo@@6B@");
// win1.41 008df8f8 mac 1099a58c GGameInfo::`vftable'
extern const struct BaseVftable __vt__9GGameInfo asm("??_7GGameInfo@@6B@");

// Constructors

// win1.41 00557730 mac 102ff6c0 GGameInfo::GGameInfo(void)
struct GGameInfo* __fastcall __ct__9GGameInfoFv(struct GGameInfo* this) asm("??0GGameInfo@@QAE@XZ");

// Non-virtual methods

// win1.41 00557620 mac 102ff910 GGameInfo::SetVisualTimeCycle(float, float, float)
void __fastcall SetVisualTimeCycle__9GGameInfoFfff(struct GGameInfo* this, const void* edx, float param_1, float param_2, float param_3) asm("?SetVisualTimeCycle@GGameInfo@@QAEXMMM@Z");
// win1.41 005577d0 mac 102ff520 GGameInfo::SetStartDate(long, long, long)
void __fastcall SetStartDate__9GGameInfoFlll(struct GGameInfo* this, const void* edx, int year, int month, int day) asm("?SetStartDate@GGameInfo@@QAEXJJJ@Z");
// win1.41 005577f0 mac 102ff380 GGameInfo::SetStartTime(long, long, long)
void __fastcall SetStartTime__9GGameInfoFlll(struct GGameInfo* this, const void* edx, int hour, int minute, int second) asm("?SetStartTime@GGameInfo@@QAEXJJJ@Z");
// win1.41 00557940 mac 100789f0 GGameInfo::GetDaysFromStart(void)
float __fastcall GetDaysFromStart__9GGameInfoFv(struct GGameInfo* this) asm("?GetDaysFromStart@GGameInfo@@QAEMXZ");
// win1.41 00557950 mac 1008c390 GGameInfo::GetYear(void)
float __fastcall GetYear__9GGameInfoFv(struct GGameInfo* this) asm("?GetYear@GGameInfo@@QAEMXZ");
// win1.41 00557a80 mac 10099e70 GGameInfo::GetSeason(void)
uint32_t __fastcall GetSeason__9GGameInfoFv(struct GGameInfo* this) asm("?GetSeason@GGameInfo@@QAEIXZ");
// win1.41 00557b60 mac 1008c3f0 GGameInfo::Process(void)
void __fastcall Process__9GGameInfoFv(struct GGameInfo* this) asm("?Process@GGameInfo@@QAEXXZ");
// win1.41 00557bb0 mac 102fecf0 GGameInfo::SetVisualTimeCycleFromMapEditor(float, float, float)
void __fastcall SetVisualTimeCycleFromMapEditor__9GGameInfoFfff(struct GGameInfo* this, const void* edx, float param_1, float param_2, float param_3) asm("?SetVisualTimeCycleFromMapEditor@GGameInfo@@QAEXMMM@Z");

// Override methods

// win1.41 005577b0 mac 102ffc00 GGameInfo::_dt(void)
void __fastcall __dt__9GGameInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGGameInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_GAME_INFO_INCLUDED_H */
