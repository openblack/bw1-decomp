#ifndef BW1_DECOMP_LANGUAGE_INCLUDED_H
#define BW1_DECOMP_LANGUAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct GLanguage
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
};
static_assert(sizeof(struct GLanguage) == 0xc, "Data type is of wrong size");

static struct BaseVftable* __vt__9GLanguage = (struct BaseVftable*)0x0092b344;

// Constructors

// win1.41 005e6750 mac 1019cef0 GLanguage::GLanguage(void)
void __fastcall __ct__9GLanguageFv(struct GLanguage* this);

#endif /* BW1_DECOMP_LANGUAGE_INCLUDED_H */
