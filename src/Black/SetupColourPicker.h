#ifndef BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H
#define BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h" /* For struct SetupButton */

// Forward Declares

struct LH3DMaterial;
class SetupControl;

class SetupColourPicker: public SetupButton
{
public:
    LH3DColor color_0x244;
    LH3DMaterial* material;
    bool brightness_slider;
    float slider_position; /* 0x250 */
    LH3DColor color;

    // Override methods

    // win1.41 00410880 mac 10103e40 SetupColourPicker::Draw(bool, bool)
    virtual void Draw(bool hovered, bool selected);
    // win1.41 00410810 mac 1023f300 SetupColourPicker::Drag(int, int)
    virtual void Drag(int x, int y);
    // win1.41 004107f0 mac 1030b070 SetupColourPicker::MouseDown(int, int, bool)
    virtual void MouseDown(int x, int y, bool param_3);
    // win1.41 00410800 mac 101119a0 SetupColourPicker::MouseUp(int, int, bool)
    virtual void MouseUp(int x, int y, bool param_3);
    // win1.41 00410b50 mac 100c8de0 SetupColourPicker::Click(int, int)
    virtual void Click(int x, int y);
    // win1.41 00410b30 mac 1034f250 SetupColourPicker::KeyDown(int, int)
    virtual void KeyDown(LHKey key, LHKeyMod mod);
    // win1.41 00410b60 mac 10571d70 SetupColourPicker::~SetupColourPicker(void)
    virtual ~SetupColourPicker();

    // Constructors

    // win1.41 00410ac0 mac 103c6130 SetupColourPicker::SetupColourPicker(int, int, int, int, int, int, LH3DMaterial *)
    SetupColourPicker(int id, int x, int y, int width, int height, bool brightness_slider, LH3DMaterial* material);
};

#endif /* BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H */
