#ifndef BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H
#define BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "PSysInterface.h" /* For struct PSysInterface */

// Forward Declares

struct PSysManager;

struct GJPSysInterface
{
  struct PSysInterface super;  /* 0x0 */
  struct PSysManager* manager;  /* 0x14 */
};
static_assert(sizeof(struct GJPSysInterface) == 0x18, "Data type is of wrong size");

static struct PSysInterfaceVftable* const __vt__15GJPSysInterface = (struct PSysInterfaceVftable* const)0x008fa8a0;

#endif /* BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H */
