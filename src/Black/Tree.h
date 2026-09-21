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
	uint32_t field_0x5c;
	int16_t  field_0x60;
	float    field_0x64;
	Forest*  forest;

	// Override methods

	// BW1W120 0055da40 BW1M119 011613d0
	virtual ~Tree();
	// BW1W120 0074a210 BW1M119 01160c90
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055d8c0 BW1M119 011617b0
	virtual GPlayer* GetPlayer();
	// BW1W120 0055d9f0 BW1M119 01161cd0
	virtual GComputerSeen* GetComputerSeen();
	// BW1W120 0055d8e0 BW1M119 01161840
	virtual Tree* CastTree();
	// BW1W120 0055da30 BW1M119 01161dd0
	virtual char* GetDebugText();
	// BW1W120 0071be20 BW1M119 015176f0
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 0074c2a0 BW1M119 0115e2b0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0074c1b0 BW1M119 0115e420
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055da20 BW1M119 01161da0
	virtual uint32_t GetSaveType();
	// BW1W120 0055d950 BW1M119 01161a40
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 0074b790 BW1M119 0115f9b0
	virtual uint32_t GetOverwriteDropToolTip();
	// BW1W120 0055da10 BW1M119 01161d60
	virtual uint32_t IsCastShadowAtNight();
	// BW1W120 0055d9a0 BW1M119 01161ba0
	virtual uint32_t CanBeAttackedByCreature(Creature* param_1);
	// BW1W120 0055d930 BW1M119 01161990
	virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 004e4a80 BW1M119 015ec020
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0055d990 BW1M119 01161b50
	virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 0055d970 BW1M119 01161ac0
	virtual uint32_t CanBeUsedForBuilding(Creature* param_1);
	// BW1W120 0055d980 BW1M119 01161b10
	virtual uint32_t CanBeUsedForRepair(Creature* param_1);
	// BW1W120 0055d940 BW1M119 011619e0
	virtual uint32_t BenefitsFromHavingWaterSprinkledOnIt(Creature* param_1);
	// BW1W120 0055d9d0 BW1M119 inlined
	virtual uint32_t IsTree_1();
	// BW1W120 0055d920 BW1M119 inlined
	virtual uint32_t IsTree_0(Creature* param_1);
	// BW1W120 004e46e0 BW1M119 015ecac0
	virtual uint32_t IsTreeNotTooNearPlannedForest(Creature* param_1);
	// BW1W120 0074c0a0 BW1M119 0115e970
	virtual uint32_t IsTreeBigEnoughForCreature(Creature* param_1);
	// BW1W120 0055d9b0 BW1M119 01161bf0
	virtual uint32_t CanBeThrownInTheSeaPlayfully(Creature* param_1);
	// BW1W120 0055d960 BW1M119 01161a80
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1b70 BW1M119 01247820
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0055d9c0 BW1M119 01161c40
	virtual uint32_t IsAnyKindOfTree();
	// BW1W120 0074c130 BW1M119 010036c0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0055d8d0 BW1M119 011617e0
	virtual float GetReactionPower();
	// BW1W120 0074c7f0 BW1M119 0115dab0
	virtual bool32_t BlocksTownClearArea() const;
	// BW1W120 0074b600 BW1M119 0115feb0
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 0074b610 BW1M119 0115fe40
	virtual float GetHoldRadius();
	// BW1W120 0074b620 BW1M119 0115fdf0
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 0055d9e0 BW1M119 01161c80
	virtual uint32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 0074a1e0 BW1M119 01160e30
	virtual void SetLife(float param_1);
	// BW1W120 0074a290 BW1M119 01160ae0
	virtual uint32_t Process();
	// BW1W120 0055d8a0 BW1M119 01161720
	virtual MESH_LIST GetMesh() const;
	// BW1W120 0074ab00 BW1M119 01047730
	virtual void Draw();
	// BW1W120 0074b270 BW1M119 011602a0
	virtual void DrawOutOfMap(bool param_1);
	// BW1W120 0055d8b0 BW1M119 01161770
	virtual bool32_t CanBePickedUp();
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
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 0074b820 BW1M119 0115f7f0
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 0074b7a0 BW1M119 0115f950
	virtual int GetDefaultResource();
	// BW1W120 0074b730 BW1M119 0115f9f0
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0074bd50 BW1M119 0115ef60
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 0074bda0 BW1M119 0115ec10
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 0074bfd0 BW1M119 0115eaf0
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 0074b640 BW1M119 0115fd70
	virtual uint32_t GetPhysicsConstantsType();
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
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 0074c5f0 BW1M119 0115dd60
	virtual void CreateCollideData();
	// BW1W120 0074b810 BW1M119 0115f830
	virtual float GetWoodValueMultiplier();
	// BW1W120 0055d910 BW1M119 010fa030
	virtual Forest* GetForest();
	// BW1W120 0074c140 BW1M119 0115e710
	virtual void SetOnFire(float param_1);

	// Static methods

	// BW1W120 00749ee0 BW1M119 01161270
	static Tree* Create(const MapCoords& coords, const GTreeInfo* info, Forest* forest, float param_4, float param_5,
	                    float param_6);

	// Constructors

	// BW1W120 00749e00 BW1M119 01161450
	Tree(const MapCoords& coords, const GTreeInfo* info, Forest* forest, float param_4, float param_5, float param_6);
};

#endif /* BW1_DECOMP_TREE_INCLUDED_H */
