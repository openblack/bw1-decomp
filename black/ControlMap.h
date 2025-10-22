#ifndef BW1_DECOMP_CONTROL_MAP_INCLUDED_H
#define BW1_DECOMP_CONTROL_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h> /* For char16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "BindableAction.h" /* For _BINDABLE_ACTION_SIZE, struct BindableAction */

struct ControlMap
{
  struct BindableAction bindable_actions[_BINDABLE_ACTION_SIZE];  /* 0x0 */
  bool32_t bindable_action_states[_BINDABLE_ACTION_SIZE];  /* 0x648c */
  bool32_t field2_0x6510;
  bool32_t field3_0x6514;
  bool32_t field4_0x6518;
  bool32_t field5_0x651c;
  bool32_t field6_0x6520;
  bool32_t field7_0x6524;
  bool32_t field7_0x6528;
  bool32_t field9_0x652c;
  bool32_t field10_0x6530;
};
static_assert(sizeof(struct ControlMap) == 0x6534, "Data type is of wrong size");

// Constructors

// win1.41 0046f6c0 mac 101cbaa0 ControlMap::ControlMap(void)
struct ControlMap* __fastcall __ct__10ControlMapFv(struct ControlMap* this) asm("??0ControlMap@@QAE@XZ");

// Non-virtual methods

// win1.41 00470910 mac 101caba0 ControlMap::GetText(ulong, wchar_t*)
void __fastcall GetText__10ControlMapFUlPw(struct ControlMap* this, const void* edx, enum LH_KEY key, char16_t* out_text) asm("?GetText@ControlMap@@QAEXKPA_W@Z");
// win1.41 00470ab0 mac 10090ab0 ControlMap::ProcessActionsPerformed(void)
void __fastcall ProcessActionsPerformed__10ControlMapFv(struct ControlMap* this) asm("?ProcessActionsPerformed@ControlMap@@QAEXXZ");

#endif /* BW1_DECOMP_CONTROL_MAP_INCLUDED_H */
