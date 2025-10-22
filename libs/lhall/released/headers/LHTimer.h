#ifndef BW1_DECOMP_LH_TIMER_INCLUDED_H
#define BW1_DECOMP_LH_TIMER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LHTimer
{
  uint8_t field_0x0[0x100];
  uint32_t tick_count;  /* 0x100 */
  int elapsed_time;
  float speed_up_factor;
  float speed_up_factor_2;
};
static_assert(sizeof(struct LHTimer) == 0x110, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac 10001570 LHTimer::Running(void)
bool __fastcall Running__7LHTimerFv(struct LHTimer* this) asm("?Running@LHTimer@@QAE_NXZ");
// win1.41 inlined mac 10005790 LHTimer::Start(void)
void __fastcall Start__7LHTimerFv(struct LHTimer* this) asm("?Start@LHTimer@@QAEXXZ");
// win1.41 0043e9c0 mac 10001820 LHTimer::Stop(void)
void __fastcall Stop__7LHTimerFv(struct LHTimer* this) asm("?Stop@LHTimer@@QAEXXZ");
// win1.41 0043eb70 mac 100056e0 LHTimer::MSeconds(void)
int __fastcall MSeconds__7LHTimerFv(struct LHTimer* this) asm("?MSeconds@LHTimer@@QAEHXZ");
// win1.41 inlined mac 100017b0 LHTimer::GetSpeedUpFactor(void)
float __fastcall GetSpeedUpFactor__7LHTimerFv(struct LHTimer* this) asm("?GetSpeedUpFactor@LHTimer@@QAEMXZ");
// win1.41 0043ebc0 mac 100016c0 LHTimer::SetSpeedUpFactor(float)
void __fastcall SetSpeedUpFactor__7LHTimerFf(struct LHTimer* this, const void* edx, float factor) asm("?SetSpeedUpFactor@LHTimer@@QAEXM@Z");
// win1.41 0054b850 mac 10005830 LHTimer::Reset(ulong)
void __fastcall Reset__7LHTimerFUl(struct LHTimer* this, const void* edx, uint32_t value) asm("?Reset@LHTimer@@QAEXK@Z");

#endif /* BW1_DECOMP_LH_TIMER_INCLUDED_H */
