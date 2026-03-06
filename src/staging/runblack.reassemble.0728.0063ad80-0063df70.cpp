#include "Game3DObject.h"
#include "Object.h"
#include "Abode.h"
#include "Villager.h"
#include "Creature.h"
#include "Game.h"

// win1.41 0063ad80 mac 103d9ee0 Game3DObject::Create(MapCoords const &, LH3DObject::ObjectType, MESH_LIST, float, float)
Game3DObject* Game3DObject::Create(const MapCoords* coords, LH3DObject::ObjectType type, MESH_LIST mesh, float param_4, float param_5)
{
    return 0;
}

// win1.41 0063afe0 mac 10019840 Game3DObject::GetDoorPosition(MapCoords *) const
bool Game3DObject::GetDoorPosition(MapCoords* position)
{
    return 0;
}

// win1.41 0063b060 mac 103d9d50 Game3DObject::GetSpecialPos(unsigned long, MapCoords &) const
bool Game3DObject::GetSpecialPos(uint32_t index, MapCoords* coords)
{
    return 0;
}

// win1.41 0063b8d0 mac 103da7f0 Object::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void Object::CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos)
{
}

// win1.41 0063b940 mac 103da700 Abode::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void Abode::CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos)
{
}

// win1.41 0063b9b0 mac 103da4e0 Villager::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void Villager::CalculateWhereIWillBeAfterNSeconds(float param_1, LHPoint* param_2)
{
}

// win1.41 0063bad0 mac 103da330 Creature::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void Creature::CalculateWhereIWillBeAfterNSeconds(float param_1, LHPoint* param_2)
{
}

// win1.41 0063c3d0 mac 1001e1e0 GGame::ProcessOneSuperpacket(void)
void GGame::ProcessOneSuperpacket()
{
}
