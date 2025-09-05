#ifndef BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H
#define BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct ProfileEditor
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x48];
};
static_assert(sizeof(struct ProfileEditor) == 0x58, "Data type is of wrong size");

// win1.41 008dec68 mac 109ed814 ProfileEditor::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13ProfileEditor asm("??_R4ProfileEditor@@6B@");

// win1.41 008dec6c mac 109ed81c ProfileEditor::`vftable'
extern const struct DialogBoxBaseVftable __vt__13ProfileEditor asm("??_7ProfileEditor@@6B@");

#endif /* BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H */
