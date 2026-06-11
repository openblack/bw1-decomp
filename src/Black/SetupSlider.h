#ifndef BW1_DECOMP_SETUP_SLIDER_INCLUDED_H
#define BW1_DECOMP_SETUP_SLIDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupControl.h" /* For struct SetupControl */

class SetupSlider: public SetupControl
{
public:
    float value; /* 0x23c */
    float drag_start_value; /* 0x240 */
    LHCoord drag_start;
    int height;

    // Override methods

    // win1.41 00409a40 mac 10440200 SetupSlider::Draw(bool, bool)
    virtual void Draw(bool hovered, bool selected);
    // win1.41 00409c70 mac 1043ff90 SetupSlider::Drag(int, int)
    virtual void Drag(int x, int y);
    // win1.41 00409d60 mac 1043c240 SetupSlider::MouseDown(int, int, bool)
    virtual void MouseDown(int x, int y, bool param_3);
    // win1.41 00409d90 mac 100b4690 SetupSlider::MouseUp(int, int, bool)
    virtual void MouseUp(int x, int y, bool param_3);
    // win1.41 00409960 mac 10103d10 SetupSlider::KeyDown(int, int)
    virtual void KeyDown(LHKey key, LHKeyMod mod);
    // win1.41 00409c50 mac 101c8450 SetupSlider::~SetupSlider(void)
    virtual ~SetupSlider();

    // Constructors

    // win1.41 00409bf0 mac 1043fbc0 SetupSlider::SetupSlider(int, int, int, int, int, float, wchar_t *)
    SetupSlider(int id, int x, int y, int width, int height, float value, char16_t* label);
};

#endif /* BW1_DECOMP_SETUP_SLIDER_INCLUDED_H */
