#ifndef BW1_DECOMP_STORAGE_PIT_INCLUDED_H
#define BW1_DECOMP_STORAGE_PIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class PhysicsObject;
class PileFood;
class PileResource;
class PileWood;
class PotStructure;
class Villager;

class StoragePit: public Abode
{
public:
    PileFood* pile_food; /* 0xc4 */
    PileWood* pile_wood;
    PileResource* field_0xcc;
    PileResource* field_0xd0;
    PileResource* field_0xd4;
    PileResource* field_0xd8;

    // Override methods

    // win1.41 0055cd50 mac 10153360 StoragePit::_dt(void)
    virtual ~StoragePit();
    // win1.41 00732c10 mac 101532f0 StoragePit::Delete(void)
    virtual void Delete();
    // win1.41 00732c30 mac 101531a0 StoragePit::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00732f60 mac 10003d60 StoragePit::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // win1.41 007332a0 mac 10152550 StoragePit::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 0055cd40 mac 101515a0 StoragePit::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00733920 mac 10151890 StoragePit::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 007338d0 mac 10151930 StoragePit::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055cd30 mac 10151560 StoragePit::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0055ccb0 mac inlined StoragePit::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // win1.41 0055ccf0 mac 10151430 StoragePit::IsCastShadowAtNight(void)
    virtual uint32_t IsCastShadowAtNight();
    // win1.41 0055cd10 mac 101514c0 StoragePit::CanBeEatenByCreature(Creature *)
    virtual uint32_t CanBeEatenByCreature(Creature* param_1);
    // win1.41 0055cd00 mac 10151470 StoragePit::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // win1.41 004e4b50 mac 105e4020 StoragePit::CanHaveMagicFoodCastOnMe(Creature *)
    virtual uint32_t CanHaveMagicFoodCastOnMe(Creature* param_1);
    // win1.41 004e4b70 mac 105e3f50 StoragePit::CanHaveMagicWoodCastOnMe(Creature *)
    virtual uint32_t CanHaveMagicWoodCastOnMe(Creature* param_1);
    // win1.41 004e4990 mac 105e4670 StoragePit::IsStoragePit(Creature *)
    virtual uint32_t IsStoragePit(Creature* param_1);
    // win1.41 004e4d90 mac 105e3860 StoragePit::IsStoragePitWithFoodInIt(Creature *)
    virtual uint32_t IsStoragePitWithFoodInIt(Creature* param_1);
    // win1.41 004e49a0 mac 105e4580 StoragePit::IsStoragePitBelongingToAnotherPlayer(Creature *)
    virtual uint32_t IsStoragePitBelongingToAnotherPlayer(Creature* param_1);
    // win1.41 004e49e0 mac 105e44a0 StoragePit::IsStoragePitBelongingToMyPlayer(Creature *)
    virtual uint32_t IsStoragePitBelongingToMyPlayer(Creature* param_1);
    // win1.41 007336b0 mac 10151ed0 StoragePit::IsPoisoned(void)
    virtual uint32_t IsPoisoned();
    // win1.41 00519350 mac 1001a950 StoragePit::Draw(void)
    virtual void Draw();
    // win1.41 00733a20 mac 101515e0 StoragePit::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
    // win1.41 00732e80 mac 10152d50 StoragePit::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0055ccd0 mac 101513a0 StoragePit::Get3DType(void)
    virtual LH3DObject__ObjectType Get3DType();
    // win1.41 0055cd20 mac 10151510 StoragePit::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE param_1);
    // win1.41 00733750 mac 10151c60 StoragePit::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
    virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
    // win1.41 00733810 mac 101519d0 StoragePit::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
    virtual bool DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus* param_2);
    // win1.41 007335f0 mac 10151f80 StoragePit::SetPoisonedResource(RESOURCE_TYPE, int)
    virtual void SetPoisonedResource(RESOURCE_TYPE param_1, int param_2);
    // win1.41 007335d0 mac 10152110 StoragePit::SetPoisoned(int)
    virtual void SetPoisoned(int param_1);
    // win1.41 00733730 mac 10151d80 StoragePit::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 00733550 mac inlined StoragePit::IsPoisonedResource(void)
    virtual bool IsPoisonedResource();
    // win1.41 00733400 mac 10002840 StoragePit::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
    virtual MapCoords* GetResourceNearestEdge(MapCoords* param_1, RESOURCE_TYPE param_2, Object* param_3, int param_4);
    // win1.41 00733260 mac 101526e0 StoragePit::CalulateAmountOverMaximum(RESOURCE_TYPE)
    virtual int CalulateAmountOverMaximum(RESOURCE_TYPE param_1);
    // win1.41 007331d0 mac 101527b0 StoragePit::RemovePotFromStructure(PotStructure *)
    virtual void RemovePotFromStructure(PotStructure* param_1);
    // win1.41 00732cd0 mac 10153060 StoragePit::DeleteDependancys(void)
    virtual void DeleteDependancys();
    // win1.41 00732f30 mac 10152b90 StoragePit::MakeFunctional(void)
    virtual void MakeFunctional();
    // win1.41 00733960 mac 10151770 StoragePit::StopBeingFunctional(GPlayer *)
    virtual void StopBeingFunctional(GPlayer* param_1);
    // win1.41 007339d0 mac 10151670 StoragePit::RestartBeingFunctional(void)
    virtual void RestartBeingFunctional();
    // win1.41 0055cce0 mac 101513e0 StoragePit::CausesTownEmergencyIfDamaged(void)
    virtual bool CausesTownEmergencyIfDamaged();
};

#endif /* BW1_DECOMP_STORAGE_PIT_INCLUDED_H */
