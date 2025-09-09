#ifndef BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFETeamsReadyList
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFETeamsReadyList) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00627ee0 mac inlined MPFETeamsReadyList::_dt(void)
void __fastcall __dt__18MPFETeamsReadyListFv(struct MPFEMessageObject* this) asm("??_GMPFETeamsReadyList@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H */
