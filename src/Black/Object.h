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
#include "ObjectInfo.h"       /* For class GObjectInfo, needed by the inline getters below */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
struct EffectNumbers;
class EffectValues;
class FireEffect;
class GInterfaceStatus;
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
struct SmokyStuff;
class Spell;
class SpellWater;
class Town;
class Villager;

struct PhysicsInitialisation
{
	PhysicsObject* Physics; /* 0x0 */
	bool32_t       Started; /* 0x4 */
};

class Object : public GameThingWithPos
{
public:
	const GObjectInfo*    info; /* 0x28 */
	MapCoords             coords;
	LHFastPointer<Object> MapParent;           /* 0x38 */
	uint32_t              ObjectCreationIndex; /* 0x3c */
	Game3DObject*         Game3dObject;        /* 0x40 */
	FireEffect*           fire_effect;
	float                 life;
	float                 y_angle;
	float                 scale; /* 0x50 */

	// Virtual methods

	// BW1W120 006366a0 BW1M119 013e0d20
	virtual void Delete();
	// BW1W120 00636670 BW1M119 013e0d80
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00639b70 BW1M119 013d9d30
	virtual float GetDrawImportance();
	// BW1W120 00419950 BW1M119 010ad7a0
	virtual Town* GetTown();
	// BW1W120 00638110 BW1M119 013dd4d0
	virtual float GetRadius();
	// BW1W120 00638180 BW1M119 0103b680
	virtual float Get2DRadius();
	// BW1W120 00639520 BW1M119 013db4f0
	virtual uint32_t GetResource(RESOURCE_TYPE type);
	// BW1W120 0063a7d0 BW1M119 013d8960
	virtual bool32_t CanBecomeArtifact();
	// BW1W120 005190e0 BW1M119 0108f6b0
	virtual void DrawInHand(GInterfaceStatus* param_1);
	// BW1W120 00639eb0 BW1M119 013d96d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00639b90 BW1M119 013d9900
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0063a020 BW1M119 013d94f0
	virtual void ResolveLoad();
	// BW1W120 00402600 BW1M119 0104dac0
	virtual float GetLife() { return life; }
	// BW1W120 00402520 BW1M119 01047700
	virtual float GetScale() { return scale; }
	// BW1W120 00639200 BW1M119 013dbbd0
	virtual void SetScale(float scale);
	// BW1W120 006394e0 BW1M119 013db590
	virtual void GetPhysicsMovementDirection(LHPoint* pos);
	// BW1W120 00402710 BW1M119 01034f80
	virtual bool32_t IsMoving() const { return Pos.x != coords.x || Pos.z != coords.z; }
	// BW1W120 0063a780 BW1M119 013d8a80
	virtual bool32_t IsDrowning();
	// BW1W120 006377f0 BW1M119 013dec60
	virtual void CleanupWhenDeleted(int param_1);
	// BW1W120 00639940 BW1M119 013dac90
	virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
	// BW1W120 00638550 BW1M119 013dced0
	virtual bool32_t IsBuildingMaterial();
	// BW1W120 00402a20 BW1M119 010a3100
	virtual bool32_t IsSuitableForCreatureAction() { return info->CanCreatureInteractWithMe; }
	// BW1W120 004e48c0 BW1M119 015ec660
	virtual bool32_t CanBeEatenByCreature(Creature* creature);
	// BW1W120 00402a40 BW1M119 010a31b0
	virtual bool32_t CanBeAttackedByCreature(Creature* creature)
	{
		// Creature is only forward declared in this header, so the upcast has to be spelled out.
		return info->CanCreatureAttackMe && reinterpret_cast<Object*>(creature) != this;
	}
	// BW1W120 00425c60 BW1M119 010b0a10
	virtual bool32_t CanBeFrighteningToCreature(Creature* creature);
	// BW1W120 00402a80 BW1M119 010a3320
	virtual bool32_t CanBeHelpedByCreature(Creature* creature) { return true; }
	// BW1W120 00402a60 BW1M119 010a3260
	virtual bool32_t CanBePlayedWithByCreature(Creature* creature) { return info->CanCreaturePlayWithMe; }
	// BW1W120 00402a70 BW1M119 010a32d0
	virtual bool32_t CanBeImpressedByCreature(Creature* creature) { return false; }
	// BW1W120 004e3b40 BW1M119 015eedf0
	virtual bool32_t CanBeInspectedByCreature(Creature* creature);
	// BW1W120 004e3eb0 BW1M119 015ee3c0
	virtual bool32_t CanBePoodUponByCreature(Creature* creature);
	// BW1W120 004e3a20 BW1M119 015eef40
	virtual bool32_t CanBePickedUpByCreature(Creature* creature);
	// BW1W120 004e3b00 BW1M119 015eee70
	virtual bool32_t CanBeStrokedByCreature(Creature* creature);
	// BW1W120 004e3c10 BW1M119 015eeb70
	virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
	// BW1W120 004e3cf0 BW1M119 015ee9b0
	virtual bool32_t CanBeThrownByCreature(Creature* creature);
	// BW1W120 004e3d40 BW1M119 015ee850
	virtual bool32_t CanBePutInAStoragePit(Creature* creature);
	// BW1W120 00402a90 BW1M119 010a3370
	virtual bool32_t CanBeExaminedByCreature(Creature* creature) { return true; }
	// BW1W120 00402aa0 BW1M119 015937e0
	virtual bool32_t IsOnFire(Creature* creature) { return IsOnFire(); }
	// BW1W120 004e3d90 BW1M119 015ee770
	virtual bool32_t CanBePutInFoodPile(Creature* creature);
	// BW1W120 004e3dd0 BW1M119 015ee6a0
	virtual bool32_t CanBePutInWoodPile(Creature* creature);
	// BW1W120 004e3bb0 BW1M119 015eec50
	virtual bool32_t CanBeBroughtBackToCitadel(Creature* creature);
	// BW1W120 00402a30 BW1M119 010a3170
	virtual bool32_t CanBePoodOn(Creature* creature) { return true; }
	// BW1W120 004e4320 BW1M119 015ed3c0
	virtual bool32_t CanBeKickedByCreature(Creature* creature);
	// BW1W120 0063b8d0 BW1M119 013e2770
	virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
	// BW1W120 00638120 BW1M119 010330e0
	virtual float GetHeight();
	// BW1W120 00639b20 BW1M119 013d9e40
	virtual void SetInScript(int param_1);
	// BW1W120 004029f0 BW1M119 01024540
	virtual bool32_t IsObject() const { return true; }
	// BW1W120 00638580 BW1M119 013dce10
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00638590 BW1M119 013dcdb0
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 006385a0 BW1M119 0104f2f0
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 006385b0 BW1M119 013dccb0
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 0063ab20 BW1M119 013d80e0
	virtual void DestroyedByBeam();
	// BW1W120 004024f0 BW1M119 01058500
	virtual float GetXAngle() { return 0.0f; }
	// BW1W120 00402500 BW1M119 0104f2c0
	virtual float GetYAngle() { return y_angle; }
	// BW1W120 00402510 BW1M119 010584c0
	virtual float GetZAngle() { return 0.0f; }
	// BW1W120 006393a0 BW1M119 0102c540
	virtual void SetFocus(const LHPoint& focus);
	// BW1W120 00638d00 BW1M119 01045ab0
	virtual void SetXYZAngles(float x, float y, float z);
	// BW1W120 00638f80 BW1M119 013dbcc0
	virtual void SetXYZAnglesAndScale(float x, float y, float z, float scale);
	// BW1W120 00402530 BW1M119 0111a460
	virtual void SetJustScale(float _scale) { scale = _scale; }
	// BW1W120 0063a800 BW1M119 0103b1b0
	virtual void SetYJustAngle(float angle);
	// BW1W120 00639260 BW1M119 0104f5a0
	virtual void SetYAngle(float angle);
	// BW1W120 00402540 BW1M119 0111a420
	virtual void UpdateFrom3DPosition() {}
	// BW1W120 00402550 BW1M119 015a33f0
	virtual uint32_t MoveAlongPath() { return 1; }
	// BW1W120 00402560 BW1M119 01174810
	virtual bool32_t IsReachable() { return IsAvailable(); }
	// BW1W120 0063a920 BW1M119 013d8610
	virtual bool32_t BlocksTownClearArea() const;
	// BW1W120 006365f0 BW1M119 013e0ee0
	virtual void Create3DObject();
	// fabricated: nothing in either binary references BW1W120 00636b20, so its name is unrecoverable.
	// TODO: creates the 3D object, gives it its meshes and places it at Pos.
	void Create3DObjectAtPos();
	// BW1W120 00418c90 BW1M119 01056a80
	virtual Object* GetMapChild(const MapCell& cell);
	// BW1W120 00418cc0 BW1M119 01056500
	virtual void SetMapChild(Object* child, MapCell* cell);
	// BW1W120 00636740 BW1M119 0104d730
	virtual void InsertMapObject();
	// BW1W120 006367a0 BW1M119 0104d690
	virtual void RemoveMapObject();
	// BW1W120 00636830 BW1M119 01056870
	virtual void InsertMapObjectToCell(MapCell* cell);
	// BW1W120 006368d0 BW1M119 01056550
	virtual void RemoveMapObjectFromCell(MapCell* cell);
	// BW1W120 006367d0 BW1M119 01056ae0
	virtual bool32_t IsObjectInMap(MapCell* cell);
	// BW1W120 006366b0 BW1M119 013e0be0
	virtual bool32_t IsObjectInMapCheck();
	// BW1W120 00636a40 BW1M119 0104fa00
	virtual int MoveMapObject(const MapCoords& param_2);
	// BW1W120 00638040 BW1M119 01057b90
	virtual void ActualMoveMapObject(const MapCoords& coords);
	// BW1W120 00402570 BW1M119 0136d060
	virtual Object* GetPtr();
	// BW1W120 00636bd0 BW1M119 013e0600
	virtual float GetMeshRadius() const;
	// BW1W120 00402580 BW1M119 01353d20
	virtual Game3DObject* Get3DObjectForPSys() { return Game3dObject; }
	// BW1W120 00732630 BW1M119 01151a40
	virtual bool GetPSysFireFlameMatrix(LHMatrix* matrix);
	// BW1W120 00732770 BW1M119 01151590
	virtual bool GetPSysFireLocalRndFlamePos(LHPoint* point, int* param_2);
	// BW1W120 00732660 BW1M119 01151880
	virtual bool GetPSysFireWorldFlamePos(const LHPoint& param_1, int param_2, LHPoint* param_3);
	// BW1W120 00732950 BW1M119 01151430
	virtual float GetPSysFireLocalFlameScale();
	// BW1W120 00732a30 BW1M119 01151330
	virtual uint32_t GetPSysFireMaxFlames();
	// BW1W120 00402590 BW1M119 0110bbf0
	virtual float GetSpotEffectPower() { return 0.0f; }
	// BW1W120 00639610 BW1M119 013db2b0
	virtual float GetAggressorValueFromDamage(float param_1);
	// BW1W120 00638bf0 BW1M119 013dc180
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00638c00 BW1M119 01097300
	virtual float GetHoldRadius();
	// BW1W120 00638c30 BW1M119 013dc0a0
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 004025a0 BW1M119 01099650
	virtual float GetHoldYRotate() { return 0.0f; }
	// BW1W120 004025b0 BW1M119 011d0c30
	virtual bool32_t HandShouldFeelWithMeshIntersect() { return true; }
	// BW1W120 004025c0 BW1M119 01590950
	virtual void SetSpecularColor(LH3DColor color) {}
	// BW1W120 004025d0 BW1M119 011748d0
	virtual LH3DColor GetSpecularColor() { return LH3DColor(0); }
	// BW1W120 004025e0 BW1M119 01173850
	virtual void SetBeliefSprite(LH3DSprite* sprite) {}
	// BW1W120 004025f0 BW1M119 0151b4a0
	virtual LH3DSprite* GetBeliefSprite() { return NULL; }
	// BW1W120 0063a140 BW1M119 01053f60
	virtual void SetLife(float life);
	// BW1W120 00402610 BW1M119 01061cb0
	virtual bool32_t IsAlive() { return GetLife() > 0.0f && IsAvailable(); }
	// BW1W120 00637810 BW1M119 0104daf0
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 00637870 BW1M119 013dea80
	virtual float IncreaseLife(float value);
	// BW1W120 0063aaf0 BW1M119 013d8190
	virtual float GetSacrificeValue();
	// BW1W120 00637c20 BW1M119 013de2f0
	virtual float ReduceLifeDueToBurning(float param_1, GPlayer* param_2);
	// BW1W120 00637900 BW1M119 013de930
	virtual void FillInEffectDefenceMultiplier(EffectNumbers& numbers);
	// BW1W120 00637980 BW1M119 013de440
	virtual float ApplyEffect(EffectValues& param_1, int param_2);
	// BW1W120 00637d00 BW1M119 013de0d0
	virtual float GetDamageEffect(EffectValues& values);
	// BW1W120 00637d80 BW1M119 013de000
	virtual float GetHealEffect(EffectValues& values);
	// BW1W120 00637cf0 BW1M119 013de1d0
	virtual void* GetActualObjectToEffect(GPlayer* player, bool param_2);
	// BW1W120 006392c0 BW1M119 013db820
	virtual void DrawValue(int param_1, float param_2);
	// BW1W120 00402640 BW1M119 01370bf0
	virtual void ScaffoldMoved(Scaffold* scaffold) {}
	// BW1W120 00637ce0 BW1M119 013de220
	virtual float GetHeatCapacity();
	// BW1W120 00639a80 BW1M119 013da040
	virtual void GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4);
	// BW1W120 00639a90 BW1M119 013d9ff0
	virtual float GetRainCoolingMultiplier();
	// BW1W120 00639aa0 BW1M119 0101cf20
	virtual void GetDefaultFireCentrePos(MapCoords* pos);
	// BW1W120 00639ac0 BW1M119 013d9f30
	virtual float GetDefaultFireRadius();
	// BW1W120 006378e0 BW1M119 013dea00
	virtual uint32_t DestroyedByEffect(GPlayer* player, float param_2);
	// BW1W120 00418fc0 BW1M119 010ad670
	virtual uint32_t Process();
	// BW1W120 00402650 BW1M119 01370d40
	virtual uint32_t ProcessBySpell(Spell* spell) { return 1; }
	// BW1W120 00637ff0 BW1M119 013dd790
	virtual void ApplySingleEffect(EFFECT_TYPE param_1, float param_2, GameThing* param_3, const MapCoords& param_4);
	// BW1W120 00425340 BW1M119 011d37e0
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00402660 BW1M119 011d33d0
	virtual int GetDetailMesh(int detail) const { return GetMesh(); }
	// BW1W120 004648b0 BW1M119 010e7860
	virtual void Draw();
	// BW1W120 0051c820 BW1M119 0101d5f0
	virtual void DrawOutOfMap(bool param_1);
	// BW1W120 00402670 BW1M119 011d2250
	virtual bool IsG3DObjectDrawnInHand() { return true; }
	// BW1W120 00402680 BW1M119 013e3140
	virtual void GetDrawRegion(LHRegion* region) {}
	// BW1W120 00402690 BW1M119 013e3100
	virtual uint32_t ProcessState() { return 0; }
	// BW1W120 006380b0 BW1M119 013dd660
	virtual float GetProjectileSpeed();
	// BW1W120 004026a0 BW1M119 010bd680
	virtual bool32_t CanBePickedUp() { return false; }
	// BW1W120 00425c50 BW1M119 010b0910
	virtual bool32_t CanBeCrushed();
	// BW1W120 00638160 BW1M119 013dd350
	virtual float GetTopPos();
	// BW1W120 004026b0 BW1M119 010e0380
	virtual float GetVillagerHugRadius() { return Get2DRadius() * 1.05f + 0.0005f; }
	// BW1W120 00638480 BW1M119 013dd060
	virtual float GetWeight();
	// BW1W120 00638200 BW1M119 01080d70
	virtual void GetWorldMatrix(LHMatrix* out);
	// BW1W120 00639b60 BW1M119 013d9d90
	virtual bool32_t CanBeSuckedIntoVortex(LandscapeVortex* param_1);
	// BW1W120 00639b80 BW1M119 013d9cc0
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
	// BW1W120 00639550 BW1M119 013db400
	// Rule 2 (hidden retbuf): comment shows one param (Object*), so returns MapCoords by value.
	virtual MapCoords GetWorkingPos(Object* param_1);
	// BW1W120 00638150 BW1M119 013dd3c0
	virtual float GetHeightForHandAboveInteractObject();
	// BW1W120 006385c0 BW1M119 013dcc50
	virtual uint32_t GetHandHelpMessageSet();
	// BW1W120 006385d0 BW1M119 013dcbf0
	virtual uint32_t GetHandHelpCondition();
	// BW1W120 00636be0 BW1M119 013e03a0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 006364f0 BW1M119 013e1170
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 004026d0 BW1M119 010bc860
	virtual float GetFoodValue(FOOD_TYPE type)
	{
		if ((type & GetFoodType()) != 0)
		{
			return info->FoodValue;
		}
		return 0.0f;
	}
	// BW1W120 006395c0 BW1M119 013db330
	virtual float GetWoodValue();
	// BW1W120 00402700 BW1M119 01064db0
	virtual FOOD_TYPE GetFoodType() { return info->GetFoodType(); }
	// BW1W120 00639390 BW1M119 013db7b0
	virtual float GetImpressiveValue();
	// BW1W120 00402730 BW1M119 013ee160
	virtual bool32_t IsSpellSeedReturnPoint() const { return false; }
	// BW1W120 00402740 BW1M119 013eb470
	virtual bool32_t IsABeliever() { return false; }
	// BW1W120 004192c0 BW1M119 010ad6a0
	virtual MultiMapFixed* AsMultiMapFixed();
	// BW1W120 0063a8e0 BW1M119 013d8650
	virtual float ApplyWaterSpell(SpellWater* spell);
	// BW1W120 004192d0 BW1M119 010ad6e0
	virtual bool IsResourceStore(RESOURCE_TYPE type);
	// BW1W120 0063a930 BW1M119 013d85b0
	virtual bool32_t DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 0063aad0 BW1M119 013d82a0
	virtual float GetRadiusMultiplierForApplyingPotToPos();
	// BW1W120 0063aae0 BW1M119 013d8230
	virtual bool32_t DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus& status);
	// BW1W120 00402750 BW1M119 012fef60
	virtual RESOURCE_TYPE GetResourceType() { return RESOURCE_TYPE_NONE; }
	// BW1W120 00402760 BW1M119 012feff0
	virtual int GetDefaultResource() { return 0; }
	// BW1W120 00402770 BW1M119 012fefa0
	virtual void SetPoisonedResource(RESOURCE_TYPE type, int poisoned) {}
	// BW1W120 00402780 BW1M119 015a30b0
	virtual void SetPoisoned(int poisoned) {}
	// BW1W120 00402790 BW1M119 011779b0
	virtual bool32_t IsLockedInInteract() { return false; }
	// BW1W120 004027a0 BW1M119 0150e1d0
	virtual bool32_t SetDying()
	{
		ToBeDeleted(0);
		return true;
	}
	// BW1W120 00636ab0 BW1M119 013e0710
	virtual bool32_t IsAttackable(Object* param_1);
	// BW1W120 00636af0 BW1M119 013e0660
	virtual bool32_t IsAllied(Object* param_1);
	// BW1W120 00637e00 BW1M119 013ddf20
	virtual bool32_t IsTouching(Object* target, float epsilon);
	// BW1W120 00637e30 BW1M119 013ddea0
	virtual bool32_t IsTouching(const MapCoords& coords);
	// BW1W120 00637e60 BW1M119 013dd920
	virtual bool32_t IsTouching(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 00419300 BW1M119 010ad730
	virtual void StartOnFire();
	// BW1W120 004027b0 BW1M119 011776b0
	virtual void EndOnFire() {}
	// BW1W120 00637fb0 BW1M119 013dd850
	virtual float GetDistanceFromObject(Object* param_1);
	// BW1W120 004027c0 BW1M119 01176a00
	virtual float GetDistanceFromObject(const MapCoords& coords) { return 0.0f; }
	// BW1W120 006399d0 BW1M119 01003b10
	virtual float GetTribalPower(TRIBE_TYPE param_1);
	// BW1W120 00419330 BW1M119 010b0950
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* status);
	// BW1W120 004193d0 BW1M119 010b09b0
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* status);
	// BW1W120 004027d0 BW1M119 0133e3c0
	virtual bool32_t NetworkUnfriendlyStartLockedSelect() { return true; }
	// BW1W120 004027e0 BW1M119 011ada60
	virtual bool32_t IsReadyForNetworkUnfriendlyLockedSelect() { return true; }
	// BW1W120 004027f0 BW1M119 0151c320
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1) { return true; }
	// BW1W120 00402800 BW1M119 0151c520
	virtual bool32_t GetReadyForNetworkUnfriendlyEndLockedSelect() { return true; }
	// BW1W120 00402810 BW1M119 0113eb10
	virtual bool32_t IsReadyForNetworkUnfriendlyEndLockedSelect() { return true; }
	// BW1W120 00402820 BW1M119 0151c380
	virtual bool32_t NetworkUnfriendlyEndLockedSelect() { return true; }
	// BW1W120 00402830 BW1M119 014fbfc0
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* status) { return true; }
	// BW1W120 00402840 BW1M119 01355590
	virtual bool32_t ValidAsInterfaceTarget() { return true; }
	// BW1W120 00402850 BW1M119 014e2700
	virtual bool32_t ValidAsInterfaceLeashTarget() { return true; }
	// BW1W120 00402860 BW1M119 01357fa0
	virtual bool32_t SelectOnlyAfterRecSystem() { return false; }
	// BW1W120 00402870 BW1M119 01187350
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* status) { return false; }
	// BW1W120 00637660 BW1M119 013df1f0
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status);
	// BW1W120 00637670 BW1M119 013df170
	virtual bool32_t InterfaceSetOutMagicHand(GInterfaceStatus* status);
	// BW1W120 00402880 BW1M119 010b4ce0
	virtual bool32_t ValidToRemoveFromHand(GInterfaceStatus* status, const MapCoords& coords) { return false; }
	// BW1W120 00402890 BW1M119 010a2bd0
	virtual uint32_t RemoveFromHand(GInterfaceStatus* status, const MapCoords& param_2);
	// BW1W120 00636aa0 BW1M119 01095640
	virtual bool32_t ValidToShakeFromHand();
	// BW1W120 004028a0 BW1M119 01573f80
	virtual bool32_t InterfaceMustBeInInfluenceForInteraction() { return true; }
	// BW1W120 00636a90 BW1M119 013e0820
	virtual bool32_t IsTuggable();
	// BW1W120 004028b0 BW1M119 014971c0
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* status, Object* target) { return 0; }
	// BW1W120 004028c0 BW1M119 0136d5e0
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* status, Object* target, GestureSystemPacketData* packet)
	{
		return 0;
	}
	// BW1W120 004028d0 BW1M119 013e5160
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords) { return 0; }
	// BW1W120 004028e0 BW1M119 0142cd00
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* packet)
	{
		return 0;
	}
	// BW1W120 004028f0 BW1M119 0136d1e0
	virtual uint32_t ValidForLockedApplyProcess(GInterfaceStatus* status) { return 0; }
	// BW1W120 00402900 BW1M119 015a93c0
	virtual uint32_t ApplyUnlockProcess(GInterfaceStatus* status) { return 1; }
	// BW1W120 00402910 BW1M119 010a2b00
	virtual uint32_t IsInterfacePowerUpWhenInHand() const { return 0; }
	// BW1W120 00402920 BW1M119 010a2b50
	virtual uint32_t ApplyOnlyAfterRecSystem() { return 0; }
	// BW1W120 00402930 BW1M119 010a2b90
	virtual uint32_t ApplyOnlyAfterReleased() { return 0; }
	// BW1W120 004196b0 BW1M119 010a8ba0
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* status);
	// BW1W120 004196c0 BW1M119 010a8bf0
	virtual uint32_t InterfaceTap(GInterfaceStatus* status);
	// BW1W120 00402940 BW1M119 010a2650
	virtual uint32_t InterfaceValidToGiveObject(GInterfaceStatus* status, Object* param_2);
	// BW1W120 00402950 BW1M119 010a2c30
	virtual uint32_t InterfaceGiveObject(GInterfaceStatus* status, Object* param_2);
	// BW1W120 00402960 BW1M119 010a2c90
	virtual uint32_t InterfaceValidToInteractAsMapCoordsObject(GInterfaceStatus* status) { return 0; }
	// BW1W120 00402970 BW1M119 010a2d00
	virtual uint32_t InterfaceInteractAsMapCoordsObject(GInterfaceStatus* status) { return 1; }
	// BW1W120 006385e0 BW1M119 013dc9d0
	virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* status, bool32_t dont_replant);
	// BW1W120 00402980 BW1M119 010a2d60
	virtual uint32_t ValidToSelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords) { return 0; }
	// BW1W120 00402990 BW1M119 010a2dd0
	virtual uint32_t ValidToApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords) { return 0; }
	// BW1W120 004029a0 BW1M119 010a2e40
	virtual uint32_t SelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords) { return 1; }
	// BW1W120 004029b0 BW1M119 010a2ea0
	virtual uint32_t ApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords) { return 1; }
	// BW1W120 004029c0 BW1M119 010a2f00
	virtual uint32_t ValidToFightThisToObject(GInterfaceStatus* status, const MapCoords& coords) { return 0; }
	// BW1W120 004029d0 BW1M119 010a2f60
	virtual uint32_t FightThisToObject(GInterfaceStatus* status, Object* target) { return 1; }
	// BW1W120 004029e0 BW1M119 010067d0
	virtual bool32_t IsEffectReceiver(EffectValues* values) { return true; }
	// BW1W120 00639960 BW1M119 013dab40
	virtual bool32_t CanBeDestroyedBySpell(Spell* param_1);
	// BW1W120 00638cf0 BW1M119 013dbec0
	virtual float GetImportance();
	// BW1W120 00636f00 BW1M119 013df650
	virtual PhysicsObject* InitialisePhysicsFromHand(LHPoint& velocity, LHPoint& angular_velocity,
	                                                 GInterfaceStatus* status, Object* thrower, bool32_t dont_replant);
	// BW1W120 00637480 BW1M119 013df3b0
	virtual PhysicsInitialisation InitialisePhysics(const LHPoint& param_1, const LHPoint& param_2, Object* param_3,
	                                                bool param_4, GInterfaceStatus* param_5);
	// BW1W120 006376a0 BW1M119 013df0a0
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 006376b0 BW1M119 013defa0
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 006375a0 BW1M119 013df240
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0063a7b0 BW1M119 013d8a50
	virtual uint32_t DropSfx();
	// BW1W120 00637730 BW1M119 013dee60
	virtual void GetBoundingSphere(LHPoint& center, float& radius);
	// BW1W120 006377b0 BW1M119 013dee10
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00419890 BW1M119 010ad760
	virtual bool ChecksVerticesVObjects();
	// BW1W120 006377d0 BW1M119 013ded30
	virtual bool ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1);
	// BW1W120 00402a00 BW1M119 013ed5b0
	virtual bool32_t PhysicallyDestroysAbodes() { return false; }
	// BW1W120 006377c0 BW1M119 013dedc0
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 006377e0 BW1M119 013decf0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00402a10 BW1M119 010a30b0
	virtual bool32_t GetAlwaysRemainsInPhysicsInternalSystem() { return false; }
	// BW1W120 00637470 BW1M119 013df620
	virtual bool32_t HasSunk();
	// BW1W120 00638740 BW1M119 013dc880
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00638790 BW1M119 013dc390
	virtual void AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
	                            void(__cdecl* add_function)(int, Point2D, float, int));
	// BW1W120 006384c0 BW1M119 013dcf30
	virtual float GetRoutePlanRadius(Creature* param_1);
	// BW1W120 00638be0 BW1M119 013dc1c0
	virtual bool32_t VillagerMustAvoid(Villager* param_1);
	// BW1W120 00639a00 BW1M119 013da210
	virtual bool32_t IsFireMan();
	// BW1W120 00638730 BW1M119 01099690
	virtual bool32_t IsARootedObject();
	// BW1W120 00637690 BW1M119 013df110
	virtual SOUND_COLLISION_TYPE GetCollideSoundType();
	// BW1W120 004198a0 BW1M119 01125130
	virtual bool32_t IsSolidToNewAbode();
	// BW1W120 00639b50 BW1M119 013d9e00
	virtual uint32_t RemoveFromGame();
	// BW1W120 00638430 BW1M119 013dd160
	virtual int GetLandingPointCount();
	// BW1W120 00638450 BW1M119 013dd0f0
	virtual bool32_t GetLandingPoint(uint8_t param_1, LHPoint* param_2);
	// BW1W120 00402ab0 BW1M119 010a33c0
	virtual uint32_t GetTastiness() { return 0; }
	// BW1W120 00402ac0 BW1M119 010a3400
	virtual bool32_t IsScary() { return false; }
	// BW1W120 00638cb0 BW1M119 013dbf70
	virtual bool32_t GetInspectObjectPos(Villager* param_1, MapCoords* pos);
	// BW1W120 0063ab10 BW1M119 013d8140
	virtual void DiscipleInHandNear(Villager& villager, GInterfaceStatus& status);
	// BW1W120 00638cd0 BW1M119 013dbf00
	virtual bool32_t GetSpecialPos(uint32_t index, MapCoords* pos);
	// BW1W120 00419960 BW1M119 010b0a60
	virtual GameThing* GetTownArtifact();
	// BW1W120 00419970 BW1M119 010b0aa0
	virtual bool32_t IsTownArtifact();
	// BW1W120 00639ad0 BW1M119 0108c800
	virtual uint32_t ProcessInHand();
	// BW1W120 00639b10 BW1M119 013d9e80
	virtual uint32_t ProcessInInteract(GInterfaceStatus* status);
	// BW1W120 00402ad0 BW1M119 010a3430
	virtual uint32_t GetObjectCollide() { return 0; }
	// BW1W120 00639620 BW1M119 013db230
	virtual float CalculateForceAppliedBy(Living* param_1);
	// BW1W120 00402ae0 BW1M119 010a3470
	virtual bool32_t IsPushable() { return false; }
	// BW1W120 006397c0 BW1M119 013daf30
	virtual void PushObject(Living* param_1, MapCoords& param_2);
	// BW1W120 00639640 BW1M119 013db090
	virtual void PushObject(Living* param_1);
	// BW1W120 00402af0 BW1M119 010a34a0
	virtual uint32_t GetCarriedTreeType() { return 0; }
	// BW1W120 00402b00 BW1M119 010a34e0
	virtual float GetFacingPitch() { return 0.0f; }
	// BW1W120 00402b10 BW1M119 010a3520
	virtual void SetHeadPos(MapCoords* pos) { *pos = Pos; }
	// BW1W120 purecall BW1M119 null
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords& coords) = 0;
	// BW1W120 00402b30 BW1M119 010a3580
	virtual bool32_t IsAPotFromABuildingSite() { return false; }
	// BW1W120 00636cd0 BW1M119 013e0230
	virtual LHPoint GetNearestEdgeOfObject(Object* object);
	// BW1W120 00636d30 BW1M119 013e0140
	virtual MapCoords GetNearestPosOfObject(Object* param_1);
	// BW1W120 00636da0 BW1M119 013e0080
	virtual MapCoords GetNearestEdgeToPos(const MapCoords& pos);
	// BW1W120 00636df0 BW1M119 013dffd0
	virtual MapCoords GetNearestEdge(float angle, float extra_radius);
	// BW1W120 0063a220 BW1M119 013d93c0
	virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
	// BW1W120 0063a7c0 BW1M119 013d8a10
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
	// BW1W120 00419a50 BW1M119 010a8c40
	virtual bool32_t ShouldFootpathsGoRound();
	// BW1W120 0063a640 BW1M119 013d8dc0
	virtual void InitialiseIsFixedForMapList();
	// BW1W120 00402b40 BW1M119 010a35c0
	virtual const char* GetText() { return info->DebugString; }
	// BW1W120 00402b50 BW1M119 010a3610
	virtual uint32_t StandAnimation() { return ANM_INVALID; }
	// BW1W120 00419b30 BW1M119 0109ea50
	virtual NewCollide* GetCollideData();

	// Override methods

	// BW1W120 006392b0 BW1M119 0103a2a0
	virtual bool32_t IsObjectInMap();
	// BW1W120 00639860 BW1M119 013dadd0
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);

	// Static methods

	// BW1W120 006364c0 BW1M119 013e1220
	static LH3DObject::ObjectType Get3DType(MESH_LIST index);

	// Constructors

	// BW1W120 00636450 BW1M119 013e1300
	Object();
	// BW1W120 00636520 BW1M119 013e0fa0
	Object(const MapCoords& coords, const GObjectInfo* info);

	// Non-virtual Destructors

	// BW1W120 006364a0 BW1M119 013e0e20
	~Object();

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01047620
	FireEffect* GetFireEffect() { return fire_effect; }
	// BW1W120 00639900 BW1M119 013dad10
	float GetArtifactImpressiveModifier();
	// BW1W120 00637cc0 BW1M119 0102dd80
	bool32_t IsOnFire();
	// BW1W120 00638560 BW1M119 0105e730
	Object* GetMapChild(const MapCoords& coord);
	// BW1W120 0063a810 BW1M119 013d8700
	SmokyStuff* CreateSmokyStuff(long param_1, float param_2, LH3DColor color);
	// BW1W120 00637930 BW1M119 013de840
	EffectNumbers GetDefenseMultiplier();
	// BW1W120 00638b00 BW1M119 013dc200
	void SimpleAddToRoutePlan(RPHolder* holder, Creature* creature, int update,
	                          void(__cdecl* add_function)(int, Point2D, float, int));
	// BW1W120 00639410 BW1M119 013db630
	void IsActuallyInTheAir();
	// BW1W120 00636e70 BW1M119 013dfe00
	void RemoveDraggingCreatureByLeash();
	// BW1W120 006380c0 BW1M119 013dd600
	bool32_t IsCitadelPart() const;
	// BW1W120 006380e0 BW1M119 013dd5a0
	bool32_t IsPartOfTown() const;
	// BW1W120 006380f0 BW1M119 013dd530
	bool32_t IsPartOfForest() const;
	// BW1W120 00638070 BW1M119 null
	bool32_t IsCitadelPartOfPlayer(GPlayer* player);
	// BW1W120 006384a0 BW1M119 null
	float GetWeightForce(Living* param_1);
	// BW1W120 00638c70 BW1M119 null
	void SetPackedAnim(int anim);
	// BW1W120 00639a10 BW1M119 013da190
	float GetTemperature();
	// BW1W120 00639a30 BW1M119 013da130
	float GetCombustionTemperature();
	// BW1W120 00637dd0 BW1M119 013ddfa0
	void DrawFireEffect();
	// BW1W120 00639a40 BW1M119 013da0e0
	void SetOnFire(float param_1);
	// BW1W120 00639a60 BW1M119 013da080
	void SetTemperature(float param_1, GameThing* param_2);
	// BW1W120 0063a1b0 BW1M119 01089340
	GInterfaceStatus* GetInterfaceStatusHoldingThis();
	// BW1W120 0063a190 BW1M119 0108c890
	GPlayer* GetPlayerHoldingThis();
	// BW1W120 0063a230 BW1M119 013d8e40
	void SetUpPhysObAsATree(PhysOb* phys_ob, float weight, float height, float radius, float scale);
	// BW1W120 0063a670 BW1M119 013d8d10
	bool32_t IsSuitableForArtifact();
	// BW1W120 0063a710 BW1M119 013d8b10
	GInterfaceStatus* GetInterfaceStatusWhoLastDroppedMe();
	// BW1W120 0063a6a0 BW1M119 013d8c10
	GInterfaceStatus* GetInterfaceStatusWhoLastPickedMeUp();
	// BW1W120 006399f0 BW1M119 null
	const char* GetInfoDebugString();
	// BW1W120 0063a940 BW1M119 013d82f0
	void DoDeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 004eaab0 BW1M119 012722f0
	void ConsiderCreatureMimickingWhenObjectLands();
};

#endif /* BW1_DECOMP_OBJECT_INCLUDED_H */
