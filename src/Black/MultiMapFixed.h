#ifndef BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H
#define BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE, enum RESOURCE_TYPE */
#include <re_common.h>   /* For bool32_t */

#include "Fixed.h"            /* For struct Fixed, struct FixedVftable */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h"        /* For struct JustMapXZ */
#include "Object.h"           /* For struct Object */

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
class Game3DObject;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct FragMesh;
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
	LHFastPointer<Object> object; /* 0x0 */
	JustMapXZ             coords;

	// Constructors

	// BW1W120 inlined BW1M119 010e0e70
	MultiChild()
	{
		coords.Init(0, 0);
		object.Clear();
	}
};

struct MultiChildList
{
	struct MultiChild* array; /* 0x0 */
	uint32_t           size;
	uint32_t           capacity;
};

class MultiMapFixed : public Fixed
{
public:
	union {
		uint8_t field_0x58;
		struct
		{
			uint8_t Flag0x01 : 1;
			// Created as a building site, cleared by Built.
			uint8_t UnderConstruction : 1;
			// Cleared by Repaired.
			uint8_t Damaged : 1;
			// Set by Built, or on creation when not a building site.
			uint8_t Constructed : 1;
		};
	};
	float          PercentBuilt;
	uint32_t       field_0x60;
	GFootpathLink* FootpathLink;
	MultiChildList MultiChildrenArray;
	BuildingSite*  building_site; /* 0x74 */
	NewCollide*    CollideData;

	// Override methods

