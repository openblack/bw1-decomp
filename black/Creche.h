#ifndef BW1_DECOMP_CRECHE_INCLUDED_H
#define BW1_DECOMP_CRECHE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Abode.h" /* For struct Abode */

struct Creche
{
  struct Abode super;  /* 0x0 */
};
static_assert(sizeof(struct Creche) == 0xc4, "Data type is of wrong size");

static struct AbodeVftable* __vt__6Creche = (struct AbodeVftable*)0x008d16c4;

#endif /* BW1_DECOMP_CRECHE_INCLUDED_H */
