#ifndef BW1_DECOMP_TREE_INCLUDED_H
#define BW1_DECOMP_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t */

#include <chlasm/Enum.h>        /* For enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Fixed.h" /* For struct SingleMapFixed, struct SingleMapFixedVftable */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class Forest;
class GInterfaceStatus;
class GPlayer;
class GTreeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct MapCoords;
class Object;
struct PhysOb;
class PhysicsObject;
struct RPHolder;
class SpellWater;
class Villager;

class Tree : public SingleMapFixed
{
public:
	union {
		uint16_t TreeFlags;
		struct
		{
			uint16_t : 1;
			uint16_t Magic : 1;
			uint16_t AngleIndex : 4;
			uint16_t DrawIndex : 4;
		};
	};
	struct
	{
		uint8_t Growing : 1;
		uint8_t NonScenic : 1;
	};
	uint16_t ProcessCountdown;
	float    TargetScale;
	Forest*  forest;

	// Override methods

	// BW1W120 00749ed0 BW1M119 011613d0
	virtual ~Tree();
	// BW1W120 0074a210 BW1M119 01160c90
	virtual void ToBeDeleted(int delete_now);
	// BW1W120 0055d8c0 BW1M119 011617b0
	virtual GPlayer* GetPlayer() { return NULL; }
	// BW1W120 0055d9f0 BW1M119 01161cd0
	virtual GComputerSeen* GetComputerSeen()
	{
		if (GetForest())
		{
			return (GComputerSeen*)GetForest();
		}
		return (GComputerSeen*)this;
	}
	// BW1W120 0055d8e0 BW1M119 01161840
	virtual Tree* CastTree() { return this; }
	// BW1W120 0055da30 BW1M119 01161dd0
	virtual char* GetDebugText() { return "Tree:"; }
	// BW1W120 0071be20 BW1M119 015176f0
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 0074c2a0 BW1M119 0115e2b0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0074c1b0 BW1M119 0115e420
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055da20 BW1M119 01161da0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_TREE; }
	// BW1W120 0055d950 BW1M119 01161a40
	virtual uint32_t GetCreatureBeliefType() { return CREATURE_BELIEF_TYPE_TREE; }
	// BW1W120 0074b790 BW1M119 0115f9b0
	virtual uint32_t GetOverwriteDropToolTip();
	// BW1W120 0055da10 BW1M119 01161d60
	virtual bool32_t IsCastShadowAtNight() { return true; }
	// BW1W120 0055d9a0 BW1M119 01161ba0
	virtual bool32_t CanBeAttackedByCreature(Creature* creature) { return true; }
	// BW1W120 0055d930 BW1M119 01161990
	virtual bool32_t CanBePlayedWithByCreature(Creature* creature) { return true; }
	// BW1W120 004e4a80 BW1M119 015ec020
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0055d990 BW1M119 01161b50
	virtual bool32_t CanBeDestroyedByStoning(Creature* creature) { return false; }
	// BW1W120 0055d970 BW1M119 01161ac0
	virtual bool32_t CanBeUsedForBuilding(Creature* creature) { return true; }
	// BW1W120 0055d980 BW1M119 01161b10
	virtual bool32_t CanBeUsedForRepair(Creature* creature) { return true; }
	// BW1W120 0055d940 BW1M119 011619e0
	virtual bool32_t BenefitsFromHavingWaterSprinkledOnIt(Creature* creature) { return true; }
	// BW1W120 0055d9d0 BW1M119 inlined
	virtual bool32_t IsTree() { return true; }
	// BW1W120 0055d920 BW1M119 inlined
	virtual bool32_t IsTree(Creature* creature) { return true; }
	// BW1W120 004e46e0 BW1M119 015ecac0
	virtual bool32_t IsTreeNotTooNearPlannedForest(Creature* param_1);
	// BW1W120 0074c0a0 BW1M119 0115e970
	virtual bool32_t IsTreeBigEnoughForCreature(Creature* param_1);
	// BW1W120 0055d9b0 BW1M119 01161bf0
	virtual bool32_t CanBeThrownInTheSeaPlayfully(Creature* creature) { return true; }
	// BW1W120 0055d960 BW1M119 01161a80
	virtual uint32_t GetCreatureMimicType() { return CREATURE_MIMIC_TYPE_TREE; }
	// BW1W120 004d1b70 BW1M119 01247820
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0055d9c0 BW1M119 01161c40
	virtual bool32_t IsAnyKindOfTree() { return true; }
	// BW1W120 0074c130 BW1M119 010036c0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0055d8d0 BW1M119 011617e0
	virtual float GetReactionPower() { return GetLife(); }
	// BW1W120 0074c7f0 BW1M119 0115dab0
	virtual bool32_t BlocksTownClearArea() const;
	// BW1W120 0074b600 BW1M119 0115feb0
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 0074b610 BW1M119 0115fe40
	virtual float GetHoldRadius();
	// BW1W120 0074b620 BW1M119 0115fdf0
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 0055d9e0 BW1M119 01161c80
	virtual bool32_t HandShouldFeelWithMeshIntersect() { return false; }
	// BW1W120 0074a1e0 BW1M119 01160e30
	virtual void SetLife(float param_1);
	// BW1W120 0074a290 BW1M119 01160ae0
	virtual uint32_t Process();
	// BW1W120 0055d8a0 BW1M119 01161720
	virtual MESH_LIST GetMesh() const;
	// BW1W120 0074ab00 BW1M119 01047730
	virtual void Draw();
	// BW1W120 0074b270 BW1M119 011602a0
	virtual void DrawOutOfMap(bool selectable);
	// BW1W120 0055d8b0 BW1M119 01161770
	virtual bool32_t CanBePickedUp() { return !(Flags & GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP); }
	// BW1W120 0074a1a0 BW1M119 01160ea0
	virtual float GetVillagerHugRadius();
	// BW1W120 0074c150 BW1M119 0115e640
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 0074c040 BW1M119 inlined
	// Rule 2 (hidden retbuf): overrides Object::GetWorkingPos, returns MapCoords by value.
	virtual MapCoords GetWorkingPos(Object* param_1);
	// BW1W120 00749f70 BW1M119 01161080
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0074b7b0 BW1M119 0115f870
	virtual float GetWoodValue();
	// BW1W120 0074c390 BW1M119 0115df70
	virtual float ApplyWaterSpell(SpellWater* param_1);
	// BW1W120 0055d8f0 BW1M119 01161870
	virtual bool32_t IsResourceStore(RESOURCE_TYPE type) { return false; }
	// BW1W120 0074b820 BW1M119 0115f7f0
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 0074b7a0 BW1M119 0115f950
	virtual int GetDefaultResource();
	// BW1W120 0074b730 BW1M119 0115f9f0
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0074bd50 BW1M119 0115ef60
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 0074bda0 BW1M119 0115ec10
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 0074bfd0 BW1M119 0115eaf0
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 0074b640 BW1M119 0115fd70
	virtual PHYSICS_CONSTANTS_TYPE GetPhysicsConstantsType();
	// BW1W120 0074b650 BW1M119 0115fc80
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 0074b830 BW1M119 0115f260
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0074bc60 BW1M119 0115f0d0
	virtual uint32_t DropSfx();
	// BW1W120 0074b6a0 BW1M119 0115fc40
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0074b6b0 BW1M119 0115fb20
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 0074b630 BW1M119 0115fdb0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0074c0e0 BW1M119 0115e890
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 0074a180 BW1M119 01160f50
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 0074a140 BW1M119 01160fc0
	virtual float GetRoutePlanRadius(Creature* param_1);
	// BW1W120 0074b720 BW1M119 0115fae0
	virtual bool32_t IsARootedObject();
	// BW1W120 0055d900 BW1M119 011618c0
	virtual uint32_t GetCarriedTreeType();
	// BW1W120 0074a9d0 BW1M119 01160510
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords);
	// BW1W120 0074c650 BW1M119 0115daf0
	bool32_t GetPosForVillagerToSleepUnder(Villager* villager, MapCoords& pos);
	// BW1W120 0074c5f0 BW1M119 0115dd60
	virtual void CreateCollideData();
	// BW1W120 0074b810 BW1M119 0115f830
	virtual float GetWoodValueMultiplier();
	// BW1W120 0055d910 BW1M119 010fa030
	virtual Forest* GetForest() { return forest; }
	// BW1W120 0074c140 BW1M119 0115e710
	virtual void SetOnFire(float param_1);

	// Static methods

	// BW1W120 00749ee0 BW1M119 01161270
	static Tree* Create(const MapCoords& coords, const GTreeInfo* info, Forest* forest, float target_scale,
	                    float y_angle, float scale);
	// BW1W120 0074a7a0 BW1M119 null
	static bool32_t IsForestTreeAtPos(MapCoords& coords);
	// BW1W120 0074a7c0 BW1M119 01035d40
	static void PreDraw();
	// BW1W120 0074c180 BW1M119 0115e5a0
	static bool32_t IsOkToCreateAtPos(MapCoords& coords);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	Tree() { SetToZero(); }
	// BW1W120 00749e00 BW1M119 01161450
	Tree(const MapCoords& coords, const GTreeInfo* info, Forest* forest, float target_scale, float y_angle,
	     float scale);

	// BW1W120 00749f60 BW1M119 01161230
	void SetToZero();

	// BW1W120 inlined BW1M119 inlined
	const GTreeInfo* GetInfo() const { return (const GTreeInfo*)info; }
	// BW1W120 inlined BW1M119 inlined
	bool32_t IsGrowing() { return Growing && GetScale() < TargetScale; }

	// Non-virtual methods

	// BW1W120 0074a3a0 BW1M119 01160a20
	float Decay(float amount);
	// BW1W120 0074b3a0 BW1M119 0115fee0
	void SpecialDrawOnFire(bool selectable);
	// BW1W120 0074bd20 BW1M119 0115f040
	void AddPermanentFootPrint();
	// BW1W120 0074a6f0 BW1M119 null
	float GetWoodRemovedByEffect(EffectValues& values);
	// BW1W120 0074a750 BW1M119 null
	float GetWoodAddedByEffect(EffectValues& values);
	// BW1W120 0074a3f0 BW1M119 01160880
	float Grow(float amount, bool instant, bool raise_target);
};
static_assert(sizeof(Tree) == 0x6c, "Data type is of wrong size");

#endif /* BW1_DECOMP_TREE_INCLUDED_H */
