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

	// Non-virtual methods

	// BW1W120 inlined BW1M100 10001570 LHTimer::Running(void)
	bool32_t Running();
	// BW1W120 inlined BW1M100 10005790 LHTimer::Start(void)
	void Start();
	// BW1W120 0043e9c0 BW1M100 10001820 LHTimer::Stop(void)
	void Stop();
	// BW1W120 0043eb70 BW1M100 100056e0 LHTimer::MSeconds(void)
	int MSeconds();
	// BW1W120 inlined BW1M100 100017b0 LHTimer::GetSpeedUpFactor(void)
	float GetSpeedUpFactor();
	// BW1W120 0043ebc0 BW1M100 100016c0 LHTimer::SetSpeedUpFactor(float)
	void SetSpeedUpFactor(float factor);
	// BW1W120 0054b850 BW1M100 10005830 LHTimer::Reset(unsigned long)
	void Reset(uint32_t value);
};

#endif /* BW1_DECOMP_LH_TIMER_INCLUDED_H */
