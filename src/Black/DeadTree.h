#ifndef BW1_DECOMP_DEAD_TREE_INCLUDED_H
#define BW1_DECOMP_DEAD_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE, enum RESOURCE_TYPE, enum SOUND_COLLISION_TYPE */

#include "Rock.h" /* For struct Rock */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct LHPoint;
struct MapCoords;
class Object;
struct PhysOb;
class PhysicsObject;

class DeadTree : public Rock
{
public:
	uint8_t field_0x94[0xc];

	// Override methods

	// BW1W120 00510a00 BW1M100 100c19c0 DeadTree::_dt(void)
	virtual ~DeadTree();
	// BW1W120 00510c90 BW1M100 100c3740 DeadTree::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00511370 BW1M100 100c1fb0 DeadTree::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 005109f0 BW1M100 100c4160 DeadTree::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0071be30 BW1M100 1050fb30 DeadTree::GetGuidanceResourceType(void)
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 00511630 BW1M100 100c1a50 DeadTree::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005115c0 BW1M100 100c1b30 DeadTree::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005109e0 BW1M100 100c4120 DeadTree::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 005109d0 BW1M100 inlined DeadTree::IsRock_0(void)
	virtual uint32_t IsRock_0();
	// BW1W120 00510980 BW1M100 100c0e80 DeadTree::IsAnyKindOfTree(void)
	virtual uint32_t IsAnyKindOfTree();
	// BW1W120 00510990 BW1M100 100c0ec0 DeadTree::IsDeadTree(void)
	virtual uint32_t IsDeadTree();
	// BW1W120 005115b0 BW1M100 100c1c10 DeadTree::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 005110d0 BW1M100 100c2890 DeadTree::GetHoldType(void)
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 005110e0 BW1M100 100c2820 DeadTree::GetHoldRadius(void)
	virtual float GetHoldRadius();
	// BW1W120 005110f0 BW1M100 100c27d0 DeadTree::GetHoldLoweringMultiplier(void)
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 005109c0 BW1M100 100c0fa0 DeadTree::HandShouldFeelWithMeshIntersect(void)
	virtual uint32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 00510ce0 BW1M100 inlined DeadTree::GetDefaultFireCentrePos(LHPoint *)
	virtual LHPoint* GetDefaultFireCentrePos(LHPoint* param_1);
	// BW1W120 00510e10 BW1M100 100c2f40 DeadTree::GetDefaultFireRadius(void)
	virtual float GetDefaultFireRadius();
	// BW1W120 005107f0 BW1M100 1002b5c0 DeadTree::Draw(void)
	virtual void Draw();
	// BW1W120 00511590 BW1M100 100c1c50 DeadTree::GetWeight(void)
	virtual float GetWeight();
	// BW1W120 00510a90 BW1M100 100c3b20 DeadTree::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 00511ad0 BW1M100 100c1020 DeadTree::GetWoodValue(void)
	virtual float GetWoodValue();
	// BW1W120 005110c0 BW1M100 100c28d0 DeadTree::GetResourceType(void)
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 00511330 BW1M100 100c20e0 DeadTree::GetDefaultResource(void)
	virtual int GetDefaultResource();
	// BW1W120 00510e20 BW1M100 100c2ef0 DeadTree::StartOnFire(void)
	virtual void StartOnFire();
	// BW1W120 00510e60 BW1M100 100c2db0 DeadTree::EndOnFire(void)
	virtual void EndOnFire();
	// BW1W120 00510e90 BW1M100 100c2cd0 DeadTree::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00510ee0 BW1M100 100c2a40 DeadTree::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 00511050 BW1M100 100c2910 DeadTree::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 005109a0 BW1M100 100c0f00 DeadTree::InterfaceValidToTap(GInterfaceStatus *)
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 005109b0 BW1M100 100c0f50 DeadTree::InterfaceTap(GInterfaceStatus *)
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 00511100 BW1M100 100c2710 DeadTree::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00511170 BW1M100 100c24e0 DeadTree::SetUpPhysOb(PhysOb *)
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 005113f0 BW1M100 100c1f10 DeadTree::EndPhysics(PhysicsObject *, bool)
	virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 005111f0 BW1M100 100c2490 DeadTree::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00510ca0 BW1M100 100c3670 DeadTree::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00511a10 BW1M100 100c1250 DeadTree::CanBecomeAPhysicsObject(void)
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00510e30 BW1M100 100c2e50 DeadTree::CreatureMustAvoid(Creature *)
	virtual bool CreatureMustAvoid(Creature* param_1);
	// BW1W120 00511200 BW1M100 100c2450 DeadTree::IsARootedObject(void)
	virtual bool IsARootedObject();
	// BW1W120 00511130 BW1M100 100c2640 DeadTree::GetCollideSoundType(void)
	virtual SOUND_COLLISION_TYPE GetCollideSoundType();
	// BW1W120 00511a20 BW1M100 100c10e0 DeadTree::GetCarriedTreeType(void)
	virtual uint32_t GetCarriedTreeType();
	// BW1W120 00511430 BW1M100 100c1cd0 DeadTree::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
	// BW1W120 00510970 BW1M100 100c0e20 DeadTree::GetInHandImmersionTexture(void)
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_DEAD_TREE_INCLUDED_H */
