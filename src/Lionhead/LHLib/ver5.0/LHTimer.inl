#ifndef BW1_DECOMP_LH_TIMER_INCLUDED_INL
#define BW1_DECOMP_LH_TIMER_INCLUDED_INL

#include "LHTimer.h"

// Opt-in definitions: GameOSFile inlines these, but LHScreen retains an external
// SetSpeedUpFactor call at BW1W120 007de37e.
// Avoid exposing windows.h macros to game headers.
extern "C" __declspec(dllimport) unsigned long __stdcall GetTickCount(void);

inline bool32_t LHTimer::Running()
{
	return SpeedUpFactor != 0.0f;
}

inline int LHTimer::MSeconds()
{
	// Subtract ticks before conversion to preserve unsigned wraparound.
	return (int)((double)(GetTickCount() - TickCount) * SpeedUpFactor + ElapsedTime);
}

inline float LHTimer::GetSpeedUpFactor()
{
	return Running() ? SpeedUpFactor : SpeedUpFactor2;
}

inline void LHTimer::SetSpeedUpFactor(float factor)
{
	if (Running())
	{
		ElapsedTime = MSeconds();
		TickCount = GetTickCount();
		SpeedUpFactor = factor;
	}
	else
	{
		SpeedUpFactor2 = factor;
	}
}

inline void LHTimer::Stop()
{
	if (Running())
	{
		SpeedUpFactor2 = GetSpeedUpFactor();
		SetSpeedUpFactor(0.0f);
	}
}

inline void LHTimer::Reset(uint32_t value)
{
	TickCount = GetTickCount();
	ElapsedTime = value;
	Stop();
}

inline void LHTimer::Start()
{
	SpeedUpFactor = 0.00001f;
	SetSpeedUpFactor(SpeedUpFactor2);
}

#endif /* BW1_DECOMP_LH_TIMER_INCLUDED_INL */
