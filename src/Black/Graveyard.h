#ifndef BW1_DECOMP_GRAVEYARD_INCLUDED_H
#define BW1_DECOMP_GRAVEYARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

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

    // win1.41 0055e010 mac 100f42d0 Graveyard::_dt(void)
    virtual ~Graveyard();
    // win1.41 00595cb0 mac 100f4db0 Graveyard::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055e000 mac 100f4550 Graveyard::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00595f50 mac 100f4590 Graveyard::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00595ee0 mac 100f4670 Graveyard::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055dff0 mac 100f4510 Graveyard::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0055df90 mac inlined Graveyard::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // win1.41 0055dfd0 mac 100f4480 Graveyard::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // win1.41 0055dfe0 mac 100f44d0 Graveyard::IsStoragePit(Creature *)
    virtual uint32_t IsStoragePit(Creature* param_1);
    // win1.41 00595dd0 mac 100f4a40 Graveyard::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0055dfb0 mac 100f4400 Graveyard::Get3DType(void)
    virtual LH3DObject__ObjectType Get3DType();
    // win1.41 00595cd0 mac 100f4d60 Graveyard::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00595ce0 mac 100f4c10 Graveyard::DeleteDependancys(void)
    virtual void DeleteDependancys();
    // win1.41 00595e00 mac 100f4870 Graveyard::MakeFunctional(void)
    virtual void MakeFunctional();
    // win1.41 0055dfc0 mac 100f4440 Graveyard::CanBeHiddenIn(void)
    virtual bool CanBeHiddenIn();
};

#endif /* BW1_DECOMP_GRAVEYARD_INCLUDED_H */
