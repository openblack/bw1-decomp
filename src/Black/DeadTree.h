#ifndef BW1_DECOMP_DEAD_TREE_INCLUDED_H
#define BW1_DECOMP_DEAD_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE, enum RESOURCE_TYPE, enum SOUND_COLLISION_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

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
	// BW1W120 00511210 BW1M119 010c5820
	static void Init();
	// BW1W120 00511250 BW1M119 010c57a0
	static void Close();
	uint8_t     field_0x94[0xc];

	// Override methods

	// BW1W120 00510a00 BW1M119 010c4e50
	virtual ~DeadTree();
	// BW1W120 00510c90 BW1M119 010c67e0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00511370 BW1M119 010c5440
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 005109f0 BW1M119 010c7200
	virtual char* GetDebugText();
	// BW1W120 0071be30 BW1M119 015176b0
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 00511630 BW1M119 010c4ee0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005115c0 BW1M119 010c4fc0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005109e0 BW1M119 010c71c0
	virtual uint32_t GetSaveType();
	// BW1W120 005109d0 BW1M119 inlined
	virtual uint32_t IsRock_0();
	// BW1W120 00510980 BW1M119 010c4360
	virtual bool32_t IsAnyKindOfTree();
	// BW1W120 00510990 BW1M119 010c43a0
	virtual bool32_t IsDeadTree();
	// BW1W120 005115b0 BW1M119 010c50a0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 005110d0 BW1M119 010c5d20
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 005110e0 BW1M119 010c5cb0
	virtual float GetHoldRadius();
	// BW1W120 005110f0 BW1M119 010c5c60
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 005109c0 BW1M119 010c4480
	virtual bool32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 00510ce0 BW1M119 inlined
	virtual void GetDefaultFireCentrePos(MapCoords* param_1);
	// BW1W120 00510e10 BW1M119 010c63d0
	virtual float GetDefaultFireRadius();
	// BW1W120 005107f0 BW1M119 0102e130
	virtual void Draw();
	// BW1W120 00511590 BW1M119 010c50e0
	virtual float GetWeight();
	// BW1W120 00510a90 BW1M119 010c6bc0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00511ad0 BW1M119 010c4500
	virtual float GetWoodValue();
	// BW1W120 005110c0 BW1M119 010c5d60
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 00511330 BW1M119 010c5570
	virtual int GetDefaultResource();
	// BW1W120 00510e20 BW1M119 010c6380
	virtual void StartOnFire();
	// BW1W120 00510e60 BW1M119 010c6240
	virtual void EndOnFire();
	// BW1W120 00510e90 BW1M119 010c6160
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00510ee0 BW1M119 010c5ed0
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 00511050 BW1M119 010c5da0
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 005109a0 BW1M119 010c43e0
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 005109b0 BW1M119 010c4430
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 00511100 BW1M119 010c5ba0
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00511170 BW1M119 010c5970
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 005113f0 BW1M119 010c53a0
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 005111f0 BW1M119 010c5920
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00510ca0 BW1M119 010c6710
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00511a10 BW1M119 010c4730
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00510e30 BW1M119 010c62e0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00511200 BW1M119 010c58e0
	virtual bool32_t IsARootedObject();
	// BW1W120 00511130 BW1M119 010c5ad0
	virtual SOUND_COLLISION_TYPE GetCollideSoundType();
	// BW1W120 00511a20 BW1M119 010c45c0
	virtual uint32_t GetCarriedTreeType();
	// BW1W120 00511430 BW1M119 010c5160
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00510970 BW1M119 010c4300
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_DEAD_TREE_INCLUDED_H */
