#ifndef BW1_DECOMP_GAME_INFO_INCLUDED_H
#define BW1_DECOMP_GAME_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class GGameInfo : public Base
{
public:
	uint8_t  field_0x8;
	uint8_t  field_0x9;
	uint8_t  field_0xa;
	uint8_t  field_0xb;
	int      TimeScale;
	float    ElapsedDays; /* 0x10 */
	float    ElapsedYears;
	float    SecondsPerDay;
	uint32_t CurrentYear;
	double   ElapsedSecondsSinceStart; /* 0x20 */
	int32_t  StartYear;
	int32_t  StartMonth;
	int32_t  StartDay; /* 0x30 */
	int32_t  StartHour;
	int32_t  StartMinute;
	int32_t  StartSecond;
	uint32_t field_0x40;
	float    VisualTimeScale;
	float    field_0x48;
	float    field_0x4c;
	float    field_0x50;
	uint32_t field_0x54;

	// Override methods

	// BW1W120 005577b0 BW1M100 102ffc00 GGameInfo::_dt(void)
	virtual ~GGameInfo();

	// Constructors

	// BW1W120 00557730 BW1M100 102ff6c0 GGameInfo::GGameInfo(void)
	GGameInfo();

	// Non-virtual methods

	// BW1W120 00557620 BW1M100 102ff910 GGameInfo::SetVisualTimeCycle(float, float, float)
	void SetVisualTimeCycle(float param_1, float param_2, float param_3);
	// BW1W120 005577d0 BW1M100 102ff520 GGameInfo::SetStartDate(long, long, long)
	void SetStartDate(int year, int month, int day);
	// BW1W120 005577f0 BW1M100 102ff380 GGameInfo::SetStartTime(long, long, long)
	void SetStartTime(int hour, int minute, int second);
	// BW1W120 00557940 BW1M100 100789f0 GGameInfo::GetDaysFromStart(void)
	float GetDaysFromStart();
	// BW1W120 00557950 BW1M100 1008c390 GGameInfo::GetYear(void)
	float GetYear();
	// BW1W120 00557a80 BW1M100 10099e70 GGameInfo::GetSeason(void)
	uint32_t GetSeason();
	// BW1W120 00557b60 BW1M100 1008c3f0 GGameInfo::Process(void)
	void Process();
	// BW1W120 00557bb0 BW1M100 102fecf0 GGameInfo::SetVisualTimeCycleFromMapEditor(float, float, float)
	void SetVisualTimeCycleFromMapEditor(float param_1, float param_2, float param_3);
};

#endif /* BW1_DECOMP_GAME_INFO_INCLUDED_H */
