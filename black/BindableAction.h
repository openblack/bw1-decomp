#ifndef BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H
#define BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */

struct ControlKey
{
  enum LH_KEY key;  /* 0x0 */
  char16_t key_display_text[0x40];
  enum LH_KEY keymod;  /* 0x84 */
  char16_t keymod_display_text[0x40];
};
static_assert(sizeof(struct ControlKey) == 0x108, "Data type is of wrong size");

// Non-virtual methods

// win1.41 0046efe0 mac inlined ControlKey::GetDisplayText(wchar_t*)
void __fastcall GetDisplayText__10ControlKeyFPw(struct ControlKey* this, const void* edx, char16_t* out_text);

struct ControlMouse
{
  uint32_t code;  /* 0x0 */
  char16_t display_text[0x80];
};
static_assert(sizeof(struct ControlMouse) == 0x104, "Data type is of wrong size");

// Non-virtual methods

// win1.41 0046f180 mac 101cc260 ControlMouse::GetDisplayText(wchar_t*)
void __fastcall GetDisplayText__12ControlMouseFPw(struct ControlMouse* this, const void* edx, char16_t* out_text);

struct BindableAction
{
  char16_t name[0x80];  /* 0x0 */
  struct ControlKey key;  /* 0x100 */
  struct ControlMouse mouse;  /* 0x208 */
};
static_assert(sizeof(struct BindableAction) == 0x30c, "Data type is of wrong size");

// Static methods

// win1.41 0046f3c0 mac 10090c30 BindableAction::IsKeyDown(LH_KEY)
bool __cdecl IsKeyDown__14BindableActionF6LH_KEY(enum LH_KEY key);

// Constructors

// win1.41 0046f1a0 mac 101cc4d0 BindableAction::BindableAction(void)
struct BindableAction* __fastcall __ct__14BindableActionFv(struct BindableAction* this);

// Non-virtual methods

// win1.41 0046f4c0 mac 10090b80 BindableAction::IsKeyBeingPressed(void)
bool __fastcall IsKeyBeingPressed__14BindableActionFv(struct BindableAction* this);

#endif /* BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H */
