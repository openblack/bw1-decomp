#ifndef BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraModeNew.h" /* For struct CameraModeNew */

struct CameraModeNew1
{
  struct CameraModeNew super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeNew1) == 0x8, "Data type is of wrong size");

// win1.41 008c7a54 mac inlined CameraModeNew1::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14CameraModeNew1 asm("??_R4CameraModeNew1@@6B@");

// win1.41 008c7a58 mac inlined CameraModeNew1::`vftable'
extern const struct CameraModeVftable __vt__14CameraModeNew1 asm("??_7CameraModeNew1@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H */
