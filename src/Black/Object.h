#ifndef BW1_DECOMP_OBJECT_INCLUDED_H
#define BW1_DECOMP_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum EFFECT_TYPE, enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE, enum RESOURCE_TYPE, enum SOUND_COLLISION_TYPE, enum TRIBE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
struct EffectNumbers;
class EffectValues;
class FireEffect;
class GInterfaceStatus;
class GObjectInfo;
class GPlayer;
class Game3DObject;
class GameOSFile;
class GameThing;
struct GameThingVftable;
struct GestureSystemPacketData;
struct LH3DSprite;
struct LHMatrix;
class LHOSFile;
struct LHPoint;
struct LHRegion;
class LandscapeVortex;
class Living;
struct MapCell;
class MultiMapFixed;
struct NewCollide;
struct PhysOb;
class PhysicsObject;
struct Point2D;
struct RPHolder;
class Reaction;
class Scaffold;
class Spell;
class SpellWater;
class Town;
class Villager;

class Object: public GameThingWithPos
{
public:
    const GObjectInfo* info; /* 0x28 */
    MapCoords coords;
    Object* map_parent; /* 0x38 */
    uint32_t field_0x3c;
    Game3DObject* game_3d_object; /* 0x40 */
    FireEffect* fire_effect;
    float life;
    float y_angle;
    float scale; /* 0x50 */

    // Override methods

