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

static struct InnerCameraVftable* __vt__18CreatureRoomCamera = (struct InnerCameraVftable*)0x0099eb8c;

#endif /* BW1_DECOMP_CREATURE_ROOM_CAMERA_INCLUDED_H */
