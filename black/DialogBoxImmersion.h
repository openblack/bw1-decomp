#ifndef BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupStaticText;

struct DialogBoxImmersion
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupStaticText* field_0x10;
  struct SetupStaticText* field_0x14;
  struct SetupBigButton* field_0x18;
  struct SetupBigButton* field_0x1c;
  struct SetupButton* field_0x20;
  struct SetupBigButton* field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
};
static_assert(sizeof(struct DialogBoxImmersion) == 0x30, "Data type is of wrong size");

static struct DialogBoxBaseVftable* __vt__18DialogBoxImmersion = (struct DialogBoxBaseVftable*)0x008d8644;

// Constructors

// win1.41 005149d0 mac inlined DialogBoxImmersion::DialogBoxImmersion(void)
struct DialogBoxImmersion* __fastcall __ct__18DialogBoxImmersion(struct DialogBoxImmersion* this);

#endif /* BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H */
