#ifndef BW1_DECOMP_LH3D_VERTEX_INCLUDED_H
#define BW1_DECOMP_LH3D_VERTEX_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint, struct Point2D */

struct LH3DVertex
{
  struct LHPoint position;  /* 0x0 */
  struct Point2D uv;
  struct LHPoint normal;  /* 0x14 */
};
static_assert(sizeof(struct LH3DVertex) == 0x20, "Data type is of wrong size");

struct Vertex3D
{
  struct LHPoint position;  /* 0x0 */
  struct Point2D uv;
  struct LHPoint normal;  /* 0x14 */
};
static_assert(sizeof(struct Vertex3D) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_VERTEX_INCLUDED_H */
