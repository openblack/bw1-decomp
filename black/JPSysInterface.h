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

// win1.41 008fa89c mac 109b880c GJPSysInterface::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15GJPSysInterface asm("??_R4GJPSysInterface@@6B@");

// win1.41 008fa8a0 mac 109b8814 GJPSysInterface::`vftable'
extern const struct PSysInterfaceVftable __vt__15GJPSysInterface asm("??_7GJPSysInterface@@6B@");

#endif /* BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H */
