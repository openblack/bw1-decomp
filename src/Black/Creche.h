#ifndef BW1_DECOMP_CRECHE_INCLUDED_H
#define BW1_DECOMP_CRECHE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class Creche: public Abode
{
public:

    // Override methods

    // win1.41 0050aa00 mac 102a3b10 Creche::_dt(void)
    virtual ~Creche();
    // win1.41 0050aa30 mac 102a40f0 Creche::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0050a9f0 mac 102a3d40 Creche::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0050a9e0 mac 102a3d00 Creche::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0050a990 mac inlined Creche::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // win1.41 0050a9b0 mac 102a3c40 Creche::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // win1.41 0050a9c0 mac 102a3c90 Creche::IsStoragePit(Creature *)
    virtual uint32_t IsStoragePit(Creature* param_1);
    // win1.41 0050ab90 mac 102a3d80 Creche::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float param_1, GPlayer* param_2);
    // win1.41 0050a9d0 mac 102a3cd0 Creche::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // win1.41 0050aa50 mac 102a3fd0 Creche::DeleteDependancys(void)
    virtual void DeleteDependancys();
    // win1.41 0050ab50 mac 102a3de0 Creche::MakeFunctional(void)
    virtual void MakeFunctional();
};

#endif /* BW1_DECOMP_CRECHE_INCLUDED_H */
