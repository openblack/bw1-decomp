#ifndef BW1_DECOMP_SETUP_CONTROL_INCLUDED_H
#define BW1_DECOMP_SETUP_CONTROL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupRect.h" /* For struct SetupRect */

// Forward Declares

class SetupBox;

class SetupControl
{
public:
    uint32_t field_0x4;
    SetupRect rect;
    int id; /* 0x18 */
    int field_0x1c;
    int text_size; /* 0x20 */
    char16_t label[0x100];
    const char16_t* tooltip; /* 0x224 */
    bool focus;
    bool hidden;
    bool field_0x22a;
    bool field_0x22b;
    uint32_t field_0x22c;
    SetupControl* next; /* 0x230 */
    SetupBox* setup_box;
    void* continue_button_callback;

    // Override methods

    // win1.41 00409300 mac 105a3830 SetupControl::Hide(bool)
    virtual void Hide(bool hidden);
    // win1.41 00409180 mac 1032c7e0 SetupControl::SetFocus(bool)
    virtual void SetFocus(bool focus);
    // win1.41 00409310 mac 10310540 SetupControl::HitTest(int, int)
    virtual bool HitTest(int x, int y);
    // win1.41 00409340 mac inlined SetupControl::Drag(int, int)
    virtual void Drag(int x, int y);
    // win1.41 00409350 mac 100a6190 SetupControl::MouseDown(int, int, bool)
    virtual void MouseDown(int x, int y, bool param_3);
    // win1.41 00409360 mac 104faf30 SetupControl::MouseUp(int, int, bool)
    virtual void MouseUp(int x, int y, bool param_3);
    // win1.41 00409370 mac 103e3120 SetupControl::Click(int, int)
    virtual void Click(int x, int y);
    // win1.41 00409380 mac 100d4e40 SetupControl::KeyDown(int, int)
    virtual void KeyDown(LHKey key, LHKeyMod mod);
    // win1.41 00409390 mac 105049b0 SetupControl::Char(int)
    virtual void Char(int character);
    // win1.41 004093a0 mac 100c48e0 SetupControl::~SetupControl(bool)
    virtual ~SetupControl();

    // Constructors

    // win1.41 00409250 mac 101668d0 SetupControl::SetupControl(int, int, int, int, int, wchar_t *)
    SetupControl(int id, int x, int y, int width, int height, const char16_t* label);

    // Non-virtual Destructors

    // win1.41 004093c0 mac inlined SetupControl::~SetupControl(void)
    ~SetupControl();

    // Non-virtual methods

    // win1.41 inlined mac inlined SetupControl::GetTextSize(void)
    int GetTextSize();
    // win1.41 00409210 mac 1057a320 SetupControl::SetToolTip(unsigned long)
    void SetToolTip(uint32_t tooltip_id);
    // win1.41 004092f0 mac 100c4fd0 SetupControl::SetToolTip(wchar_t *)
    void SetToolTip(const char16_t* tooltip);
};

#endif /* BW1_DECOMP_SETUP_CONTROL_INCLUDED_H */
