#ifndef BW1_DECOMP_STORAGE_PIT_INCLUDED_H
#define BW1_DECOMP_STORAGE_PIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>                             /* For enum RESOURCE_TYPE */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

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

class StoragePit : public Abode
{
public:
	PileFood*     pile_food; /* 0xc4 */
	PileWood*     pile_wood;
	PileResource* field_0xcc;
	PileResource* field_0xd0;
	PileResource* field_0xd4;
	PileResource* field_0xd8;

	// Override methods

	// BW1W120 0055cd50 BW1M100 10153360 StoragePit::_dt(void)
	virtual ~StoragePit();
	// BW1W120 00732c10 BW1M100 101532f0 StoragePit::Delete(void)
	virtual void Delete();
	// BW1W120 00732c30 BW1M100 101531a0 StoragePit::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00732f60 BW1M100 10003d60 StoragePit::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 007332a0 BW1M100 10152550 StoragePit::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0055cd40 BW1M100 101515a0 StoragePit::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00733920 BW1M100 10151890 StoragePit::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007338d0 BW1M100 10151930 StoragePit::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055cd30 BW1M100 10151560 StoragePit::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0055ccb0 BW1M100 inlined StoragePit::GetArrivePos(void)
	virtual MapCoords GetArrivePos();
	// BW1W120 0055ccf0 BW1M100 10151430 StoragePit::IsCastShadowAtNight(void)
	virtual uint32_t IsCastShadowAtNight();
	// BW1W120 0055cd10 BW1M100 101514c0 StoragePit::CanBeEatenByCreature(Creature *)
	virtual uint32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 0055cd00 BW1M100 10151470 StoragePit::CanActAsAContainer(Creature *)
	virtual uint32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 004e4b50 BW1M100 105e4020 StoragePit::CanHaveMagicFoodCastOnMe(Creature *)
	virtual uint32_t CanHaveMagicFoodCastOnMe(Creature* param_1);
	// BW1W120 004e4b70 BW1M100 105e3f50 StoragePit::CanHaveMagicWoodCastOnMe(Creature *)
	virtual uint32_t CanHaveMagicWoodCastOnMe(Creature* param_1);
	// BW1W120 004e4990 BW1M100 105e4670 StoragePit::IsStoragePit(Creature *)
	virtual uint32_t IsStoragePit(Creature* param_1);
	// BW1W120 004e4d90 BW1M100 105e3860 StoragePit::IsStoragePitWithFoodInIt(Creature *)
	virtual uint32_t IsStoragePitWithFoodInIt(Creature* param_1);
	// BW1W120 004e49a0 BW1M100 105e4580 StoragePit::IsStoragePitBelongingToAnotherPlayer(Creature *)
	virtual uint32_t IsStoragePitBelongingToAnotherPlayer(Creature* param_1);
	// BW1W120 004e49e0 BW1M100 105e44a0 StoragePit::IsStoragePitBelongingToMyPlayer(Creature *)
	virtual uint32_t IsStoragePitBelongingToMyPlayer(Creature* param_1);
	// BW1W120 007336b0 BW1M100 10151ed0 StoragePit::IsPoisoned(void)
	virtual uint32_t IsPoisoned();
	// BW1W120 00519350 BW1M100 1001a950 StoragePit::Draw(void)
	virtual void Draw();
	// BW1W120 00733a20 BW1M100 101515e0 StoragePit::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 00732e80 BW1M100 10152d50 StoragePit::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 0055ccd0 BW1M100 101513a0 StoragePit::Get3DType(void)
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 0055cd20 BW1M100 10151510 StoragePit::IsResourceStore(RESOURCE_TYPE)
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 00733750 BW1M100 10151c60 StoragePit::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
	virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 00733810 BW1M100 101519d0 StoragePit::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
	virtual bool DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus* param_2);
	// BW1W120 007335f0 BW1M100 10151f80 StoragePit::SetPoisonedResource(RESOURCE_TYPE, int)
	virtual void SetPoisonedResource(RESOURCE_TYPE param_1, int param_2);
	// BW1W120 007335d0 BW1M100 10152110 StoragePit::SetPoisoned(int)
	virtual void SetPoisoned(int param_1);
	// BW1W120 00733730 BW1M100 10151d80 StoragePit::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00733550 BW1M100 inlined StoragePit::IsPoisonedResource(void)
	virtual bool IsPoisonedResource();
	// BW1W120 00733400 BW1M100 10002840 StoragePit::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
	virtual MapCoords GetResourceNearestEdge(RESOURCE_TYPE type, Object* object, int index);
	// BW1W120 00733260 BW1M100 101526e0 StoragePit::CalulateAmountOverMaximum(RESOURCE_TYPE)
	virtual int CalulateAmountOverMaximum(RESOURCE_TYPE param_1);
	// BW1W120 007331d0 BW1M100 101527b0 StoragePit::RemovePotFromStructure(PotStructure *)
	virtual void RemovePotFromStructure(PotStructure* param_1);
	// BW1W120 00732cd0 BW1M100 10153060 StoragePit::DeleteDependancys(void)
	virtual void DeleteDependancys();
	// BW1W120 00732f30 BW1M100 10152b90 StoragePit::MakeFunctional(void)
	virtual void MakeFunctional();
	// BW1W120 00733960 BW1M100 10151770 StoragePit::StopBeingFunctional(GPlayer *)
	virtual void StopBeingFunctional(GPlayer* param_1);
	// BW1W120 007339d0 BW1M100 10151670 StoragePit::RestartBeingFunctional(void)
	virtual void RestartBeingFunctional();
	// BW1W120 0055cce0 BW1M100 101513e0 StoragePit::CausesTownEmergencyIfDamaged(void)
	virtual bool32_t CausesTownEmergencyIfDamaged();

	// Static methods

	// BW1W120 00732d60 BW1M100 10152df0 StoragePit::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
	static StoragePit* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                          float food, int wood);
};

#endif /* BW1_DECOMP_STORAGE_PIT_INCLUDED_H */
