#ifndef BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H
#define BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct MPFEChannelSelector;

struct MPFEChooseConnection
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEChooseConnection) == 0x10, "Data type is of wrong size");

static struct DialogBoxBaseVftable* __vt__20MPFEChooseConnection = (struct DialogBoxBaseVftable*)0x009307d8;

// Static methods

// win1.41 0062b030 mac 1039fa00 MPFEChooseConnection::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__20MPFEChooseConnectionFUlUlPFiP8SetupBoxP12SetupControlii_v(struct MPFEChannelSelector* this, const void* edx, uint32_t param_1, uint32_t param_2, void* callback);

#endif /* BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H */
