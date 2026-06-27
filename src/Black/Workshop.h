#ifndef BW1_DECOMP_WORKSHOP_INCLUDED_H
#define BW1_DECOMP_WORKSHOP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;
class Scaffold;
class Villager;

class Workshop: public Abode
{
public:
    uint8_t field_0xc4[0x24];

    // Override methods

    // BW1W120 00779320 BW1M100 101644f0 Workshop::_dt(void)
    virtual ~Workshop();
    // BW1W120 00779480 BW1M100 101642d0 Workshop::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00779e00 BW1M100 10162ee0 Workshop::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // BW1W120 00779ec0 BW1M100 10162dc0 Workshop::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // BW1W120 00779310 BW1M100 10164960 Workshop::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0077a630 BW1M100 10161f20 Workshop::GetShowNeedsPos(unsigned long, MapCoords *)
    virtual uint32_t GetShowNeedsPos(uint32_t param_1, MapCoords* param_2);
    // BW1W120 0077a130 BW1M100 101625f0 Workshop::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00779f40 BW1M100 101629d0 Workshop::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00779300 BW1M100 10164920 Workshop::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0077a330 BW1M100 101625a0 Workshop::ResolveLoad(void)
    virtual void ResolveLoad();
    // BW1W120 007792e0 BW1M100 10164890 Workshop::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // BW1W120 007792f0 BW1M100 101648e0 Workshop::IsStoragePit(Creature *)
    virtual uint32_t IsStoragePit(Creature* param_1);
    // BW1W120 007792c0 BW1M100 inlined Workshop::IsWorkshop_0(void)
    virtual uint32_t IsWorkshop_0();
    // BW1W120 007792d0 BW1M100 inlined Workshop::IsWorkshop_1(Creature *)
    virtual uint32_t IsWorkshop_1(Creature* param_1);
    // BW1W120 0077a6d0 BW1M100 10161cd0 Workshop::CreateBuildingSite(void)
    virtual uint32_t CreateBuildingSite();
    // BW1W120 0077a610 BW1M100 10161f90 Workshop::ScaffoldMoved(Scaffold *)
    virtual void ScaffoldMoved(Scaffold* param_1);
    // BW1W120 007797f0 BW1M100 10163a50 Workshop::Process(void)
    virtual uint32_t Process();
    // BW1W120 0051cbf0 BW1M100 100c4240 Workshop::Draw(void)
    virtual void Draw();
    // BW1W120 0077a340 BW1M100 10162470 Workshop::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
    // BW1W120 007793e0 BW1M100 101643c0 Workshop::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 007792b0 BW1M100 101647d0 Workshop::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 0077a650 BW1M100 10161e90 Workshop::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE param_1);
    // BW1W120 00779f20 BW1M100 10162d40 Workshop::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
    virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
    // BW1W120 0077a680 BW1M100 10161d90 Workshop::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
    virtual bool DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus* param_2);

    // Non-virtual methods

    // BW1W120 00779af0 BW1M100 10163550 Workshop::GetSpaceInStore(void)
    int GetSpaceInStore();
    // BW1W120 00779b60 BW1M100 101633e0 Workshop::GetDesireToBeSupplied(void)
    float GetDesireToBeSupplied();
    // BW1W120 00779b90 BW1M100 101632f0 Workshop::GetVisualWoodDesire(void)
    float GetVisualWoodDesire();
};

#endif /* BW1_DECOMP_WORKSHOP_INCLUDED_H */
