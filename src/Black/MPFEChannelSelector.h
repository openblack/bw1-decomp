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

class MPFEChannelSelector : public DialogBoxBase
{
public:
	SetupStaticText* title; /* 0x10 */
	SetupStaticText* instructions;
	SetupBigButton*  BackArrow;
	SetupBigButton*  NextArrow;
	SetupEdit*       field_0x20;
	SetupEdit*       field_0x24;
	SetupList*       field_0x28;
	SetupList*       field_0x2c;
	SetupButton*     JoinHelpChannelButton; /* 0x30 */
	SetupButton*     RefreshButton;
	SetupCheckBox*   ResumeCheckbox;
	SetupStaticText* CurrentGameLabel;
	SetupStaticText* PlayersInGameLabel; /* 0x40 */
	SetupStaticText* GameNameLabel;
	SetupStaticText* field_0x48;
	uint8_t          field_0x4c;
	uint32_t         field_0x50;
	uint32_t         field_0x54;

	// Override methods

	// BW1W120 00628450 BW1M100 1039e270 MPFEChannelSelector::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 00628e20 BW1M100 1039e230 MPFEChannelSelector::Destroy(void)
	virtual void Destroy();
	// BW1W120 00628430 BW1M100 1039e800 MPFEChannelSelector::Show(void)
	virtual void Show();
	// BW1W120 00628e30 BW1M100 1039df20 MPFEChannelSelector::InitControls(void)
	virtual void InitControls();

	// Constructors

	// BW1W120 00628330 BW1M100 1039f0c0 MPFEChannelSelector::MPFEChannelSelector(void)
	MPFEChannelSelector();

	// Non-virtual methods

	// BW1W120 00629c50 BW1M100 1039cab0 MPFEChannelSelector::RefreshChannelList(void)
	void RefreshChannelList();
};

#endif /* BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H */
