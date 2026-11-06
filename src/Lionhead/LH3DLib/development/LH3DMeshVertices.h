#ifndef BW1_DECOMP_LH3D_MESH_VERTICES_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_VERTICES_INCLUDED_H

#include "LH3DMesh.h"      /* For struct LH3DMesh */
#include "LH3DPrimitive.h" /* For struct LH3DPrimitive */
#include "LH3DSubMesh.h"   /* For struct LH3DSubMesh */

inline long LH3DMesh::GetVerticesCount()
{
	long count = 0;
	for (int i = 0; i < SubmeshCount; i++)
	{
		count += submeshes[i]->GetVerticesCount();
	}
	return count;
}

#endif /* BW1_DECOMP_LH3D_MESH_VERTICES_INCLUDED_H */
