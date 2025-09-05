#ifndef BW1_DECOMP_CRECHE_INCLUDED_H
#define BW1_DECOMP_CRECHE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Abode.h" /* For struct Abode */

struct Creche
{
  struct Abode super;  /* 0x0 */
};
static_assert(sizeof(struct Creche) == 0xc4, "Data type is of wrong size");

// win1.41 008d16c0 mac 10994094 Creche::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__6Creche asm("??_R4Creche@@6B@");

// win1.41 008d16c4 mac 1099409c Creche::`vftable'
extern const struct AbodeVftable __vt__6Creche asm("??_7Creche@@6B@");

#endif /* BW1_DECOMP_CRECHE_INCLUDED_H */
