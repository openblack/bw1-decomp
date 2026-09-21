#ifndef BW1_DECOMP_GAME_3D_OBJECT_INCLUDED_H
#define BW1_DECOMP_GAME_3D_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/AllMeshes.h>                        /* For enum MESH_LIST */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType, struct LH3DObject */

// Forward Declares

struct MapCoords;

class Game3DObject : public LH3DObject
{
public:
	// Static methods

	// BW1W120 0063abb0 BW1M119 013e2240
	static Game3DObject* Create(LH3DObject::ObjectType type);
	// BW1W120 0063ad80 BW1M119 013e1e60
	static Game3DObject* Create(const MapCoords& coords, LH3DObject::ObjectType type, MESH_LIST mesh, float param_4,
	                            float param_5);

	// Non-virtual methods

	// BW1W120 0063abc0 BW1M119 013e1fb0
	float GetAltitudeFondation() const;
	// BW1W120 0063afe0 BW1M119 0101c3f0
	bool GetDoorPosition(MapCoords* position) const;
	// BW1W120 0063b060 BW1M119 013e1be0
	bool GetSpecialPos(uint32_t index, MapCoords& coords) const;
};

#endif /* BW1_DECOMP_GAME_3D_OBJECT_INCLUDED_H */
