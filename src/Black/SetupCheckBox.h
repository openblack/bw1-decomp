#ifndef BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H
#define BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupRect.h" /* For struct SetupRect */
#include "SetupThing.h" /* For enum BBSTYLE */

// Forward Declares

class SetupControl;

class SetupCheckBox: public SetupButton
{
public:
    uint32_t text_position; /* 0x244 */
    BBSTYLE style;
    bool checked;
    SetupRect inner_rect; /* 0x250 */

    // Override methods

    // win1.41 00410f90 mac 10112370 SetupCheckBox::HitTest(int, int)
    virtual bool HitTest(int x, int y);
    // win1.41 00410b80 mac 103c4a20 SetupCheckBox::Draw(bool, bool)
    virtual void Draw(bool hovered, bool selected);
    // win1.41 00411020 mac 103dbde0 SetupCheckBox::Click(int, int)
    virtual void Click(int x, int y);
    // win1.41 00411050 mac 10599580 SetupCheckBox::KeyDown(int, int)
    virtual void KeyDown(LHKey key, LHKeyMod mod);
    // win1.41 00411070 mac 105893e0 SetupCheckBox::~SetupCheckBox(void)
    virtual ~SetupCheckBox();

    // Constructors

    // win1.41 00410f10 mac 1058b890 SetupCheckBox::SetupCheckBox(int, int, int, bool, int, wchar_t *, int)
    SetupCheckBox(int id, int x, int y, bool checked, BBSTYLE style, const char16_t* label, int size);
};

#endif /* BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H */
