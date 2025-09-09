#ifndef BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEDatabaseID
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEDatabaseID) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00627b00 mac 1039bb00 MPFEDatabaseID::_dt(void)
void __fastcall __dt__14MPFEDatabaseIDFv(struct MPFEMessageObject* this) asm("??_GMPFEDatabaseID@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H */
