#ifndef BW1_DECOMP_SETUP_BOX_INCLUDED_H
#define BW1_DECOMP_SETUP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */

#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer */

// Forward Declares

class SetupControl;

class SetupBox
{
public:
    Zoomer zoomer_0x4;
    Zoomer zoomer_0x34;
    uint32_t field_0x64;
    SetupControl* widgets_0x68;
    SetupControl* widget_list;
    SetupControl* focused_widget; /* 0x70 */
    SetupControl* widget_0x74;
    uint8_t field_0x78;
    uint32_t field_0x7c;
    uint32_t field_0x80;
    float field_0x84;
    uint32_t field_0x88;
    uint32_t field_0x8c;
    uint32_t field_0x90;
    uint32_t field_0x94;
    uint32_t field_0x98;
    uint32_t field_0x9c;
    uint32_t field_0xa0;
    uint32_t field_0xa4;
    uint32_t field_0xa8;
    uint32_t default_text_size;
    FuncPtr(name='SetupBox__field_0xb0', call_type='__stdcall', result='void', args=['int', 'struct SetupBox*', 'struct SetupControl*', 'int', 'int'], arg_labels=['param_0', 'param_1', 'param_2', 'x', 'y'], decorated_name='SetupBox__field_0xb0', indirection_level=1) field_0xb0;
    uint32_t field_0xb4;
    uint32_t field_0xb8;
    SetupControl* field_0xbc;
    int field_0xc0;
    float field_0xc4;
    uint32_t field_0xc8;

    // Static methods

    // BW1W120 00407ed0 BW1M100 10075ef0 SetupBox::GetCurrentActiveBox(void)
    static SetupBox* GetCurrentActiveBox();

    // Non-virtual methods

    // BW1W120 00408160 BW1M100 1043c330 SetupBox::FindControl(int)
    SetupControl* FindControl(int id);
    // BW1W120 00409140 BW1M100 10598ed0 SetupBox::SetFocusControl(SetupControl *)
    void SetFocusControl(SetupControl* widget);
    // BW1W120 00411090 BW1M100 1047e3e0 SetupBox::SetFocusNext(SetupBox *)
    void SetFocusNext();
    // BW1W120 00411100 BW1M100 10478e70 SetupBox::SetFocusPrev(SetupBox *)
    void SetFocusPrev();
    // BW1W120 00411190 BW1M100 100c3160 SetupBox::MessageBoxA(wchar_t*, MSGBOXSTYLE, ulong)
    void MessageBoxA(const char16_t* param_2, uint32_t param_3, uint32_t param_4);
};

#endif /* BW1_DECOMP_SETUP_BOX_INCLUDED_H */
