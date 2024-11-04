#ifndef BW1_DECOMP_GAME_INFO_INCLUDED_H
#define BW1_DECOMP_GAME_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

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

static struct BaseVftable* __vt__9GGameInfo = (struct BaseVftable*)0x008df8f8;

// Constructors

// win1.41 00557730 mac 102ff6c0 GGameInfo::GGameInfo(void)
struct GGameInfo* __fastcall __ct__9GGameInfoFv(struct GGameInfo* this);

// Non-virtual methods

// win1.41 00557620 mac 102ff910 GGameInfo::SetVisualTimeCycle(float, float, float)
void __fastcall SetVisualTimeCycle__9GGameInfoFfff(struct GGameInfo* this, const void* edx, float param_1, float param_2, float param_3);
// win1.41 005577d0 mac 102ff520 GGameInfo::SetStartDate(long, long, long)
void __fastcall SetStartDate__9GGameInfoFlll(struct GGameInfo* this, const void* edx, int32_t year, int32_t month, int32_t day);
// win1.41 005577f0 mac 102ff380 GGameInfo::SetStartTime(long, long, long)
void __fastcall SetStartTime__9GGameInfoFlll(struct GGameInfo* this, const void* edx, int32_t hour, int32_t minute, int32_t second);
// win1.41 00557940 mac 100789f0 GGameInfo::GetDaysFromStart(void)
float __fastcall GetDaysFromStart__9GGameInfoFv(struct GGameInfo* this);
// win1.41 00557950 mac 1008c390 GGameInfo::GetYear(void)
float __fastcall GetYear__9GGameInfoFv(struct GGameInfo* this);
// win1.41 00557b60 mac 1008c3f0 GGameInfo::Process(void)
void __fastcall Process__9GGameInfoFv(struct GGameInfo* this);
// win1.41 00557bb0 mac 102fecf0 GGameInfo::SetVisualTimeCycleFromMapEditor(float, float, float)
void __fastcall SetVisualTimeCycleFromMapEditor__9GGameInfoFfff(struct GGameInfo* this, const void* edx, float param_1, float param_2, float param_3);

#endif /* BW1_DECOMP_GAME_INFO_INCLUDED_H */
