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

	// BW1W120 0055cd50 BW1M119 0115b6a0
	virtual ~StoragePit();
	// BW1W120 00732c10 BW1M119 0115b630
	virtual void Delete();
	// BW1W120 00732c30 BW1M119 0115b4d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00732f60 BW1M119 01003d50
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 007332a0 BW1M119 0115a790
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0055cd40 BW1M119 01159850
	virtual char* GetDebugText();
	// BW1W120 00733920 BW1M119 01159b00
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007338d0 BW1M119 01159ba0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055cd30 BW1M119 01159810
	virtual uint32_t GetSaveType();
	// BW1W120 0055ccb0 BW1M119 inlined
	virtual MapCoords GetArrivePos();
	// BW1W120 0055ccf0 BW1M119 011596e0
	virtual bool32_t IsCastShadowAtNight();
	// BW1W120 0055cd10 BW1M119 01159770
	virtual bool32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 0055cd00 BW1M119 01159720
	virtual bool32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 004e4b50 BW1M119 015ebd20
	virtual bool32_t CanHaveMagicFoodCastOnMe(Creature* param_1);
	// BW1W120 004e4b70 BW1M119 015ebc50
	virtual bool32_t CanHaveMagicWoodCastOnMe(Creature* param_1);
	// BW1W120 004e4990 BW1M119 015ec370
	virtual bool32_t IsStoragePit(Creature* param_1);
	// BW1W120 004e4d90 BW1M119 015eb560
	virtual bool32_t IsStoragePitWithFoodInIt(Creature* param_1);
	// BW1W120 004e49a0 BW1M119 015ec280
	virtual bool32_t IsStoragePitBelongingToAnotherPlayer(Creature* param_1);
	// BW1W120 004e49e0 BW1M119 015ec1a0
	virtual bool32_t IsStoragePitBelongingToMyPlayer(Creature* param_1);
	// BW1W120 007336b0 BW1M119 0115a140
	virtual bool32_t IsPoisoned();
	// BW1W120 00519350 BW1M119 0101d500
	virtual void Draw();
	// BW1W120 00733a20 BW1M119 01159890
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 00732e80 BW1M119 0115b080
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0055ccd0 BW1M119 01159650
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 0055cd20 BW1M119 011597c0
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 00733750 BW1M119 01159ed0
	virtual bool32_t DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 00733810 BW1M119 01159c40
	virtual bool32_t DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus& param_2);
	// BW1W120 007335f0 BW1M119 0115a1f0
	virtual void SetPoisonedResource(RESOURCE_TYPE param_1, int param_2);
	// BW1W120 007335d0 BW1M119 0115a370
	virtual void SetPoisoned(int param_1);
	// BW1W120 00733730 BW1M119 01159ff0
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00733550 BW1M119 inlined
	virtual bool IsPoisonedResource();
	// BW1W120 00733400 BW1M119 01002830
	virtual MapCoords GetResourceNearestEdge(RESOURCE_TYPE type, Object* object, int index);
	// BW1W120 00733260 BW1M119 0115a910
	virtual int CalulateAmountOverMaximum(RESOURCE_TYPE param_1);
	// BW1W120 007331d0 BW1M119 0115a9e0
	virtual void RemovePotFromStructure(PotStructure* param_1);
	// BW1W120 00732cd0 BW1M119 0115b390
	virtual void DeleteDependancys();
	// BW1W120 00732f30 BW1M119 0115aeb0
	virtual void MakeFunctional();
	// BW1W120 00733960 BW1M119 01159a00
	virtual void StopBeingFunctional(GPlayer* param_1);
	// BW1W120 007339d0 BW1M119 01159920
	virtual void RestartBeingFunctional();
	// BW1W120 0055cce0 BW1M119 01159690
	virtual bool32_t CausesTownEmergencyIfDamaged();

	// Static methods

	// BW1W120 00732d60 BW1M119 0115b120
	static StoragePit* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                          float food, int wood);
};

#endif /* BW1_DECOMP_STORAGE_PIT_INCLUDED_H */
