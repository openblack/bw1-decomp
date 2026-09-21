#ifndef BW1_DECOMP_LH_TIMER_INCLUDED_H
#define BW1_DECOMP_LH_TIMER_INCLUDED_H

#include <re_common.h> /* For bool32_t */
#include <stdint.h>    /* For uint32_t, uint8_t */

struct LHTimer
{
	uint8_t  field_0x0[0x100];
	uint32_t TickCount; /* 0x100 */
	int      ElapsedTime;
	float    SpeedUpFactor;
	float    SpeedUpFactor2;

	LHTimer() : SpeedUpFactor(1.0f), SpeedUpFactor2(0.0f)
	{
		Reset(0);
		Stop();
	}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01001570
	bool32_t Running();
	// BW1W120 inlined BW1M119 010056a0
	void Start();
	// BW1W120 0043e9c0 BW1M119 01001820
	void Stop();
	// BW1W120 0043eb70 BW1M119 010055f0
	int MSeconds();
	// BW1W120 inlined BW1M119 010017b0
	float GetSpeedUpFactor();
	// BW1W120 0043ebc0 BW1M119 010016c0
	void SetSpeedUpFactor(float factor);
	// BW1W120 0054b850 BW1M119 01005740
	void Reset(uint32_t value);
};

#endif /* BW1_DECOMP_LH_TIMER_INCLUDED_H */
