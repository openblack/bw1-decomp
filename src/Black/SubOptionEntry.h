#ifndef BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H
#define BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <re_common.h> /* For bool32_t */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */

// Forward Declares

struct SubMeshDrawData;

class SubOptionEntry
{
public:
};

class SubOptionEntryButton: public SubOptionEntry
{
public:

    // Override methods

    // BW1W120 0078db60 BW1M100 1010f040 SubOptionEntryButton::GetSubMeshData(SubMeshDrawData &, int, int)
    virtual void GetSubMeshData(SubMeshDrawData* param_1, int param_2, int param_3);
    // BW1W120 0078dc40 BW1M100 1010ef20 SubOptionEntryButton::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
    virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
    // BW1W120 0078dcd0 BW1M100 1010eed0 SubOptionEntryButton::UpdateKeyboard(LH_KEY, unsigned short)
    virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryCheckBoxChecked: public SubOptionEntry
{
public:

    // Override methods

    // BW1W120 0078deb0 BW1M100 1010e9a0 SubOptionEntryCheckBoxChecked::GetSubMeshData(SubMeshDrawData &, int, int)
    virtual void GetSubMeshData(SubMeshDrawData* param_1, int param_2, int param_3);
    // BW1W120 0078df60 BW1M100 1010e880 SubOptionEntryCheckBoxChecked::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
    virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
    // BW1W120 0078dff0 BW1M100 1010e820 SubOptionEntryCheckBoxChecked::UpdateKeyboard(LH_KEY, unsigned short)
    virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryCheckBoxUnChecked: public SubOptionEntry
{
public:

    // Override methods

    // BW1W120 0078dd20 BW1M100 1010ecf0 SubOptionEntryCheckBoxUnChecked::GetSubMeshData(SubMeshDrawData &, int, int)
    virtual void GetSubMeshData(SubMeshDrawData* param_1, int param_2, int param_3);
    // BW1W120 0078ddd0 BW1M100 1010ebd0 SubOptionEntryCheckBoxUnChecked::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
    virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
    // BW1W120 0078de60 BW1M100 1010eb70 SubOptionEntryCheckBoxUnChecked::UpdateKeyboard(LH_KEY, unsigned short)
    virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryFrame: public SubOptionEntry
{
public:

    // Override methods

    // BW1W120 0078e7a0 BW1M100 1010d690 SubOptionEntryFrame::GetSubMeshData(SubMeshDrawData &, int, int)
    virtual void GetSubMeshData(SubMeshDrawData* param_1, int param_2, int param_3);
    // BW1W120 0078e850 BW1M100 1010d630 SubOptionEntryFrame::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
    virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
    // BW1W120 0078e860 BW1M100 1010d5e0 SubOptionEntryFrame::UpdateKeyboard(LH_KEY, unsigned short)
    virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryListBox: public SubOptionEntry
{
public:

    // Override methods

    // BW1W120 0078e5d0 BW1M100 1010da10 SubOptionEntryListBox::GetSubMeshData(SubMeshDrawData &, int, int)
    virtual void GetSubMeshData(SubMeshDrawData* param_1, int param_2, int param_3);
    // BW1W120 0078e6a0 BW1M100 1010d8b0 SubOptionEntryListBox::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
    virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
    // BW1W120 0078e750 BW1M100 1010d860 SubOptionEntryListBox::UpdateKeyboard(LH_KEY, unsigned short)
    virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryPicture: public SubOptionEntry
{
public:

    // Override methods

    // BW1W120 0078e0c0 BW1M100 1010e480 SubOptionEntryPicture::GetSubMeshData(SubMeshDrawData &, int, int)
    virtual void GetSubMeshData(SubMeshDrawData* param_1, int param_2, int param_3);
    // BW1W120 0078e190 BW1M100 1010e380 SubOptionEntryPicture::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
    virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
    // BW1W120 0078e1f0 BW1M100 1010e330 SubOptionEntryPicture::UpdateKeyboard(LH_KEY, unsigned short)
    virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryScroll: public SubOptionEntry
{
public:

    // Override methods

    // BW1W120 0078e250 BW1M100 1010e140 SubOptionEntryScroll::GetSubMeshData(SubMeshDrawData &, int, int)
    virtual void GetSubMeshData(SubMeshDrawData* param_1, int param_2, int param_3);
    // BW1W120 0078e320 BW1M100 1010dff0 SubOptionEntryScroll::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
    virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
    // BW1W120 0078e3c0 BW1M100 1010dfa0 SubOptionEntryScroll::UpdateKeyboard(LH_KEY, unsigned short)
    virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntrySlider: public SubOptionEntry
{
public:

    // Override methods

    // BW1W120 0078e040 BW1M100 1010e720 SubOptionEntrySlider::GetSubMeshData(SubMeshDrawData &, int, int)
    virtual void GetSubMeshData(SubMeshDrawData* param_1, int param_2, int param_3);
    // BW1W120 0078e060 BW1M100 1010e6c0 SubOptionEntrySlider::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
    virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
    // BW1W120 0078e070 BW1M100 1010e670 SubOptionEntrySlider::UpdateKeyboard(LH_KEY, unsigned short)
    virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryText: public SubOptionEntry
{
public:

    // Override methods

    // BW1W120 0078e410 BW1M100 1010ddc0 SubOptionEntryText::GetSubMeshData(SubMeshDrawData &, int, int)
    virtual void GetSubMeshData(SubMeshDrawData* param_1, int param_2, int param_3);
    // BW1W120 0078e4e0 BW1M100 1010dd60 SubOptionEntryText::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
    virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
    // BW1W120 0078e4f0 BW1M100 1010dc10 SubOptionEntryText::UpdateKeyboard(LH_KEY, unsigned short)
    virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

#endif /* BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H */
