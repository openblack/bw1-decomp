#ifndef BW1_DECOMP_GAME_INFO_INCLUDED_H
#define BW1_DECOMP_GAME_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class GGameInfo: public Base
{
public:
    uint8_t field_0x8;
    uint8_t field_0x9;
    uint8_t field_0xa;
    uint8_t field_0xb;
    int time_scale;
    float elapsed_days; /* 0x10 */
    float elapsed_years;
    float seconds_per_day;
    uint32_t current_year;
    double elapsed_seconds_since_start; /* 0x20 */
    int32_t start_year;
    int32_t start_month;
    int32_t start_day; /* 0x30 */
    int32_t start_hour;
    int32_t start_minute;
    int32_t start_second;
    uint32_t field_0x40;
    float visual_time_scale;
    float field_0x48;
    float field_0x4c;
    float field_0x50;
    uint32_t field_0x54;

    // Override methods

    // win1.41 005577b0 mac 102ffc00 GGameInfo::_dt(void)
    virtual ~GGameInfo();

    // Constructors

    // win1.41 00557730 mac 102ff6c0 GGameInfo::GGameInfo(void)
    GGameInfo();

    // Non-virtual methods

    // win1.41 00557620 mac 102ff910 GGameInfo::SetVisualTimeCycle(float, float, float)
    void SetVisualTimeCycle(float param_1, float param_2, float param_3);
    // win1.41 005577d0 mac 102ff520 GGameInfo::SetStartDate(long, long, long)
    void SetStartDate(int year, int month, int day);
    // win1.41 005577f0 mac 102ff380 GGameInfo::SetStartTime(long, long, long)
    void SetStartTime(int hour, int minute, int second);
    // win1.41 00557940 mac 100789f0 GGameInfo::GetDaysFromStart(void)
    float GetDaysFromStart();
    // win1.41 00557950 mac 1008c390 GGameInfo::GetYear(void)
    float GetYear();
    // win1.41 00557a80 mac 10099e70 GGameInfo::GetSeason(void)
    uint32_t GetSeason();
    // win1.41 00557b60 mac 1008c3f0 GGameInfo::Process(void)
    void Process();
    // win1.41 00557bb0 mac 102fecf0 GGameInfo::SetVisualTimeCycleFromMapEditor(float, float, float)
    void SetVisualTimeCycleFromMapEditor(float param_1, float param_2, float param_3);
};

#endif /* BW1_DECOMP_GAME_INFO_INCLUDED_H */
