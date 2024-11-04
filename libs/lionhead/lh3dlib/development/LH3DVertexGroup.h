#ifndef BW1_DECOMP_LH3D_VERTEX_GROUP_INCLUDED_H
#define BW1_DECOMP_LH3D_VERTEX_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

struct LH3DVertexGroup
{
  uint16_t vertex_count;  /* 0x0 */
  uint16_t bone_index;
};
static_assert(sizeof(struct LH3DVertexGroup) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_VERTEX_GROUP_INCLUDED_H */
