#ifndef BW1_DECOMP_HELP_PROFILE_INCLUDED_H
#define BW1_DECOMP_HELP_PROFILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h"       /* For struct Base */
#include "HelpSystem.h" /* For enum HELP_EVENT_TYPE */

#define CAMERA_HELP_TRIGGER_TIME_COUNT      0x40
#define CAMERA_HELP_MILLISECONDS_PER_SECOND 1000
#define CAMERA_HELP_SECONDS_PER_MILLISECOND 0.001f
#define CAMERA_HELP_SMOOTHED_RATE_RISE      0.005f
#define CAMERA_HELP_SMOOTHED_RATE_FALL      0.005f

#define CAMERA_HELP_STATS_ROW_HEIGHT          12
#define CAMERA_HELP_STATS_TEXT_GAP            2
#define CAMERA_HELP_STATS_RATE_BAR_BOTTOM     5
#define CAMERA_HELP_STATS_SMOOTHED_BAR_TOP    6
#define CAMERA_HELP_STATS_SMOOTHED_BAR_BOTTOM 11
#define CAMERA_HELP_STATS_RATE_BAR_SCALE      10.0f
#define CAMERA_HELP_STATS_SMOOTHED_BAR_SCALE  100.0f
#define CAMERA_HELP_STATS_SMOOTHED_TEXT_SCALE 10.0f

struct CameraHelpAccumulator
{
	uint32_t TotalTriggerCount;
	float    SmoothedRate;
	int8_t   TriggerTimeHead;
	int8_t   TriggerTimeCount;
	int8_t   TriggeredThisFrame;
	uint32_t TriggerTimes[CAMERA_HELP_TRIGGER_TIME_COUNT];

	// Non-virtual methods

	// BW1W120 inlined BW1M119 011a6b50
	CameraHelpAccumulator() { Reset(); }
	// BW1W120 00448c40 BW1M119 null
	void Draw(char* name, int x, int y);
	// BW1W120 00448f10 BW1M119 null
	int GetRowHeight();
	// BW1W120 00448f20 BW1M119 011a5e10
	void Reset();
	// BW1W120 00448f40 BW1M119 01094fb0
	float GetTimeSinceLastUsed();
	// BW1W120 00448f90 BW1M119 null
	void ClampTriggerTimes();
	// BW1W120 00448fc0 BW1M119 011a5c10
	float GetRate();
	// BW1W120 00449040 BW1M119 0108b860
	void Trigger();
	// BW1W120 inlined BW1M119 01322a20
	long GetTotal() { return TotalTriggerCount; }
};

static_assert(sizeof(CameraHelpAccumulator) == 0x10c, "Data type is of wrong size");

class HelpProfile : public Base
{
public:
	// BW1W120 00c5afd8
	static unsigned int AccumulatedTime;
	// BW1W120 005c4660 BW1M119 0108b5e0
	void Process();
	// BW1W120 005c4820 BW1M119 01353010
	bool32_t Save(GameOSFile& file);
	// BW1W120 005c4830 BW1M119 01352f40
	bool32_t Load(GameOSFile& file);
	// BW1W120 005c4840 BW1M119 01352e70
	void LoadFromProfile();
	// BW1W120 005c48e0 BW1M119 01352da0
	void SaveToProfile();

	CameraHelpAccumulator accumulators[0x31]; /* 0x8 */
	uint32_t              field_0x3354;

	// Override methods

	// BW1W120 005c4560 BW1M119 01353a00
	virtual ~HelpProfile();

	// Static methods

	// BW1W120 005c4500 BW1M119 01353930
	static HelpProfile* Create();
	// BW1W120 005c4800 BW1M119 01094dd0
	static int GetMouseType();

	// Non-virtual methods

	// BW1W120 005c46e0 BW1M119 0108b900
	void Trigger(HELP_EVENT_TYPE type);
	// BW1W120 005c4770 BW1M119 013538a0
	void SetToZero();
	// BW1W120 inlined BW1M119 01503d20
	float GetTimeSinceTrigger(HELP_EVENT_TYPE type) { return accumulators[type].GetTimeSinceLastUsed(); }
	// BW1W120 inlined BW1M119 01503e90
	float GetTriggerPerSecond(HELP_EVENT_TYPE type) { return accumulators[type].GetRate(); }
	// BW1W120 inlined BW1M119 01503be0
	long GetTriggerTotal(HELP_EVENT_TYPE type) { return accumulators[type].GetTotal(); }
};

#endif /* BW1_DECOMP_HELP_PROFILE_INCLUDED_H */
