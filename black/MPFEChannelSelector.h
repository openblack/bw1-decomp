#ifndef BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupEdit;
struct SetupList;
struct SetupStaticText;

struct MPFEChannelSelector
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupStaticText* title;  /* 0x10 */
  struct SetupStaticText* instructions;
  struct SetupBigButton* back_arrow;
  struct SetupBigButton* next_arrow;
  struct SetupEdit* field_0x20;
  struct SetupEdit* field_0x24;
  struct SetupList* field_0x28;
  struct SetupList* field_0x2c;
  struct SetupButton* join_help_channel_button;  /* 0x30 */
  struct SetupButton* refresh_button;
  struct SetupCheckBox* resume_checkbox;
  struct SetupStaticText* current_game_label;
  struct SetupStaticText* players_in_game_label;  /* 0x40 */
  struct SetupStaticText* game_name_label;
  struct SetupStaticText* field_0x48;
  uint8_t field_0x4c;
  uint32_t field_0x50;
  uint32_t field_0x54;
};
static_assert(sizeof(struct MPFEChannelSelector) == 0x58, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__19MPFEChannelSelector = (struct DialogBoxBaseVftable* const)0x00930780;

// Constructors

// win1.41 00628330 mac 1039f0c0 MPFEChannelSelector::MPFEChannelSelector(void)
struct MPFEChannelSelector* __fastcall __ct__19MPFEChannelSelectorFv(struct MPFEChannelSelector* this);

// Non-virtual methods

// win1.41 00629c50 mac 1039cab0 MPFEChannelSelector::RefreshChannelList(void)
void __fastcall RefreshChannelList__19MPFEChannelSelectorFv(struct MPFEChannelSelector* this);

// Override methods

// win1.41 00628e30 mac 1039df20 MPFEChannelSelector::InitControls(void)
void __fastcall InitControls__19MPFEChannelSelectorFv(struct MPFEChannelSelector* this);

#endif /* BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H */
