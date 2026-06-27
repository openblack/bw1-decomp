#ifndef BW1_DECOMP_GRAVEYARD_INCLUDED_H
#define BW1_DECOMP_GRAVEYARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class Graveyard: public Abode
{
public:

    // Override methods

    // BW1W120 0055e010 BW1M100 100f42d0 Graveyard::_dt(void)
    virtual ~Graveyard();
    // BW1W120 00595cb0 BW1M100 100f4db0 Graveyard::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0055e000 BW1M100 100f4550 Graveyard::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00595f50 BW1M100 100f4590 Graveyard::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00595ee0 BW1M100 100f4670 Graveyard::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055dff0 BW1M100 100f4510 Graveyard::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0055df90 BW1M100 inlined Graveyard::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // BW1W120 0055dfd0 BW1M100 100f4480 Graveyard::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // BW1W120 0055dfe0 BW1M100 100f44d0 Graveyard::IsStoragePit(Creature *)
    virtual uint32_t IsStoragePit(Creature* param_1);
    // BW1W120 00595dd0 BW1M100 100f4a40 Graveyard::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 0055dfb0 BW1M100 100f4400 Graveyard::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 00595cd0 BW1M100 100f4d60 Graveyard::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 00595ce0 BW1M100 100f4c10 Graveyard::DeleteDependancys(void)
    virtual void DeleteDependancys();
    // BW1W120 00595e00 BW1M100 100f4870 Graveyard::MakeFunctional(void)
    virtual void MakeFunctional();
    // BW1W120 0055dfc0 BW1M100 100f4440 Graveyard::CanBeHiddenIn(void)
    virtual bool CanBeHiddenIn();
};

#endif /* BW1_DECOMP_GRAVEYARD_INCLUDED_H */
