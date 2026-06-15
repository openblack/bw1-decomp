#ifndef BW1_DECOMP_GAME_3D_OBJECT_INCLUDED_H
#define BW1_DECOMP_GAME_3D_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType, struct LH3DObject */

// Forward Declares

struct MapCoords;

class Game3DObject: public LH3DObject
{
public:

    // Static methods

    // win1.41 0063abb0 mac 103da2c0 Game3DObject::Create(LH3DObject::ObjectType)
    static Game3DObject* Create(LH3DObject::ObjectType type);
    // win1.41 0063ad80 mac 103d9ee0 Game3DObject::Create(MapCoords const &, LH3DObject::ObjectType, MESH_LIST, float, float)
    static Game3DObject* Create(const MapCoords* coords, LH3DObject::ObjectType type, MESH_LIST mesh, float param_4, float param_5);

    // Non-virtual methods

    // win1.41 0063abc0 mac 103da030 Game3DObject::GetAltitudeFondation(void) const
    float GetAltitudeFondation();
    // win1.41 0063afe0 mac 10019840 Game3DObject::GetDoorPosition(MapCoords *) const
    bool GetDoorPosition(MapCoords* position);
    // win1.41 0063b060 mac 103d9d50 Game3DObject::GetSpecialPos(unsigned long, MapCoords &) const
    bool GetSpecialPos(uint32_t index, MapCoords* coords);
};

#endif /* BW1_DECOMP_GAME_3D_OBJECT_INCLUDED_H */
