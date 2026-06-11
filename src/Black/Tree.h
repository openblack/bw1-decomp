#ifndef BW1_DECOMP_TREE_INCLUDED_H
#define BW1_DECOMP_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
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

class Tree: public SingleMapFixed
{
public:
    uint32_t field_0x5c;
    int16_t field_0x60;
    float field_0x64;
    Forest* forest;

    // Override methods

    // win1.41 0055da40 mac 10159150 Tree::_dt(void)
    virtual ~Tree();
    // win1.41 0074a210 mac 10158a10 Tree::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055d8c0 mac 10159560 Tree::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 0055d9f0 mac 10159a80 Tree::GetComputerSeen(void)
    virtual bool GetComputerSeen();
    // win1.41 0055d8e0 mac 101595f0 Tree::CastTree(void)
    virtual Tree* CastTree();
    // win1.41 0055da30 mac 10159b80 Tree::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0071be20 mac 1050fb70 Tree::GetGuidanceResourceType(void)
    virtual uint32_t GetGuidanceResourceType();
    // win1.41 0074c2a0 mac 10155f10 Tree::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0074c1b0 mac 10156080 Tree::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055da20 mac 10159b50 Tree::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0055d950 mac 101597f0 Tree::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 0074b790 mac 101576d0 Tree::GetOverwriteDropToolTip(void)
    virtual uint32_t GetOverwriteDropToolTip();
    // win1.41 0055da10 mac 10159b10 Tree::IsCastShadowAtNight(void)
    virtual uint32_t IsCastShadowAtNight();
    // win1.41 0055d9a0 mac 10159950 Tree::CanBeAttackedByCreature(Creature *)
    virtual uint32_t CanBeAttackedByCreature(Creature* param_1);
    // win1.41 0055d930 mac 10159740 Tree::CanBePlayedWithByCreature(Creature *)
    virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
    // win1.41 004e4a80 mac 105e4320 Tree::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 0055d990 mac 10159900 Tree::CanBeDestroyedByStoning(Creature *)
    virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
    // win1.41 0055d970 mac 10159870 Tree::CanBeUsedForBuilding(Creature *)
    virtual uint32_t CanBeUsedForBuilding(Creature* param_1);
    // win1.41 0055d980 mac 101598c0 Tree::CanBeUsedForRepair(Creature *)
    virtual uint32_t CanBeUsedForRepair(Creature* param_1);
    // win1.41 0055d940 mac 10159790 Tree::BenefitsFromHavingWaterSprinkledOnIt(Creature *)
    virtual uint32_t BenefitsFromHavingWaterSprinkledOnIt(Creature* param_1);
    // win1.41 0055d9d0 mac inlined Tree::IsTree_1(void)
    virtual uint32_t IsTree_1();
    // win1.41 0055d920 mac inlined Tree::IsTree_0(Creature *)
    virtual uint32_t IsTree_0(Creature* param_1);
    // win1.41 004e46e0 mac 105e4dc0 Tree::IsTreeNotTooNearPlannedForest(Creature *)
    virtual uint32_t IsTreeNotTooNearPlannedForest(Creature* param_1);
    // win1.41 0074c0a0 mac 10156670 Tree::IsTreeBigEnoughForCreature(Creature *)
    virtual uint32_t IsTreeBigEnoughForCreature(Creature* param_1);
    // win1.41 0055d9b0 mac 101599a0 Tree::CanBeThrownInTheSeaPlayfully(Creature *)
    virtual uint32_t CanBeThrownInTheSeaPlayfully(Creature* param_1);
    // win1.41 0055d960 mac 10159830 Tree::GetCreatureMimicType(void)
    virtual uint32_t GetCreatureMimicType();
    // win1.41 004d1b70 mac 10242f30 Tree::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 0055d9c0 mac 101599f0 Tree::IsAnyKindOfTree(void)
    virtual uint32_t IsAnyKindOfTree();
    // win1.41 0074c130 mac 100036d0 Tree::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 0055d8d0 mac 10159590 Tree::GetReactionPower(void)
    virtual float GetReactionPower();
    // win1.41 0074c7f0 mac 10155720 Tree::BlocksTownClearArea( const(void))
    virtual bool BlocksTownClearArea();
    // win1.41 0074b600 mac 10157bd0 Tree::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // win1.41 0074b610 mac 10157b60 Tree::GetHoldRadius(void)
    virtual float GetHoldRadius();
    // win1.41 0074b620 mac 10157b10 Tree::GetHoldLoweringMultiplier(void)
    virtual float GetHoldLoweringMultiplier();
    // win1.41 0055d9e0 mac 10159a30 Tree::HandShouldFeelWithMeshIntersect(void)
    virtual uint32_t HandShouldFeelWithMeshIntersect();
    // win1.41 0074a1e0 mac 10158bb0 Tree::SetLife(float)
    virtual void SetLife(float param_1);
    // win1.41 0074a290 mac 10158860 Tree::Process(void)
    virtual uint32_t Process();
    // win1.41 0055d8a0 mac 101594d0 Tree::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 0074ab00 mac 10044ce0 Tree::Draw(void)
    virtual void Draw();
    // win1.41 0074b270 mac 10157fc0 Tree::DrawOutOfMap(bool)
    virtual void DrawOutOfMap(bool param_1);
    // win1.41 0055d8b0 mac 10159520 Tree::CanBePickedUp(void)
    virtual bool CanBePickedUp();
    // win1.41 0074a1a0 mac 10158c20 Tree::GetVillagerHugRadius(void)
    virtual float GetVillagerHugRadius();
    // win1.41 0074c150 mac 101562a0 Tree::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
    // win1.41 0074c040 mac inlined Tree::GetWorkingPos(MapCoords *, Object *)
    virtual MapCoords* GetWorkingPos(MapCoords* param_1, Object* param_2);
    // win1.41 00749f70 mac 10158e00 Tree::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0074b7b0 mac 10157590 Tree::GetWoodValue(void)
    virtual float GetWoodValue();
    // win1.41 0074c390 mac 10155bd0 Tree::ApplyWaterSpell(SpellWater *)
    virtual float ApplyWaterSpell(SpellWater* param_1);
    // win1.41 0055d8f0 mac 10159620 Tree::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE param_1);
    // win1.41 0074b820 mac 10157510 Tree::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 0074b7a0 mac 10157670 Tree::GetDefaultResource(void)
    virtual int GetDefaultResource();
    // win1.41 0074b730 mac 10157710 Tree::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 0074bd50 mac 10156c80 Tree::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 0074bda0 mac 10156910 Tree::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 0074bfd0 mac 101567f0 Tree::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // win1.41 0074b640 mac 10157a90 Tree::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 0074b650 mac 101579a0 Tree::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 0074b830 mac 10156f80 Tree::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // win1.41 0074bc60 mac 10156df0 Tree::DropSfx(void)
    virtual uint32_t DropSfx();
    // win1.41 0074b6a0 mac 10157960 Tree::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0074b6b0 mac 10157840 Tree::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 0074b630 mac 10157ad0 Tree::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 0074c0e0 mac 10156590 Tree::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 0074a180 mac 10158cd0 Tree::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
    virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (__cdecl*)(int, Point2D, float, int) param_4);
    // win1.41 0074a140 mac 10158d40 Tree::GetRoutePlanRadius(Creature *)
    virtual float GetRoutePlanRadius(Creature* param_1);
    // win1.41 0074b720 mac 10157800 Tree::IsARootedObject(void)
    virtual bool IsARootedObject();
    // win1.41 0055d900 mac 10159670 Tree::GetCarriedTreeType(void)
    virtual uint32_t GetCarriedTreeType();
    // win1.41 0074a9d0 mac 10158260 Tree::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 0074c5f0 mac 101559c0 Tree::CreateCollideData(void)
    virtual void CreateCollideData();
    // win1.41 0074b810 mac 10157550 Tree::GetWoodValueMultiplier(void)
    virtual float GetWoodValueMultiplier();
    // win1.41 0055d910 mac 100f0c30 Tree::GetForest(void)
    virtual Forest* GetForest();
    // win1.41 0074c140 mac 10156370 Tree::SetOnFire(float)
    virtual void SetOnFire(float param_1);

    // Static methods

    // win1.41 00749ee0 mac 10158ff0 Tree::Create(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
    static Tree* Create(MapCoords* coords, const GTreeInfo* info, Forest* forest, float param_4, float param_5, float param_6);

    // Constructors

    // win1.41 00749e00 mac 101591d0 Tree::Tree(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
    Tree(const MapCoords* coords, const GTreeInfo* info, Forest* forest, float param_4, float param_5, float param_6);
};

#endif /* BW1_DECOMP_TREE_INCLUDED_H */
