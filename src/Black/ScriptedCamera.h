#ifndef BW1_DECOMP_SCRIPTED_CAMERA_INCLUDED_H
#define BW1_DECOMP_SCRIPTED_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

// Forward Declares

struct Q27LH3DWay7Running;

struct ScriptedCamera
{
  uint8_t* data;  /* 0x0 */
  struct Q27LH3DWay7Running* field_0x4;
  struct Q27LH3DWay7Running* field_0x8;
};
static_assert(sizeof(struct ScriptedCamera) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_SCRIPTED_CAMERA_INCLUDED_H */
