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

	// win1.41 inlined mac 10001570 LHTimer::Running(void)
	bool32_t Running();
	// win1.41 inlined mac 10005790 LHTimer::Start(void)
	void Start();
	// win1.41 0043e9c0 mac 10001820 LHTimer::Stop(void)
	void Stop();
	// win1.41 0043eb70 mac 100056e0 LHTimer::MSeconds(void)
	int MSeconds();
	// win1.41 inlined mac 100017b0 LHTimer::GetSpeedUpFactor(void)
	float GetSpeedUpFactor();
	// win1.41 0043ebc0 mac 100016c0 LHTimer::SetSpeedUpFactor(float)
	void SetSpeedUpFactor(float factor);
	// win1.41 0054b850 mac 10005830 LHTimer::Reset(ulong)
	void Reset(uint32_t value);
};

#endif /* BW1_DECOMP_LH_TIMER_INCLUDED_H */
