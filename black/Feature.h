#ifndef BW1_DECOMP_FEATURE_INCLUDED_H
#define BW1_DECOMP_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

struct Feature
{
  struct MultiMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct Feature) == 0x7c, "Data type is of wrong size");

// win1.41 008c231c mac 1073d268 Feature::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__7Feature asm("??_R4Feature@@6B@");

// win1.41 008c2320 mac 1073e240 Feature::`vftable'
extern const struct MultiMapFixedVftable __vt__7Feature asm("??_7Feature@@6B@");

#endif /* BW1_DECOMP_FEATURE_INCLUDED_H */
