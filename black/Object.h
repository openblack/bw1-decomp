#ifndef BW1_DECOMP_OBJECT_INCLUDED_H
#define BW1_DECOMP_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum EFFECT_TYPE, enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE, enum RESOURCE_TYPE, enum SOUND_COLLISION_TYPE, enum TRIBE_TYPE */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct ControlHandUpdateInfo;
struct Creature;
struct EffectNumbers;
struct EffectValues;
struct FireEffect;
struct GInterfaceStatus;
struct GObjectInfo;
struct GPlayer;
struct Game3DObject;
struct GameOSFile;
struct GameThing;
struct GameThingVftable;
struct GestureSystemPacketData;
struct LH3DSprite;
struct LHMatrix;
struct LHOSFile;
struct LHPoint;
struct LHRegion;
struct LandscapeVortex;
struct Living;
struct MapCell;
struct NewCollide;
struct Object;
struct PhysOb;
struct PhysicsObject;
struct RPHolder;
struct Scaffold;
struct Spell;
struct SpellWater;
struct Villager;

enum FOOD_TYPE
{
  FOOD_TYPE_0 = 0x0,
  _FOOD_TYPE_COUNT = 0x1
};
static_assert(sizeof(enum FOOD_TYPE) == 0x4, "Data type is of wrong size");

static const char* FOOD_TYPE_strs[_FOOD_TYPE_COUNT] = {
  "FOOD_TYPE_0",
};

