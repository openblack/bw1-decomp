#ifndef BW1_DECOMP_GAME_INFO_INCLUDED_H
#define BW1_DECOMP_GAME_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class GGameInfo : public Base
{
public:
	// TODO: Original singleton name is unrecovered. Storage is emitted in Game.
	// BW1W120 00d019f8
	static GGameInfo Info;
	uint8_t          field_0x8;
	uint8_t          field_0x9;
	uint8_t          field_0xa;
	uint8_t          field_0xb;
	int              TimeScale;
	float            ElapsedDays; /* 0x10 */
	float            ElapsedYears;
	float            SecondsPerDay;
	uint32_t         CurrentYear;
	double           ElapsedSecondsSinceStart; /* 0x20 */
	int32_t          StartYear;
	int32_t          StartMonth;
	int32_t          StartDay; /* 0x30 */
	int32_t          StartHour;
	int32_t          StartMinute;
	int32_t          StartSecond;
	uint32_t         field_0x40;
	float            VisualTimeScale;
	float            field_0x48;
	float            field_0x4c;
	float            field_0x50;
	uint32_t         field_0x54;

	// Override methods

	// BW1W120 005577b0 BW1M119 01301950
	virtual ~GGameInfo() {}

	// Constructors

	// BW1W120 00557730 BW1M119 01301460
	GGameInfo();

	// Non-virtual methods
	// BW1W120 005575a0 BW1M119 010695d0
	float GetVisualTime();
	// BW1W120 005575d0 BW1M119 01301870
	void ForceVisualTime(float time);
	// BW1W120 00557610 BW1M119 013017e0
	void SetVisualTimeScale(float scale);

	// BW1W120 00557620 BW1M119 013016a0
	void SetVisualTimeCycle(float param_1, float param_2, float param_3);
	// BW1W120 005577d0 BW1M119 013012c0
	void SetStartDate(int year, int month, int day);
	// BW1W120 005577f0 BW1M119 01301120
	void SetStartTime(int hour, int minute, int second);
	// BW1W120 00557940 BW1M119 0107afc0
	float GetDaysFromStart();
	// BW1W120 00557950 BW1M119 0108e6d0
	float GetYear();
	// BW1W120 00557a80 BW1M119 0109bc90
	uint32_t GetSeason();
	// BW1W120 00557b60 BW1M119 0108e730
	void Process();
	// BW1W120 00557ba0 BW1M119 01090ca0
	void Debug();
	// BW1W120 00557bb0 BW1M119 01300b40
	void SetVisualTimeCycleFromMapEditor(float param_1, float param_2, float param_3);
};

static_assert(sizeof(GGameInfo) == 0x58, "GGameInfo size is incorrect");

#endif /* BW1_DECOMP_GAME_INFO_INCLUDED_H */
