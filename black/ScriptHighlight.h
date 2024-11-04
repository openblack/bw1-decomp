#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "Fixed.h" /* For struct SingleMapFixed */

struct ScriptHighlight
{
  struct SingleMapFixed super;  /* 0x0 */
  uint8_t field_0x5c[0x30];
};
static_assert(sizeof(struct ScriptHighlight) == 0x8c, "Data type is of wrong size");

static struct ObjectVftable* const __vt__15ScriptHighlight = (struct ObjectVftable* const)0x0094228c;

// Static methods

// win1.41 0070a460 mac 10055f10 ScriptHighlight::ProcessHighlights(void)
void __cdecl ProcessHighlights__15ScriptHighlightFv(void);

DECLARE_LH_LIST_HEAD(ScriptHighlight);

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H */