struct ObjectVftable
{
  struct GameThingWithPosVftable super;  /* 0x0 */
  void (__fastcall* DestroyedByBeam)(struct Object* this);  /* 0x500 */
  float (__fastcall* GetXAngle)(const struct Object* this);
  float (__fastcall* GetYAngle)(const struct Object* this);
  float (__fastcall* GetZAngle)(const struct Object* this);
  void (__fastcall* SetFocus)(struct Object* this, const void* edx, const struct LHPoint* focus);  /* 0x510 */
  void (__fastcall* SetXYZAngles)(struct Object* this, const void* edx, float x, float y, float z);
  void (__fastcall* SetXYZAnglesAndScale)(struct Object* this, const void* edx, float x, float y, float z, float scale);
  void (__fastcall* SetJustScale)(struct Object* this, const void* edx, float scale);
  void (__fastcall* SetYJustAngle)(struct Object* this, const void* edx, float angle);  /* 0x520 */
  void (__fastcall* SetYAngle)(struct Object* this, const void* edx, float angle);
  void (__fastcall* UpdateFrom3DPosition)(struct Object* this);
  uint32_t (__fastcall* MoveAlongPath)(struct Object* this);
  bool (__fastcall* IsReachable)(struct Object* this);  /* 0x530 */
  bool (__fastcall* BlocksTownClearArea)(const struct Object* this);
  void (__fastcall* Create3DObject)(struct Object* this);
  struct Object* (__fastcall* GetMapChild)(struct Object* this, const void* edx, const struct MapCell* param_1);
  void (__fastcall* SetMapChild)(struct Object* this, const void* edx, struct Object* object, struct MapCell* cell);  /* 0x540 */
  void (__fastcall* InsertMapObject)(struct Object* this);
  void (__fastcall* RemoveMapObject)(struct Object* this);
  void (__fastcall* InsertMapObjectToCell)(struct Object* this, const void* edx, struct MapCell* param_1);
  void (__fastcall* RemoveMapObjectFromCell)(struct Object* this, const void* edx, struct MapCell* param_1);  /* 0x550 */
  bool (__fastcall* IsObjectInMap_1)(struct Object* this, const void* edx, struct MapCell* cell);
  bool (__fastcall* IsObjectInMapCheck)(struct Object* this);
  int (__fastcall* MoveMapObject)(struct Object* this, const void* edx, struct MapCoords* param_2);
  void (__fastcall* ActualMoveMapObject)(struct Object* this, const void* edx, struct MapCoords* param_1);  /* 0x560 */
  struct Object* (__fastcall* GetPtr)(struct Object* this);
  float (__fastcall* GetMeshRadius)(const struct Object* this);
  struct Game3DObject* (__fastcall* Get3DObjectForPSys)(struct Object* this);
  bool (__fastcall* GetPSysFireFlameMatrix)(struct Object* this, const void* edx, struct LHMatrix* matrix);  /* 0x570 */
  bool (__fastcall* GetPSysFireLocalRndFlamePos)(struct Object* this, const void* edx, struct LHPoint* point, int32_t* param_2);
  bool (__fastcall* GetPSysFireWorldFlamePos)(struct Object* this, const void* edx, const struct LHPoint* param_1, int32_t param_2, struct LHPoint* param_3);
  float (__fastcall* GetPSysFireLocalFlameScale)(struct Object* this);
  uint32_t (__fastcall* GetPSysFireMaxFlames)(struct Object* this);  /* 0x580 */
  float (__fastcall* GetSpotEffectPower)(const struct Object* this);
  float (__fastcall* GetAggressorValueFromDamage)(const struct Object* this, const void* edx, float param_1);
  enum HOLD_TYPE (__fastcall* GetHoldType)(struct Object* this);
  float (__fastcall* GetHoldRadius)(struct Object* this);  /* 0x590 */
  float (__fastcall* GetHoldLoweringMultiplier)(struct Object* this);
  float (__fastcall* GetHoldYRotate)(struct Object* this);
  bool (__fastcall* HandShouldFeelWithMeshIntersect)(struct Object* this);
  void (__fastcall* SetSpecularColor)(struct Object* this, const void* edx, struct LH3DColor color);  /* 0x5a0 */
  struct LH3DColor (__fastcall* GetSpecularColor)(struct Object* this);
  void (__fastcall* SetBeliefSprite)(struct Object* this, const void* edx, struct LH3DSprite* sprite);
  struct LH3DSprite* (__fastcall* GetBeliefSprite)(struct Object* this);
  void (__fastcall* SetLife)(struct Object* this, const void* edx, float param_1);  /* 0x5b0 */
  bool (__fastcall* IsAlive)(struct Object* this);
  void (__fastcall* ReduceLife)(struct Object* this, const void* edx, float value, struct GPlayer* player);
  void (__fastcall* IncreaseLife)(struct Object* this, const void* edx, float value);
  float (__fastcall* GetSacrificeValue)(struct Object* this);  /* 0x5c0 */
  void (__fastcall* ReduceLifeDueToBurning)(struct Object* this, const void* edx, float param_1, struct GPlayer* param_2);
  void (__fastcall* FillInEffectDefenceMultiplier)(struct Object* this, const void* edx, struct EffectNumbers* param_1);
  void (__fastcall* ApplyEffect)(struct Object* this, const void* edx, const void* param_1, struct EffectValues* param_2);
  float (__fastcall* GetDamageEffect)(struct Object* this, const void* edx, struct EffectValues* values);  /* 0x5d0 */
  float (__fastcall* GetHealEffect)(struct Object* this, const void* edx, struct EffectValues* values);
  void* (__fastcall* GetActualObjectToEffect)(struct Object* this, const void* edx, struct GPlayer* player, bool param_2);
  void (__fastcall* DrawValue)(struct Object* this, const void* edx, int32_t param_1, float param_2);
  void (__fastcall* ScaffoldMoved)(struct Object* this, const void* edx, struct Scaffold* scaffold);  /* 0x5e0 */
  float (__fastcall* GetHeatCapacity)(struct Object* this);
  void (__fastcall* GetFireGPHXDrawn)(struct Object* this, const void* edx, bool* param_1, bool* param_2, bool* param_3, bool* param_4);
  float (__fastcall* GetRainCoolingMultiplier)(struct Object* this);
  struct LHPoint* (__fastcall* GetDefaultFireCentrePos)(struct Object* this, const void* edx, struct LHPoint* pos);  /* 0x5f0 */
  float (__fastcall* GetDefaultFireRadius)(struct Object* this);
  uint32_t (__fastcall* DestroyedByEffect)(struct Object* this, const void* edx, struct GPlayer* player, float param_2);
  uint32_t (__fastcall* Process)(struct Object* this);
  uint32_t (__fastcall* ProcessBySpell)(struct Object* this, const void* edx, struct Spell* spell);  /* 0x600 */
  void (__fastcall* ApplySingleEffect)(struct Object* this, const void* edx, enum EFFECT_TYPE param_1, float param_2, struct GameThing* param_3, const struct MapCoords* param_4);
  int (__fastcall* GetMesh)(struct Object* this);
  int (__fastcall* GetDetailMesh)(struct Object* this, const void* edx, int detail);
  void (__fastcall* Draw)(struct Object* this);  /* 0x610 */
  void (__fastcall* DrawOutOfMap)(struct Object* this, const void* edx, bool param_1);
  bool (__fastcall* IsG3DObjectDrawnInHand)(struct Object* this);
  void (__fastcall* GetDrawRegion)(struct Object* this, const void* edx, struct LHRegion* param_1);
  uint32_t (__fastcall* ProcessState)(struct Object* this);  /* 0x620 */
  float (__fastcall* GetProjectileSpeed)(struct Object* this);
  bool (__fastcall* CanBePickedUp)(struct Object* this);
  bool (__fastcall* CanBeCrushed)(struct Object* this);
  float (__fastcall* GetTopPos)(struct Object* this);  /* 0x630 */
  float (__fastcall* GetVillagerHugRadius)(struct Object* this);
  float (__fastcall* GetWeight)(struct Object* this);
  void (__fastcall* GetWorldMatrix)(struct Object* this, const void* edx, struct LHMatrix* out);
  bool (__fastcall* CanBeSuckedIntoVortex)(struct Object* this, const void* edx, struct LandscapeVortex* param_1);  /* 0x640 */
  uint32_t (__fastcall* GetDiscipleStateIfInteractedWith)(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Villager* villager);
  struct MapCoords* (__fastcall* GetWorkingPos)(struct Object* this, const void* edx, struct MapCoords* param_1, struct Object* param_2);
  float (__fastcall* GetHeightForHandAboveInteractObject)(struct Object* this);
  uint32_t (__fastcall* GetHandHelpMessageSet)(struct Object* this);  /* 0x650 */
  uint32_t (__fastcall* GetHandHelpCondition)(struct Object* this);
  void (__fastcall* CallVirtualFunctionsForCreation)(struct Object* this, const void* edx, const struct MapCoords* coords);
  enum LH3DObject__ObjectType (__fastcall* Get3DType)(struct Object* this);
  float (__fastcall* GetFoodValue)(struct Object* this, const void* edx, enum FOOD_TYPE type);  /* 0x660 */
  float (__fastcall* GetWoodValue)(struct Object* this);
  enum FOOD_TYPE (__fastcall* GetFoodType)(struct Object* this);
  float (__fastcall* GetImpressiveValue)(struct Object* this);
  bool (__fastcall* IsSpellSeedReturnPoint)(struct Object* this);  /* 0x670 */
  bool (__fastcall* IsABeliever)(struct Object* this);
  bool (__fastcall* AsMultiMapFixed)(struct Object* this);
  float (__fastcall* ApplyWaterSpell)(struct Object* this, const void* edx, struct SpellWater* spell);
  bool (__fastcall* IsResourceStore)(struct Object* this, const void* edx, enum RESOURCE_TYPE type);  /* 0x680 */
  bool (__fastcall* DeleteObjectAndTakeResource)(struct Object* this, const void* edx, struct Object* param_1, struct GInterfaceStatus* param_2);
  float (__fastcall* GetRadiusMultiplierForApplyingPotToPos)(struct Object* this);
  bool (__fastcall* DoCreatureMimicAfterAddingResource)(struct Object* this, const void* edx, enum RESOURCE_TYPE type, struct GInterfaceStatus* status);
  enum RESOURCE_TYPE (__fastcall* GetResourceType)(struct Object* this);  /* 0x690 */
  int (__fastcall* GetDefaultResource)(struct Object* this);
  void (__fastcall* SetPoisonedResource)(struct Object* this, const void* edx, enum RESOURCE_TYPE type, int param_2);
  void (__fastcall* SetPoisoned)(struct Object* this, const void* edx, int param_1);
  bool (__fastcall* IsLockedInInteract)(struct Object* this);  /* 0x6a0 */
  bool (__fastcall* SetDying)(struct Object* this);
  bool (__fastcall* IsAttackable)(struct Object* this, const void* edx, struct Object* param_1);
  bool (__fastcall* IsAllied)(struct Object* this, const void* edx, struct Object* param_1);
  bool (__fastcall* IsTouching_1)(const struct Object* this, const void* edx, struct MapCoords* param_1, struct MapCoords* param_2);  /* 0x6b0 */
  bool (__fastcall* IsTouching_2)(const struct Object* this, const void* edx, struct MapCoords* param_1);
  bool (__fastcall* IsTouching_3)(const struct Object* this, const void* edx, struct Object* param_1, float param_2);
  void (__fastcall* StartOnFire)(struct Object* this);
  void (__fastcall* EndOnFire)(struct Object* this);  /* 0x6c0 */
  float (__fastcall* GetDistanceFromObject)(struct Object* this, const void* edx, struct Object* param_1);
  float (__fastcall* GetTribalPower)(struct Object* this, const void* edx, enum TRIBE_TYPE param_1);
  bool (__fastcall* ValidForLockedSelectProcess)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  bool (__fastcall* NetworkFriendlyStartLockedSelect)(struct Object* this, const void* edx, struct GInterfaceStatus* status);  /* 0x6d0 */
  bool (__fastcall* NetworkUnfriendlyStartLockedSelect)(struct Object* this);
  bool (__fastcall* IsReadyForNetworkUnfriendlyLockedSelect)(struct Object* this);
  bool (__fastcall* NetworkUnfriendlyLockedSelect)(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1);
  bool (__fastcall* GetReadyForNetworkUnfriendlyEndLockedSelect)(struct Object* this);  /* 0x6e0 */
  bool (__fastcall* IsReadyForNetworkUnfriendlyEndLockedSelect)(struct Object* this);
  bool (__fastcall* NetworkUnfriendlyEndLockedSelect)(struct Object* this);
  bool (__fastcall* NetworkFriendlyEndLockedSelect)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  bool (__fastcall* ValidAsInterfaceTarget)(struct Object* this);  /* 0x6f0 */
  bool (__fastcall* ValidAsInterfaceLeashTarget)(struct Object* this);
  bool (__fastcall* SelectOnlyAfterRecSystem)(struct Object* this);
  bool (__fastcall* ValidForPlaceInHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  bool (__fastcall* InterfaceSetInMagicHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status);  /* 0x700 */
  bool (__fastcall* InterfaceSetOutMagicHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  bool (__fastcall* ValidToRemoveFromHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);
  uint32_t (__fastcall* RemoveFromHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);
  bool (__fastcall* ValidToShakeFromHand)(struct Object* this);  /* 0x710 */
  bool (__fastcall* InterfaceMustBeInInfluenceForInteraction)(struct Object* this);
  bool (__fastcall* IsTuggable)(struct Object* this);
  uint32_t (__fastcall* ValidToApplyThisToObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2);
  uint32_t (__fastcall* ApplyThisToObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2, struct GestureSystemPacketData* param_3);  /* 0x720 */
  uint32_t (__fastcall* ValidToApplyThisToMapCoord)(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct MapCoords* param_2);
  uint32_t (__fastcall* ApplyThisToMapCoord)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3);
  uint32_t (__fastcall* ValidForLockedApplyProcess)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  uint32_t (__fastcall* ApplyUnlockProcess)(struct Object* this, const void* edx, struct GInterfaceStatus* status);  /* 0x730 */
  uint32_t (__fastcall* IsInterfacePowerUpWhenInHand)(struct Object* this);
  uint32_t (__fastcall* ApplyOnlyAfterRecSystem)(struct Object* this);
  uint32_t (__fastcall* ApplyOnlyAfterReleased)(struct Object* this);
  uint32_t (__fastcall* InterfaceValidToTap)(struct Object* this, const void* edx, struct GInterfaceStatus* status);  /* 0x740 */
  uint32_t (__fastcall* InterfaceTap)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  uint32_t (__fastcall* InterfaceValidToGiveObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2);
  uint32_t (__fastcall* InterfaceGiveObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2);
  uint32_t (__fastcall* InterfaceValidToInteractAsMapCoordsObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status);  /* 0x750 */
  uint32_t (__fastcall* InterfaceInteractAsMapCoordsObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  uint32_t (__fastcall* ThrowObjectFromHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status, int param_2);
  uint32_t (__fastcall* ValidToSelectFightThisToMapCoord)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);
  uint32_t (__fastcall* ValidToApplyFightThisToMapCoord)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);  /* 0x760 */
  uint32_t (__fastcall* SelectFightThisToMapCoord)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);
  uint32_t (__fastcall* ApplyFightThisToMapCoord)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);
  uint32_t (__fastcall* ValidToFightThisToObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);
  uint32_t (__fastcall* FightThisToObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2);  /* 0x770 */
  bool (__fastcall* IsEffectReceiver)(struct Object* this, const void* edx, struct EffectValues* param_1);
  bool (__fastcall* CanBeDestroyedBySpell_1)(struct Object* this, const void* edx, struct Spell* param_1);
  float (__fastcall* GetImportance)(struct Object* this);
  uint32_t (__fastcall* CanBeDestroyedBySpell_2)(struct Object* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, struct GInterfaceStatus* param_3, struct Object* param_4, int param_5);  /* 0x780 */
  uint32_t (__fastcall* InitialisePhysics)(struct Object* this, const void* edx, const struct LHPoint* param_1, const struct LHPoint* param_2, struct Object* param_3, bool param_4, struct GInterfaceStatus* param_5);
  uint32_t (__fastcall* GetPhysicsConstantsType)(struct Object* this);
  void (__fastcall* SetUpPhysOb)(struct Object* this, const void* edx, struct PhysOb* param_1);
  void (__fastcall* EndPhysics)(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2);  /* 0x790 */
  uint32_t (__fastcall* DropSfx)(struct Object* this);
  void (__fastcall* GetBoundingSphere)(struct Object* this, const void* edx, struct LHPoint* center, float* radius);
  bool (__fastcall* InteractsWithPhysicsObjects)(struct Object* this);
  uint32_t (__fastcall* ChecksVerticesVObjects)(struct Object* this);  /* 0x7a0 */
  void (__fastcall* ShouldPhysicsRaiseObjectUntilNotIntersectingThis)(struct Object* this, const void* edx, struct Object* param_1);
  uint32_t (__fastcall* PhysicallyDestroysAbodes)(struct Object* this);
  void (__fastcall* ReactToPhysicsImpact)(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2);
  bool (__fastcall* CanBecomeAPhysicsObject)(struct Object* this);  /* 0x7b0 */
  bool (__fastcall* GetAlwaysRemainsInPhysicsInternalSystem)(struct Object* this);
  bool (__fastcall* HasSunk)(struct Object* this);
  bool (__fastcall* CreatureMustAvoid)(struct Object* this, const void* edx, struct Creature* param_1);
  void (__fastcall* AddToRoutePlan)(struct Object* this, const void* edx, struct RPHolder* param_1, struct Creature* param_2, int param_3, void (__cdecl* param_4)(int param_1, struct Point2D param_2, float param_3, int param_4));  /* 0x7c0 */
  float (__fastcall* GetRoutePlanRadius)(struct Object* this, const void* edx, struct Creature* param_1);
  bool (__fastcall* VillagerMustAvoid)(struct Object* this, const void* edx, struct Villager* param_1);
  bool (__fastcall* IsFireMan)(struct Object* this);
  bool (__fastcall* IsARootedObject)(struct Object* this);  /* 0x7d0 */
  enum SOUND_COLLISION_TYPE (__fastcall* GetCollideSoundType)(struct Object* this);
  bool (__fastcall* IsSolidToNewAbode)(struct Object* this);
  uint32_t (__fastcall* RemoveFromGame)(struct Object* this);
  int (__fastcall* GetLandingPointCount)(struct Object* this);  /* 0x7e0 */
  bool (__fastcall* GetLandingPoint)(struct Object* this, const void* edx, uint8_t param_1, struct LHPoint* param_2);
  uint32_t (__fastcall* GetTastiness)(struct Object* this);
  bool (__fastcall* IsScary)(struct Object* this);
  bool (__fastcall* GetInspectObjectPos)(struct Object* this, const void* edx, struct Villager* param_1, struct MapCoords* pos);  /* 0x7f0 */
  void (__fastcall* DiscipleInHandNear)(struct Object* this, const void* edx, struct Villager* param_1, struct GInterfaceStatus* status);
  bool32_t (__fastcall* GetSpecialPos)(struct Object* this, const void* edx, uint32_t index, struct MapCoords* pos);
  struct GameThing* (__fastcall* GetTownArtifact)(struct Object* this);
  bool (__fastcall* IsTownArtifact)(struct Object* this);  /* 0x800 */
  bool (__fastcall* ProcessInHand)(struct Object* this);
  uint32_t (__fastcall* ProcessInInteract)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  uint32_t (__fastcall* GetObjectCollide)(struct Object* this);
  float (__fastcall* CalculateForceAppliedBy)(struct Object* this, const void* edx, struct Living* param_1);  /* 0x810 */
  bool (__fastcall* IsPushable)(struct Object* this);
  void (__fastcall* PushObject_1)(struct Object* this, const void* edx, struct Living* param_1, struct MapCoords* param_2);
  void (__fastcall* PushObject_2)(struct Object* this, const void* edx, struct Living* param_1);
  uint32_t (__fastcall* GetCarriedTreeType)(struct Object* this);  /* 0x820 */
  float (__fastcall* GetFacingPitch)(struct Object* this);
  void (__fastcall* SetHeadPos)(struct Object* this, const void* edx, struct MapCoords* param_1);
  size_t (__fastcall* SaveObject)(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2);
  bool (__fastcall* IsAPotFromABuildingSite)(struct Object* this);  /* 0x830 */
  void (__fastcall* GetNearestEdgeOfObject)(struct Object* this, const void* edx, struct Object* param_1);
  void (__fastcall* GetNearestPosOfObject)(struct Object* this, const void* edx, struct Object* param_1);
  void (__fastcall* GetNearestEdgeToPos)(struct Object* this, const void* edx, const struct MapCoords* param_1);
  void (__fastcall* GetNearestEdge)(struct Object* this, const void* edx, float param_1, float param_2);  /* 0x840 */
  enum IMMERSION_EFFECT_TYPE (__fastcall* GetImmersionTexture)(struct Object* this);
  enum IMMERSION_EFFECT_TYPE (__fastcall* GetInHandImmersionTexture)(struct Object* this);
  bool (__fastcall* ShouldFootpathsGoRound)(struct Object* this);
  void (__fastcall* InitialiseIsFixedForMapList)(struct Object* this);  /* 0x850 */
  uint32_t (__fastcall* StandAnimation)(struct Object* this);
  struct NewCollide* (__fastcall* GetCollideData)(const struct Object* this);
};
static_assert(sizeof(struct ObjectVftable) == 0x85c, "Data type is of wrong size");

