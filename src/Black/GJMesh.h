#ifndef BW1_DECOMP_GJ_MESH_INCLUDED_H
#define BW1_DECOMP_GJ_MESH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */

#include "GJBaseUtils.h" /* For class GJArray */
#include "GJPrimitive.h" /* For class GJPrimitive */

class GJSubMesh
{
public:
	GJArray<GJPrimitive> Primitives;
};
static_assert(sizeof(GJSubMesh) == 0x8, "Data type is of wrong size");

class GJMesh
{
public:
	GJArray<GJSubMesh> SubMeshes;
};
static_assert(sizeof(GJMesh) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_GJ_MESH_INCLUDED_H */