	// BW1W120 00401530 BW1M119 01577410
	virtual bool32_t IsSolidToNewAbode() { return true; }
	// BW1W120 00401540 BW1M119 01362a90
	virtual MultiMapFixed* CastMultiMapFixed() { return this; }
	// BW1W120 004015e0 BW1M119 015750f0
	virtual bool32_t IsBeingBuilt(Creature* creature) { return IsBuilt() != true; }
	// BW1W120 00401600 BW1M119 0157f8e0
	virtual bool32_t NeedsRepair(Creature* creature) { return !IsRepaired(); }
	// BW1W120 00401610 BW1M119 01387ed0
	virtual bool32_t IsFootpathLink() { return true; }
	// BW1W120 00401620 BW1M119 0109d450
	virtual GFootpathLink* GetFootpathLink() { return FootpathLink; }
	// BW1W120 00401630 BW1M119 inlined
	virtual NewCollide* GetCollideData() { return CollideData; }
	// BW1W120 0052e2b0 BW1M119 010e60f0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 004220a0 BW1M119 010a8ac0
	virtual Town* GetTown() { return NULL; }
	// BW1W120 0052eeb0 BW1M119 010e4630
	virtual uint32_t GetNearestPathTo(const MapCoords& param_1, float param_2, int param_3);
	// BW1W120 0052eec0 BW1M119 0109d350
	virtual void UseFootpathIfNecessary(Living* param_1, const MapCoords& param_2, unsigned char param_3);
	// BW1W120 0052ee10 BW1M119 010e4730
	virtual uint32_t AddFootpath(GFootpath* footpath);
	// BW1W120 0052ee80 BW1M119 010e4680
	virtual uint32_t RemoveFootpath(GFootpath* param_1);
	// BW1W120 0052f180 BW1M119 010e3e80
	virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool param_4,
	                             const MapCoords* coords, int param_6);
	// BW1W120 0052f1c0 BW1M119 010e3de0
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* param_4);
	// BW1W120 0052ef70 BW1M119 010622d0
	virtual bool32_t IsFunctional();
	// BW1W120 0052f310 BW1M119 010e3990
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0052f250 BW1M119 010e3af0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00421fe0 BW1M119 011ce950
	virtual MapCoords GetArrivePos() { return GetDoorPos(); }
	// BW1W120 0052e480 BW1M119 010e5e30
	virtual bool32_t IsObjectInMap();
	// BW1W120 004e41c0 BW1M119 015ed920
	virtual bool32_t IsBuildingWhichIsBeingBuilt(Creature* creature);
	// BW1W120 00422050 BW1M119 010a8920
	virtual bool32_t IsWonder() { return false; }
	// BW1W120 0052f590 BW1M119 010e32d0
	virtual bool32_t CreateBuildingSite();
	// BW1W120 0052e400 BW1M119 01036580
	virtual Object* GetMapChild(const MapCell& cell);
	// BW1W120 0052e420 BW1M119 010e5e70
	virtual void SetMapChild(Object* child, MapCell* cell);
	// BW1W120 0052e650 BW1M119 010e5650
	virtual void InsertMapObject();
	// BW1W120 0052e7b0 BW1M119 010e5540
	virtual void RemoveMapObject();
	// BW1W120 0052e4f0 BW1M119 010e5c80
	virtual int MoveMapObject(const MapCoords& param_2);
	// BW1W120 0052f5e0 BW1M119 0109b760
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 0052f700 BW1M119 010529b0
	virtual uint32_t Process();
	// BW1W120 00518090 BW1M119 010474c0
	virtual void Draw();
	// BW1W120 0052f0d0 BW1M119 010e3fc0
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
	// BW1W120 0052e890 BW1M119 010e5200
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0052f1f0 BW1M119 010e3d70
	virtual bool32_t IsResourceStore(RESOURCE_TYPE type);
	// BW1W120 0052f460 BW1M119 010e3680
	virtual bool32_t DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 0052f210 BW1M119 010e3c60
	virtual bool32_t DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus& status);
	// BW1W120 0052ec60 BW1M119 010e4d00
	virtual void StartOnFire();
	// BW1W120 0052f3d0 BW1M119 010e38b0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0052f490 BW1M119 010e3550
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 0052ef10 BW1M119 010e4500
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords);
	// BW1W120 0052e490 BW1M119 010e5d30
	virtual bool32_t IsObjectFullyInMap();

	// Virtual methods

	// BW1W120 0052e370 BW1M119 0102ee50
	virtual MapCoords GetDoorPos();
	// BW1W120 0052eca0 BW1M119 0104d8d0
	virtual float GetInfluence();
	// BW1W120 00401490 BW1M119 013ed720
	virtual MultiMapFixed* AsMultiMapFixed() { return this; }
	// BW1W120 004014a0 BW1M119 010ab600
	virtual bool32_t IsPlaytimeStructure() { return false; }
	// BW1W120 004014b0 BW1M119 0158e630
	virtual bool32_t IsPlaytimeStarted() { return false; }
	// BW1W120 004014c0 BW1M119 01137f90
	virtual bool32_t AddPlaytimeVillager(Villager* villager) { return false; }
	// BW1W120 0052e840 BW1M119 010e54b0
	virtual void CheckMapObject();
	// BW1W120 004014d0 BW1M119 01578a10
	virtual MapCoords GetResourceDropPosForComputerPlayer(RESOURCE_TYPE type) { return Pos; }
	// BW1W120 004014f0 BW1M119 01055b70
	virtual float GetPercentBuilt() { return PercentBuilt; }
	// BW1W120 00401500 BW1M119 0104da50
	virtual float GetPercentRepaired() { return GetLife(); }
	// BW1W120 0052f010 BW1M119 010e41c0
	virtual float GetPercentRepairedFromWhenDamaged();
	// BW1W120 00438d70 BW1M119 0136d690
	virtual bool32_t IsRepaired() { return true; }
	// BW1W120 00438d80 BW1M119 0136d650
	virtual bool32_t IsBuilt() { return true; }
	// BW1W120 0052efc0 BW1M119 010e43d0
	virtual float GetPercentRepairedForNonFunctional();
	// BW1W120 0052efd0 BW1M119 010e4300
	virtual float GetPercentForDrawBuilding();
	// BW1W120 00422000 BW1M119 010a87b0
	virtual float GetPercentAbodeFullWithAdults() { return 1.0f; }
	// BW1W120 00422010 BW1M119 010a8800
	virtual float GetPercentAbodeFullWithChildren() { return 1.0f; }
	// BW1W120 0052f0c0 BW1M119 01043940
	virtual bool IsDrawBuilding();
	// BW1W120 0052ebb0 BW1M119 010e4d60
	virtual bool32_t Built();
	// BW1W120 0052ec70 BW1M119 010e4c60
	virtual bool32_t Repaired();
	// BW1W120 00401510 BW1M119 01577a00
	virtual uint32_t GetBuildingSiteWood(uint32_t* param_1) { return 0; }
	// BW1W120 00422020 BW1M119 010a8860
	virtual FragMesh* GetDestructionMesh() { return NULL; }
	// BW1W120 00422030 BW1M119 010a88a0
	virtual float RemoveDamage() { return 0.0f; }
	// BW1W120 00401520 BW1M119 010625f0
	virtual void* GetBuildingObject() { return this; }
	// BW1W120 00422040 BW1M119 010a88e0
	virtual bool32_t IsCivic() { return false; }
	// BW1W120 00422060 BW1M119 010a8960
	virtual ABODE_TYPE GetAbodeType() { return ABODE_TYPE_GENERAL; }
	// BW1W120 00401550 BW1M119 014f0c10
	virtual void SetPower(float power) {}
	// BW1W120 00401560 BW1M119 01112de0
	virtual MapCoords GetResourcePos(RESOURCE_TYPE type, long param_2) { return Pos; }
	// BW1W120 00401580 BW1M119 01112cf0
	virtual bool IsPoisonedResource(RESOURCE_TYPE type) { return false; }
	// BW1W120 00401590 BW1M119 01558af0
	virtual MapCoords GetResourceNearestEdge(RESOURCE_TYPE type, Object* param_3, int param_4)
	{
		return GetResourcePos(type, -1);
	}
	// BW1W120 0052ece0 BW1M119 010e4a80
	virtual float GetDesireToBeRepaired();
	// BW1W120 004015b0 BW1M119 010abab0
	virtual void AddToPlayer() {}
	// BW1W120 004015c0 BW1M119 011778b0
	virtual void RemoveFromPlayer() {}
	// BW1W120 00422070 BW1M119 010a89a0
	virtual uint32_t DoResourceAdding(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* iface, bool param_4,
	                                  const MapCoords& coords, int param_6)
	{
		return 0;
	}
	// BW1W120 00422080 BW1M119 010a8a10
	virtual uint32_t DoResourceRemoving(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* iface, bool* param_4)
	{
		return 0;
	}
	// BW1W120 004015d0 BW1M119 01177c30
	virtual int CalulateAmountOverMaximum(RESOURCE_TYPE type) { return 0; }
	// BW1W120 00422090 BW1M119 010a8a80
	virtual void SetTown(Town* town) {}
	// BW1W120 0052f160 BW1M119 010e3f30
	virtual void RemovePotFromStructure(PotStructure* structure);
	// BW1W120 004220b0 BW1M119 010a8b00
	virtual bool32_t GetShouldNotBeAddedToPlanned() { return false; }
	// BW1W120 004220c0 BW1M119 010a8b50
	virtual void SetShouldNotBeAddedToPlanned(bool32_t value) {}
	// BW1W120 0052ed40 BW1M119 010e4940
	virtual void BuildBy(float amount);
	// BW1W120 00438d90 BW1M119 010b5150
	virtual PlannedMultiMapFixed* ConvertToPlanned() { return NULL; }
	// BW1W120 0052f550 BW1M119 010e33f0
	virtual void CreateCollideData();

	// Static methods

	// BW1W120 0052dbc0 BW1M119 0103a9d0
	static int CompareMultiChilds(const void* param_1, const void* param_2);

	// Constructors

	// BW1W120 0052e1a0 BW1M119 010e65f0
	MultiMapFixed();
	// BW1W120 0052e1e0 BW1M119 010e63f0
	MultiMapFixed(const MapCoords& coords, const GMultiMapFixedInfo* info, float y_angle, float scale, float param_5,
	              int param_6);

	// Non-virtual Destructors

	// BW1W120 0052e280 BW1M119 010e6330
	~MultiMapFixed();

	// Non-virtual methods

	// BW1W120 0052dc10 BW1M119 inlined
	void SortChildren();
	// BW1W120 0052dc30 BW1M119 0103aa60
	MultiChild* SortedMultiChildFind(const MapCell& cell);
	// BW1W120 0052ea50 BW1M119 010e5120
	void AllocateMultiChild();
	// BW1W120 0052f6d0 BW1M119 010e3110
	void ReleaseCollideData();
	// BW1W120 inlined BW1M119 0111f050
	const GMultiMapFixedInfo* GetInfo() const { return (const GMultiMapFixedInfo*)info; }
	// BW1W120 inlined BW1M119 010a0550
	BuildingSite* GetBuildingSite() { return building_site; }
	// BW1W120 0052e3f0 BW1M119 010e6030
	void SetBuildingSite(BuildingSite* site);
	// BW1W120 0052edd0 BW1M119 010e48a0
	void SetPercentBuilt(float percent);
	// BW1W120 0052ef50 BW1M119 null
	void UpdateFootpathLink();
	// BW1W120 00517f90 BW1M119 010cd3c0
	void DrawBuilding(Game3DObject* object);
};

#endif /* BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H */
