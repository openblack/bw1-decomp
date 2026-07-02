#ifndef BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H
#define BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE, enum RESOURCE_TYPE */
#include <re_common.h> /* For bool32_t */

#include "Fixed.h" /* For struct Fixed, struct FixedVftable */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h" /* For struct JustMapXZ */
#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class BuildingSite;
class Creature;
class GFootpath;
class GFootpathLink;
class GInterfaceStatus;
class GMultiMapFixedInfo;
class GPlayer;
class GameOSFile;
class GameThing;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct LH3DMesh;
class LHOSFile;
class Living;
struct MapCell;
struct MapCoords;
class NewCollide;
struct ObjectVftable;
class PlannedMultiMapFixed;
class PotStructure;
class Town;
class Villager;

struct MultiChild
{
    Object* object; /* 0x0 */
    JustMapXZ coords;

    // Constructors

    // BW1W120 inlined BW1M100 100dc120 MultiChild::MultiChild(void)
    MultiChild();
};

struct MultiChildList
{
  struct MultiChild* array;  /* 0x0 */
  uint32_t size;
  uint32_t capacity;
};

class MultiMapFixed: public Fixed
{
public:
    uint8_t field_0x58;
    float percent_built;
    uint32_t field_0x60;
    GFootpathLink* footpath_link;
    MultiChildList multi_children_array;
    BuildingSite* building_site; /* 0x74 */
    NewCollide* collide_data;

    // Override methods

