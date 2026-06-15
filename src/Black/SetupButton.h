#ifndef BW1_DECOMP_SETUP_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h> /* For char16_t */

#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupControl.h" /* For struct SetupControl */

class SetupButton: public SetupControl
{
public:
    bool pressed; /* 0x23c */
    int field_0x240;

    // Override methods

    // win1.41 004097a0 mac 100c7c90 SetupButton::Draw(bool, bool)
    virtual void Draw(bool hovered, bool selected);
    // win1.41 00409900 mac 101104d0 SetupButton::MouseDown(int, int, bool)
    virtual void MouseDown(int x, int y, bool param_3);
    // win1.41 00409910 mac 10172660 SetupButton::MouseUp(int, int, bool)
    virtual void MouseUp(int x, int y, bool param_3);
    // win1.41 00409920 mac 1034a2d0 SetupButton::KeyDown(int, int)
    virtual void KeyDown(LHKey key, LHKeyMod mod);
    // win1.41 00409940 mac 10594240 SetupButton::~SetupButton(void)
    virtual ~SetupButton();

    // Constructors

    // win1.41 004098b0 mac 103dd710 SetupButton::SetupButton(int, int, int, int, int, wchar_t *, int)
    SetupButton(int id, int x, int y, int width, int height, const char16_t* label, int param_8);
};

#endif /* BW1_DECOMP_SETUP_BUTTON_INCLUDED_H */