    // win1.41 006366a0 mac 103d8e50 Object::Delete(void)
    virtual void Delete();
    // win1.41 00636670 mac 103d8eb0 Object::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00639b70 mac 103d2180 Object::GetDrawImportance(void)
    virtual float GetDrawImportance();
    // win1.41 00419950 mac 100a9ec0 Object::GetTown(void)
    virtual Town* GetTown();
    // win1.41 00638110 mac 103d55b0 Object::GetRadius(void)
    virtual float GetRadius();
    // win1.41 00638180 mac 10038d20 Object::Get2DRadius(void)
    virtual float Get2DRadius();
    // win1.41 00639520 mac 103d3550 Object::GetResource(RESOURCE_TYPE)
    virtual uint32_t GetResource(RESOURCE_TYPE type);
    // win1.41 0063a7d0 mac 103d06c0 Object::CanBecomeArtifact(void)
    virtual bool CanBecomeArtifact();
    // win1.41 005190e0 mac 1008d3a0 Object::DrawInHand(GInterfaceStatus *)
    virtual void DrawInHand(GInterfaceStatus* param_1);
    // win1.41 00639eb0 mac 103d1b20 Object::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 00639b90 mac 103d1d50 Object::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* file);
    // win1.41 0063a020 mac 103d1940 Object::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 00402600 mac 1004b110 Object::GetLife(void)
    virtual float GetLife();
    // win1.41 00402520 mac 10044cb0 Object::GetScale(void)
    virtual float GetScale();
    // win1.41 00639200 mac 103d3c80 Object::SetScale(float)
    virtual void SetScale(float scale);
    // win1.41 004027c0 mac 1016ea00 Object::GetDistanceFromObject(MapCoords &)
    virtual float GetDistanceFromObject(const MapCoords* target);
    // win1.41 006394e0 mac 103d35f0 Object::GetPhysicsMovementDirection(LHPoint *)
    virtual void GetPhysicsMovementDirection(LHPoint* pos);
    // win1.41 00402710 mac 10032610 Object::IsMoving( const(void))
    virtual bool IsMoving();
    // win1.41 006392b0 mac 10037930 Object::IsObjectInMap(void)
    virtual bool IsObjectInMap();
    // win1.41 0063a780 mac 103d07e0 Object::IsDrowning(void)
    virtual bool IsDrowning();
    // win1.41 006377f0 mac 103d6d80 Object::CleanupWhenDeleted(int)
    virtual void CleanupWhenDeleted(int param_1);
    // win1.41 00639860 mac 103d2e30 Object::GetImpressiveValue(Living *, Reaction *)
    virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
    // win1.41 00639940 mac 103d2cf0 Object::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
    virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
    // win1.41 00638550 mac 103d5010 Object::IsBuildingMaterial(void)
    virtual bool32_t IsBuildingMaterial();
    // win1.41 00402a20 mac 103db180 Object::IsSuitableForCreatureAction(void)
    virtual bool32_t IsSuitableForCreatureAction();
    // win1.41 004e48c0 mac 105e4960 Object::CanBeEatenByCreature(Creature *)
    virtual bool32_t CanBeEatenByCreature(Creature* creature);
    // win1.41 00402a40 mac 100db5e0 Object::CanBeAttackedByCreature(Creature *)
    virtual bool32_t CanBeAttackedByCreature(Creature* creature);
    // win1.41 00425c60 mac 100ade90 Object::CanBeFrighteningToCreature(Creature *)
    virtual bool32_t CanBeFrighteningToCreature(Creature* creature);
    // win1.41 00402a80 mac 1056cf30 Object::CanBeHelpedByCreature(Creature *)
    virtual bool32_t CanBeHelpedByCreature(Creature* creature);
    // win1.41 00402a60 mac 100b95a0 Object::CanBePlayedWithByCreature(Creature *)
    virtual bool32_t CanBePlayedWithByCreature(Creature* creature);
    // win1.41 00402a70 mac 105a25d0 Object::CanBeImpressedByCreature(Creature *)
    virtual bool32_t CanBeImpressedByCreature(Creature* creature);
    // win1.41 004e3b40 mac 105e70f0 Object::CanBeInspectedByCreature(Creature *)
    virtual bool32_t CanBeInspectedByCreature(Creature* creature);
    // win1.41 004e3eb0 mac 105e66c0 Object::CanBePoodUponByCreature(Creature *)
    virtual bool32_t CanBePoodUponByCreature(Creature* creature);
    // win1.41 004e3a20 mac 105e7240 Object::CanBePickedUpByCreature(Creature *)
    virtual bool32_t CanBePickedUpByCreature(Creature* creature);
    // win1.41 004e3b00 mac 105e7170 Object::CanBeStrokedByCreature(Creature *)
    virtual bool32_t CanBeStrokedByCreature(Creature* creature);
    // win1.41 004e3c10 mac 105e6e70 Object::CanBeStompedOnByCreature(Creature *)
    virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
    // win1.41 004e3cf0 mac 105e6cb0 Object::CanBeThrownByCreature(Creature *)
    virtual bool32_t CanBeThrownByCreature(Creature* creature);
    // win1.41 004e3d40 mac 105e6b50 Object::CanBePutInAStoragePit(Creature *)
    virtual bool32_t CanBePutInAStoragePit(Creature* creature);
    // win1.41 00402a90 mac 103e4d10 Object::CanBeExaminedByCreature(Creature *)
    virtual bool32_t CanBeExaminedByCreature(Creature* creature);
    // win1.41 00402aa0 mac 1054f410 Object::IsOnFire(Creature *)
    virtual bool32_t IsOnFire(Creature* creature);
    // win1.41 004e3d90 mac 105e6a70 Object::CanBePutInFoodPile(Creature *)
    virtual bool32_t CanBePutInFoodPile(Creature* creature);
    // win1.41 004e3dd0 mac 105e69a0 Object::CanBePutInWoodPile(Creature *)
    virtual bool32_t CanBePutInWoodPile(Creature* creature);
    // win1.41 004e3bb0 mac 105e6f50 Object::CanBeBroughtBackToCitadel(Creature *)
    virtual bool32_t CanBeBroughtBackToCitadel(Creature* creature);
    // win1.41 00402a30 mac 100ba330 Object::CanBePoodOn(Creature *)
    virtual bool32_t CanBePoodOn(Creature* creature);
    // win1.41 004e4320 mac 105e56c0 Object::CanBeKickedByCreature(Creature *)
    virtual bool32_t CanBeKickedByCreature(Creature* creature);
    // win1.41 0063b8d0 mac 103da7f0 Object::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
    virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
    // win1.41 00402b40 mac 1016dc30 Object::GetText(void)
    virtual const char* GetText();
    // win1.41 00638120 mac 10030760 Object::GetHeight(void)
    virtual float GetHeight();
    // win1.41 00639b20 mac 103d2290 Object::SetInScript(int)
    virtual void SetInScript(int param_1);
    // win1.41 004029f0 mac 100219d0 Object::IsObject( const(void))
    virtual bool32_t IsObject();
    // win1.41 00638580 mac 103d4f70 Object::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // win1.41 00638590 mac 103d4f10 Object::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // win1.41 006385a0 mac 1004c960 Object::GetFOVHelpMessageSet(void)
    virtual uint32_t GetFOVHelpMessageSet();
    // win1.41 006385b0 mac 103d4d50 Object::GetFOVHelpCondition(void)
    virtual uint32_t GetFOVHelpCondition();
    // win1.41 0063ab20 mac 103cfe90 Object::DestroyedByBeam(void)
    virtual void DestroyedByBeam();
    // win1.41 004024f0 mac 10055b70 Object::GetXAngle(void)
    virtual float GetXAngle();
    // win1.41 00402500 mac 1004c930 Object::GetYAngle(void)
    virtual float GetYAngle();
    // win1.41 00402510 mac 10055b30 Object::GetZAngle(void)
    virtual float GetZAngle();
    // win1.41 006393a0 mac 100299c0 Object::SetFocus(LHPoint const &)
    virtual void SetFocus(const LHPoint* focus);
    // win1.41 00638d00 mac 10043070 Object::SetXYZAngles(float, float, float)
    virtual void SetXYZAngles(float x, float y, float z);
    // win1.41 00638f80 mac 103d3d70 Object::SetXYZAnglesAndScale(float, float, float, float)
    virtual void SetXYZAnglesAndScale(float x, float y, float z, float scale);
    // win1.41 00402530 mac 10577710 Object::SetJustScale(float)
    virtual void SetJustScale(float scale);
    // win1.41 0063a800 mac 10038850 Object::SetYJustAngle(float)
    virtual void SetYJustAngle(float angle);
    // win1.41 00639260 mac 1004cc10 Object::SetYAngle(float)
    virtual void SetYAngle(float angle);
    // win1.41 00402540 mac 100def80 Object::UpdateFrom3DPosition(void)
    virtual void UpdateFrom3DPosition();
    // win1.41 00402550 mac 105890b0 Object::MoveAlongPath(void)
    virtual uint32_t MoveAlongPath();
    // win1.41 00402560 mac 1030b0c0 Object::IsReachable(void)
    virtual bool IsReachable();
    // win1.41 0063a920 mac 103d03c0 Object::BlocksTownClearArea( const(void))
    virtual bool BlocksTownClearArea();
    // win1.41 006365f0 mac 103d9010 Object::Create3DObject(void)
    virtual void Create3DObject();
    // win1.41 00418c90 mac 100540e0 Object::GetMapChild(MapCell const &)
    virtual Object* GetMapChild(const MapCell* param_1);
    // win1.41 00418cc0 mac 10053b70 Object::SetMapChild(Object *, MapCell *)
    virtual void SetMapChild(Object* child, MapCell* cell);
    // win1.41 00636740 mac 1004ad80 Object::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 006367a0 mac 1004ace0 Object::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // win1.41 00636830 mac 10053ed0 Object::InsertMapObjectToCell(MapCell *)
    virtual void InsertMapObjectToCell(MapCell* cell);
    // win1.41 006368d0 mac 10053bc0 Object::RemoveMapObjectFromCell(MapCell *)
    virtual void RemoveMapObjectFromCell(MapCell* cell);
    // win1.41 006367d0 mac 10054140 Object::IsObjectInMap(MapCell *)
    virtual bool IsObjectInMap(MapCell* cell);
    // win1.41 006366b0 mac 103d8d10 Object::IsObjectInMapCheck(void)
    virtual bool IsObjectInMapCheck();
    // win1.41 00636a40 mac 1004d070 Object::MoveMapObject(MapCoords const &)
    virtual int MoveMapObject(const MapCoords* param_2);
    // win1.41 00638040 mac 10055200 Object::ActualMoveMapObject(MapCoords const &)
    virtual void ActualMoveMapObject(const MapCoords* param_2);
    // win1.41 00402570 mac 103dca60 Object::GetPtr(void)
    virtual Object* GetPtr();
    // win1.41 00636bd0 mac 103d8710 Object::GetMeshRadius( const(void))
    virtual float GetMeshRadius();
    // win1.41 00402580 mac 103dc890 Object::Get3DObjectForPSys(void)
    virtual Game3DObject* Get3DObjectForPSys();
    // win1.41 00732630 mac 101499d0 Object::GetPSysFireFlameMatrix(LHMatrix *)
    virtual bool GetPSysFireFlameMatrix(LHMatrix* matrix);
    // win1.41 00732770 mac 10149520 Object::GetPSysFireLocalRndFlamePos(LHPoint *, long *)
    virtual bool GetPSysFireLocalRndFlamePos(LHPoint* point, int* param_2);
    // win1.41 00732660 mac 10149810 Object::GetPSysFireWorldFlamePos(LHPoint const &, long, LHPoint *)
    virtual bool GetPSysFireWorldFlamePos(const LHPoint* param_1, int param_2, LHPoint* param_3);
    // win1.41 00732950 mac 101493c0 Object::GetPSysFireLocalFlameScale(void)
    virtual float GetPSysFireLocalFlameScale();
    // win1.41 00732a30 mac 101492c0 Object::GetPSysFireMaxFlames(void)
    virtual uint32_t GetPSysFireMaxFlames();
    // win1.41 00402590 mac 1011c800 Object::GetSpotEffectPower(void)
    virtual float GetSpotEffectPower();
    // win1.41 00639610 mac 103d3310 Object::GetAggressorValueFromDamage(float)
    virtual float GetAggressorValueFromDamage(float param_1);
    // win1.41 00638bf0 mac 103d41a0 Object::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // win1.41 00638c00 mac 100953b0 Object::GetHoldRadius(void)
    virtual float GetHoldRadius();
    // win1.41 00638c30 mac 103d4110 Object::GetHoldLoweringMultiplier(void)
    virtual float GetHoldLoweringMultiplier();
    // win1.41 004025a0 mac 10097700 Object::GetHoldYRotate(void)
    virtual float GetHoldYRotate();
    // win1.41 004025b0 mac 100a0df0 Object::HandShouldFeelWithMeshIntersect(void)
    virtual bool32_t HandShouldFeelWithMeshIntersect();
    // win1.41 004025c0 mac 10513b50 Object::SetSpecularColor(unsigned long)
    virtual void SetSpecularColor(LH3DColor color);
    // win1.41 004025d0 mac 10110ae0 Object::GetSpecularColor(void)
    virtual LH3DColor GetSpecularColor();
    // win1.41 004025e0 mac 10110490 Object::SetBeliefSprite(BeliefSprite *)
    virtual void SetBeliefSprite(LH3DSprite* sprite);
    // win1.41 004025f0 mac 1016bab0 Object::GetBeliefSprite(void)
    virtual LH3DSprite* GetBeliefSprite();
    // win1.41 0063a140 mac 100515d0 Object::SetLife(float)
    virtual void SetLife(float life);
    // win1.41 00402610 mac 1005f530 Object::IsAlive(void)
    virtual bool IsAlive();
    // win1.41 00637810 mac 1004b140 Object::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float value, GPlayer* player);
    // win1.41 00637870 mac 103d6b50 Object::IncreaseLife(float)
    virtual void IncreaseLife(float value);
    // win1.41 0063aaf0 mac 103cff40 Object::GetSacrificeValue(void)
    virtual float GetSacrificeValue();
    // win1.41 00637c20 mac 103d63c0 Object::ReduceLifeDueToBurning(float, GPlayer *)
    virtual void ReduceLifeDueToBurning(float param_1, GPlayer* param_2);
    // win1.41 00637900 mac 103d6a00 Object::FillInEffectDefenceMultiplier(EffectNumbers &)
    virtual void FillInEffectDefenceMultiplier(EffectNumbers* param_1);
    // win1.41 00637980 mac 103d6510 Object::ApplyEffect(EffectValues &, int)
    virtual void ApplyEffect(EffectValues* param_1, int param_2);
    // win1.41 00637d00 mac 103d6120 Object::GetDamageEffect(EffectValues &)
    virtual float GetDamageEffect(EffectValues* values);
    // win1.41 00637d80 mac 103d6050 Object::GetHealEffect(EffectValues &)
    virtual float GetHealEffect(EffectValues* values);
    // win1.41 00637cf0 mac 103d6220 Object::GetActualObjectToEffect(GPlayer *, bool)
    virtual void* GetActualObjectToEffect(GPlayer* player, bool param_2);
    // win1.41 006392c0 mac 103d38b0 Object::DrawValue(long, float)
    virtual void DrawValue(int param_1, float param_2);
    // win1.41 00402640 mac 10368980 Object::ScaffoldMoved(Scaffold *)
    virtual void ScaffoldMoved(Scaffold* scaffold);
    // win1.41 00637ce0 mac 103d6270 Object::GetHeatCapacity(void)
    virtual float GetHeatCapacity();
    // win1.41 00639a80 mac 103d2950 Object::GetFireGPHXDrawn(bool *, bool *, bool *, bool *)
    virtual void GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4);
    // win1.41 00639a90 mac 103d2900 Object::GetRainCoolingMultiplier(void)
    virtual float GetRainCoolingMultiplier();
    // win1.41 00639aa0 mac 1001a370 Object::GetDefaultFireCentrePos(MapCoords *)
    virtual LHPoint* GetDefaultFireCentrePos(LHPoint* pos);
    // win1.41 00639ac0 mac 103d2490 Object::GetDefaultFireRadius(void)
    virtual float GetDefaultFireRadius();
    // win1.41 006378e0 mac 103d6ad0 Object::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* player, float param_2);
    // win1.41 00418fc0 mac 100a9d90 Object::Process(void)
    virtual uint32_t Process();
    // win1.41 00402650 mac 10368aa0 Object::ProcessBySpell(Spell *)
    virtual uint32_t ProcessBySpell(Spell* spell);
    // win1.41 00637ff0 mac 103d57e0 Object::ApplySingleEffect(EFFECT_TYPE, float, GameThing *, MapCoords const &)
    virtual void ApplySingleEffect(EFFECT_TYPE param_1, float param_2, GameThing* param_3, const MapCoords* param_4);
    // win1.41 00425340 mac 10368d70 Object::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00402660 mac 10368ae0 Object::GetDetailMesh( const(DETAIL_LEVEL))
    virtual int GetDetailMesh(int detail);
    // win1.41 004648b0 mac 100e33f0 Object::Draw(void)
    virtual void Draw();
    // win1.41 0051c820 mac 1001aa40 Object::DrawOutOfMap(bool)
    virtual void DrawOutOfMap(bool param_1);
    // win1.41 00402670 mac 10109540 Object::IsG3DObjectDrawnInHand(void)
    virtual bool IsG3DObjectDrawnInHand();
    // win1.41 00402680 mac 100a83e0 Object::GetDrawRegion(LHRegion *)
    virtual void GetDrawRegion(LHRegion* param_1);
    // win1.41 00402690 mac 103e4e10 Object::ProcessState(void)
    virtual uint32_t ProcessState();
    // win1.41 006380b0 mac 103d5740 Object::GetProjectileSpeed(void)
    virtual float GetProjectileSpeed();
    // win1.41 004026a0 mac 103e4940 Object::CanBePickedUp(void)
    virtual bool CanBePickedUp();
    // win1.41 00425c50 mac 100add90 Object::CanBeCrushed(void)
    virtual bool32_t CanBeCrushed();
    // win1.41 00638160 mac 103d5490 Object::GetTopPos(void)
    virtual float GetTopPos();
    // win1.41 004026b0 mac 100a7df0 Object::GetVillagerHugRadius(void)
    virtual float GetVillagerHugRadius();
    // win1.41 00638480 mac 103d51a0 Object::GetWeight(void)
    virtual float GetWeight();
    // win1.41 00638200 mac 1007e8a0 Object::GetWorldMatrix(LHMatrix *)
    virtual void GetWorldMatrix(LHMatrix* out);
    // win1.41 00639b60 mac 103d21e0 Object::CanBeSuckedIntoVortex(LandscapeVortex *)
    virtual bool CanBeSuckedIntoVortex(LandscapeVortex* param_1);
    // win1.41 00639b80 mac 103d2110 Object::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
    // win1.41 00639550 mac 103d3460 Object::GetWorkingPos(Object *)
    virtual MapCoords* GetWorkingPos(MapCoords* param_1, Object* param_2);
    // win1.41 00638150 mac 103d5500 Object::GetHeightForHandAboveInteractObject(void)
    virtual float GetHeightForHandAboveInteractObject();
    // win1.41 006385c0 mac 103d4cf0 Object::GetHandHelpMessageSet(void)
    virtual uint32_t GetHandHelpMessageSet();
    // win1.41 006385d0 mac 103d4c90 Object::GetHandHelpCondition(void)
    virtual uint32_t GetHandHelpCondition();
    // win1.41 00636be0 mac 103d84b0 Object::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 006364f0 mac 103d92f0 Object::Get3DType(void)
    virtual LH3DObject__ObjectType Get3DType();
    // win1.41 004026d0 mac 10586d80 Object::GetFoodValue(FOOD_TYPE)
    virtual float GetFoodValue(FOOD_TYPE type);
    // win1.41 006395c0 mac 103d3390 Object::GetWoodValue(void)
    virtual float GetWoodValue();
    // win1.41 00402700 mac 10062630 Object::GetFoodType(void)
    virtual FOOD_TYPE GetFoodType();
    // win1.41 00639390 mac 103d3840 Object::GetImpressiveValue(void)
    virtual float GetImpressiveValue();
    // win1.41 00402730 mac 1056f400 Object::IsSpellSeedReturnPoint( const(void))
    virtual bool IsSpellSeedReturnPoint();
    // win1.41 00402740 mac 104d62b0 Object::IsABeliever(void)
    virtual bool32_t IsABeliever();
    // win1.41 004192c0 mac 100a9dc0 Object::AsMultiMapFixed(void)
    virtual MultiMapFixed* AsMultiMapFixed();
    // win1.41 0063a8e0 mac 103d0400 Object::ApplyWaterSpell(SpellWater *)
    virtual float ApplyWaterSpell(SpellWater* spell);
    // win1.41 004192d0 mac 100a9e00 Object::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE type);
    // win1.41 0063a930 mac 103d0360 Object::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
    virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
    // win1.41 0063aad0 mac 103d0050 Object::GetRadiusMultiplierForApplyingPotToPos(void)
    virtual float GetRadiusMultiplierForApplyingPotToPos();
    // win1.41 0063aae0 mac 103cffe0 Object::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
    virtual bool DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus* status);
    // win1.41 00402750 mac 1056ee10 Object::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 00402760 mac 1035b020 Object::GetDefaultResource(void)
    virtual int GetDefaultResource();
    // win1.41 00402770 mac 105a4d20 Object::SetPoisonedResource(RESOURCE_TYPE, int)
    virtual void SetPoisonedResource(RESOURCE_TYPE type, int param_2);
    // win1.41 00402780 mac 10552240 Object::SetPoisoned(int)
    virtual void SetPoisoned(int param_1);
    // win1.41 00402790 mac 10109690 Object::IsLockedInInteract(void)
    virtual bool IsLockedInInteract();
    // win1.41 004027a0 mac 10109580 Object::SetDying(void)
    virtual bool SetDying();
    // win1.41 00636ab0 mac 103d8820 Object::IsAttackable(Object *)
    virtual bool IsAttackable(Object* param_1);
    // win1.41 00636af0 mac 103d8770 Object::IsAllied(Object *)
    virtual bool IsAllied(Object* param_1);
    // win1.41 00637e60 mac 103d5970 Object::IsTouching(MapCoords const &, MapCoords const &)
    virtual bool IsTouching(MapCoords* param_1, MapCoords* param_2);
    // win1.41 00637e30 mac 103d5ef0 Object::IsTouching(MapCoords const &)
    virtual bool IsTouching(MapCoords* param_1);
    // win1.41 00419300 mac 100a9e50 Object::StartOnFire(void)
    virtual void StartOnFire();
    // win1.41 004027b0 mac 100a8170 Object::EndOnFire(void)
    virtual void EndOnFire();
    // win1.41 00637fb0 mac 103d58a0 Object::GetDistanceFromObject(Object *)
    virtual float GetDistanceFromObject(Object* param_1);
    // win1.41 006399d0 mac 10003b20 Object::GetTribalPower(TRIBE_TYPE)
    virtual float GetTribalPower(TRIBE_TYPE param_1);
    // win1.41 00419330 mac 100addd0 Object::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* status);
    // win1.41 004193d0 mac 100ade30 Object::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* status);
    // win1.41 004027d0 mac 1016eda0 Object::NetworkUnfriendlyStartLockedSelect(void)
    virtual bool32_t NetworkUnfriendlyStartLockedSelect();
    // win1.41 004027e0 mac 1056c2f0 Object::IsReadyForNetworkUnfriendlyLockedSelect(void)
    virtual bool32_t IsReadyForNetworkUnfriendlyLockedSelect();
    // win1.41 004027f0 mac 10577790 Object::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // win1.41 00402800 mac 1037fcb0 Object::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
    virtual bool32_t GetReadyForNetworkUnfriendlyEndLockedSelect();
    // win1.41 00402810 mac 102fd0c0 Object::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
    virtual bool32_t IsReadyForNetworkUnfriendlyEndLockedSelect();
    // win1.41 00402820 mac 103e2470 Object::NetworkUnfriendlyEndLockedSelect(void)
    virtual bool32_t NetworkUnfriendlyEndLockedSelect();
    // win1.41 00402830 mac 1041d9a0 Object::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* status);
    // win1.41 00402840 mac 1017df80 Object::ValidAsInterfaceTarget(void)
    virtual bool32_t ValidAsInterfaceTarget();
    // win1.41 00402850 mac 1016daa0 Object::ValidAsInterfaceLeashTarget(void)
    virtual bool32_t ValidAsInterfaceLeashTarget();
    // win1.41 00402860 mac 103e0d10 Object::SelectOnlyAfterRecSystem(void)
    virtual bool32_t SelectOnlyAfterRecSystem();
    // win1.41 00402870 mac 105995f0 Object::ValidForPlaceInHand(GInterfaceStatus *)
    virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* status);
    // win1.41 00637660 mac 103d7300 Object::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status);
    // win1.41 00637670 mac 103d7280 Object::InterfaceSetOutMagicHand(GInterfaceStatus *)
    virtual bool32_t InterfaceSetOutMagicHand(GInterfaceStatus* status);
    // win1.41 00402880 mac 1040fc60 Object::ValidToRemoveFromHand(GInterfaceStatus *, MapCoords const &)
    virtual bool32_t ValidToRemoveFromHand(GInterfaceStatus* status, const MapCoords* param_2);
    // win1.41 00402890 mac 100b16a0 Object::RemoveFromHand(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t RemoveFromHand(GInterfaceStatus* status, const MapCoords* param_2);
    // win1.41 00636aa0 mac 100933f0 Object::ValidToShakeFromHand(void)
    virtual bool32_t ValidToShakeFromHand();
    // win1.41 004028a0 mac 101ca2e0 Object::InterfaceMustBeInInfluenceForInteraction(void)
    virtual bool32_t InterfaceMustBeInInfluenceForInteraction();
    // win1.41 00636a90 mac 103d8920 Object::IsTuggable(void)
    virtual bool32_t IsTuggable();
    // win1.41 004028b0 mac 101652d0 Object::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* status, Object* param_2);
    // win1.41 004028c0 mac 10513670 Object::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* status, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 004028d0 mac 10110bf0 Object::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
    // win1.41 004028e0 mac 10110b70 Object::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // win1.41 004028f0 mac 1055f210 Object::ValidForLockedApplyProcess(GInterfaceStatus *)
    virtual uint32_t ValidForLockedApplyProcess(GInterfaceStatus* status);
    // win1.41 00402900 mac 1016baf0 Object::ApplyUnlockProcess(GInterfaceStatus *)
    virtual uint32_t ApplyUnlockProcess(GInterfaceStatus* status);
    // win1.41 00402910 mac 10364e10 Object::IsInterfacePowerUpWhenInHand( const(void))
    virtual uint32_t IsInterfacePowerUpWhenInHand();
    // win1.41 00402920 mac 103ad050 Object::ApplyOnlyAfterRecSystem(void)
    virtual uint32_t ApplyOnlyAfterRecSystem();
    // win1.41 00402930 mac 10101e60 Object::ApplyOnlyAfterReleased(void)
    virtual uint32_t ApplyOnlyAfterReleased();
    // win1.41 004196b0 mac 100a5960 Object::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* status);
    // win1.41 004196c0 mac 100a59b0 Object::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* status);
    // win1.41 00402940 mac 100a0900 Object::InterfaceValidToGiveObject(GInterfaceStatus *, Object *)
    virtual uint32_t InterfaceValidToGiveObject(GInterfaceStatus* status, Object* param_2);
    // win1.41 00402950 mac 101c8d40 Object::InterfaceGiveObject(GInterfaceStatus *, Object *)
    virtual uint32_t InterfaceGiveObject(GInterfaceStatus* status, Object* param_2);
    // win1.41 00402960 mac 105890f0 Object::InterfaceValidToInteractAsMapCoordsObject(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToInteractAsMapCoordsObject(GInterfaceStatus* status);
    // win1.41 00402970 mac 1016bbe0 Object::InterfaceInteractAsMapCoordsObject(GInterfaceStatus *)
    virtual uint32_t InterfaceInteractAsMapCoordsObject(GInterfaceStatus* status);
    // win1.41 006385e0 mac 103d4a70 Object::ThrowObjectFromHand(GInterfaceStatus *, int)
    virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* status, int param_2);
    // win1.41 00402980 mac 1016aaf0 Object::ValidToSelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToSelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
    // win1.41 00402990 mac 1056d5f0 Object::ValidToApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
    // win1.41 004029a0 mac 103692a0 Object::SelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t SelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
    // win1.41 004029b0 mac 103690d0 Object::ApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
    // win1.41 004029c0 mac 10369240 Object::ValidToFightThisToObject(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToFightThisToObject(GInterfaceStatus* status, const MapCoords* param_2);
    // win1.41 004029d0 mac 101cbb80 Object::FightThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t FightThisToObject(GInterfaceStatus* status, Object* param_2);
    // win1.41 004029e0 mac 100068d0 Object::IsEffectReceiver(EffectValues *)
    virtual bool32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 00639960 mac 103d2ba0 Object::CanBeDestroyedBySpell(Spell *)
    virtual bool32_t CanBeDestroyedBySpell(Spell* param_1);
    // win1.41 00638cf0 mac 103d3f30 Object::GetImportance(void)
    virtual float GetImportance();
    // win1.41 00636f00 mac 103d7760 Object::CanBeDestroyedBySpell_2(void)
    virtual uint32_t InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3, Object* param_4, int param_5);
    // win1.41 00637480 mac 103d74c0 Object::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
    virtual uint32_t InitialisePhysics(const LHPoint* param_1, const LHPoint* param_2, Object* param_3, bool param_4, GInterfaceStatus* param_5);
    // win1.41 006376a0 mac 103d71b0 Object::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 006376b0 mac 103d70b0 Object::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 006375a0 mac 103d7350 Object::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // win1.41 0063a7b0 mac 103d07b0 Object::DropSfx(void)
    virtual uint32_t DropSfx();
    // win1.41 00637730 mac 103d6f80 Object::GetBoundingSphere(LHPoint &, float &)
    virtual void GetBoundingSphere(LHPoint* center, float* radius);
    // win1.41 006377b0 mac 103d6f30 Object::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00419890 mac 100a9e80 Object::ChecksVerticesVObjects(void)
    virtual uint32_t ChecksVerticesVObjects();
    // win1.41 006377d0 mac 103d6e50 Object::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object *)
    virtual void ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1);
    // win1.41 00402a00 mac 100b06b0 Object::PhysicallyDestroysAbodes(void)
    virtual uint32_t PhysicallyDestroysAbodes();
    // win1.41 006377c0 mac 103d6ee0 Object::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 006377e0 mac 103d6e10 Object::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00402a10 mac 103db1f0 Object::GetAlwaysRemainsInPhysicsInternalSystem(void)
    virtual bool GetAlwaysRemainsInPhysicsInternalSystem();
    // win1.41 00637470 mac 103d7730 Object::HasSunk(void)
    virtual bool HasSunk();
    // win1.41 00638740 mac 103d48a0 Object::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00638790 mac 103d43b0 Object::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
    virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (__cdecl*)(int, Point2D, float, int) param_4);
    // win1.41 006384c0 mac 103d5070 Object::GetRoutePlanRadius(Creature *)
    virtual float GetRoutePlanRadius(Creature* param_1);
    // win1.41 00638be0 mac 103d41e0 Object::VillagerMustAvoid(Villager *)
    virtual bool32_t VillagerMustAvoid(Villager* param_1);
    // win1.41 00639a00 mac 103d2b20 Object::IsFireMan(void)
    virtual bool IsFireMan();
    // win1.41 00638730 mac 10097740 Object::IsARootedObject(void)
    virtual bool IsARootedObject();
    // win1.41 00637690 mac 103d7220 Object::GetCollideSoundType(void)
    virtual SOUND_COLLISION_TYPE GetCollideSoundType();
    // win1.41 004198a0 mac 101bd530 Object::IsSolidToNewAbode(void)
    virtual bool32_t IsSolidToNewAbode();
    // win1.41 00639b50 mac 103d2250 Object::RemoveFromGame(void)
    virtual uint32_t RemoveFromGame();
    // win1.41 00638430 mac 103d52a0 Object::GetLandingPointCount(void)
    virtual int GetLandingPointCount();
    // win1.41 00638450 mac 103d5230 Object::GetLandingPoint(unsigned char, LHPoint *)
    virtual bool GetLandingPoint(uint8_t param_1, LHPoint* param_2);
    // win1.41 00402ab0 mac 103e2750 Object::GetTastiness(void)
    virtual uint32_t GetTastiness();
    // win1.41 00402ac0 mac 102fd110 Object::IsScary(void)
    virtual bool IsScary();
    // win1.41 00638cb0 mac 103d3fe0 Object::GetInspectObjectPos(Villager *, MapCoords *)
    virtual bool GetInspectObjectPos(Villager* param_1, MapCoords* pos);
    // win1.41 0063ab10 mac 103cfef0 Object::DiscipleInHandNear(Villager &, GInterfaceStatus &)
    virtual void DiscipleInHandNear(Villager* param_1, GInterfaceStatus* status);
    // win1.41 00638cd0 mac 103d3f70 Object::GetSpecialPos(unsigned long, MapCoords *)
    virtual bool32_t GetSpecialPos(uint32_t index, MapCoords* pos);
    // win1.41 00419960 mac 100adee0 Object::GetTownArtifact(void)
    virtual GameThing* GetTownArtifact();
    // win1.41 00419970 mac 100adf20 Object::IsTownArtifact(void)
    virtual bool32_t IsTownArtifact();
    // win1.41 00639ad0 mac 1008a4c0 Object::ProcessInHand(void)
    virtual bool ProcessInHand();
    // win1.41 00639b10 mac 103d22d0 Object::ProcessInInteract(GInterfaceStatus *)
    virtual uint32_t ProcessInInteract(GInterfaceStatus* status);
    // win1.41 00402ad0 mac 102fd170 Object::GetObjectCollide(void)
    virtual uint32_t GetObjectCollide();
    // win1.41 00639620 mac 103d3290 Object::CalculateForceAppliedBy(Living *)
    virtual float CalculateForceAppliedBy(Living* param_1);
    // win1.41 00402ae0 mac 102fd140 Object::IsPushable(void)
    virtual bool IsPushable();
    // win1.41 006397c0 mac 103d2f90 Object::PushObject(Living *, MapCoords &)
    virtual void PushObject(Living* param_1, MapCoords* param_2);
    // win1.41 00639640 mac 103d30f0 Object::PushObject(Living *)
    virtual void PushObject(Living* param_1);
    // win1.41 00402af0 mac 1016eb20 Object::GetCarriedTreeType(void)
    virtual uint32_t GetCarriedTreeType();
    // win1.41 00402b00 mac 105069f0 Object::GetFacingPitch(void)
    virtual float GetFacingPitch();
    // win1.41 00402b10 mac 1058c010 Object::SetHeadPos(MapCoords *)
    virtual void SetHeadPos(MapCoords* param_1);
    // win1.41 00402b30 mac 1016e7f0 Object::IsAPotFromABuildingSite(void)
    virtual bool IsAPotFromABuildingSite();
    // win1.41 00636cd0 mac 103d8340 Object::GetNearestEdgeOfObject(Object *)
    virtual void GetNearestEdgeOfObject(Object* param_1);
    // win1.41 00636d30 mac 103d8250 Object::GetNearestPosOfObject(Object *)
    virtual void GetNearestPosOfObject(Object* param_1);
    // win1.41 00636da0 mac 103d8190 Object::GetNearestEdgeToPos(MapCoords const &)
    virtual void GetNearestEdgeToPos(const MapCoords* param_1);
    // win1.41 00636df0 mac 103d80e0 Object::GetNearestEdge(float, float)
    virtual void GetNearestEdge(float param_1, float param_2);
    // win1.41 0063a220 mac 103d1140 Object::GetImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
    // win1.41 0063a7c0 mac 103d0770 Object::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
    // win1.41 00419a50 mac 100a5a00 Object::ShouldFootpathsGoRound(void)
    virtual bool ShouldFootpathsGoRound();
    // win1.41 0063a640 mac 103d0b20 Object::InitialiseIsFixedForMapList(void)
    virtual void InitialiseIsFixedForMapList();
    // win1.41 00402b50 mac 10335f20 Object::StandAnimation(void)
    virtual uint32_t StandAnimation();
    // win1.41 00419b30 mac 1009cd00 Object::GetCollideData(void)
    virtual NewCollide* GetCollideData();

    // Static methods

    // win1.41 006364c0 mac 103d93a0 Object::Get3DType(MESH_LIST)
    static LH3DObject__ObjectType Get3DType(MESH_LIST index);

    // Constructors

    // win1.41 00636450 mac 103d9480 Object::Object(void)
    Object();
    // win1.41 00636520 mac 103d90d0 Object::Object(MapCoords const &, GObjectInfo const *)
    Object(const MapCoords* coords, const GObjectInfo* info);

    // Non-virtual Destructors

    // win1.41 006364a0 mac 103d8f50 Object::_dt(void)
    ~Object();

    // Non-virtual methods

    // win1.41 00637e00 mac 103d5f70 Object::IsTouching(Object *, float)
    bool IsTouching(Object* param_1, float param_2);
    // win1.41 00638560 mac 1005ba80 Object::GetMapChild(MapCoords const &)
    Object* GetMapChild(const MapCoords* coord);
    // win1.41 0063a810 mac 103d04b0 Object::CreateSmokyStuff(long, float, LH3DColor)
    bool32_t CreateSmokyStuff(long param_1, float param_2, LH3DColor param_3);
};

#endif /* BW1_DECOMP_OBJECT_INCLUDED_H */
