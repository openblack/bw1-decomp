#ifndef BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H
#define BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

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

    // BW1W120 00410f90 BW1M100 10112370 SetupCheckBox::HitTest(int, int)
    virtual bool HitTest(int x, int y);
    // BW1W120 00410b80 BW1M100 103c4a20 SetupCheckBox::Draw(bool, bool)
    virtual void Draw(bool hovered, bool selected);
    // BW1W120 00411020 BW1M100 103dbde0 SetupCheckBox::Click(int, int)
    virtual void Click(int x, int y);
    // BW1W120 00411050 BW1M100 10599580 SetupCheckBox::KeyDown(int, int)
    virtual void KeyDown(LHKey key, LHKeyMod mod);
    // BW1W120 00411070 BW1M100 105893e0 SetupCheckBox::~SetupCheckBox(void)
    virtual ~SetupCheckBox();

    // Constructors

    // BW1W120 00410f10 BW1M100 1058b890 SetupCheckBox::SetupCheckBox(int, int, int, bool, int, wchar_t *, int)
    SetupCheckBox(int id, int x, int y, bool checked, BBSTYLE style, const char16_t* label, int size);
};

#endif /* BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H */
