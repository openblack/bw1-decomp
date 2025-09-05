#ifndef BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H
#define BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "InnerCamera.h" /* For struct InnerCamera */

struct CreatureRoomCamera
{
  struct InnerCamera super;  /* 0x0 */
  uint8_t field_0x46c[0x58];
};
static_assert(sizeof(struct CreatureRoomCamera) == 0x4c4, "Data type is of wrong size");

// win1.41 0099eb88 mac 1098e6ec CreatureRoomCamera::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__18CreatureRoomCamera asm("??_R4CreatureRoomCamera@@6B@");

// win1.41 0099eb8c mac 1098e6f4 CreatureRoomCamera::`vftable'
extern const struct InnerCameraVftable __vt__18CreatureRoomCamera asm("??_7CreatureRoomCamera@@6B@");

#endif /* BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H */