union ObjectBase
{
  struct GameThingWithPos super;
  struct ObjectVftable* vftable_object;
  struct GameThingWithPosVftable* vftable_gamethingwithpos;
  struct GameThingVftable* vftable_gamething;
};
static_assert(sizeof(union ObjectBase) == 0x28, "Data type is of wrong size");

struct Object
{
  union ObjectBase base;  /* 0x0 */
  const struct GObjectInfo* info;  /* 0x28 */
  struct MapCoords coords;
  struct Object* map_parent;  /* 0x38 */
  uint32_t field_0x3c;
  struct Game3DObject* game_3d_object;  /* 0x40 */
  struct FireEffect* fire_effect;
  float life;
  float y_angle;
  float scale;  /* 0x50 */
};
static_assert(sizeof(struct Object) == 0x54, "Data type is of wrong size");

static struct ObjectVftable* __vt__6Object = (struct ObjectVftable*)0x00930aa0;

// Static methods

// win1.41 006364c0 mac 103d93a0 Object::Get3DType(MESH_LIST)
enum LH3DObject__ObjectType __cdecl Get3DType__6ObjectF9MESH_LIST(enum MESH_LIST index);

// Constructors

// win1.41 00636450 mac 103d9480 Object::Object(void)
struct Object* __fastcall __ct__6ObjectFv(struct Object* this);
// win1.41 00636520 mac 103d90d0 Object::Object(MapCoords const &, GObjectInfo const *)
struct Object* __fastcall __ct__6ObjectFRC9MapCoordsPC11GObjectInfo(struct Object* this, const void* edx, const struct MapCoords* coords, const struct GObjectInfo* info);

