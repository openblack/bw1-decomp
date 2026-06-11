#ifndef BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupRect.h" /* For struct SetupRect */
#include "SetupThing.h" /* For enum BBSTYLE */

// Forward Declares

class SetupControl;

class SetupBigButton: public SetupButton
{
public:
    uint32_t text_position; /* 0x244 */
    BBSTYLE style;
    SetupRect inner_rect;

    // Override methods

    // win1.41 0040d310 mac 101670b0 SetupBigButton::HitTest(int, int)
    virtual bool HitTest(int x, int y);
    // win1.41 0040ceb0 mac 103deac0 SetupBigButton::Draw(bool, bool)
    virtual void Draw(bool hovered, bool selected);
    // win1.41 0040d2f0 mac 101689f0 SetupBigButton::KeyDown(int, int)
    virtual void KeyDown(LHKey key, LHKeyMod mod);
    // win1.41 0040d360 mac 1010fca0 SetupBigButton::~SetupBigButton(void)
    virtual ~SetupBigButton();

    // Constructors

    // win1.41 0040d260 mac 100fd210 SetupBigButton::SetupBigButton(int, int, int, wchar_t *, int, int, int)
    SetupBigButton(int id, int x, int y, const char16_t* label, int size, uint32_t text_position, BBSTYLE style);
};

#endif /* BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H */
