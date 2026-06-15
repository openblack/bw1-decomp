#ifndef BW1_DECOMP_LH_SYSTEM_INCLUDED_H
#define BW1_DECOMP_LH_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */
#include <wchar.h> /* For wchar_t */

#include <Lionhead/LH3DLib/development/LHText.h> /* For struct LHText */
#include <re_common.h> /* For HINSTANCE, HWND, bool32_t */

#include "LHJoypad.h" /* For struct LHJoypads */
#include "LHMouse.h" /* For struct LHMouse */
#include "LHScreen.h" /* For struct LHScreen */
#include "LHScript.h" /* For struct LHScriptX_c_ */

struct Q24slim5TbIME
{
    Q24slim5TbIME_field_0x0_t* field_0x0;

    // Non-virtual methods

    // win1.41 007f3d00 mac 101704a0 slim::TbIME::Activate(void* )
    void Activate(HWND param_1);
    // win1.41 007f3d10 mac 10170460 slim::TbIME::UnActivate(void)
    void UnActivate();
    // win1.41 007f3d50 mac 1061ec14 slim::TbIME::Composition_Get( (void))
    wchar_t* Composition_Get();
    // win1.41 007f3dc0 mac 1061e884 slim::TbIME::CandidateList_GetSelectIdx( (void)
    uint32_t CandidateList_GetSelectIdx();
    // win1.41 007f3de0 mac 1061e89c slim::TbIME::CandidateList_SetViewWindow( (unsigned int, unsigned int, unsigned int))
    void CandidateList_SetViewWindow(uint32_t param_1, uint32_t param_2, uint32_t idx);
};

struct LHSys
{
    LHSystem system; /* 0x0 */
    LHScreen screen; /* 0x10 */
    LHMouse mouse; /* 0x1c4 */
    uint8_t field_0x32c[0x108];
    uint32_t field_0x434;
    uint8_t field_0x438[0x128];
    uint32_t field_0x560[0x10];
    uint32_t field_0x5a0;
    uint32_t field_0x5a4;
    LHJoypads joypads;
    uint8_t field_0x82c[0x8];
    LHConvert convert; /* 0x834 */
    LHScriptX_c_ script; /* 0x8c4 */
    uint8_t field_0x8f4[0x6750];
    LHText text; /* 0x7044 */
    uint8_t field_0x7068[0x4c];
    HWND window; /* 0x70b4 */
    uint8_t field_0x70b8;
    uint8_t field_0x70b9;
    bool field_0x70ba;
    uint8_t field_0x70bb;
    uint32_t field_0x70bc;
    uint32_t field_0x70c0;
    Q24slim5TbIME* field_0x70c4;
    uint8_t field_0x70c8[0x10];

    // Constructors

    // win1.41 007db800 mac inlined LHSys::LHSys(void)
    LHSys();
};

#endif /* BW1_DECOMP_LH_SYSTEM_INCLUDED_H */
