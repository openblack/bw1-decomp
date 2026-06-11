#ifndef BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class SetupBigButton;
class SetupButton;
class SetupCheckBox;
class SetupEdit;
class SetupList;
class SetupStaticText;

class MPFEChannelSelector: public DialogBoxBase
{
public:
    SetupStaticText* title; /* 0x10 */
    SetupStaticText* instructions;
    SetupBigButton* back_arrow;
    SetupBigButton* next_arrow;
    SetupEdit* field_0x20;
    SetupEdit* field_0x24;
    SetupList* field_0x28;
    SetupList* field_0x2c;
    SetupButton* join_help_channel_button; /* 0x30 */
    SetupButton* refresh_button;
    SetupCheckBox* resume_checkbox;
    SetupStaticText* current_game_label;
    SetupStaticText* players_in_game_label; /* 0x40 */
    SetupStaticText* game_name_label;
    SetupStaticText* field_0x48;
    uint8_t field_0x4c;
    uint32_t field_0x50;
    uint32_t field_0x54;

    // Override methods

    // win1.41 00628450 mac 1039e270 MPFEChannelSelector::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00628e20 mac 1039e230 MPFEChannelSelector::Destroy(void)
    virtual void Destroy();
    // win1.41 00628430 mac 1039e800 MPFEChannelSelector::Show(void)
    virtual void Show();
    // win1.41 00628e30 mac 1039df20 MPFEChannelSelector::InitControls(void)
    virtual void InitControls();

    // Constructors

    // win1.41 00628330 mac 1039f0c0 MPFEChannelSelector::MPFEChannelSelector(void)
    MPFEChannelSelector();

    // Non-virtual methods

    // win1.41 00629c50 mac 1039cab0 MPFEChannelSelector::RefreshChannelList(void)
    void RefreshChannelList();
};

#endif /* BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H */
