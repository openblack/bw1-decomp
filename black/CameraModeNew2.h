#ifndef BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "CameraModeNew.h" /* For struct CameraModeNew */

struct CameraModeNew2
{
  struct CameraModeNew super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeNew2) == 0x8, "Data type is of wrong size");

// win1.41 008c7b54 mac inlined CameraModeNew2::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14CameraModeNew2 asm("??_R4CameraModeNew2@@6B@");

// win1.41 008c7b58 mac inlined CameraModeNew2::`vftable'
extern const struct CameraModeVftable __vt__14CameraModeNew2 asm("??_7CameraModeNew2@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H */
