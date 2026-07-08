#ifndef BW1_DECOMP_TREE_INCLUDED_H
#define BW1_DECOMP_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum RESOURCE_TYPE */

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

	// BW1W120 0055da40 BW1M100 10159150 Tree::_dt(void)
	virtual ~Tree();
	// BW1W120 0074a210 BW1M100 10158a10 Tree::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055d8c0 BW1M100 10159560 Tree::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 0055d9f0 BW1M100 10159a80 Tree::GetComputerSeen(void)
	virtual bool GetComputerSeen();
	// BW1W120 0055d8e0 BW1M100 101595f0 Tree::CastTree(void)
	virtual Tree* CastTree();
	// BW1W120 0055da30 BW1M100 10159b80 Tree::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0071be20 BW1M100 1050fb70 Tree::GetGuidanceResourceType(void)
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 0074c2a0 BW1M100 10155f10 Tree::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0074c1b0 BW1M100 10156080 Tree::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055da20 BW1M100 10159b50 Tree::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0055d950 BW1M100 101597f0 Tree::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 0074b790 BW1M100 101576d0 Tree::GetOverwriteDropToolTip(void)
	virtual uint32_t GetOverwriteDropToolTip();
	// BW1W120 0055da10 BW1M100 10159b10 Tree::IsCastShadowAtNight(void)
	virtual uint32_t IsCastShadowAtNight();
	// BW1W120 0055d9a0 BW1M100 10159950 Tree::CanBeAttackedByCreature(Creature *)
	virtual uint32_t CanBeAttackedByCreature(Creature* param_1);
	// BW1W120 0055d930 BW1M100 10159740 Tree::CanBePlayedWithByCreature(Creature *)
	virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 004e4a80 BW1M100 105e4320 Tree::CanBePickedUpByCreature(Creature *)
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0055d990 BW1M100 10159900 Tree::CanBeDestroyedByStoning(Creature *)
	virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 0055d970 BW1M100 10159870 Tree::CanBeUsedForBuilding(Creature *)
	virtual uint32_t CanBeUsedForBuilding(Creature* param_1);
	// BW1W120 0055d980 BW1M100 101598c0 Tree::CanBeUsedForRepair(Creature *)
	virtual uint32_t CanBeUsedForRepair(Creature* param_1);
	// BW1W120 0055d940 BW1M100 10159790 Tree::BenefitsFromHavingWaterSprinkledOnIt(Creature *)
	virtual uint32_t BenefitsFromHavingWaterSprinkledOnIt(Creature* param_1);
	// BW1W120 0055d9d0 BW1M100 inlined Tree::IsTree_1(void)
	virtual uint32_t IsTree_1();
	// BW1W120 0055d920 BW1M100 inlined Tree::IsTree_0(Creature *)
	virtual uint32_t IsTree_0(Creature* param_1);
	// BW1W120 004e46e0 BW1M100 105e4dc0 Tree::IsTreeNotTooNearPlannedForest(Creature *)
	virtual uint32_t IsTreeNotTooNearPlannedForest(Creature* param_1);
	// BW1W120 0074c0a0 BW1M100 10156670 Tree::IsTreeBigEnoughForCreature(Creature *)
	virtual uint32_t IsTreeBigEnoughForCreature(Creature* param_1);
	// BW1W120 0055d9b0 BW1M100 101599a0 Tree::CanBeThrownInTheSeaPlayfully(Creature *)
	virtual uint32_t CanBeThrownInTheSeaPlayfully(Creature* param_1);
	// BW1W120 0055d960 BW1M100 10159830 Tree::GetCreatureMimicType(void)
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1b70 BW1M100 10242f30 Tree::GetHowMuchCreatureWantsToLookAtMe(void)
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0055d9c0 BW1M100 101599f0 Tree::IsAnyKindOfTree(void)
	virtual uint32_t IsAnyKindOfTree();
	// BW1W120 0074c130 BW1M100 100036d0 Tree::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 0055d8d0 BW1M100 10159590 Tree::GetReactionPower(void)
	virtual float GetReactionPower();
	// BW1W120 0074c7f0 BW1M100 10155720 Tree::BlocksTownClearArea( const(void))
	virtual bool BlocksTownClearArea();
	// BW1W120 0074b600 BW1M100 10157bd0 Tree::GetHoldType(void)
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 0074b610 BW1M100 10157b60 Tree::GetHoldRadius(void)
	virtual float GetHoldRadius();
	// BW1W120 0074b620 BW1M100 10157b10 Tree::GetHoldLoweringMultiplier(void)
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 0055d9e0 BW1M100 10159a30 Tree::HandShouldFeelWithMeshIntersect(void)
	virtual uint32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 0074a1e0 BW1M100 10158bb0 Tree::SetLife(float)
	virtual void SetLife(float param_1);
	// BW1W120 0074a290 BW1M100 10158860 Tree::Process(void)
	virtual uint32_t Process();
	// BW1W120 0055d8a0 BW1M100 101594d0 Tree::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 0074ab00 BW1M100 10044ce0 Tree::Draw(void)
	virtual void Draw();
	// BW1W120 0074b270 BW1M100 10157fc0 Tree::DrawOutOfMap(bool)
	virtual void DrawOutOfMap(bool param_1);
	// BW1W120 0055d8b0 BW1M100 10159520 Tree::CanBePickedUp(void)
	virtual bool CanBePickedUp();
	// BW1W120 0074a1a0 BW1M100 10158c20 Tree::GetVillagerHugRadius(void)
	virtual float GetVillagerHugRadius();
	// BW1W120 0074c150 BW1M100 101562a0 Tree::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 0074c040 BW1M100 inlined Tree::GetWorkingPos(MapCoords *, Object *)
	virtual MapCoords* GetWorkingPos(MapCoords* param_1, Object* param_2);
	// BW1W120 00749f70 BW1M100 10158e00 Tree::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 0074b7b0 BW1M100 10157590 Tree::GetWoodValue(void)
	virtual float GetWoodValue();
	// BW1W120 0074c390 BW1M100 10155bd0 Tree::ApplyWaterSpell(SpellWater *)
	virtual float ApplyWaterSpell(SpellWater* param_1);
	// BW1W120 0055d8f0 BW1M100 10159620 Tree::IsResourceStore(RESOURCE_TYPE)
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 0074b820 BW1M100 10157510 Tree::GetResourceType(void)
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 0074b7a0 BW1M100 10157670 Tree::GetDefaultResource(void)
	virtual int GetDefaultResource();
	// BW1W120 0074b730 BW1M100 10157710 Tree::InterfaceSetInMagicHand(GInterfaceStatus *)
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0074bd50 BW1M100 10156c80 Tree::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 0074bda0 BW1M100 10156910 Tree::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 0074bfd0 BW1M100 101567f0 Tree::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 0074b640 BW1M100 10157a90 Tree::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 0074b650 BW1M100 101579a0 Tree::SetUpPhysOb(PhysOb *)
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 0074b830 BW1M100 10156f80 Tree::EndPhysics(PhysicsObject *, bool)
	virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0074bc60 BW1M100 10156df0 Tree::DropSfx(void)
	virtual uint32_t DropSfx();
	// BW1W120 0074b6a0 BW1M100 10157960 Tree::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0074b6b0 BW1M100 10157840 Tree::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 0074b630 BW1M100 10157ad0 Tree::CanBecomeAPhysicsObject(void)
	virtual bool CanBecomeAPhysicsObject();
	// BW1W120 0074c0e0 BW1M100 10156590 Tree::CreatureMustAvoid(Creature *)
	virtual bool CreatureMustAvoid(Creature* param_1);
	// BW1W120 0074a180 BW1M100 10158cd0 Tree::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 0074a140 BW1M100 10158d40 Tree::GetRoutePlanRadius(Creature *)
	virtual float GetRoutePlanRadius(Creature* param_1);
	// BW1W120 0074b720 BW1M100 10157800 Tree::IsARootedObject(void)
	virtual bool IsARootedObject();
	// BW1W120 0055d900 BW1M100 10159670 Tree::GetCarriedTreeType(void)
	virtual uint32_t GetCarriedTreeType();
	// BW1W120 0074a9d0 BW1M100 10158260 Tree::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
	// BW1W120 0074c5f0 BW1M100 101559c0 Tree::CreateCollideData(void)
	virtual void CreateCollideData();
	// BW1W120 0074b810 BW1M100 10157550 Tree::GetWoodValueMultiplier(void)
	virtual float GetWoodValueMultiplier();
	// BW1W120 0055d910 BW1M100 100f0c30 Tree::GetForest(void)
	virtual Forest* GetForest();
	// BW1W120 0074c140 BW1M100 10156370 Tree::SetOnFire(float)
	virtual void SetOnFire(float param_1);

	// Static methods

	// BW1W120 00749ee0 BW1M100 10158ff0 Tree::Create(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
	static Tree* Create(MapCoords* coords, const GTreeInfo* info, Forest* forest, float param_4, float param_5,
	                    float param_6);

	// Constructors

	// BW1W120 00749e00 BW1M100 101591d0 Tree::Tree(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
	Tree(const MapCoords* coords, const GTreeInfo* info, Forest* forest, float param_4, float param_5, float param_6);
};

#endif /* BW1_DECOMP_TREE_INCLUDED_H */