// Non-virtual methods

// win1.41 00638560 mac 1005ba80 Object::GetMapChild(MapCoords const &)
struct Object* __fastcall GetMapChild__6ObjectFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coord);

// Override methods

// win1.41 00639eb0 mac 103d1b20 Object::Load(GameOSFile &)
uint32_t __fastcall Load__6ObjectFR10GameOSFile(struct Object* this, const void* edx, struct GameOSFile* file);
// win1.41 00639200 mac 103d3c80 Object::SetScale(float)
void __fastcall SetScale__6ObjectFf(struct Object* this, const void* edx, float scale);
// win1.41 006377f0 mac 103d6d80 Object::CleanupWhenDeleted(int)
void __fastcall CleanupWhenDeleted__6ObjectFi(struct Object* this, const void* edx, int param_1);
// win1.41 00639260 mac 1004cc10 Object::SetYAngle(float)
void __fastcall SetYAngle__6ObjectFf(struct Object* this, const void* edx, float angle);
// win1.41 006365f0 mac 103d90d0 Object::Create3DObject(void)
void __fastcall Create3DObject__6ObjectFv(struct Object* this);
// win1.41 00418cc0 mac 10053b70 Object::SetMapChild(Object *, MapCell *)
void __fastcall SetMapChild__6ObjectFP6ObjectP7MapCell(struct Object* this, const void* edx, struct Object* child, struct MapCell* cell);
// win1.41 00636740 mac 1004ad80 Object::InsertMapObject(void)
void __fastcall InsertMapObject__6ObjectFv(struct Object* this);
// win1.41 006367a0 mac 1004ace0 Object::RemoveMapObject(void)
void __fastcall RemoveMapObject__6ObjectFv(struct Object* this);
// win1.41 00636830 mac 10053ed0 Object::InsertMapObjectToCell(MapCell *)
void __fastcall InsertMapObjectToCell__6ObjectFP7MapCell(struct Object* this, const void* edx, struct MapCell* cell);
// win1.41 006368d0 mac 10053bc0 Object::RemoveMapObjectFromCell(MapCell *)
void __fastcall RemoveMapObjectFromCell__6ObjectFP7MapCell(struct Object* this, const void* edx, struct MapCell* cell);
// win1.41 00636a40 mac 1004d070 Object::MoveMapObject(MapCoords const &)
uint32_t __fastcall MoveMapObject__6ObjectFRC9MapCoords(struct Object* this, const void* edx, struct MapCoords* param_2);
// win1.41 00638040 mac 10055200 Object::ActualMoveMapObject(MapCoords const &)
void __fastcall ActualMoveMapObject__6ObjectFRC9MapCoords(struct Object* this, const void* edx, struct MapCoords* param_2);
// win1.41 0063a140 mac 100515d0 Object::SetLife(float)
void __fastcall SetLife__6ObjectFf(struct Object* this, const void* edx, float life);
// win1.41 00637810 mac 1004b140 Object::ReduceLife(float, GPlayer *)
float __fastcall ReduceLife__6ObjectFfP7GPlayer(struct Object* this, const void* edx, float value, struct GPlayer* player);
// win1.41 00636be0 mac 103d84b0 Object::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__6ObjectFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords);
// win1.41 0063a640 mac 103d0b20 Object::InitialiseIsFixedForMapList(void)
void __fastcall InitialiseIsFixedForMapList__6ObjectFv(struct Object* this);

DECLARE_LH_LINKED_LIST(Object);

// win1.41 005e2ff0 mac 103782a0 RequestChangeTexture(Object *)
void __cdecl RequestChangeTexture__FP6Object(struct Object* param_1);

#endif /* BW1_DECOMP_OBJECT_INCLUDED_H */