    // BW1W120 00401490 BW1M100 1056ea60 MultiMapFixed::AsMultiMapFixed(void)
    virtual MultiMapFixed* AsMultiMapFixed()
    {
        return this;
    }
    // BW1W120 004014a0 BW1M100 103dc840 MultiMapFixed::IsPlaytimeStructure(void)
    virtual bool32_t IsPlaytimeStructure()
    {
        return false;
    }
    // BW1W120 004014b0 BW1M100 103e2190 MultiMapFixed::IsPlaytimeStarted(void)
    virtual bool32_t IsPlaytimeStarted()
    {
        return false;
    }
    // BW1W120 004014c0 BW1M100 1037fbf0 MultiMapFixed::AddPlaytimeVillager(Villager *)
    virtual bool AddPlaytimeVillager(Villager* villager)
    {
        return false;
    }
    // BW1W120 004014d0 BW1M100 1016ecd0 MultiMapFixed::GetResourceDropPosForComputerPlayer(RESOURCE_TYPE)
    virtual MapCoords GetResourceDropPosForComputerPlayer(RESOURCE_TYPE type)
    {
        return ((GameThingWithPos*)this)->coords;
    }
    // BW1W120 004014f0 BW1M100 100531e0 MultiMapFixed::GetPercentBuilt(void)
    virtual float GetPercentBuilt()
    {
        return percent_built;
    }
    // BW1W120 00401500 BW1M100 1004b0a0 MultiMapFixed::GetPercentRepaired(void)
    virtual float GetPercentRepaired()
    {
        return GetLife();
    }
    // BW1W120 00401510 BW1M100 100ddc00 MultiMapFixed::GetBuildingSiteWood(unsigned long *)
    virtual uint32_t GetBuildingSiteWood(uint32_t* param_1)
    {
        return 0;
    }
    // BW1W120 00401520 BW1M100 1005fe80 MultiMapFixed::GetBuildingObject(void)
    virtual void* GetBuildingObject()
    {
        return this;
    }
    // BW1W120 00401530 BW1M100 100a0e40 MultiMapFixed::IsSolidToNewAbode(void)
    virtual bool32_t IsSolidToNewAbode()
    {
        return true;
    }
    // BW1W120 00401540 BW1M100 10569bb0 MultiMapFixed::CastMultiMapFixed(void)
    virtual MultiMapFixed* CastMultiMapFixed()
    {
        return this;
    }
    // BW1W120 00401550 BW1M100 102ff050 MultiMapFixed::SetPower(float)
    virtual void SetPower(float power)
    {
    }
    // BW1W120 00401560 BW1M100 10369300 MultiMapFixed::GetResourcePos(RESOURCE_TYPE, long)
    virtual MapCoords GetResourcePos(RESOURCE_TYPE type, int param_2)
    {
        return coords;
    }
    // BW1W120 00401580 BW1M100 1035b520 MultiMapFixed::IsPoisonedResource(RESOURCE_TYPE)
    virtual bool IsPoisonedResource(RESOURCE_TYPE type)
    {
        return false;
    }
    // BW1W120 00401590 BW1M100 10368ea0 MultiMapFixed::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
    virtual MapCoords GetResourceNearestEdge(RESOURCE_TYPE type, Object* param_3, int param_4)
    {
         return GetResourcePos(type, param_4);
    }
    // BW1W120 004015b0 BW1M100 101a93f0 MultiMapFixed::AddToPlayer(void)
    virtual void AddToPlayer()
    {
    }
    // BW1W120 004015c0 BW1M100 1019fe20 MultiMapFixed::RemoveFromPlayer(void)
    virtual void RemoveFromPlayer()
    {
    }
    // BW1W120 004015d0 BW1M100 101aa2d0 MultiMapFixed::CalulateAmountOverMaximum(RESOURCE_TYPE)
    virtual int CalulateAmountOverMaximum(RESOURCE_TYPE type)
    {
        return 0;
    }
    // BW1W120 004015e0 BW1M100 10570a50 MultiMapFixed::IsBeingBuilt(Creature *)
    virtual bool32_t IsBeingBuilt(Creature* creature)
    {
        return !IsBuilt();
    }
    // BW1W120 00401600 BW1M100 100dc2a0 MultiMapFixed::NeedsRepair(Creature *)
    virtual bool32_t NeedsRepair(Creature* creature)
    {
        return !IsRepaired();
    }
    // BW1W120 00401610 BW1M100 101481c0 MultiMapFixed::IsFootpathLink(void)
    virtual bool32_t IsFootpathLink()
    {
        return true;
    }
    // BW1W120 00401620 BW1M100 1009b630 MultiMapFixed::GetFootpathLink(void)
    virtual GFootpathLink* GetFootpathLink()
    {
        return footpath_link;
    }
    // BW1W120 00401630 BW1M100 inlined MultiMapFixed::GetCollideData(void)
    virtual NewCollide* GetCollideData()
    {
        return collide_data;
    }
    // BW1W120 0052e2b0 BW1M100 100e1160 MultiMapFixed::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 004220a0 BW1M100 100a5880 MultiMapFixed::GetTown(void)
    virtual Town* GetTown();
    // BW1W120 0052eeb0 BW1M100 100defc0 MultiMapFixed::GetNearestPathTo(MapCoords const &, float, int)
    virtual uint32_t GetNearestPathTo(const MapCoords* param_1, float param_2, int param_3);
    // BW1W120 0052eec0 BW1M100 1009b530 MultiMapFixed::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
    virtual void UseFootpathIfNecessary(Living* param_1, const MapCoords* param_2, unsigned char param_3);
    // BW1W120 0052ee10 BW1M100 100df0c0 MultiMapFixed::AddFootpath(GFootpath *)
    virtual uint32_t AddFootpath(GFootpath* footpath);
    // BW1W120 0052ee80 BW1M100 100df010 MultiMapFixed::RemoveFootpath(GFootpath *)
    virtual uint32_t RemoveFootpath(GFootpath* param_1);
    // BW1W120 0052f180 BW1M100 100de800 MultiMapFixed::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* coords, int param_6);
    // BW1W120 0052f1c0 BW1M100 100de760 MultiMapFixed::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // BW1W120 0052ef70 BW1M100 1005fb60 MultiMapFixed::IsFunctional(void)
    virtual bool IsFunctional();
    // BW1W120 0052f310 BW1M100 100de310 MultiMapFixed::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0052f250 BW1M100 100de470 MultiMapFixed::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00421fe0 BW1M100 105b8ff0 MultiMapFixed::GetArrivePos(void)
    virtual MapCoords* GetArrivePos(MapCoords* coords);
    // BW1W120 0052e480 BW1M100 100e0e80 MultiMapFixed::IsObjectInMap(void)
    virtual bool IsObjectInMap();
    // BW1W120 004e41c0 BW1M100 105e5c20 MultiMapFixed::IsBuildingWhichIsBeingBuilt(Creature *)
    virtual bool32_t IsBuildingWhichIsBeingBuilt(Creature* creature);
    // BW1W120 00422050 BW1M100 100a56e0 MultiMapFixed::IsWonder(void)
    virtual bool32_t IsWonder();
    // BW1W120 0052f590 BW1M100 100ddc50 MultiMapFixed::CreateBuildingSite(void)
    virtual bool32_t CreateBuildingSite();
    // BW1W120 0052e400 BW1M100 10033c30 MultiMapFixed::GetMapChild(MapCell const &)
    virtual Object* GetMapChild(const MapCell* cell);
    // BW1W120 0052e420 BW1M100 100e0ec0 MultiMapFixed::SetMapChild(Object *, MapCell *)
    virtual void SetMapChild(Object* child, MapCell* cell);
    // BW1W120 0052e650 BW1M100 100e0690 MultiMapFixed::InsertMapObject(void)
    virtual void InsertMapObject();
    // BW1W120 0052e7b0 BW1M100 100e0580 MultiMapFixed::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // BW1W120 0052e4f0 BW1M100 100e0cd0 MultiMapFixed::MoveMapObject(MapCoords const &)
    virtual int MoveMapObject(const MapCoords* param_2);
    // BW1W120 0052f5e0 BW1M100 10099940 MultiMapFixed::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float value, GPlayer* player);
    // BW1W120 0052f700 BW1M100 10050020 MultiMapFixed::Process(void)
    virtual uint32_t Process();
    // BW1W120 00518090 BW1M100 10044a70 MultiMapFixed::Draw(void)
    virtual void Draw();
    // BW1W120 0052f0d0 BW1M100 100de940 MultiMapFixed::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
    // BW1W120 0052e890 BW1M100 100e0240 MultiMapFixed::CallVirtualFunctionsForCreation(const MapCoords&)
    virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
    // BW1W120 0052f1f0 BW1M100 100de6f0 MultiMapFixed::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE type);
    // BW1W120 0052f460 BW1M100 100de000 MultiMapFixed::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
    virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
    // BW1W120 0052f210 BW1M100 100de5e0 MultiMapFixed::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
    virtual bool DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus* status);
    // BW1W120 0052ec60 BW1M100 100dfd40 MultiMapFixed::StartOnFire(void)
    virtual void StartOnFire();
    // BW1W120 0052f3d0 BW1M100 100de230 MultiMapFixed::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 0052f490 BW1M100 100dded0 MultiMapFixed::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // BW1W120 0052ef10 BW1M100 100dee90 MultiMapFixed::SaveObject(LHOSFile &, MapCoords const &)
    virtual size_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // BW1W120 0052e490 BW1M100 100e0d80 MultiMapFixed::IsObjectFullyInMap(void)
    virtual bool IsObjectFullyInMap();
    // BW1W120 0052e370 BW1M100 1002c2e0 MultiMapFixed::GetDoorPos(void)
    virtual MapCoords GetDoorPos();
    // BW1W120 0052eca0 BW1M100 1004af20 MultiMapFixed::GetInfluence(void)
    virtual float GetInfluence();
    // BW1W120 0052e840 BW1M100 100e04f0 MultiMapFixed::CheckMapObject(void)
    virtual void CheckMapObject();
    // BW1W120 0052f010 BW1M100 100debc0 MultiMapFixed::GetPercentRepairedFromWhenDamaged(void)
    virtual float GetPercentRepairedFromWhenDamaged();
    // BW1W120 00438d70 BW1M100 10368f30 MultiMapFixed::IsRepaired(void)
    virtual bool32_t IsRepaired();
    // BW1W120 00438d80 BW1M100 10570e90 MultiMapFixed::IsBuilt(void)
    virtual bool32_t IsBuilt();
    // BW1W120 0052efc0 BW1M100 100dedd0 MultiMapFixed::GetPercentRepairedForNonFunctional(void)
    virtual float GetPercentRepairedForNonFunctional();
    // BW1W120 0052efd0 BW1M100 100ded00 MultiMapFixed::GetPercentForDrawBuilding(void)
    virtual float GetPercentForDrawBuilding();
    // BW1W120 00422000 BW1M100 100a5570 MultiMapFixed::GetPercentAbodeFullWithAdults(void)
    virtual float GetPercentAbodeFullWithAdults();
    // BW1W120 00422010 BW1M100 100a55c0 MultiMapFixed::GetPercentAbodeFullWithChildren(void)
    virtual float GetPercentAbodeFullWithChildren();
    // BW1W120 0052f0c0 BW1M100 10040f00 MultiMapFixed::IsDrawBuilding(void)
    virtual bool IsDrawBuilding();
    // BW1W120 0052ebb0 BW1M100 100dfda0 MultiMapFixed::Built(void)
    virtual bool Built();
    // BW1W120 0052ec70 BW1M100 100dfca0 MultiMapFixed::Repaired(void)
    virtual bool Repaired();
    // BW1W120 00422020 BW1M100 100a5620 MultiMapFixed::GetDestructionMesh(void)
    virtual LH3DMesh* GetDestructionMesh();
    // BW1W120 00422030 BW1M100 100a5660 MultiMapFixed::RemoveDamage(void)
    virtual void RemoveDamage();
    // BW1W120 00422040 BW1M100 100a56a0 MultiMapFixed::IsCivic(void)
    virtual bool IsCivic();
    // BW1W120 00422060 BW1M100 100a5720 MultiMapFixed::GetAbodeType(void)
    virtual ABODE_TYPE GetAbodeType();
    // BW1W120 0052ece0 BW1M100 100df410 MultiMapFixed::GetDesireToBeRepaired(void)
    virtual float GetDesireToBeRepaired();
    // BW1W120 00422070 BW1M100 100a5760 MultiMapFixed::DoResourceAdding(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t DoResourceAdding(RESOURCE_TYPE type, GInterfaceStatus* iface, bool param_3, MapCoords* param_4, int param_5);
    // BW1W120 00422080 BW1M100 100a57d0 MultiMapFixed::DoResourceRemoving(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t DoResourceRemoving(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* iface, bool param_4);
    // BW1W120 00422090 BW1M100 inlined MultiMapFixed::SetTown(void)
    virtual void SetTown(Town* town);
    // BW1W120 0052f160 BW1M100 100de8b0 MultiMapFixed::RemovePotFromStructure(PotStructure *)
    virtual void RemovePotFromStructure(PotStructure* structure);
    // BW1W120 004220b0 BW1M100 100a58c0 MultiMapFixed::GetShouldNotBeAddedToPlanned(void)
    virtual bool32_t GetShouldNotBeAddedToPlanned();
    // BW1W120 004220c0 BW1M100 100a5910 MultiMapFixed::SetShouldNotBeAddedToPlanned(int)
    virtual void SetShouldNotBeAddedToPlanned(bool value);
    // BW1W120 0052ed40 BW1M100 100df2d0 MultiMapFixed::BuildBy(float)
    virtual void BuildBy(float amount);
    // BW1W120 00438d90 BW1M100 100b25f0 MultiMapFixed::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
    // BW1W120 0052f550 BW1M100 100ddd70 MultiMapFixed::CreateCollideData(void)
    virtual void CreateCollideData();

    // Static methods

    // BW1W120 0052dbc0 BW1M100 10038060 MultiMapFixed::CompareMultiChilds(void const *, void const *)
    static int CompareMultiChilds(MultiChild* param_1, MultiChild* param_2);

    // Constructors

    // BW1W120 0052e1a0 BW1M100 100e16a0 MultiMapFixed::MultiMapFixed(void)
    MultiMapFixed();
    // BW1W120 0052e1e0 BW1M100 100e1460 MultiMapFixed::MultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float, float, int)
    MultiMapFixed(const MapCoords& coords, const GMultiMapFixedInfo* info, float y_angle, float scale, float param_5, int param_6);

    // Non-virtual Destructors

    // BW1W120 0052e1c0 BW1M100 100e13a0 MultiMapFixed::_dt(void)
    ~MultiMapFixed();

    // Non-virtual methods

    // BW1W120 0052dc10 BW1M100 inlined MultiMapFixed::SortChildren(void)
    void SortChildren();
    // BW1W120 0052dc30 BW1M100 100380f0 MultiMapFixed::SortedMultiChildFind(MapCell const &)
    MultiChild* SortedMultiChildFind(const MapCell* cell);
    // BW1W120 0052ea50 BW1M100 100e0160 MultiMapFixed::AllocateMultiChild(void)
    void AllocateMultiChild();
    // BW1W120 0052f6d0 BW1M100 100ddab0 MultiMapFixed::ReleaseCollideData(void)
    void ReleaseCollideData();
};

#endif /* BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H */
