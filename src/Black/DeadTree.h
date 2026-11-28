#ifndef BW1_DECOMP_DEAD_TREE_INCLUDED_H
#define BW1_DECOMP_DEAD_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE, enum RESOURCE_TYPE, enum SOUND_COLLISION_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Rock.h" /* For struct Rock */

// Forward Declares

class Game3DObject;
class Tree;
class Base;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GTreeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
struct LH3DMesh;
class LHOSFile;
struct LHPoint;
struct MapCoords;
class Object;
struct PhysOb;
class PhysicsObject;

class DeadTree : public Rock
{
public:
	const GTreeInfo* TreeInfo;
	union {
		uint16_t DeadTreeFlags;
		struct
		{
			uint16_t field_0x98 : 4;
			uint16_t CreateFallingRoot : 1;
		};
	};
	uint16_t field_0x9a;
	float    WoodMultiplier;

	// BW1W120 00511210 BW1M119 010c5820
	static void Init();
	// BW1W120 00511250 BW1M119 010c57a0
	static void Close();
	// BW1W120 00511270 BW1M119 010c5620
	static void DrawRoots(Game3DObject* object);
	// BW1W120 00510b70 BW1M119 010c6ae0
	static DeadTree* Create(Tree* tree, GPlayer* player);
	// BW1W120 00510bb0 BW1M119 010c6960
	static DeadTree* Create(const MapCoords& coords, const GTreeInfo* info, GPlayer* player, float life, float x_angle,
	                        float y_angle, float z_angle, LH3DMesh* mesh);

	// Override methods

	// BW1W120 00510970 BW1M119 010c4300
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture() { return Object::GetInHandImmersionTexture(); }
	// BW1W120 00510980 BW1M119 010c4360
	virtual bool32_t IsAnyKindOfTree() { return true; }
	// BW1W120 00510990 BW1M119 010c43a0
	virtual bool32_t IsDeadTree() { return true; }
	// BW1W120 005109a0 BW1M119 010c43e0
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* status) { return 0; }
	// BW1W120 005109b0 BW1M119 010c4430
	virtual uint32_t InterfaceTap(GInterfaceStatus* status) { return 1; }
	// BW1W120 005109c0 BW1M119 010c4480
	virtual bool32_t HandShouldFeelWithMeshIntersect() { return false; }
	// BW1W120 005109d0 BW1M119 inlined
	virtual bool32_t IsRock() { return false; }
	// BW1W120 005109e0 BW1M119 010c71c0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_DEAD_TREE; }
	// BW1W120 005109f0 BW1M119 010c7200
	virtual char* GetDebugText() { return "DeadTree:"; }
	// BW1W120 00510c90 BW1M119 010c67e0
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00511370 BW1M119 010c5440
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* removed);
	// BW1W120 0071be30 BW1M119 015176b0
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 00511630 BW1M119 010c4ee0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 005115c0 BW1M119 010c4fc0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 005115b0 BW1M119 010c50a0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 005110d0 BW1M119 010c5d20
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 005110e0 BW1M119 010c5cb0
	virtual float GetHoldRadius();
	// BW1W120 005110f0 BW1M119 010c5c60
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 00510ce0 BW1M119 inlined
	virtual void GetDefaultFireCentrePos(MapCoords* pos);
	// BW1W120 00510e10 BW1M119 010c63d0
	virtual float GetDefaultFireRadius();
	// BW1W120 005107f0 BW1M119 0102e130
	virtual void Draw();
	// BW1W120 00511590 BW1M119 010c50e0
	virtual float GetWeight();
	// BW1W120 00510a90 BW1M119 010c6bc0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
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
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* status, Object* object, GestureSystemPacketData* data);
	// BW1W120 00511050 BW1M119 010c5da0
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 00511100 BW1M119 010c5ba0
	virtual PHYSICS_CONSTANTS_TYPE GetPhysicsConstantsType();
	// BW1W120 00511170 BW1M119 010c5970
	virtual void SetUpPhysOb(PhysOb* phys_ob);
	// BW1W120 005113f0 BW1M119 010c53a0
	virtual Object* EndPhysics(PhysicsObject* physics_object, bool insert_back_into_map);
	// BW1W120 005111f0 BW1M119 010c5920
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00510ca0 BW1M119 010c6710
	virtual void ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage);
	// BW1W120 00511a10 BW1M119 010c4730
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00510e30 BW1M119 010c62e0
	virtual bool32_t CreatureMustAvoid(Creature* creature);
	// BW1W120 00511200 BW1M119 010c58e0
	virtual bool32_t IsARootedObject();
	// BW1W120 00511130 BW1M119 010c5ad0
	virtual SOUND_COLLISION_TYPE GetCollideSoundType();
	// BW1W120 00511a20 BW1M119 010c45c0
	virtual uint32_t GetCarriedTreeType();
	// BW1W120 00511430 BW1M119 010c5160
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords);

	// BW1W120 inlined BW1M119 0130e550
	DeadTree() { SetToZero(); }
	// BW1W120 00510880 BW1M119 010c6f20
	DeadTree(Tree* tree, GPlayer* player);
	// BW1W120 00510a30 BW1M119 010c6e30
	DeadTree(const MapCoords& coords, const GTreeInfo* info, GPlayer* player, float life, float x_angle, float y_angle,
	         float z_angle);

	// BW1W120 00510a80 BW1M119 010c6df0
	void SetToZero();
	// BW1W120 00510c60 BW1M119 010c6830
	LH3DMesh* GetDeadTreeMesh();
	// BW1W120 inlined BW1M119 010c6920
	const GTreeInfo* GetTreeInfo() { return TreeInfo; }
};

#endif /* BW1_DECOMP_DEAD_TREE_INCLUDED_H */
