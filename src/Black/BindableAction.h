#ifndef BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H
#define BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */

struct CMouse
{
    uint32_t field_0x0;

    // Non-virtual methods

    // win1.41 0061a150 mac 10090d20 CMouse::ProcessButtons(void)
    void ProcessButtons();
    // win1.41 0061a110 mac 10007d80 CMouse::ProcessPosition(void)
    void ProcessPosition();
};

struct ControlKey
{
    LH_KEY key; /* 0x0 */
    char16_t key_display_text[0x40];
    LH_KEY keymod; /* 0x84 */
    char16_t keymod_display_text[0x40];

    // Non-virtual methods

    // win1.41 0046efe0 mac inlined ControlKey::GetDisplayText(wchar_t*)
    void GetDisplayText(char16_t* out_text);
};

struct ControlMouse
{
    uint32_t code; /* 0x0 */
    char16_t display_text[0x80];

    // Non-virtual methods

    // win1.41 0046f180 mac 101cc260 ControlMouse::GetDisplayText(wchar_t*)
    void GetDisplayText(char16_t* out_text);
};

struct BindableAction
{
    char16_t name[0x80]; /* 0x0 */
    ControlKey key; /* 0x100 */
    ControlMouse mouse; /* 0x208 */

    // Static methods

    // win1.41 0046f3c0 mac 10090c30 BindableAction::IsKeyDown(LH_KEY)
    static bool IsKeyDown(LH_KEY key);

    // Constructors

    // win1.41 0046f1a0 mac 101cc4d0 BindableAction::BindableAction(void)
    BindableAction();

    // Non-virtual methods

    // win1.41 0046f4c0 mac 10090b80 BindableAction::IsKeyBeingPressed(void)
    bool IsKeyBeingPressed();
};

#endif /* BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H */
