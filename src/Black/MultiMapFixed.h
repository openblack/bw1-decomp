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
struct NewCollide;
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

    // win1.41 inlined mac 100dc120 MultiChild::MultiChild(void)
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

    // win1.41 0052e2b0 mac 100e1160 MultiMapFixed::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 004220a0 mac 100a5880 MultiMapFixed::GetTown(void)
    virtual Town* GetTown();
    // win1.41 00401610 mac 101481c0 MultiMapFixed::IsFootpathLink(void)
    virtual bool32_t IsFootpathLink();
    // win1.41 00401620 mac 1009b630 MultiMapFixed::GetFootpathLink(void)
    virtual GFootpathLink* GetFootpathLink();
    // win1.41 0052eeb0 mac 100defc0 MultiMapFixed::GetNearestPathTo(MapCoords const &, float, int)
    virtual uint32_t GetNearestPathTo(const MapCoords* param_1, float param_2, int param_3);
    // win1.41 0052eec0 mac 1009b530 MultiMapFixed::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
    virtual void UseFootpathIfNecessary(Living* param_1, const MapCoords* param_2, unsigned char param_3);
    // win1.41 0052ee10 mac 100df0c0 MultiMapFixed::AddFootpath(GFootpath *)
    virtual uint32_t AddFootpath(GFootpath* footpath);
    // win1.41 0052ee80 mac 100df010 MultiMapFixed::RemoveFootpath(GFootpath *)
    virtual uint32_t RemoveFootpath(GFootpath* param_1);
    // win1.41 0052f180 mac 100de800 MultiMapFixed::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* coords, int param_6);
    // win1.41 0052f1c0 mac 100de760 MultiMapFixed::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 00401540 mac 10569bb0 MultiMapFixed::CastMultiMapFixed(void)
    virtual MultiMapFixed* CastMultiMapFixed();
    // win1.41 0052ef70 mac 1005fb60 MultiMapFixed::IsFunctional(void)
    virtual bool IsFunctional();
    // win1.41 0052f310 mac 100de310 MultiMapFixed::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 0052f250 mac 100de470 MultiMapFixed::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* file);
    // win1.41 00421fe0 mac 105b8ff0 MultiMapFixed::GetArrivePos(void)
    virtual MapCoords* GetArrivePos(MapCoords* coords);
    // win1.41 0052e480 mac 100e0e80 MultiMapFixed::IsObjectInMap(void)
    virtual bool IsObjectInMap();
    // win1.41 004015e0 mac 10570a50 MultiMapFixed::IsBeingBuilt(Creature *)
    virtual bool32_t IsBeingBuilt(Creature* creature);
    // win1.41 00401600 mac 100dc2a0 MultiMapFixed::NeedsRepair(Creature *)
    virtual bool32_t NeedsRepair(Creature* creature);
    // win1.41 004e41c0 mac 105e5c20 MultiMapFixed::IsBuildingWhichIsBeingBuilt(Creature *)
    virtual bool32_t IsBuildingWhichIsBeingBuilt(Creature* creature);
    // win1.41 00422050 mac 100a56e0 MultiMapFixed::IsWonder(void)
    virtual bool32_t IsWonder();
    // win1.41 0052f590 mac 100ddc50 MultiMapFixed::CreateBuildingSite(void)
    virtual bool32_t CreateBuildingSite();
    // win1.41 0052e400 mac 10033c30 MultiMapFixed::GetMapChild(MapCell const &)
    virtual Object* GetMapChild(const MapCell* cell);
    // win1.41 0052e420 mac 100e0ec0 MultiMapFixed::SetMapChild(Object *, MapCell *)
    virtual void SetMapChild(Object* child, MapCell* cell);
    // win1.41 0052e650 mac 100e0690 MultiMapFixed::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 0052e7b0 mac 100e0580 MultiMapFixed::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // win1.41 0052e4f0 mac 100e0cd0 MultiMapFixed::MoveMapObject(MapCoords const &)
    virtual int MoveMapObject(const MapCoords* param_2);
    // win1.41 0052f5e0 mac 10099940 MultiMapFixed::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float value, GPlayer* player);
    // win1.41 0052f700 mac 10050020 MultiMapFixed::Process(void)
    virtual uint32_t Process();
    // win1.41 00518090 mac 10044a70 MultiMapFixed::Draw(void)
    virtual void Draw();
    // win1.41 0052f0d0 mac 100de940 MultiMapFixed::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
    // win1.41 0052e890 mac 100e0240 MultiMapFixed::CallVirtualFunctionsForCreation(const MapCoords&)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 00401490 mac 1056ea60 MultiMapFixed::AsMultiMapFixed(void)
    virtual MultiMapFixed* AsMultiMapFixed();
    // win1.41 0052f1f0 mac 100de6f0 MultiMapFixed::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE type);
    // win1.41 0052f460 mac 100de000 MultiMapFixed::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
    virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
    // win1.41 0052f210 mac 100de5e0 MultiMapFixed::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
    virtual bool DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus* status);
    // win1.41 0052ec60 mac 100dfd40 MultiMapFixed::StartOnFire(void)
    virtual void StartOnFire();
    // win1.41 0052f3d0 mac 100de230 MultiMapFixed::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0052f490 mac 100dded0 MultiMapFixed::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00401530 mac 100a0e40 MultiMapFixed::IsSolidToNewAbode(void)
    virtual bool32_t IsSolidToNewAbode();
    // win1.41 0052ef10 mac 100dee90 MultiMapFixed::SaveObject(LHOSFile &, MapCoords const &)
    virtual size_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00401630 mac inlined MultiMapFixed::GetCollideData(void)
    virtual NewCollide* GetCollideData();
    // win1.41 0052e490 mac 100e0d80 MultiMapFixed::IsObjectFullyInMap(void)
    virtual bool IsObjectFullyInMap();
    // win1.41 0052e370 mac 1002c2e0 MultiMapFixed::GetDoorPos(void)
    virtual MapCoords* GetDoorPos(MapCoords* position);
    // win1.41 0052eca0 mac 1004af20 MultiMapFixed::GetInfluence(void)
    virtual float GetInfluence();
    // win1.41 004014a0 mac 103dc840 MultiMapFixed::IsPlaytimeStructure(void)
    virtual bool IsPlaytimeStructure();
    // win1.41 004014b0 mac 103e2190 MultiMapFixed::IsPlaytimeStarted(void)
    virtual bool IsPlaytimeStarted();
    // win1.41 004014c0 mac 1037fbf0 MultiMapFixed::AddPlaytimeVillager(Villager *)
    virtual bool AddPlaytimeVillager(Villager* villager);
    // win1.41 0052e840 mac 100e04f0 MultiMapFixed::CheckMapObject(void)
    virtual void CheckMapObject();
    // win1.41 004014d0 mac 1016ecd0 MultiMapFixed::GetResourceDropPosForComputerPlayer(RESOURCE_TYPE)
    virtual void GetResourceDropPosForComputerPlayer(MapCoords* drop_pos);
    // win1.41 004014f0 mac 100531e0 MultiMapFixed::GetPercentBuilt(void)
    virtual float GetPercentBuilt();
    // win1.41 00401500 mac 1004b0a0 MultiMapFixed::GetPercentRepaired(void)
    virtual float GetPercentRepaired();
    // win1.41 0052f010 mac 100debc0 MultiMapFixed::GetPercentRepairedFromWhenDamaged(void)
    virtual float GetPercentRepairedFromWhenDamaged();
    // win1.41 00438d70 mac 10368f30 MultiMapFixed::IsRepaired(void)
    virtual bool IsRepaired();
    // win1.41 00438d80 mac 10570e90 MultiMapFixed::IsBuilt(void)
    virtual bool IsBuilt();
    // win1.41 0052efc0 mac 100dedd0 MultiMapFixed::GetPercentRepairedForNonFunctional(void)
    virtual float GetPercentRepairedForNonFunctional();
    // win1.41 0052efd0 mac 100ded00 MultiMapFixed::GetPercentForDrawBuilding(void)
    virtual float GetPercentForDrawBuilding();
    // win1.41 00422000 mac 100a5570 MultiMapFixed::GetPercentAbodeFullWithAdults(void)
    virtual float GetPercentAbodeFullWithAdults();
    // win1.41 00422010 mac 100a55c0 MultiMapFixed::GetPercentAbodeFullWithChildren(void)
    virtual float GetPercentAbodeFullWithChildren();
    // win1.41 0052f0c0 mac 10040f00 MultiMapFixed::IsDrawBuilding(void)
    virtual bool IsDrawBuilding();
    // win1.41 0052ebb0 mac 100dfda0 MultiMapFixed::Built(void)
    virtual bool Built();
    // win1.41 0052ec70 mac 100dfca0 MultiMapFixed::Repaired(void)
    virtual bool Repaired();
    // win1.41 00401510 mac 100ddc00 MultiMapFixed::GetBuildingSiteWood(unsigned long *)
    virtual uint32_t GetBuildingSiteWood(uint32_t* param_1);
    // win1.41 00422020 mac 100a5620 MultiMapFixed::GetDestructionMesh(void)
    virtual LH3DMesh* GetDestructionMesh();
    // win1.41 00422030 mac 100a5660 MultiMapFixed::RemoveDamage(void)
    virtual void RemoveDamage();
    // win1.41 00401520 mac 1005fe80 MultiMapFixed::GetBuildingObject(void)
    virtual void* GetBuildingObject();
    // win1.41 00422040 mac 100a56a0 MultiMapFixed::IsCivic(void)
    virtual bool IsCivic();
    // win1.41 00422060 mac 100a5720 MultiMapFixed::GetAbodeType(void)
    virtual ABODE_TYPE GetAbodeType();
    // win1.41 00401550 mac 102ff050 MultiMapFixed::SetPower(float)
    virtual void SetPower(float power);
    // win1.41 00401560 mac 10369300 MultiMapFixed::GetResourcePos(RESOURCE_TYPE, long)
    virtual MapCoords* GetResourcePos(RESOURCE_TYPE type, int param_2);
    // win1.41 00401580 mac 1035b520 MultiMapFixed::IsPoisonedResource(RESOURCE_TYPE)
    virtual bool IsPoisonedResource();
    // win1.41 00401590 mac 10368ea0 MultiMapFixed::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
    virtual MapCoords* GetResourceNearestEdge(MapCoords* coords, RESOURCE_TYPE type, Object* param_3, int param_4);
    // win1.41 0052ece0 mac 100df410 MultiMapFixed::GetDesireToBeRepaired(void)
    virtual float GetDesireToBeRepaired();
    // win1.41 004015b0 mac 101a93f0 MultiMapFixed::AddToPlayer(void)
    virtual void AddToPlayer();
    // win1.41 004015c0 mac 1019fe20 MultiMapFixed::RemoveFromPlayer(void)
    virtual void RemoveFromPlayer();
    // win1.41 00422070 mac 100a5760 MultiMapFixed::DoResourceAdding(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t DoResourceAdding(RESOURCE_TYPE type, GInterfaceStatus* iface, bool param_3, MapCoords* param_4, int param_5);
    // win1.41 00422080 mac 100a57d0 MultiMapFixed::DoResourceRemoving(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t DoResourceRemoving(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* iface, bool param_4);
    // win1.41 004015d0 mac 101aa2d0 MultiMapFixed::CalulateAmountOverMaximum(RESOURCE_TYPE)
    virtual int CalulateAmountOverMaximum(RESOURCE_TYPE type);
    // win1.41 00422090 mac inlined MultiMapFixed::SetTown(void)
    virtual bool SetTown(Town* town);
    // win1.41 0052f160 mac 100de8b0 MultiMapFixed::RemovePotFromStructure(PotStructure *)
    virtual void RemovePotFromStructure(PotStructure* structure);
    // win1.41 004220b0 mac 100a58c0 MultiMapFixed::GetShouldNotBeAddedToPlanned(void)
    virtual bool GetShouldNotBeAddedToPlanned();
    // win1.41 004220c0 mac 100a5910 MultiMapFixed::SetShouldNotBeAddedToPlanned(int)
    virtual void SetShouldNotBeAddedToPlanned(bool value);
    // win1.41 0052ed40 mac 100df2d0 MultiMapFixed::BuildBy(float)
    virtual void BuildBy(float param_1);
    // win1.41 00438d90 mac 100b25f0 MultiMapFixed::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
    // win1.41 0052f550 mac 100ddd70 MultiMapFixed::CreateCollideData(void)
    virtual void CreateCollideData();

    // Static methods

    // win1.41 0052dbc0 mac 10038060 MultiMapFixed::CompareMultiChilds(void const *, void const *)
    static int CompareMultiChilds(MultiChild* param_1, MultiChild* param_2);

    // Constructors

    // win1.41 0052e1a0 mac 100e16a0 MultiMapFixed::MultiMapFixed(void)
    MultiMapFixed();
    // win1.41 0052e1e0 mac 100e1460 MultiMapFixed::MultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float, float, int)
    MultiMapFixed(const MapCoords* coords, const GMultiMapFixedInfo* info, float y_angle, float scale, float param_5, int param_6);

    // Non-virtual Destructors

    // win1.41 0052e1c0 mac 100e13a0 MultiMapFixed::_dt(void)
    ~MultiMapFixed();

    // Non-virtual methods

    // win1.41 0052dc10 mac inlined MultiMapFixed::SortChildren(void)
    void SortChildren();
    // win1.41 0052dc30 mac 100380f0 MultiMapFixed::SortedMultiChildFind(MapCell const &)
    MultiChild* SortedMultiChildFind(const MapCell* cell);
    // win1.41 0052ea50 mac 100e0160 MultiMapFixed::AllocateMultiChild(void)
    void AllocateMultiChild();
    // win1.41 0052f6d0 mac 100ddab0 MultiMapFixed::ReleaseCollideData(void)
    void ReleaseCollideData();
};

#endif /* BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H */
