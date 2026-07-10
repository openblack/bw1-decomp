#ifndef BW1_DECOMP_OBJECT_INCLUDED_H
#define BW1_DECOMP_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum EFFECT_TYPE, enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE, enum RESOURCE_TYPE, enum SOUND_COLLISION_TYPE, enum TRIBE_TYPE */
#include <chlasm/HelpTextEnums.h>                    /* For enum HELP_TEXT */
#include <Lionhead/LH3DLib/development/LH3DColor.h>  /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <re_common.h>                               /* For bool32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */
#include "MapCoords.h"        /* For struct MapCoords */

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
class NewCollide;
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

class Object : public GameThingWithPos
{
public:
	const GObjectInfo* info; /* 0x28 */
	MapCoords          coords;
	Object*            MapParent; /* 0x38 */
	uint32_t           field_0x3c;
	Game3DObject*      Game3dObject; /* 0x40 */
	FireEffect*        fire_effect;
	float              life;
	float              y_angle;
	float              scale; /* 0x50 */

	// Override methods

	// BW1W120 006366a0 BW1M100 103d8e50 Object::Delete(void)
	virtual void Delete();
	// BW1W120 00636670 BW1M100 103d8eb0 Object::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00639b70 BW1M100 103d2180 Object::GetDrawImportance(void)
	virtual float GetDrawImportance();
	// BW1W120 00419950 BW1M100 100a9ec0 Object::GetTown(void)
	virtual Town* GetTown();
	// BW1W120 00638110 BW1M100 103d55b0 Object::GetRadius(void)
	virtual float GetRadius();
	// BW1W120 00638180 BW1M100 10038d20 Object::Get2DRadius(void)
	virtual float Get2DRadius();
	// BW1W120 00639520 BW1M100 103d3550 Object::GetResource(RESOURCE_TYPE)
	virtual uint32_t GetResource(RESOURCE_TYPE type);
	// BW1W120 0063a7d0 BW1M100 103d06c0 Object::CanBecomeArtifact(void)
	virtual bool CanBecomeArtifact();
	// BW1W120 005190e0 BW1M100 1008d3a0 Object::DrawInHand(GInterfaceStatus *)
	virtual void DrawInHand(GInterfaceStatus* param_1);
	// BW1W120 00639eb0 BW1M100 103d1b20 Object::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00639b90 BW1M100 103d1d50 Object::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0063a020 BW1M100 103d1940 Object::ResolveLoad(void)
	virtual void ResolveLoad();
	// BW1W120 00402600 BW1M100 1004b110 Object::GetLife(void)
	virtual float GetLife();
	// BW1W120 00402520 BW1M100 10044cb0 Object::GetScale(void)
	virtual float GetScale();
	// BW1W120 00639200 BW1M100 103d3c80 Object::SetScale(float)
	virtual void SetScale(float scale);
	// BW1W120 004027c0 BW1M100 1016ea00 Object::GetDistanceFromObject(MapCoords &)
	virtual float GetDistanceFromObject(const MapCoords* target);
	// BW1W120 006394e0 BW1M100 103d35f0 Object::GetPhysicsMovementDirection(LHPoint *)
	virtual void GetPhysicsMovementDirection(LHPoint* pos);
	// BW1W120 00402710 BW1M100 10032610 Object::IsMoving( const(void))
	virtual bool IsMoving();
	// BW1W120 006392b0 BW1M100 10037930 Object::IsObjectInMap(void)
	virtual bool IsObjectInMap();
	// BW1W120 0063a780 BW1M100 103d07e0 Object::IsDrowning(void)
	virtual bool32_t IsDrowning();
	// BW1W120 006377f0 BW1M100 103d6d80 Object::CleanupWhenDeleted(int)
	virtual void CleanupWhenDeleted(int param_1);
	// BW1W120 00639860 BW1M100 103d2e30 Object::GetImpressiveValue(Living *, Reaction *)
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 00639940 BW1M100 103d2cf0 Object::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
	virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
	// BW1W120 00638550 BW1M100 103d5010 Object::IsBuildingMaterial(void)
	virtual bool32_t IsBuildingMaterial();
	// BW1W120 00402a20 BW1M100 103db180 Object::IsSuitableForCreatureAction(void)
	virtual bool32_t IsSuitableForCreatureAction();
	// BW1W120 004e48c0 BW1M100 105e4960 Object::CanBeEatenByCreature(Creature *)
	virtual bool32_t CanBeEatenByCreature(Creature* creature);
	// BW1W120 00402a40 BW1M100 100db5e0 Object::CanBeAttackedByCreature(Creature *)
	virtual bool32_t CanBeAttackedByCreature(Creature* creature);
	// BW1W120 00425c60 BW1M100 100ade90 Object::CanBeFrighteningToCreature(Creature *)
	virtual bool32_t CanBeFrighteningToCreature(Creature* creature);
	// BW1W120 00402a80 BW1M100 1056cf30 Object::CanBeHelpedByCreature(Creature *)
	virtual bool32_t CanBeHelpedByCreature(Creature* creature);
	// BW1W120 00402a60 BW1M100 100b95a0 Object::CanBePlayedWithByCreature(Creature *)
	virtual bool32_t CanBePlayedWithByCreature(Creature* creature);
	// BW1W120 00402a70 BW1M100 105a25d0 Object::CanBeImpressedByCreature(Creature *)
	virtual bool32_t CanBeImpressedByCreature(Creature* creature);
	// BW1W120 004e3b40 BW1M100 105e70f0 Object::CanBeInspectedByCreature(Creature *)
	virtual bool32_t CanBeInspectedByCreature(Creature* creature);
	// BW1W120 004e3eb0 BW1M100 105e66c0 Object::CanBePoodUponByCreature(Creature *)
	virtual bool32_t CanBePoodUponByCreature(Creature* creature);
	// BW1W120 004e3a20 BW1M100 105e7240 Object::CanBePickedUpByCreature(Creature *)
	virtual bool32_t CanBePickedUpByCreature(Creature* creature);
	// BW1W120 004e3b00 BW1M100 105e7170 Object::CanBeStrokedByCreature(Creature *)
	virtual bool32_t CanBeStrokedByCreature(Creature* creature);
	// BW1W120 004e3c10 BW1M100 105e6e70 Object::CanBeStompedOnByCreature(Creature *)
	virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
	// BW1W120 004e3cf0 BW1M100 105e6cb0 Object::CanBeThrownByCreature(Creature *)
	virtual bool32_t CanBeThrownByCreature(Creature* creature);
	// BW1W120 004e3d40 BW1M100 105e6b50 Object::CanBePutInAStoragePit(Creature *)
	virtual bool32_t CanBePutInAStoragePit(Creature* creature);
	// BW1W120 00402a90 BW1M100 103e4d10 Object::CanBeExaminedByCreature(Creature *)
	virtual bool32_t CanBeExaminedByCreature(Creature* creature);
	// BW1W120 00402aa0 BW1M100 1054f410 Object::IsOnFire(Creature *)
	virtual bool32_t IsOnFire(Creature* creature);
	// BW1W120 004e3d90 BW1M100 105e6a70 Object::CanBePutInFoodPile(Creature *)
	virtual bool32_t CanBePutInFoodPile(Creature* creature);
	// BW1W120 004e3dd0 BW1M100 105e69a0 Object::CanBePutInWoodPile(Creature *)
	virtual bool32_t CanBePutInWoodPile(Creature* creature);
	// BW1W120 004e3bb0 BW1M100 105e6f50 Object::CanBeBroughtBackToCitadel(Creature *)
	virtual bool32_t CanBeBroughtBackToCitadel(Creature* creature);
	// BW1W120 00402a30 BW1M100 100ba330 Object::CanBePoodOn(Creature *)
	virtual bool32_t CanBePoodOn(Creature* creature);
	// BW1W120 004e4320 BW1M100 105e56c0 Object::CanBeKickedByCreature(Creature *)
	virtual bool32_t CanBeKickedByCreature(Creature* creature);
	// BW1W120 0063b8d0 BW1M100 103da7f0 Object::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
	virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
	// BW1W120 00402b40 BW1M100 1016dc30 Object::GetText(void)
	virtual const char* GetText();
	// BW1W120 00638120 BW1M100 10030760 Object::GetHeight(void)
	virtual float GetHeight();
	// BW1W120 00639b20 BW1M100 103d2290 Object::SetInScript(int)
	virtual void SetInScript(int param_1);
	// BW1W120 004029f0 BW1M100 100219d0 Object::IsObject( const(void))
	virtual bool32_t IsObject();
	// BW1W120 00638580 BW1M100 103d4f70 Object::GetQueryFirstEnumText(void)
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00638590 BW1M100 103d4f10 Object::GetQueryLastEnumText(void)
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 006385a0 BW1M100 1004c960 Object::GetFOVHelpMessageSet(void)
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 006385b0 BW1M100 103d4d50 Object::GetFOVHelpCondition(void)
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 0063ab20 BW1M100 103cfe90 Object::DestroyedByBeam(void)
	virtual void DestroyedByBeam();
	// BW1W120 004024f0 BW1M100 10055b70 Object::GetXAngle(void)
	virtual float GetXAngle();
	// BW1W120 00402500 BW1M100 1004c930 Object::GetYAngle(void)
	virtual float GetYAngle();
	// BW1W120 00402510 BW1M100 10055b30 Object::GetZAngle(void)
	virtual float GetZAngle();
	// BW1W120 006393a0 BW1M100 100299c0 Object::SetFocus(LHPoint const &)
	virtual void SetFocus(const LHPoint* focus);
	// BW1W120 00638d00 BW1M100 10043070 Object::SetXYZAngles(float, float, float)
	virtual void SetXYZAngles(float x, float y, float z);
	// BW1W120 00638f80 BW1M100 103d3d70 Object::SetXYZAnglesAndScale(float, float, float, float)
	virtual void SetXYZAnglesAndScale(float x, float y, float z, float scale);
	// BW1W120 00402530 BW1M100 10577710 Object::SetJustScale(float)
	virtual void SetJustScale(float scale);
	// BW1W120 0063a800 BW1M100 10038850 Object::SetYJustAngle(float)
	virtual void SetYJustAngle(float angle);
	// BW1W120 00639260 BW1M100 1004cc10 Object::SetYAngle(float)
	virtual void SetYAngle(float angle);
	// BW1W120 00402540 BW1M100 100def80 Object::UpdateFrom3DPosition(void)
	virtual void UpdateFrom3DPosition();
	// BW1W120 00402550 BW1M100 105890b0 Object::MoveAlongPath(void)
	virtual uint32_t MoveAlongPath();
	// BW1W120 00402560 BW1M100 1030b0c0 Object::IsReachable(void)
	virtual bool32_t IsReachable();
	// BW1W120 0063a920 BW1M100 103d03c0 Object::BlocksTownClearArea( const(void))
	virtual bool BlocksTownClearArea();
	// BW1W120 006365f0 BW1M100 103d9010 Object::Create3DObject(void)
	virtual void Create3DObject();
	// BW1W120 00418c90 BW1M100 100540e0 Object::GetMapChild(MapCell const &)
	virtual Object* GetMapChild(const MapCell* param_1);
	// BW1W120 00418cc0 BW1M100 10053b70 Object::SetMapChild(Object *, MapCell *)
	virtual void SetMapChild(Object* child, MapCell* cell);
	// BW1W120 00636740 BW1M100 1004ad80 Object::InsertMapObject(void)
	virtual void InsertMapObject();
	// BW1W120 006367a0 BW1M100 1004ace0 Object::RemoveMapObject(void)
	virtual void RemoveMapObject();
	// BW1W120 00636830 BW1M100 10053ed0 Object::InsertMapObjectToCell(MapCell *)
	virtual void InsertMapObjectToCell(MapCell* cell);
	// BW1W120 006368d0 BW1M100 10053bc0 Object::RemoveMapObjectFromCell(MapCell *)
	virtual void RemoveMapObjectFromCell(MapCell* cell);
	// BW1W120 006367d0 BW1M100 10054140 Object::IsObjectInMap(MapCell *)
	virtual bool IsObjectInMap(MapCell* cell);
	// BW1W120 006366b0 BW1M100 103d8d10 Object::IsObjectInMapCheck(void)
	virtual bool IsObjectInMapCheck();
	// BW1W120 00636a40 BW1M100 1004d070 Object::MoveMapObject(MapCoords const &)
	virtual int MoveMapObject(const MapCoords* param_2);
	// BW1W120 00638040 BW1M100 10055200 Object::ActualMoveMapObject(MapCoords const &)
	virtual void ActualMoveMapObject(const MapCoords* param_2);
	// BW1W120 00402570 BW1M100 103dca60 Object::GetPtr(void)
	virtual Object* GetPtr();
	// BW1W120 00636bd0 BW1M100 103d8710 Object::GetMeshRadius( const(void))
	virtual float GetMeshRadius();
	// BW1W120 00402580 BW1M100 103dc890 Object::Get3DObjectForPSys(void)
	virtual Game3DObject* Get3DObjectForPSys();
	// BW1W120 00732630 BW1M100 101499d0 Object::GetPSysFireFlameMatrix(LHMatrix *)
	virtual bool GetPSysFireFlameMatrix(LHMatrix* matrix);
	// BW1W120 00732770 BW1M100 10149520 Object::GetPSysFireLocalRndFlamePos(LHPoint *, long *)
	virtual bool GetPSysFireLocalRndFlamePos(LHPoint* point, int* param_2);
	// BW1W120 00732660 BW1M100 10149810 Object::GetPSysFireWorldFlamePos(LHPoint const &, long, LHPoint *)
	virtual bool GetPSysFireWorldFlamePos(const LHPoint* param_1, int param_2, LHPoint* param_3);
	// BW1W120 00732950 BW1M100 101493c0 Object::GetPSysFireLocalFlameScale(void)
	virtual float GetPSysFireLocalFlameScale();
	// BW1W120 00732a30 BW1M100 101492c0 Object::GetPSysFireMaxFlames(void)
	virtual uint32_t GetPSysFireMaxFlames();
	// BW1W120 00402590 BW1M100 1011c800 Object::GetSpotEffectPower(void)
	virtual float GetSpotEffectPower();
	// BW1W120 00639610 BW1M100 103d3310 Object::GetAggressorValueFromDamage(float)
	virtual float GetAggressorValueFromDamage(float param_1);
	// BW1W120 00638bf0 BW1M100 103d41a0 Object::GetHoldType(void)
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00638c00 BW1M100 100953b0 Object::GetHoldRadius(void)
	virtual float GetHoldRadius();
	// BW1W120 00638c30 BW1M100 103d4110 Object::GetHoldLoweringMultiplier(void)
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 004025a0 BW1M100 10097700 Object::GetHoldYRotate(void)
	virtual float GetHoldYRotate();
	// BW1W120 004025b0 BW1M100 100a0df0 Object::HandShouldFeelWithMeshIntersect(void)
	virtual bool32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 004025c0 BW1M100 10513b50 Object::SetSpecularColor(unsigned long)
	virtual void SetSpecularColor(LH3DColor color);
	// BW1W120 004025d0 BW1M100 10110ae0 Object::GetSpecularColor(void)
	virtual LH3DColor GetSpecularColor();
	// BW1W120 004025e0 BW1M100 10110490 Object::SetBeliefSprite(BeliefSprite *)
	virtual void SetBeliefSprite(LH3DSprite* sprite);
	// BW1W120 004025f0 BW1M100 1016bab0 Object::GetBeliefSprite(void)
	virtual LH3DSprite* GetBeliefSprite();
	// BW1W120 0063a140 BW1M100 100515d0 Object::SetLife(float)
	virtual void SetLife(float life);
	// BW1W120 00402610 BW1M100 1005f530 Object::IsAlive(void)
	virtual bool IsAlive();
	// BW1W120 00637810 BW1M100 1004b140 Object::ReduceLife(float, GPlayer *)
	virtual void ReduceLife(float value, GPlayer* player);
	// BW1W120 00637870 BW1M100 103d6b50 Object::IncreaseLife(float)
	virtual void IncreaseLife(float value);
	// BW1W120 0063aaf0 BW1M100 103cff40 Object::GetSacrificeValue(void)
	virtual float GetSacrificeValue();
	// BW1W120 00637c20 BW1M100 103d63c0 Object::ReduceLifeDueToBurning(float, GPlayer *)
	virtual void ReduceLifeDueToBurning(float param_1, GPlayer* param_2);
	// BW1W120 00637900 BW1M100 103d6a00 Object::FillInEffectDefenceMultiplier(EffectNumbers &)
	virtual void FillInEffectDefenceMultiplier(EffectNumbers* param_1);
	// BW1W120 00637980 BW1M100 103d6510 Object::ApplyEffect(EffectValues &, int)
	virtual void ApplyEffect(EffectValues* param_1, int param_2);
	// BW1W120 00637d00 BW1M100 103d6120 Object::GetDamageEffect(EffectValues &)
	virtual float GetDamageEffect(EffectValues* values);
	// BW1W120 00637d80 BW1M100 103d6050 Object::GetHealEffect(EffectValues &)
	virtual float GetHealEffect(EffectValues* values);
	// BW1W120 00637cf0 BW1M100 103d6220 Object::GetActualObjectToEffect(GPlayer *, bool)
	virtual void* GetActualObjectToEffect(GPlayer* player, bool param_2);
	// BW1W120 006392c0 BW1M100 103d38b0 Object::DrawValue(long, float)
	virtual void DrawValue(int param_1, float param_2);
	// BW1W120 00402640 BW1M100 10368980 Object::ScaffoldMoved(Scaffold *)
	virtual void ScaffoldMoved(Scaffold* scaffold);
	// BW1W120 00637ce0 BW1M100 103d6270 Object::GetHeatCapacity(void)
	virtual float GetHeatCapacity();
	// BW1W120 00639a80 BW1M100 103d2950 Object::GetFireGPHXDrawn(bool *, bool *, bool *, bool *)
	virtual void GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4);
	// BW1W120 00639a90 BW1M100 103d2900 Object::GetRainCoolingMultiplier(void)
	virtual float GetRainCoolingMultiplier();
	// BW1W120 00639aa0 BW1M100 1001a370 Object::GetDefaultFireCentrePos(MapCoords *)
	virtual LHPoint* GetDefaultFireCentrePos(LHPoint* pos);
	// BW1W120 00639ac0 BW1M100 103d2490 Object::GetDefaultFireRadius(void)
	virtual float GetDefaultFireRadius();
	// BW1W120 006378e0 BW1M100 103d6ad0 Object::DestroyedByEffect(GPlayer *, float)
	virtual uint32_t DestroyedByEffect(GPlayer* player, float param_2);
	// BW1W120 00418fc0 BW1M100 100a9d90 Object::Process(void)
	virtual uint32_t Process();
	// BW1W120 00402650 BW1M100 10368aa0 Object::ProcessBySpell(Spell *)
	virtual uint32_t ProcessBySpell(Spell* spell);
	// BW1W120 00637ff0 BW1M100 103d57e0 Object::ApplySingleEffect(EFFECT_TYPE, float, GameThing *, MapCoords const &)
	virtual void ApplySingleEffect(EFFECT_TYPE param_1, float param_2, GameThing* param_3, const MapCoords* param_4);
	// BW1W120 00425340 BW1M100 10368d70 Object::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 00402660 BW1M100 10368ae0 Object::GetDetailMesh( const(DETAIL_LEVEL))
	virtual int GetDetailMesh(int detail);
	// BW1W120 004648b0 BW1M100 100e33f0 Object::Draw(void)
	virtual void Draw();
	// BW1W120 0051c820 BW1M100 1001aa40 Object::DrawOutOfMap(bool)
	virtual void DrawOutOfMap(bool param_1);
	// BW1W120 00402670 BW1M100 10109540 Object::IsG3DObjectDrawnInHand(void)
	virtual bool IsG3DObjectDrawnInHand();
	// BW1W120 00402680 BW1M100 100a83e0 Object::GetDrawRegion(LHRegion *)
	virtual void GetDrawRegion(LHRegion* param_1);
	// BW1W120 00402690 BW1M100 103e4e10 Object::ProcessState(void)
	virtual uint32_t ProcessState();
	// BW1W120 006380b0 BW1M100 103d5740 Object::GetProjectileSpeed(void)
	virtual float GetProjectileSpeed();
	// BW1W120 004026a0 BW1M100 103e4940 Object::CanBePickedUp(void)
	virtual bool CanBePickedUp();
	// BW1W120 00425c50 BW1M100 100add90 Object::CanBeCrushed(void)
	virtual bool32_t CanBeCrushed();
	// BW1W120 00638160 BW1M100 103d5490 Object::GetTopPos(void)
	virtual float GetTopPos();
	// BW1W120 004026b0 BW1M100 100a7df0 Object::GetVillagerHugRadius(void)
	virtual float GetVillagerHugRadius();
	// BW1W120 00638480 BW1M100 103d51a0 Object::GetWeight(void)
	virtual float GetWeight();
	// BW1W120 00638200 BW1M100 1007e8a0 Object::GetWorldMatrix(LHMatrix *)
	virtual void GetWorldMatrix(LHMatrix* out);
	// BW1W120 00639b60 BW1M100 103d21e0 Object::CanBeSuckedIntoVortex(LandscapeVortex *)
	virtual bool CanBeSuckedIntoVortex(LandscapeVortex* param_1);
	// BW1W120 00639b80 BW1M100 103d2110 Object::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
	// BW1W120 00639550 BW1M100 103d3460 Object::GetWorkingPos(Object *)
	virtual MapCoords* GetWorkingPos(MapCoords* param_1, Object* param_2);
	// BW1W120 00638150 BW1M100 103d5500 Object::GetHeightForHandAboveInteractObject(void)
	virtual float GetHeightForHandAboveInteractObject();
	// BW1W120 006385c0 BW1M100 103d4cf0 Object::GetHandHelpMessageSet(void)
	virtual uint32_t GetHandHelpMessageSet();
	// BW1W120 006385d0 BW1M100 103d4c90 Object::GetHandHelpCondition(void)
	virtual uint32_t GetHandHelpCondition();
	// BW1W120 00636be0 BW1M100 103d84b0 Object::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
	// BW1W120 006364f0 BW1M100 103d92f0 Object::Get3DType(void)
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 004026d0 BW1M100 10586d80 Object::GetFoodValue(FOOD_TYPE)
	virtual float GetFoodValue(FOOD_TYPE type);
	// BW1W120 006395c0 BW1M100 103d3390 Object::GetWoodValue(void)
	virtual float GetWoodValue();
	// BW1W120 00402700 BW1M100 10062630 Object::GetFoodType(void)
	virtual FOOD_TYPE GetFoodType();
	// BW1W120 00639390 BW1M100 103d3840 Object::GetImpressiveValue(void)
	virtual float GetImpressiveValue();
	// BW1W120 00402730 BW1M100 1056f400 Object::IsSpellSeedReturnPoint( const(void))
	virtual bool IsSpellSeedReturnPoint();
	// BW1W120 00402740 BW1M100 104d62b0 Object::IsABeliever(void)
	virtual bool32_t IsABeliever();
	// BW1W120 004192c0 BW1M100 100a9dc0 Object::AsMultiMapFixed(void)
	virtual MultiMapFixed* AsMultiMapFixed();
	// BW1W120 0063a8e0 BW1M100 103d0400 Object::ApplyWaterSpell(SpellWater *)
	virtual float ApplyWaterSpell(SpellWater* spell);
	// BW1W120 004192d0 BW1M100 100a9e00 Object::IsResourceStore(RESOURCE_TYPE)
	virtual bool IsResourceStore(RESOURCE_TYPE type);
	// BW1W120 0063a930 BW1M100 103d0360 Object::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
	virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 0063aad0 BW1M100 103d0050 Object::GetRadiusMultiplierForApplyingPotToPos(void)
	virtual float GetRadiusMultiplierForApplyingPotToPos();
	// BW1W120 0063aae0 BW1M100 103cffe0 Object::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
	virtual bool DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus* status);
	// BW1W120 00402750 BW1M100 1056ee10 Object::GetResourceType(void)
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 00402760 BW1M100 1035b020 Object::GetDefaultResource(void)
	virtual int GetDefaultResource();
	// BW1W120 00402770 BW1M100 105a4d20 Object::SetPoisonedResource(RESOURCE_TYPE, int)
	virtual void SetPoisonedResource(RESOURCE_TYPE type, int param_2);
	// BW1W120 00402780 BW1M100 10552240 Object::SetPoisoned(int)
	virtual void SetPoisoned(int param_1);
	// BW1W120 00402790 BW1M100 10109690 Object::IsLockedInInteract(void)
	virtual bool IsLockedInInteract();
	// BW1W120 004027a0 BW1M100 10109580 Object::SetDying(void)
	virtual bool32_t SetDying();
	// BW1W120 00636ab0 BW1M100 103d8820 Object::IsAttackable(Object *)
	virtual bool IsAttackable(Object* param_1);
	// BW1W120 00636af0 BW1M100 103d8770 Object::IsAllied(Object *)
	virtual bool IsAllied(Object* param_1);
	// BW1W120 00637e60 BW1M100 103d5970 Object::IsTouching(MapCoords const &, MapCoords const &)
	virtual bool IsTouching(MapCoords* param_1, MapCoords* param_2);
	// BW1W120 00637e30 BW1M100 103d5ef0 Object::IsTouching(MapCoords const &)
	virtual bool IsTouching(MapCoords* param_1);
	// BW1W120 00419300 BW1M100 100a9e50 Object::StartOnFire(void)
	virtual void StartOnFire();
	// BW1W120 004027b0 BW1M100 100a8170 Object::EndOnFire(void)
	virtual void EndOnFire();
	// BW1W120 00637fb0 BW1M100 103d58a0 Object::GetDistanceFromObject(Object *)
	virtual float GetDistanceFromObject(Object* param_1);
	// BW1W120 006399d0 BW1M100 10003b20 Object::GetTribalPower(TRIBE_TYPE)
	virtual float GetTribalPower(TRIBE_TYPE param_1);
	// BW1W120 00419330 BW1M100 100addd0 Object::ValidForLockedSelectProcess(GInterfaceStatus *)
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* status);
	// BW1W120 004193d0 BW1M100 100ade30 Object::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* status);
	// BW1W120 004027d0 BW1M100 1016eda0 Object::NetworkUnfriendlyStartLockedSelect(void)
	virtual bool32_t NetworkUnfriendlyStartLockedSelect();
	// BW1W120 004027e0 BW1M100 1056c2f0 Object::IsReadyForNetworkUnfriendlyLockedSelect(void)
	virtual bool32_t IsReadyForNetworkUnfriendlyLockedSelect();
	// BW1W120 004027f0 BW1M100 10577790 Object::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 00402800 BW1M100 1037fcb0 Object::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
	virtual bool32_t GetReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 00402810 BW1M100 102fd0c0 Object::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
	virtual bool32_t IsReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 00402820 BW1M100 103e2470 Object::NetworkUnfriendlyEndLockedSelect(void)
	virtual bool32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 00402830 BW1M100 1041d9a0 Object::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* status);
	// BW1W120 00402840 BW1M100 1017df80 Object::ValidAsInterfaceTarget(void)
	virtual bool32_t ValidAsInterfaceTarget();
	// BW1W120 00402850 BW1M100 1016daa0 Object::ValidAsInterfaceLeashTarget(void)
	virtual bool32_t ValidAsInterfaceLeashTarget();
	// BW1W120 00402860 BW1M100 103e0d10 Object::SelectOnlyAfterRecSystem(void)
	virtual bool32_t SelectOnlyAfterRecSystem();
	// BW1W120 00402870 BW1M100 105995f0 Object::ValidForPlaceInHand(GInterfaceStatus *)
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* status);
	// BW1W120 00637660 BW1M100 103d7300 Object::InterfaceSetInMagicHand(GInterfaceStatus *)
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status);
	// BW1W120 00637670 BW1M100 103d7280 Object::InterfaceSetOutMagicHand(GInterfaceStatus *)
	virtual bool32_t InterfaceSetOutMagicHand(GInterfaceStatus* status);
	// BW1W120 00402880 BW1M100 1040fc60 Object::ValidToRemoveFromHand(GInterfaceStatus *, MapCoords const &)
	virtual bool32_t ValidToRemoveFromHand(GInterfaceStatus* status, const MapCoords* param_2);
	// BW1W120 00402890 BW1M100 100b16a0 Object::RemoveFromHand(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t RemoveFromHand(GInterfaceStatus* status, const MapCoords* param_2);
	// BW1W120 00636aa0 BW1M100 100933f0 Object::ValidToShakeFromHand(void)
	virtual bool32_t ValidToShakeFromHand();
	// BW1W120 004028a0 BW1M100 101ca2e0 Object::InterfaceMustBeInInfluenceForInteraction(void)
	virtual bool32_t InterfaceMustBeInInfluenceForInteraction();
	// BW1W120 00636a90 BW1M100 103d8920 Object::IsTuggable(void)
	virtual bool32_t IsTuggable();
	// BW1W120 004028b0 BW1M100 101652d0 Object::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* status, Object* param_2);
	// BW1W120 004028c0 BW1M100 10513670 Object::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* status, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 004028d0 BW1M100 10110bf0 Object::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
	// BW1W120 004028e0 BW1M100 10110b70 Object::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 004028f0 BW1M100 1055f210 Object::ValidForLockedApplyProcess(GInterfaceStatus *)
	virtual uint32_t ValidForLockedApplyProcess(GInterfaceStatus* status);
	// BW1W120 00402900 BW1M100 1016baf0 Object::ApplyUnlockProcess(GInterfaceStatus *)
	virtual uint32_t ApplyUnlockProcess(GInterfaceStatus* status);
	// BW1W120 00402910 BW1M100 10364e10 Object::IsInterfacePowerUpWhenInHand( const(void))
	virtual uint32_t IsInterfacePowerUpWhenInHand();
	// BW1W120 00402920 BW1M100 103ad050 Object::ApplyOnlyAfterRecSystem(void)
	virtual uint32_t ApplyOnlyAfterRecSystem();
	// BW1W120 00402930 BW1M100 10101e60 Object::ApplyOnlyAfterReleased(void)
	virtual uint32_t ApplyOnlyAfterReleased();
	// BW1W120 004196b0 BW1M100 100a5960 Object::InterfaceValidToTap(GInterfaceStatus *)
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* status);
	// BW1W120 004196c0 BW1M100 100a59b0 Object::InterfaceTap(GInterfaceStatus *)
	virtual uint32_t InterfaceTap(GInterfaceStatus* status);
	// BW1W120 00402940 BW1M100 100a0900 Object::InterfaceValidToGiveObject(GInterfaceStatus *, Object *)
	virtual uint32_t InterfaceValidToGiveObject(GInterfaceStatus* status, Object* param_2);
	// BW1W120 00402950 BW1M100 101c8d40 Object::InterfaceGiveObject(GInterfaceStatus *, Object *)
	virtual uint32_t InterfaceGiveObject(GInterfaceStatus* status, Object* param_2);
	// BW1W120 00402960 BW1M100 105890f0 Object::InterfaceValidToInteractAsMapCoordsObject(GInterfaceStatus *)
	virtual uint32_t InterfaceValidToInteractAsMapCoordsObject(GInterfaceStatus* status);
	// BW1W120 00402970 BW1M100 1016bbe0 Object::InterfaceInteractAsMapCoordsObject(GInterfaceStatus *)
	virtual uint32_t InterfaceInteractAsMapCoordsObject(GInterfaceStatus* status);
	// BW1W120 006385e0 BW1M100 103d4a70 Object::ThrowObjectFromHand(GInterfaceStatus *, int)
	virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* status, int param_2);
	// BW1W120 00402980 BW1M100 1016aaf0 Object::ValidToSelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t ValidToSelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
	// BW1W120 00402990 BW1M100 1056d5f0 Object::ValidToApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t ValidToApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
	// BW1W120 004029a0 BW1M100 103692a0 Object::SelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t SelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
	// BW1W120 004029b0 BW1M100 103690d0 Object::ApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t ApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords* param_2);
	// BW1W120 004029c0 BW1M100 10369240 Object::ValidToFightThisToObject(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t ValidToFightThisToObject(GInterfaceStatus* status, const MapCoords* param_2);
	// BW1W120 004029d0 BW1M100 101cbb80 Object::FightThisToObject(GInterfaceStatus *, Object *)
	virtual uint32_t FightThisToObject(GInterfaceStatus* status, Object* param_2);
	// BW1W120 004029e0 BW1M100 100068d0 Object::IsEffectReceiver(EffectValues *)
	virtual bool32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 00639960 BW1M100 103d2ba0 Object::CanBeDestroyedBySpell(Spell *)
	virtual bool32_t CanBeDestroyedBySpell(Spell* param_1);
	// BW1W120 00638cf0 BW1M100 103d3f30 Object::GetImportance(void)
	virtual float GetImportance();
	// BW1W120 00636f00 BW1M100 103d7760 Object::CanBeDestroyedBySpell_2(void)
	virtual uint32_t InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3,
	                                           Object* param_4, int param_5);
	// BW1W120 00637480 BW1M100 103d74c0 Object::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
	virtual uint32_t InitialisePhysics(const LHPoint* param_1, const LHPoint* param_2, Object* param_3, bool param_4,
	                                   GInterfaceStatus* param_5);
	// BW1W120 006376a0 BW1M100 103d71b0 Object::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 006376b0 BW1M100 103d70b0 Object::SetUpPhysOb(PhysOb *)
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 006375a0 BW1M100 103d7350 Object::EndPhysics(PhysicsObject *, bool)
	virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0063a7b0 BW1M100 103d07b0 Object::DropSfx(void)
	virtual uint32_t DropSfx();
	// BW1W120 00637730 BW1M100 103d6f80 Object::GetBoundingSphere(LHPoint &, float &)
	virtual void GetBoundingSphere(LHPoint* center, float* radius);
	// BW1W120 006377b0 BW1M100 103d6f30 Object::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00419890 BW1M100 100a9e80 Object::ChecksVerticesVObjects(void)
	virtual uint32_t ChecksVerticesVObjects();
	// BW1W120 006377d0 BW1M100 103d6e50 Object::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object *)
	virtual void ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1);
	// BW1W120 00402a00 BW1M100 100b06b0 Object::PhysicallyDestroysAbodes(void)
	virtual uint32_t PhysicallyDestroysAbodes();
	// BW1W120 006377c0 BW1M100 103d6ee0 Object::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 006377e0 BW1M100 103d6e10 Object::CanBecomeAPhysicsObject(void)
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00402a10 BW1M100 103db1f0 Object::GetAlwaysRemainsInPhysicsInternalSystem(void)
	virtual bool GetAlwaysRemainsInPhysicsInternalSystem();
	// BW1W120 00637470 BW1M100 103d7730 Object::HasSunk(void)
	virtual bool32_t HasSunk();
	// BW1W120 00638740 BW1M100 103d48a0 Object::CreatureMustAvoid(Creature *)
	virtual bool CreatureMustAvoid(Creature* param_1);
	// BW1W120 00638790 BW1M100 103d43b0 Object::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 006384c0 BW1M100 103d5070 Object::GetRoutePlanRadius(Creature *)
	virtual float GetRoutePlanRadius(Creature* param_1);
	// BW1W120 00638be0 BW1M100 103d41e0 Object::VillagerMustAvoid(Villager *)
	virtual bool32_t VillagerMustAvoid(Villager* param_1);
	// BW1W120 00639a00 BW1M100 103d2b20 Object::IsFireMan(void)
	virtual bool IsFireMan();
	// BW1W120 00638730 BW1M100 10097740 Object::IsARootedObject(void)
	virtual bool IsARootedObject();
	// BW1W120 00637690 BW1M100 103d7220 Object::GetCollideSoundType(void)
	virtual SOUND_COLLISION_TYPE GetCollideSoundType();
	// BW1W120 004198a0 BW1M100 101bd530 Object::IsSolidToNewAbode(void)
	virtual bool32_t IsSolidToNewAbode();
	// BW1W120 00639b50 BW1M100 103d2250 Object::RemoveFromGame(void)
	virtual uint32_t RemoveFromGame();
	// BW1W120 00638430 BW1M100 103d52a0 Object::GetLandingPointCount(void)
	virtual int GetLandingPointCount();
	// BW1W120 00638450 BW1M100 103d5230 Object::GetLandingPoint(unsigned char, LHPoint *)
	virtual bool GetLandingPoint(uint8_t param_1, LHPoint* param_2);
	// BW1W120 00402ab0 BW1M100 103e2750 Object::GetTastiness(void)
	virtual uint32_t GetTastiness();
	// BW1W120 00402ac0 BW1M100 102fd110 Object::IsScary(void)
	virtual bool IsScary();
	// BW1W120 00638cb0 BW1M100 103d3fe0 Object::GetInspectObjectPos(Villager *, MapCoords *)
	virtual bool GetInspectObjectPos(Villager* param_1, MapCoords* pos);
	// BW1W120 0063ab10 BW1M100 103cfef0 Object::DiscipleInHandNear(Villager &, GInterfaceStatus &)
	virtual void DiscipleInHandNear(Villager* param_1, GInterfaceStatus* status);
	// BW1W120 00638cd0 BW1M100 103d3f70 Object::GetSpecialPos(unsigned long, MapCoords *)
	virtual bool32_t GetSpecialPos(uint32_t index, MapCoords* pos);
	// BW1W120 00419960 BW1M100 100adee0 Object::GetTownArtifact(void)
	virtual GameThing* GetTownArtifact();
	// BW1W120 00419970 BW1M100 100adf20 Object::IsTownArtifact(void)
	virtual bool32_t IsTownArtifact();
	// BW1W120 00639ad0 BW1M100 1008a4c0 Object::ProcessInHand(void)
	virtual bool ProcessInHand();
	// BW1W120 00639b10 BW1M100 103d22d0 Object::ProcessInInteract(GInterfaceStatus *)
	virtual uint32_t ProcessInInteract(GInterfaceStatus* status);
	// BW1W120 00402ad0 BW1M100 102fd170 Object::GetObjectCollide(void)
	virtual uint32_t GetObjectCollide();
	// BW1W120 00639620 BW1M100 103d3290 Object::CalculateForceAppliedBy(Living *)
	virtual float CalculateForceAppliedBy(Living* param_1);
	// BW1W120 00402ae0 BW1M100 102fd140 Object::IsPushable(void)
	virtual bool IsPushable();
	// BW1W120 006397c0 BW1M100 103d2f90 Object::PushObject(Living *, MapCoords &)
	virtual void PushObject(Living* param_1, MapCoords* param_2);
	// BW1W120 00639640 BW1M100 103d30f0 Object::PushObject(Living *)
	virtual void PushObject(Living* param_1);
	// BW1W120 00402af0 BW1M100 1016eb20 Object::GetCarriedTreeType(void)
	virtual uint32_t GetCarriedTreeType();
	// BW1W120 00402b00 BW1M100 105069f0 Object::GetFacingPitch(void)
	virtual float GetFacingPitch();
	// BW1W120 00402b10 BW1M100 1058c010 Object::SetHeadPos(MapCoords *)
	virtual void SetHeadPos(MapCoords* param_1);
	// BW1W120 __purecall BW1M100 null Object::SaveObject(const MapCoords& )
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords& coords) = 0;
	// BW1W120 00402b30 BW1M100 1016e7f0 Object::IsAPotFromABuildingSite(void)
	virtual bool IsAPotFromABuildingSite();
	// BW1W120 00636cd0 BW1M100 103d8340 Object::GetNearestEdgeOfObject(Object *)
	virtual void GetNearestEdgeOfObject(Object* param_1);
	// BW1W120 00636d30 BW1M100 103d8250 Object::GetNearestPosOfObject(Object *)
	virtual void GetNearestPosOfObject(Object* param_1);
	// BW1W120 00636da0 BW1M100 103d8190 Object::GetNearestEdgeToPos(MapCoords const &)
	virtual void GetNearestEdgeToPos(const MapCoords* param_1);
	// BW1W120 00636df0 BW1M100 103d80e0 Object::GetNearestEdge(float, float)
	virtual void GetNearestEdge(float param_1, float param_2);
	// BW1W120 0063a220 BW1M100 103d1140 Object::GetImmersionTexture(void)
	virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
	// BW1W120 0063a7c0 BW1M100 103d0770 Object::GetInHandImmersionTexture(void)
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
	// BW1W120 00419a50 BW1M100 100a5a00 Object::ShouldFootpathsGoRound(void)
	virtual bool ShouldFootpathsGoRound();
	// BW1W120 0063a640 BW1M100 103d0b20 Object::InitialiseIsFixedForMapList(void)
	virtual void InitialiseIsFixedForMapList();
	// BW1W120 00402b50 BW1M100 10335f20 Object::StandAnimation(void)
	virtual uint32_t StandAnimation();
	// BW1W120 00419b30 BW1M100 1009cd00 Object::GetCollideData(void)
	virtual NewCollide* GetCollideData();

	// Static methods

	// BW1W120 006364c0 BW1M100 103d93a0 Object::Get3DType(MESH_LIST)
	static LH3DObject::ObjectType Get3DType(MESH_LIST index);

	// Constructors

	// BW1W120 00636450 BW1M100 103d9480 Object::Object(void)
	Object();
	// BW1W120 00636520 BW1M100 103d90d0 Object::Object(MapCoords const &, GObjectInfo const *)
	Object(const MapCoords* coords, const GObjectInfo* info);

	// Non-virtual Destructors

	// BW1W120 006364a0 BW1M100 103d8f50 Object::_dt(void)
	~Object();

	// Non-virtual methods

	// BW1W120 00637e00 BW1M100 103d5f70 Object::IsTouching(Object *, float)
	bool IsTouching(Object* param_1, float param_2);
	// BW1W120 00638560 BW1M100 1005ba80 Object::GetMapChild(MapCoords const &)
	Object* GetMapChild(const MapCoords* coord);
	// BW1W120 0063a810 BW1M100 103d04b0 Object::CreateSmokyStuff(long, float, LH3DColor)
	bool32_t CreateSmokyStuff(long param_1, float param_2, LH3DColor param_3);
};

#endif /* BW1_DECOMP_OBJECT_INCLUDED_H */
