#ifndef BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H
#define BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct TattooEditor
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x3218];
};
static_assert(sizeof(struct TattooEditor) == 0x3228, "Data type is of wrong size");

// win1.41 008debf0 mac 109ed754 TattooEditor::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12TattooEditor asm("??_R4TattooEditor@@6B@");

// win1.41 008debf4 mac 109ed75c TattooEditor::`vftable'
extern const struct DialogBoxBaseVftable __vt__12TattooEditor asm("??_7TattooEditor@@6B@");

#endif /* BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H */
