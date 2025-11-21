#ifndef BW1_DECOMP_OBJECT_INCLUDED_H
#define BW1_DECOMP_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum EFFECT_TYPE, enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE, enum RESOURCE_TYPE, enum SOUND_COLLISION_TYPE, enum TRIBE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Base;
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
struct MultiMapFixed;
struct NewCollide;
struct Object;
struct PhysOb;
struct PhysicsObject;
struct Point2D;
struct RPHolder;
struct Reaction;
struct Scaffold;
struct Spell;
struct SpellWater;
struct Town;
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
  float (__fastcall* GetXAngle)(struct Object* this);
  float (__fastcall* GetYAngle)(struct Object* this);
  float (__fastcall* GetZAngle)(struct Object* this);
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
  int (__fastcall* MoveMapObject)(struct Object* this, const void* edx, const struct MapCoords* param_2);
  void (__fastcall* ActualMoveMapObject)(struct Object* this, const void* edx, const struct MapCoords* param_1);  /* 0x560 */
  struct Object* (__fastcall* GetPtr)(struct Object* this);
  float (__fastcall* GetMeshRadius)(const struct Object* this);
  struct Game3DObject* (__fastcall* Get3DObjectForPSys)(struct Object* this);
  bool (__fastcall* GetPSysFireFlameMatrix)(struct Object* this, const void* edx, struct LHMatrix* matrix);  /* 0x570 */
  bool (__fastcall* GetPSysFireLocalRndFlamePos)(struct Object* this, const void* edx, struct LHPoint* point, int* param_2);
  bool (__fastcall* GetPSysFireWorldFlamePos)(struct Object* this, const void* edx, const struct LHPoint* param_1, int param_2, struct LHPoint* param_3);
  float (__fastcall* GetPSysFireLocalFlameScale)(struct Object* this);
  uint32_t (__fastcall* GetPSysFireMaxFlames)(struct Object* this);  /* 0x580 */
  float (__fastcall* GetSpotEffectPower)(const struct Object* this);
  float (__fastcall* GetAggressorValueFromDamage)(const struct Object* this, const void* edx, float param_1);
  enum HOLD_TYPE (__fastcall* GetHoldType)(struct Object* this);
  float (__fastcall* GetHoldRadius)(struct Object* this);  /* 0x590 */
  float (__fastcall* GetHoldLoweringMultiplier)(struct Object* this);
  float (__fastcall* GetHoldYRotate)(struct Object* this);
  bool32_t (__fastcall* HandShouldFeelWithMeshIntersect)(struct Object* this);
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
  void (__fastcall* ApplyEffect)(struct Object* this, const void* edx, struct EffectValues* param_1, int param_2);
  float (__fastcall* GetDamageEffect)(struct Object* this, const void* edx, struct EffectValues* values);  /* 0x5d0 */
  float (__fastcall* GetHealEffect)(struct Object* this, const void* edx, struct EffectValues* values);
  void* (__fastcall* GetActualObjectToEffect)(struct Object* this, const void* edx, struct GPlayer* player, bool param_2);
  void (__fastcall* DrawValue)(struct Object* this, const void* edx, int param_1, float param_2);
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
  int (__fastcall* GetMesh)(const struct Object* this);
  int (__fastcall* GetDetailMesh)(struct Object* this, const void* edx, int detail);
  void (__fastcall* Draw)(struct Object* this);  /* 0x610 */
  void (__fastcall* DrawOutOfMap)(struct Object* this, const void* edx, bool param_1);
  bool (__fastcall* IsG3DObjectDrawnInHand)(struct Object* this);
  void (__fastcall* GetDrawRegion)(struct Object* this, const void* edx, struct LHRegion* param_1);
  uint32_t (__fastcall* ProcessState)(struct Object* this);  /* 0x620 */
  float (__fastcall* GetProjectileSpeed)(struct Object* this);
  bool (__fastcall* CanBePickedUp)(struct Object* this);
  bool32_t (__fastcall* CanBeCrushed)(struct Object* this);
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
  float (__fastcall* GetImpressiveValue_1)(struct Object* this);
  bool (__fastcall* IsSpellSeedReturnPoint)(const struct Object* this);  /* 0x670 */
  bool32_t (__fastcall* IsABeliever)(struct Object* this);
  struct MultiMapFixed* (__fastcall* AsMultiMapFixed)(struct Object* this);
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
  float (__fastcall* GetDistanceFromObject_1)(struct Object* this, const void* edx, struct Object* param_1);
  float (__fastcall* GetTribalPower)(struct Object* this, const void* edx, enum TRIBE_TYPE param_1);
  bool32_t (__fastcall* ValidForLockedSelectProcess)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  bool32_t (__fastcall* NetworkFriendlyStartLockedSelect)(struct Object* this, const void* edx, struct GInterfaceStatus* status);  /* 0x6d0 */
  bool32_t (__fastcall* NetworkUnfriendlyStartLockedSelect)(struct Object* this);
  bool32_t (__fastcall* IsReadyForNetworkUnfriendlyLockedSelect)(struct Object* this);
  bool32_t (__fastcall* NetworkUnfriendlyLockedSelect)(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1);
  bool32_t (__fastcall* GetReadyForNetworkUnfriendlyEndLockedSelect)(struct Object* this);  /* 0x6e0 */
  bool32_t (__fastcall* IsReadyForNetworkUnfriendlyEndLockedSelect)(struct Object* this);
  bool32_t (__fastcall* NetworkUnfriendlyEndLockedSelect)(struct Object* this);
  bool32_t (__fastcall* NetworkFriendlyEndLockedSelect)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  bool32_t (__fastcall* ValidAsInterfaceTarget)(struct Object* this);  /* 0x6f0 */
  bool32_t (__fastcall* ValidAsInterfaceLeashTarget)(struct Object* this);
  bool32_t (__fastcall* SelectOnlyAfterRecSystem)(struct Object* this);
  bool32_t (__fastcall* ValidForPlaceInHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  bool32_t (__fastcall* InterfaceSetInMagicHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status);  /* 0x700 */
  bool32_t (__fastcall* InterfaceSetOutMagicHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  bool32_t (__fastcall* ValidToRemoveFromHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);
  uint32_t (__fastcall* RemoveFromHand)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);
  bool32_t (__fastcall* ValidToShakeFromHand)(struct Object* this);  /* 0x710 */
  bool32_t (__fastcall* InterfaceMustBeInInfluenceForInteraction)(struct Object* this);
  bool32_t (__fastcall* IsTuggable)(struct Object* this);
  uint32_t (__fastcall* ValidToApplyThisToObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2);
  uint32_t (__fastcall* ApplyThisToObject)(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2, struct GestureSystemPacketData* param_3);  /* 0x720 */
  uint32_t (__fastcall* ValidToApplyThisToMapCoord)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2);
  uint32_t (__fastcall* ApplyThisToMapCoord)(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3);
  uint32_t (__fastcall* ValidForLockedApplyProcess)(struct Object* this, const void* edx, struct GInterfaceStatus* status);
  uint32_t (__fastcall* ApplyUnlockProcess)(struct Object* this, const void* edx, struct GInterfaceStatus* status);  /* 0x730 */
  uint32_t (__fastcall* IsInterfacePowerUpWhenInHand)(const struct Object* this);
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
  bool32_t (__fastcall* IsEffectReceiver)(struct Object* this, const void* edx, struct EffectValues* param_1);
  bool32_t (__fastcall* CanBeDestroyedBySpell_1)(struct Object* this, const void* edx, struct Spell* param_1);
  float (__fastcall* GetImportance)(struct Object* this);
  uint32_t (__fastcall* InitialisePhysicsFromHand)(struct Object* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, struct GInterfaceStatus* param_3, struct Object* param_4, int param_5);  /* 0x780 */
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
  bool32_t (__fastcall* VillagerMustAvoid)(struct Object* this, const void* edx, struct Villager* param_1);
  bool (__fastcall* IsFireMan)(struct Object* this);
  bool (__fastcall* IsARootedObject)(struct Object* this);  /* 0x7d0 */
  enum SOUND_COLLISION_TYPE (__fastcall* GetCollideSoundType)(struct Object* this);
  bool32_t (__fastcall* IsSolidToNewAbode)(struct Object* this);
  uint32_t (__fastcall* RemoveFromGame)(struct Object* this);
  int (__fastcall* GetLandingPointCount)(struct Object* this);  /* 0x7e0 */
  bool (__fastcall* GetLandingPoint)(struct Object* this, const void* edx, uint8_t param_1, struct LHPoint* param_2);
  uint32_t (__fastcall* GetTastiness)(struct Object* this);
  bool (__fastcall* IsScary)(struct Object* this);
  bool (__fastcall* GetInspectObjectPos)(struct Object* this, const void* edx, struct Villager* param_1, struct MapCoords* pos);  /* 0x7f0 */
  void (__fastcall* DiscipleInHandNear)(struct Object* this, const void* edx, struct Villager* param_1, struct GInterfaceStatus* status);
  bool32_t (__fastcall* GetSpecialPos)(struct Object* this, const void* edx, uint32_t index, struct MapCoords* pos);
  struct GameThing* (__fastcall* GetTownArtifact)(struct Object* this);
  bool32_t (__fastcall* IsTownArtifact)(struct Object* this);  /* 0x800 */
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

// Object Oriented datastructures

// win1.41 009c7f50 mac inlined Object::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6Object asm("??_R0?AVObject@@@8");
// win1.41 009a63f0 mac inlined Object::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Object asm("??_R1A@?0A@A@Object@@8");
// win1.41 009b2e40 mac inlined Object::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6Object asm("??_R2Object@@8");
// win1.41 009b2e58 mac inlined Object::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6Object asm("??_R3Object@@8");
// win1.41 00930a9c mac 107313d4 Object::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6Object asm("??_R4Object@@6B@");
// win1.41 00930aa0 mac 10732c1c Object::`vftable'
extern const struct ObjectVftable __vt__6Object asm("??_7Object@@6B@");

// Static methods

// win1.41 006364c0 mac 103d93a0 Object::Get3DType(MESH_LIST)
enum LH3DObject__ObjectType __cdecl Get3DType__6ObjectF9MESH_LIST(enum MESH_LIST index) asm("?Get3DType@Object@@SA?AW4LH3DObject__ObjectType@@W4MESH_LIST@@@Z");

// Constructors

// win1.41 00636450 mac 103d9480 Object::Object(void)
struct Object* __fastcall __ct__6ObjectFv(struct Object* this) asm("??0Object@@QAE@XZ");
// win1.41 00636520 mac 103d90d0 Object::Object(MapCoords const &, GObjectInfo const *)
struct Object* __fastcall __ct__6ObjectFRC9MapCoordsPC11GObjectInfo(struct Object* this, const void* edx, const struct MapCoords* coords, const struct GObjectInfo* info) asm("??0Object@@QAE@ABUMapCoords@@PBVGObjectInfo@@@Z");

// Non-virtual Destructors

// win1.41 006364a0 mac 103d8f50 Object::_dt(void)
void __fastcall __dt__6ObjectFv(struct Object* this, const void* edx, uint8_t param_1) asm("??1Object@@UAE@XZ");

// Non-virtual methods

// win1.41 00637e00 mac 103d5f70 Object::IsTouching(Object *, float)
bool __fastcall IsTouching__6ObjectFP6Objectf(const struct Object* this, const void* edx, struct Object* param_1, float param_2) asm("?IsTouching@Object@@UAE_NPAV1@M@Z");
// win1.41 00638560 mac 1005ba80 Object::GetMapChild(MapCoords const &)
struct Object* __fastcall GetMapChild__6ObjectFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coord) asm("?GetMapChild@Object@@QAEPAV1@ABUMapCoords@@@Z");
// win1.41 0063a810 mac 103d04b0 Object::CreateSmokyStuff(long, float, LH3DColor)
bool32_t __fastcall CreateSmokyStuff__6ObjectFlf9LH3DColor(struct Object* this, const void* edx, long param_1, float param_2, struct LH3DColor param_3) asm("?CreateSmokyStuff@Object@@QAEIJMULH3DColor@@@Z");

// Override methods

// win1.41 006366a0 mac 103d8e50 Object::Delete(void)
void __fastcall Delete__6ObjectFv(struct Base* this) asm("?Delete@Object@@UAEXH@Z");
// win1.41 00636670 mac 103d8eb0 Object::ToBeDeleted(int)
void __fastcall ToBeDeleted__6ObjectFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Object@@UAEXH@Z");
// win1.41 00639b70 mac 103d2180 Object::GetDrawImportance(void)
float __fastcall GetDrawImportance__6ObjectFv(struct GameThing* this) asm("?GetDrawImportance@Object@@UAEMXZ");
// win1.41 00419950 mac 100a9ec0 Object::GetTown(void)
struct Town* __fastcall GetTown__6ObjectFv(struct GameThing* this) asm("?GetTown@Object@@UAEPAVTown@@XZ");
// win1.41 00638110 mac 103d55b0 Object::GetRadius(void)
float __fastcall GetRadius__6ObjectFv(struct GameThing* this) asm("?GetRadius@Object@@UAEMXZ");
// win1.41 00638180 mac 10038d20 Object::Get2DRadius(void)
float __fastcall Get2DRadius__6ObjectFv(struct GameThing* this) asm("?Get2DRadius@Object@@UAEMXZ");
// win1.41 00639520 mac 103d3550 Object::GetResource(RESOURCE_TYPE)
uint32_t __fastcall GetResource__6ObjectF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type) asm("?GetResource@Object@@UAEIW4RESOURCE_TYPE@@@Z");
// win1.41 0063a7d0 mac 103d06c0 Object::CanBecomeArtifact(void)
bool __fastcall CanBecomeArtifact__6ObjectFv(struct GameThing* this) asm("?CanBecomeArtifact@Object@@UAE_NXZ");
// win1.41 005190e0 mac 1008d3a0 Object::DrawInHand(GInterfaceStatus *)
void __fastcall DrawInHand__6ObjectFP16GInterfaceStatus(struct GameThing* this, const void* edx, struct GInterfaceStatus* param_1) asm("?DrawInHand@Object@@UAEXPAVGInterfaceStatus@@@Z");
// win1.41 00639eb0 mac 103d1b20 Object::Load(GameOSFile &)
uint32_t __fastcall Load__6ObjectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@Object@@UAEIAAVGameOSFile@@@Z");
// win1.41 00639b90 mac 103d1d50 Object::Save(GameOSFile &)
uint32_t __fastcall Save__6ObjectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@Object@@UAEIPAVGameOSFile@@@Z");
// win1.41 0063a020 mac 103d1940 Object::ResolveLoad(void)
void __fastcall ResolveLoad__6ObjectFv(struct GameThing* this) asm("?ResolveLoad@Object@@UAEXXZ");
// win1.41 00402600 mac 1004b110 Object::GetLife(void)
float __fastcall GetLife__6ObjectFv(struct GameThingWithPos* this) asm("?GetLife@Object@@UAEMXZ");
// win1.41 00402520 mac 10044cb0 Object::GetScale(void)
float __fastcall GetScale__6ObjectFv(struct GameThingWithPos* this) asm("?GetScale@Object@@UAEMXZ");
// win1.41 00639200 mac 103d3c80 Object::SetScale(float)
void __fastcall SetScale__6ObjectFf(struct GameThingWithPos* this, const void* edx, float scale) asm("?SetScale@Object@@UAEXM@Z");
// win1.41 004027c0 mac 1016ea00 Object::GetDistanceFromObject(MapCoords &)
float __fastcall GetDistanceFromObject__6ObjectFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* target) asm("?GetDistanceFromObject@Object@@UAEMPAUMapCoords@@@Z");
// win1.41 006394e0 mac 103d35f0 Object::GetPhysicsMovementDirection(LHPoint *)
void __fastcall GetPhysicsMovementDirection__6ObjectFP7LHPoint(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos) asm("?GetPhysicsMovementDirection@Object@@UAEXPAULHPoint@@@Z");
// win1.41 00402710 mac 10032610 Object::IsMoving( const(void))
bool __fastcall IsMoving__6ObjectCFv(const struct GameThingWithPos* this) asm("?IsMoving@Object@@UAE_NXZ");
// win1.41 006392b0 mac 10037930 Object::IsObjectInMap(void)
bool __fastcall IsObjectInMap__6ObjectFv(struct GameThingWithPos* this) asm("?IsObjectInMap@Object@@UAE_NXZ");
// win1.41 0063a780 mac 103d07e0 Object::IsDrowning(void)
bool __fastcall IsDrowning__6ObjectFv(struct GameThingWithPos* this) asm("?IsDrowning@Object@@UAE_NXZ");
// win1.41 006377f0 mac 103d6d80 Object::CleanupWhenDeleted(int)
void __fastcall CleanupWhenDeleted__6ObjectFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?CleanupWhenDeleted@Object@@UAEXH@Z");
// win1.41 00639860 mac 103d2e30 Object::GetImpressiveValue(Living *, Reaction *)
float __fastcall GetImpressiveValue__6ObjectFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2) asm("?GetImpressiveValue@Object@@UAEMPAVLiving@@PAVReaction@@@Z");
// win1.41 00639940 mac 103d2cf0 Object::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
float __fastcall GetUpdateOfBoredomValue__6ObjectFP8ReactionP16GameThingWithPos(struct GameThingWithPos* this, const void* edx, struct Reaction* param_1, struct GameThingWithPos* param_2) asm("?GetUpdateOfBoredomValue@Object@@UAEMPAVReaction@@PAVGameThingWithPos@@@Z");
// win1.41 00638550 mac 103d5010 Object::IsBuildingMaterial(void)
bool32_t __fastcall IsBuildingMaterial__6ObjectFv(struct GameThingWithPos* this) asm("?IsBuildingMaterial@Object@@UAE_NXZ");
// win1.41 00402a20 mac 103db180 Object::IsSuitableForCreatureAction(void)
bool32_t __fastcall IsSuitableForCreatureAction__6ObjectFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureAction@Object@@UAE_NXZ");
// win1.41 004e48c0 mac 105e4960 Object::CanBeEatenByCreature(Creature *)
bool32_t __fastcall CanBeEatenByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeEatenByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 00402a40 mac 100db5e0 Object::CanBeAttackedByCreature(Creature *)
bool32_t __fastcall CanBeAttackedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeAttackedByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 00425c60 mac 100ade90 Object::CanBeFrighteningToCreature(Creature *)
bool32_t __fastcall CanBeFrighteningToCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeFrighteningToCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 00402a80 mac 1056cf30 Object::CanBeHelpedByCreature(Creature *)
bool32_t __fastcall CanBeHelpedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeHelpedByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 00402a60 mac 100b95a0 Object::CanBePlayedWithByCreature(Creature *)
bool32_t __fastcall CanBePlayedWithByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePlayedWithByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 00402a70 mac 105a25d0 Object::CanBeImpressedByCreature(Creature *)
bool32_t __fastcall CanBeImpressedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeImpressedByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3b40 mac 105e70f0 Object::CanBeInspectedByCreature(Creature *)
bool32_t __fastcall CanBeInspectedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeInspectedByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3eb0 mac 105e66c0 Object::CanBePoodUponByCreature(Creature *)
bool32_t __fastcall CanBePoodUponByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePoodUponByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3a20 mac 105e7240 Object::CanBePickedUpByCreature(Creature *)
bool32_t __fastcall CanBePickedUpByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePickedUpByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3b00 mac 105e7170 Object::CanBeStrokedByCreature(Creature *)
bool32_t __fastcall CanBeStrokedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeStrokedByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3c10 mac 105e6e70 Object::CanBeStompedOnByCreature(Creature *)
bool32_t __fastcall CanBeStompedOnByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeStompedOnByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3cf0 mac 105e6cb0 Object::CanBeThrownByCreature(Creature *)
bool32_t __fastcall CanBeThrownByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeThrownByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3d40 mac 105e6b50 Object::CanBePutInAStoragePit(Creature *)
bool32_t __fastcall CanBePutInAStoragePit__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePutInAStoragePit@Object@@UAE_NPAVCreature@@@Z");
// win1.41 00402a90 mac 103e4d10 Object::CanBeExaminedByCreature(Creature *)
bool32_t __fastcall CanBeExaminedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeExaminedByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 00402aa0 mac 1054f410 Object::IsOnFire(Creature *)
bool32_t __fastcall IsOnFire__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsOnFire@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3d90 mac 105e6a70 Object::CanBePutInFoodPile(Creature *)
bool32_t __fastcall CanBePutInFoodPile__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePutInFoodPile@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3dd0 mac 105e69a0 Object::CanBePutInWoodPile(Creature *)
bool32_t __fastcall CanBePutInWoodPile__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePutInWoodPile@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e3bb0 mac 105e6f50 Object::CanBeBroughtBackToCitadel(Creature *)
bool32_t __fastcall CanBeBroughtBackToCitadel__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeBroughtBackToCitadel@Object@@UAE_NPAVCreature@@@Z");
// win1.41 00402a30 mac 100ba330 Object::CanBePoodOn(Creature *)
bool32_t __fastcall CanBePoodOn__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePoodOn@Object@@UAE_NPAVCreature@@@Z");
// win1.41 004e4320 mac 105e56c0 Object::CanBeKickedByCreature(Creature *)
bool32_t __fastcall CanBeKickedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeKickedByCreature@Object@@UAE_NPAVCreature@@@Z");
// win1.41 0063b8d0 mac 103da7f0 Object::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void __fastcall CalculateWhereIWillBeAfterNSeconds__6ObjectFfP7LHPoint(struct GameThingWithPos* this, const void* edx, float seconds, struct LHPoint* outPos) asm("?CalculateWhereIWillBeAfterNSeconds@Object@@UAEXMPAULHPoint@@@Z");
// win1.41 00402b40 mac 1016dc30 Object::GetText(void)
const char* __fastcall GetText__6ObjectFv(struct GameThingWithPos* this) asm("?GetText@Object@@UAEPBDXZ");
// win1.41 00638120 mac 10030760 Object::GetHeight(void)
float __fastcall GetHeight__6ObjectFv(struct GameThingWithPos* this) asm("?GetHeight@Object@@UAEMXZ");
// win1.41 00639b20 mac 103d2290 Object::SetInScript(int)
void __fastcall SetInScript__6ObjectFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?SetInScript@Object@@UAEXH@Z");
// win1.41 004029f0 mac 100219d0 Object::IsObject( const(void))
bool32_t __fastcall IsObject__6ObjectCFv(struct GameThingWithPos* this) asm("?IsObject@Object@@UAE_NXZ");
// win1.41 00638580 mac 103d4f70 Object::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__6ObjectFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00638590 mac 103d4f10 Object::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__6ObjectFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 006385a0 mac 1004c960 Object::GetFOVHelpMessageSet(void)
uint32_t __fastcall GetFOVHelpMessageSet__6ObjectFv(struct GameThingWithPos* this) asm("?GetFOVHelpMessageSet@Object@@UAEIXZ");
// win1.41 006385b0 mac 103d4d50 Object::GetFOVHelpCondition(void)
uint32_t __fastcall GetFOVHelpCondition__6ObjectFv(struct GameThingWithPos* this) asm("?GetFOVHelpCondition@Object@@UAEIXZ");
// win1.41 0063ab20 mac 103cfe90 Object::DestroyedByBeam(void)
void __fastcall DestroyedByBeam__6ObjectFv(struct Object* this) asm("?DestroyedByBeam@Object@@UAEXXZ");
// win1.41 004024f0 mac 10055b70 Object::GetXAngle(void)
float __fastcall GetXAngle__6ObjectFv(struct Object* this) asm("?GetXAngle@Object@@UAEMXZ");
// win1.41 00402500 mac 1004c930 Object::GetYAngle(void)
float __fastcall GetYAngle__6ObjectFv(struct Object* this) asm("?GetYAngle@Object@@UAEMXZ");
// win1.41 00402510 mac 10055b30 Object::GetZAngle(void)
float __fastcall GetZAngle__6ObjectFv(struct Object* this) asm("?GetZAngle@Object@@UAEMXZ");
// win1.41 006393a0 mac 100299c0 Object::SetFocus(LHPoint const &)
void __fastcall SetFocus__6ObjectFRC7LHPoint(struct Object* this, const void* edx, const struct LHPoint* focus) asm("?SetFocus@Object@@UAEXPBULHPoint@@@Z");
// win1.41 00638d00 mac 10043070 Object::SetXYZAngles(float, float, float)
void __fastcall SetXYZAngles__6ObjectFfff(struct Object* this, const void* edx, float x, float y, float z) asm("?SetXYZAngles@Object@@UAEXMMM@Z");
// win1.41 00638f80 mac 103d3d70 Object::SetXYZAnglesAndScale(float, float, float, float)
void __fastcall SetXYZAnglesAndScale__6ObjectFffff(struct Object* this, const void* edx, float x, float y, float z, float scale) asm("?SetXYZAnglesAndScale@Object@@UAEXMMMM@Z");
// win1.41 00402530 mac 10577710 Object::SetJustScale(float)
void __fastcall SetJustScale__6ObjectFf(struct Object* this, const void* edx, float scale) asm("?SetJustScale@Object@@UAEXM@Z");
// win1.41 0063a800 mac 10038850 Object::SetYJustAngle(float)
void __fastcall SetYJustAngle__6ObjectFf(struct Object* this, const void* edx, float angle) asm("?SetYJustAngle@Object@@UAEXM@Z");
// win1.41 00639260 mac 1004cc10 Object::SetYAngle(float)
void __fastcall SetYAngle__6ObjectFf(struct Object* this, const void* edx, float angle) asm("?SetYAngle@Object@@UAEXM@Z");
// win1.41 00402540 mac 100def80 Object::UpdateFrom3DPosition(void)
void __fastcall UpdateFrom3DPosition__6ObjectFv(struct Object* this) asm("?UpdateFrom3DPosition@Object@@UAEXXZ");
// win1.41 00402550 mac 105890b0 Object::MoveAlongPath(void)
uint32_t __fastcall MoveAlongPath__6ObjectFv(struct Object* this) asm("?MoveAlongPath@Object@@UAEIXZ");
// win1.41 00402560 mac 1030b0c0 Object::IsReachable(void)
bool __fastcall IsReachable__6ObjectFv(struct Object* this) asm("?IsReachable@Object@@UAE_NXZ");
// win1.41 0063a920 mac 103d03c0 Object::BlocksTownClearArea( const(void))
bool __fastcall BlocksTownClearArea__6ObjectCFv(const struct Object* this) asm("?BlocksTownClearArea@Object@@UAE_NXZ");
// win1.41 006365f0 mac 103d9010 Object::Create3DObject(void)
void __fastcall Create3DObject__6ObjectFv(struct Object* this) asm("?Create3DObject@Object@@UAEXXZ");
// win1.41 00418c90 mac 100540e0 Object::GetMapChild(MapCell const &)
struct Object* __fastcall GetMapChild__6ObjectFRC7MapCell(struct Object* this, const void* edx, const struct MapCell* param_1) asm("?GetMapChild@Object@@UAEPAV1@PBUMapCell@@@Z");
// win1.41 00418cc0 mac 10053b70 Object::SetMapChild(Object *, MapCell *)
void __fastcall SetMapChild__6ObjectFP6ObjectP7MapCell(struct Object* this, const void* edx, struct Object* child, struct MapCell* cell) asm("?SetMapChild@Object@@UAEXPAV1@PAUMapCell@@@Z");
// win1.41 00636740 mac 1004ad80 Object::InsertMapObject(void)
void __fastcall InsertMapObject__6ObjectFv(struct Object* this) asm("?InsertMapObject@Object@@UAEXXZ");
// win1.41 006367a0 mac 1004ace0 Object::RemoveMapObject(void)
void __fastcall RemoveMapObject__6ObjectFv(struct Object* this) asm("?RemoveMapObject@Object@@UAEXXZ");
// win1.41 00636830 mac 10053ed0 Object::InsertMapObjectToCell(MapCell *)
void __fastcall InsertMapObjectToCell__6ObjectFP7MapCell(struct Object* this, const void* edx, struct MapCell* cell) asm("?InsertMapObjectToCell@Object@@UAEXPAUMapCell@@@Z");
// win1.41 006368d0 mac 10053bc0 Object::RemoveMapObjectFromCell(MapCell *)
void __fastcall RemoveMapObjectFromCell__6ObjectFP7MapCell(struct Object* this, const void* edx, struct MapCell* cell) asm("?RemoveMapObjectFromCell@Object@@UAEXPAUMapCell@@@Z");
// win1.41 006367d0 mac 10054140 Object::IsObjectInMap(MapCell *)
bool __fastcall IsObjectInMap__6ObjectFP7MapCell(struct Object* this, const void* edx, struct MapCell* cell) asm("?IsObjectInMap@Object@@UAE_NPAUMapCell@@@Z");
// win1.41 006366b0 mac 103d8d10 Object::IsObjectInMapCheck(void)
bool __fastcall IsObjectInMapCheck__6ObjectFv(struct Object* this) asm("?IsObjectInMapCheck@Object@@UAE_NXZ");
// win1.41 00636a40 mac 1004d070 Object::MoveMapObject(MapCoords const &)
int __fastcall MoveMapObject__6ObjectFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_2) asm("?MoveMapObject@Object@@UAEIUMapCoords@@@Z");
// win1.41 00638040 mac 10055200 Object::ActualMoveMapObject(MapCoords const &)
void __fastcall ActualMoveMapObject__6ObjectFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_2) asm("?ActualMoveMapObject@Object@@UAEXUMapCoords@@@Z");
// win1.41 00402570 mac 103dca60 Object::GetPtr(void)
struct Object* __fastcall GetPtr__6ObjectFv(struct Object* this) asm("?GetPtr@Object@@UAEPAV1@XZ");
// win1.41 00636bd0 mac 103d8710 Object::GetMeshRadius( const(void))
float __fastcall GetMeshRadius__6ObjectCFv(const struct Object* this) asm("?GetMeshRadius@Object@@UAEMXZ");
// win1.41 00402580 mac 103dc890 Object::Get3DObjectForPSys(void)
struct Game3DObject* __fastcall Get3DObjectForPSys__6ObjectFv(struct Object* this) asm("?Get3DObjectForPSys@Object@@UAEPAVGame3DObject@@XZ");
// win1.41 00732630 mac 101499d0 Object::GetPSysFireFlameMatrix(LHMatrix *)
bool __fastcall GetPSysFireFlameMatrix__6ObjectFP8LHMatrix(struct Object* this, const void* edx, struct LHMatrix* matrix) asm("?GetPSysFireFlameMatrix@Object@@UAE_NPAULHMatrix@@@Z");
// win1.41 00732770 mac 10149520 Object::GetPSysFireLocalRndFlamePos(LHPoint *, long *)
bool __fastcall GetPSysFireLocalRndFlamePos__6ObjectFP7LHPointPl(struct Object* this, const void* edx, struct LHPoint* point, int* param_2) asm("?GetPSysFireLocalRndFlamePos@Object@@UAE_NPAULHPoint@@PAH@Z");
// win1.41 00732660 mac 10149810 Object::GetPSysFireWorldFlamePos(LHPoint const &, long, LHPoint *)
bool __fastcall GetPSysFireWorldFlamePos__6ObjectFRC7LHPointlP7LHPoint(struct Object* this, const void* edx, const struct LHPoint* param_1, int param_2, struct LHPoint* param_3) asm("?GetPSysFireWorldFlamePos@Object@@UAE_NPBULHPoint@@HPAU2@@Z");
// win1.41 00732950 mac 101493c0 Object::GetPSysFireLocalFlameScale(void)
float __fastcall GetPSysFireLocalFlameScale__6ObjectFv(struct Object* this) asm("?GetPSysFireLocalFlameScale@Object@@UAEMXZ");
// win1.41 00732a30 mac 101492c0 Object::GetPSysFireMaxFlames(void)
uint32_t __fastcall GetPSysFireMaxFlames__6ObjectFv(struct Object* this) asm("?GetPSysFireMaxFlames@Object@@UAEIXZ");
// win1.41 00402590 mac 1011c800 Object::GetSpotEffectPower(void)
float __fastcall GetSpotEffectPower__6ObjectFv(const struct Object* this) asm("?GetSpotEffectPower@Object@@UAEMXZ");
// win1.41 00639610 mac 103d3310 Object::GetAggressorValueFromDamage(float)
float __fastcall GetAggressorValueFromDamage__6ObjectFf(const struct Object* this, const void* edx, float param_1) asm("?GetAggressorValueFromDamage@Object@@UAEMM@Z");
// win1.41 00638bf0 mac 103d41a0 Object::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__6ObjectFv(struct Object* this) asm("?GetHoldType@Object@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 00638c00 mac 100953b0 Object::GetHoldRadius(void)
float __fastcall GetHoldRadius__6ObjectFv(struct Object* this) asm("?GetHoldRadius@Object@@UAEMXZ");
// win1.41 00638c30 mac 103d4110 Object::GetHoldLoweringMultiplier(void)
float __fastcall GetHoldLoweringMultiplier__6ObjectFv(struct Object* this) asm("?GetHoldLoweringMultiplier@Object@@UAEMXZ");
// win1.41 004025a0 mac 10097700 Object::GetHoldYRotate(void)
float __fastcall GetHoldYRotate__6ObjectFv(struct Object* this) asm("?GetHoldYRotate@Object@@UAEMXZ");
// win1.41 004025b0 mac 100a0df0 Object::HandShouldFeelWithMeshIntersect(void)
bool32_t __fastcall HandShouldFeelWithMeshIntersect__6ObjectFv(struct Object* this) asm("?HandShouldFeelWithMeshIntersect@Object@@UAE_NXZ");
// win1.41 004025c0 mac 10513b50 Object::SetSpecularColor(unsigned long)
void __fastcall SetSpecularColor__6ObjectFUl(struct Object* this, const void* edx, struct LH3DColor color) asm("?SetSpecularColor@Object@@UAEXULH3DColor@@@Z");
// win1.41 004025d0 mac 10110ae0 Object::GetSpecularColor(void)
struct LH3DColor __fastcall GetSpecularColor__6ObjectFv(struct Object* this) asm("?GetSpecularColor@Object@@UAE?AULH3DColor@@XZ");
// win1.41 004025e0 mac 10110490 Object::SetBeliefSprite(BeliefSprite *)
void __fastcall SetBeliefSprite__6ObjectFP12BeliefSprite(struct Object* this, const void* edx, struct LH3DSprite* sprite) asm("?SetBeliefSprite@Object@@UAEXPAVLH3DSprite@@@Z");
// win1.41 004025f0 mac 1016bab0 Object::GetBeliefSprite(void)
struct LH3DSprite* __fastcall GetBeliefSprite__6ObjectFv(struct Object* this) asm("?GetBeliefSprite@Object@@UAEPAVLH3DSprite@@XZ");
// win1.41 0063a140 mac 100515d0 Object::SetLife(float)
void __fastcall SetLife__6ObjectFf(struct Object* this, const void* edx, float life) asm("?SetLife@Object@@UAEXM@Z");
// win1.41 00402610 mac 1005f530 Object::IsAlive(void)
bool __fastcall IsAlive__6ObjectFv(struct Object* this) asm("?IsAlive@Object@@UAE_NXZ");
// win1.41 00637810 mac 1004b140 Object::ReduceLife(float, GPlayer *)
void __fastcall ReduceLife__6ObjectFfP7GPlayer(struct Object* this, const void* edx, float value, struct GPlayer* player) asm("?ReduceLife@Object@@UAEMMPAVGPlayer@@@Z");
// win1.41 00637870 mac 103d6b50 Object::IncreaseLife(float)
void __fastcall IncreaseLife__6ObjectFf(struct Object* this, const void* edx, float value) asm("?IncreaseLife@Object@@UAEXM@Z");
// win1.41 0063aaf0 mac 103cff40 Object::GetSacrificeValue(void)
float __fastcall GetSacrificeValue__6ObjectFv(struct Object* this) asm("?GetSacrificeValue@Object@@UAEMXZ");
// win1.41 00637c20 mac 103d63c0 Object::ReduceLifeDueToBurning(float, GPlayer *)
void __fastcall ReduceLifeDueToBurning__6ObjectFfP7GPlayer(struct Object* this, const void* edx, float param_1, struct GPlayer* param_2) asm("?ReduceLifeDueToBurning@Object@@UAEXMPAVGPlayer@@@Z");
// win1.41 00637900 mac 103d6a00 Object::FillInEffectDefenceMultiplier(EffectNumbers &)
void __fastcall FillInEffectDefenceMultiplier__6ObjectFR13EffectNumbers(struct Object* this, const void* edx, struct EffectNumbers* param_1) asm("?FillInEffectDefenceMultiplier@Object@@UAEXPAVEffectNumbers@@@Z");
// win1.41 00637980 mac 103d6510 Object::ApplyEffect(EffectValues &, int)
void __fastcall ApplyEffect__6ObjectFR12EffectValuesi(struct Object* this, const void* edx, struct EffectValues* param_1, int param_2) asm("?ApplyEffect@Object@@UAEXPBXPAVEffectValues@@@Z");
// win1.41 00637d00 mac 103d6120 Object::GetDamageEffect(EffectValues &)
float __fastcall GetDamageEffect__6ObjectFR12EffectValues(struct Object* this, const void* edx, struct EffectValues* values) asm("?GetDamageEffect@Object@@UAEMPAVEffectValues@@@Z");
// win1.41 00637d80 mac 103d6050 Object::GetHealEffect(EffectValues &)
float __fastcall GetHealEffect__6ObjectFR12EffectValues(struct Object* this, const void* edx, struct EffectValues* values) asm("?GetHealEffect@Object@@UAEMPAVEffectValues@@@Z");
// win1.41 00637cf0 mac 103d6220 Object::GetActualObjectToEffect(GPlayer *, bool)
void* __fastcall GetActualObjectToEffect__6ObjectFP7GPlayerb(struct Object* this, const void* edx, struct GPlayer* player, bool param_2) asm("?GetActualObjectToEffect@Object@@UAEPAXPAVGPlayer@@_N@Z");
// win1.41 006392c0 mac 103d38b0 Object::DrawValue(long, float)
void __fastcall DrawValue__6ObjectFlf(struct Object* this, const void* edx, int param_1, float param_2) asm("?DrawValue@Object@@UAEXHM@Z");
// win1.41 00402640 mac 10368980 Object::ScaffoldMoved(Scaffold *)
void __fastcall ScaffoldMoved__6ObjectFP8Scaffold(struct Object* this, const void* edx, struct Scaffold* scaffold) asm("?ScaffoldMoved@Object@@UAEXPAVScaffold@@@Z");
// win1.41 00637ce0 mac 103d6270 Object::GetHeatCapacity(void)
float __fastcall GetHeatCapacity__6ObjectFv(struct Object* this) asm("?GetHeatCapacity@Object@@UAEMXZ");
// win1.41 00639a80 mac 103d2950 Object::GetFireGPHXDrawn(bool *, bool *, bool *, bool *)
void __fastcall GetFireGPHXDrawn__6ObjectFPbPbPbPb(struct Object* this, const void* edx, bool* param_1, bool* param_2, bool* param_3, bool* param_4) asm("?GetFireGPHXDrawn@Object@@UAEXPA_N000@Z");
// win1.41 00639a90 mac 103d2900 Object::GetRainCoolingMultiplier(void)
float __fastcall GetRainCoolingMultiplier__6ObjectFv(struct Object* this) asm("?GetRainCoolingMultiplier@Object@@UAEMXZ");
// win1.41 00639aa0 mac 1001a370 Object::GetDefaultFireCentrePos(MapCoords *)
struct LHPoint* __fastcall GetDefaultFireCentrePos__6ObjectFP9MapCoords(struct Object* this, const void* edx, struct LHPoint* pos) asm("?GetDefaultFireCentrePos@Object@@UAEPAULHPoint@@PAU2@@Z");
// win1.41 00639ac0 mac 103d2490 Object::GetDefaultFireRadius(void)
float __fastcall GetDefaultFireRadius__6ObjectFv(struct Object* this) asm("?GetDefaultFireRadius@Object@@UAEMXZ");
// win1.41 006378e0 mac 103d6ad0 Object::DestroyedByEffect(GPlayer *, float)
uint32_t __fastcall DestroyedByEffect__6ObjectFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* player, float param_2) asm("?DestroyedByEffect@Object@@UAEIPAVGPlayer@@M@Z");
// win1.41 00418fc0 mac 100a9d90 Object::Process(void)
uint32_t __fastcall Process__6ObjectFv(struct Object* this) asm("?Process@Object@@UAEIXZ");
// win1.41 00402650 mac 10368aa0 Object::ProcessBySpell(Spell *)
uint32_t __fastcall ProcessBySpell__6ObjectFP5Spell(struct Object* this, const void* edx, struct Spell* spell) asm("?ProcessBySpell@Object@@UAEIPAVSpell@@@Z");
// win1.41 00637ff0 mac 103d57e0 Object::ApplySingleEffect(EFFECT_TYPE, float, GameThing *, MapCoords const &)
void __fastcall ApplySingleEffect__6ObjectF11EFFECT_TYPEfP9GameThingRC9MapCoords(struct Object* this, const void* edx, enum EFFECT_TYPE param_1, float param_2, struct GameThing* param_3, const struct MapCoords* param_4) asm("?ApplySingleEffect@Object@@UAEXW4EFFECT_TYPE@@MPAVGameThing@@PBUMapCoords@@@Z");
// win1.41 00425340 mac 10368d70 Object::GetMesh( const(void))
int __fastcall GetMesh__6ObjectCFv(const struct Object* this) asm("?GetMesh@Object@@UAEHXZ");
// win1.41 00402660 mac 10368ae0 Object::GetDetailMesh( const(DETAIL_LEVEL))
int __fastcall GetDetailMesh__6ObjectCF12DETAIL_LEVEL(struct Object* this, const void* edx, int detail) asm("?GetDetailMesh@Object@@UAEHH@Z");
// win1.41 004648b0 mac 100e33f0 Object::Draw(void)
void __fastcall Draw__6ObjectFv(struct Object* this) asm("?Draw@Object@@UAEXXZ");
// win1.41 0051c820 mac 1001aa40 Object::DrawOutOfMap(bool)
void __fastcall DrawOutOfMap__6ObjectFb(struct Object* this, const void* edx, bool param_1) asm("?DrawOutOfMap@Object@@UAEX_N@Z");
// win1.41 00402670 mac 10109540 Object::IsG3DObjectDrawnInHand(void)
bool __fastcall IsG3DObjectDrawnInHand__6ObjectFv(struct Object* this) asm("?IsG3DObjectDrawnInHand@Object@@UAE_NXZ");
// win1.41 00402680 mac 100a83e0 Object::GetDrawRegion(LHRegion *)
void __fastcall GetDrawRegion__6ObjectFP8LHRegion(struct Object* this, const void* edx, struct LHRegion* param_1) asm("?GetDrawRegion@Object@@UAEXPAULHRegion@@@Z");
// win1.41 00402690 mac 103e4e10 Object::ProcessState(void)
uint32_t __fastcall ProcessState__6ObjectFv(struct Object* this) asm("?ProcessState@Object@@UAEIXZ");
// win1.41 006380b0 mac 103d5740 Object::GetProjectileSpeed(void)
float __fastcall GetProjectileSpeed__6ObjectFv(struct Object* this) asm("?GetProjectileSpeed@Object@@UAEMXZ");
// win1.41 004026a0 mac 103e4940 Object::CanBePickedUp(void)
bool __fastcall CanBePickedUp__6ObjectFv(struct Object* this) asm("?CanBePickedUp@Object@@UAE_NXZ");
// win1.41 00425c50 mac 100add90 Object::CanBeCrushed(void)
bool32_t __fastcall CanBeCrushed__6ObjectFv(struct Object* this) asm("?CanBeCrushed@Object@@UAE_NXZ");
// win1.41 00638160 mac 103d5490 Object::GetTopPos(void)
float __fastcall GetTopPos__6ObjectFv(struct Object* this) asm("?GetTopPos@Object@@UAEMXZ");
// win1.41 004026b0 mac 100a7df0 Object::GetVillagerHugRadius(void)
float __fastcall GetVillagerHugRadius__6ObjectFv(struct Object* this) asm("?GetVillagerHugRadius@Object@@UAEMXZ");
// win1.41 00638480 mac 103d51a0 Object::GetWeight(void)
float __fastcall GetWeight__6ObjectFv(struct Object* this) asm("?GetWeight@Object@@UAEMXZ");
// win1.41 00638200 mac 1007e8a0 Object::GetWorldMatrix(LHMatrix *)
void __fastcall GetWorldMatrix__6ObjectFP8LHMatrix(struct Object* this, const void* edx, struct LHMatrix* out) asm("?GetWorldMatrix@Object@@UAEXPAULHMatrix@@@Z");
// win1.41 00639b60 mac 103d21e0 Object::CanBeSuckedIntoVortex(LandscapeVortex *)
bool __fastcall CanBeSuckedIntoVortex__6ObjectFP15LandscapeVortex(struct Object* this, const void* edx, struct LandscapeVortex* param_1) asm("?CanBeSuckedIntoVortex@Object@@UAE_NPAVLandscapeVortex@@@Z");
// win1.41 00639b80 mac 103d2110 Object::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__6ObjectFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Villager* villager) asm("?GetDiscipleStateIfInteractedWith@Object@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 00639550 mac 103d3460 Object::GetWorkingPos(Object *)
struct MapCoords* __fastcall GetWorkingPos__6ObjectFP6Object(struct Object* this, const void* edx, struct MapCoords* param_1, struct Object* param_2) asm("?GetWorkingPos@Object@@UAEPAUMapCoords@@PAU2@PAV1@@Z");
// win1.41 00638150 mac 103d5500 Object::GetHeightForHandAboveInteractObject(void)
float __fastcall GetHeightForHandAboveInteractObject__6ObjectFv(struct Object* this) asm("?GetHeightForHandAboveInteractObject@Object@@UAEMXZ");
// win1.41 006385c0 mac 103d4cf0 Object::GetHandHelpMessageSet(void)
uint32_t __fastcall GetHandHelpMessageSet__6ObjectFv(struct Object* this) asm("?GetHandHelpMessageSet@Object@@UAEIXZ");
// win1.41 006385d0 mac 103d4c90 Object::GetHandHelpCondition(void)
uint32_t __fastcall GetHandHelpCondition__6ObjectFv(struct Object* this) asm("?GetHandHelpCondition@Object@@UAEIXZ");
// win1.41 00636be0 mac 103d84b0 Object::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__6ObjectFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@Object@@UAEXABUMapCoords@@@Z");
// win1.41 006364f0 mac 103d92f0 Object::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__6ObjectFv(struct Object* this) asm("?Get3DType@Object@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 004026d0 mac 10586d80 Object::GetFoodValue(FOOD_TYPE)
float __fastcall GetFoodValue__6ObjectF9FOOD_TYPE(struct Object* this, const void* edx, enum FOOD_TYPE type) asm("?GetFoodValue@Object@@UAEMW4FOOD_TYPE@@@Z");
// win1.41 006395c0 mac 103d3390 Object::GetWoodValue(void)
float __fastcall GetWoodValue__6ObjectFv(struct Object* this) asm("?GetWoodValue@Object@@UAEMXZ");
// win1.41 00402700 mac 10062630 Object::GetFoodType(void)
enum FOOD_TYPE __fastcall GetFoodType__6ObjectFv(struct Object* this) asm("?GetFoodType@Object@@UAE?AW4FOOD_TYPE@@XZ");
// win1.41 00639390 mac 103d3840 Object::GetImpressiveValue(void)
float __fastcall GetImpressiveValue__6ObjectFv(struct Object* this) asm("?GetImpressiveValue@Object@@UAEMXZ");
// win1.41 00402730 mac 1056f400 Object::IsSpellSeedReturnPoint( const(void))
bool __fastcall IsSpellSeedReturnPoint__6ObjectCFv(const struct Object* this) asm("?IsSpellSeedReturnPoint@Object@@UAE_NXZ");
// win1.41 00402740 mac 104d62b0 Object::IsABeliever(void)
bool32_t __fastcall IsABeliever__6ObjectFv(struct Object* this) asm("?IsABeliever@Object@@UAE_NXZ");
// win1.41 004192c0 mac 100a9dc0 Object::AsMultiMapFixed(void)
struct MultiMapFixed* __fastcall AsMultiMapFixed__6ObjectFv(struct Object* this) asm("?AsMultiMapFixed@Object@@UAEPAVMultiMapFixed@@XZ");
// win1.41 0063a8e0 mac 103d0400 Object::ApplyWaterSpell(SpellWater *)
float __fastcall ApplyWaterSpell__6ObjectFP10SpellWater(struct Object* this, const void* edx, struct SpellWater* spell) asm("?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z");
// win1.41 004192d0 mac 100a9e00 Object::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__6ObjectF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE type) asm("?IsResourceStore@Object@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 0063a930 mac 103d0360 Object::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool __fastcall DeleteObjectAndTakeResource__6ObjectFP6ObjectP16GInterfaceStatus(struct Object* this, const void* edx, struct Object* param_1, struct GInterfaceStatus* param_2) asm("?DeleteObjectAndTakeResource@Object@@UAE_NPAV1@PAVGInterfaceStatus@@@Z");
// win1.41 0063aad0 mac 103d0050 Object::GetRadiusMultiplierForApplyingPotToPos(void)
float __fastcall GetRadiusMultiplierForApplyingPotToPos__6ObjectFv(struct Object* this) asm("?GetRadiusMultiplierForApplyingPotToPos@Object@@UAEMXZ");
// win1.41 0063aae0 mac 103cffe0 Object::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
bool __fastcall DoCreatureMimicAfterAddingResource__6ObjectF13RESOURCE_TYPER16GInterfaceStatus(struct Object* this, const void* edx, enum RESOURCE_TYPE type, struct GInterfaceStatus* status) asm("?DoCreatureMimicAfterAddingResource@Object@@UAE_NW4RESOURCE_TYPE@@PAVGInterfaceStatus@@@Z");
// win1.41 00402750 mac 1056ee10 Object::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__6ObjectFv(struct Object* this) asm("?GetResourceType@Object@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 00402760 mac 1035b020 Object::GetDefaultResource(void)
int __fastcall GetDefaultResource__6ObjectFv(struct Object* this) asm("?GetDefaultResource@Object@@UAEHXZ");
// win1.41 00402770 mac 105a4d20 Object::SetPoisonedResource(RESOURCE_TYPE, int)
void __fastcall SetPoisonedResource__6ObjectF13RESOURCE_TYPEi(struct Object* this, const void* edx, enum RESOURCE_TYPE type, int param_2) asm("?SetPoisonedResource@Object@@UAEXW4RESOURCE_TYPE@@H@Z");
// win1.41 00402780 mac 10552240 Object::SetPoisoned(int)
void __fastcall SetPoisoned__6ObjectFi(struct Object* this, const void* edx, int param_1) asm("?SetPoisoned@Object@@UAEXH@Z");
// win1.41 00402790 mac 10109690 Object::IsLockedInInteract(void)
bool __fastcall IsLockedInInteract__6ObjectFv(struct Object* this) asm("?IsLockedInInteract@Object@@UAE_NXZ");
// win1.41 004027a0 mac 10109580 Object::SetDying(void)
bool __fastcall SetDying__6ObjectFv(struct Object* this) asm("?SetDying@Object@@UAE_NXZ");
// win1.41 00636ab0 mac 103d8820 Object::IsAttackable(Object *)
bool __fastcall IsAttackable__6ObjectFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?IsAttackable@Object@@UAE_NPAV1@@Z");
// win1.41 00636af0 mac 103d8770 Object::IsAllied(Object *)
bool __fastcall IsAllied__6ObjectFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?IsAllied@Object@@UAE_NPAV1@@Z");
// win1.41 00637e60 mac 103d5970 Object::IsTouching(MapCoords const &, MapCoords const &)
bool __fastcall IsTouching__6ObjectFRC9MapCoordsRC9MapCoords(const struct Object* this, const void* edx, struct MapCoords* param_1, struct MapCoords* param_2) asm("?IsTouching@Object@@UAE_NPAUMapCoords@@0@Z");
// win1.41 00637e30 mac 103d5ef0 Object::IsTouching(MapCoords const &)
bool __fastcall IsTouching__6ObjectFRC9MapCoords(const struct Object* this, const void* edx, struct MapCoords* param_1) asm("?IsTouching@Object@@UAE_NPAUMapCoords@@@Z");
// win1.41 00419300 mac 100a9e50 Object::StartOnFire(void)
void __fastcall StartOnFire__6ObjectFv(struct Object* this) asm("?StartOnFire@Object@@UAEXXZ");
// win1.41 004027b0 mac 100a8170 Object::EndOnFire(void)
void __fastcall EndOnFire__6ObjectFv(struct Object* this) asm("?EndOnFire@Object@@UAEXXZ");
// win1.41 00637fb0 mac 103d58a0 Object::GetDistanceFromObject(Object *)
float __fastcall GetDistanceFromObject__6ObjectFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?GetDistanceFromObject@Object@@UAEMPAV1@@Z");
// win1.41 006399d0 mac 10003b20 Object::GetTribalPower(TRIBE_TYPE)
float __fastcall GetTribalPower__6ObjectF10TRIBE_TYPE(struct Object* this, const void* edx, enum TRIBE_TYPE param_1) asm("?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z");
// win1.41 00419330 mac 100addd0 Object::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t __fastcall ValidForLockedSelectProcess__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?ValidForLockedSelectProcess@Object@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 004193d0 mac 100ade30 Object::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyStartLockedSelect__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?NetworkFriendlyStartLockedSelect@Object@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 004027d0 mac 1016eda0 Object::NetworkUnfriendlyStartLockedSelect(void)
bool32_t __fastcall NetworkUnfriendlyStartLockedSelect__6ObjectFv(struct Object* this) asm("?NetworkUnfriendlyStartLockedSelect@Object@@UAE_NXZ");
// win1.41 004027e0 mac 1056c2f0 Object::IsReadyForNetworkUnfriendlyLockedSelect(void)
bool32_t __fastcall IsReadyForNetworkUnfriendlyLockedSelect__6ObjectFv(struct Object* this) asm("?IsReadyForNetworkUnfriendlyLockedSelect@Object@@UAE_NXZ");
// win1.41 004027f0 mac 10577790 Object::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
bool32_t __fastcall NetworkUnfriendlyLockedSelect__6ObjectFP21ControlHandUpdateInfo(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1) asm("?NetworkUnfriendlyLockedSelect@Object@@UAE_NPAVControlHandUpdateInfo@@@Z");
// win1.41 00402800 mac 1037fcb0 Object::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
bool32_t __fastcall GetReadyForNetworkUnfriendlyEndLockedSelect__6ObjectFv(struct Object* this) asm("?GetReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ");
// win1.41 00402810 mac 102fd0c0 Object::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
bool32_t __fastcall IsReadyForNetworkUnfriendlyEndLockedSelect__6ObjectFv(struct Object* this) asm("?IsReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ");
// win1.41 00402820 mac 103e2470 Object::NetworkUnfriendlyEndLockedSelect(void)
bool32_t __fastcall NetworkUnfriendlyEndLockedSelect__6ObjectFv(struct Object* this) asm("?NetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ");
// win1.41 00402830 mac 1041d9a0 Object::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyEndLockedSelect__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?NetworkFriendlyEndLockedSelect@Object@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00402840 mac 1017df80 Object::ValidAsInterfaceTarget(void)
bool32_t __fastcall ValidAsInterfaceTarget__6ObjectFv(struct Object* this) asm("?ValidAsInterfaceTarget@Object@@UAE_NXZ");
// win1.41 00402850 mac 1016daa0 Object::ValidAsInterfaceLeashTarget(void)
bool32_t __fastcall ValidAsInterfaceLeashTarget__6ObjectFv(struct Object* this) asm("?ValidAsInterfaceLeashTarget@Object@@UAE_NXZ");
// win1.41 00402860 mac 103e0d10 Object::SelectOnlyAfterRecSystem(void)
bool32_t __fastcall SelectOnlyAfterRecSystem__6ObjectFv(struct Object* this) asm("?SelectOnlyAfterRecSystem@Object@@UAE_NXZ");
// win1.41 00402870 mac 105995f0 Object::ValidForPlaceInHand(GInterfaceStatus *)
bool32_t __fastcall ValidForPlaceInHand__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?ValidForPlaceInHand@Object@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00637660 mac 103d7300 Object::InterfaceSetInMagicHand(GInterfaceStatus *)
bool32_t __fastcall InterfaceSetInMagicHand__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceSetInMagicHand@Object@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00637670 mac 103d7280 Object::InterfaceSetOutMagicHand(GInterfaceStatus *)
bool32_t __fastcall InterfaceSetOutMagicHand__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceSetOutMagicHand@Object@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00402880 mac 1040fc60 Object::ValidToRemoveFromHand(GInterfaceStatus *, MapCoords const &)
bool32_t __fastcall ValidToRemoveFromHand__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2) asm("?ValidToRemoveFromHand@Object@@UAE_NPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 00402890 mac 100b16a0 Object::RemoveFromHand(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall RemoveFromHand__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2) asm("?RemoveFromHand@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 00636aa0 mac 100933f0 Object::ValidToShakeFromHand(void)
bool32_t __fastcall ValidToShakeFromHand__6ObjectFv(struct Object* this) asm("?ValidToShakeFromHand@Object@@UAE_NXZ");
// win1.41 004028a0 mac 101ca2e0 Object::InterfaceMustBeInInfluenceForInteraction(void)
bool32_t __fastcall InterfaceMustBeInInfluenceForInteraction__6ObjectFv(struct Object* this) asm("?InterfaceMustBeInInfluenceForInteraction@Object@@UAE_NXZ");
// win1.41 00636a90 mac 103d8920 Object::IsTuggable(void)
bool32_t __fastcall IsTuggable__6ObjectFv(struct Object* this) asm("?IsTuggable@Object@@UAE_NXZ");
// win1.41 004028b0 mac 101652d0 Object::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__6ObjectFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2) asm("?ValidToApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z");
// win1.41 004028c0 mac 10513670 Object::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__6ObjectFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@PAVGestureSystemPacketData@@@Z");
// win1.41 004028d0 mac 10110bf0 Object::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToApplyThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2) asm("?ValidToApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PAUMapCoords@@@Z");
// win1.41 004028e0 mac 10110b70 Object::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@PAVGestureSystemPacketData@@@Z");
// win1.41 004028f0 mac 1055f210 Object::ValidForLockedApplyProcess(GInterfaceStatus *)
uint32_t __fastcall ValidForLockedApplyProcess__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?ValidForLockedApplyProcess@Object@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00402900 mac 1016baf0 Object::ApplyUnlockProcess(GInterfaceStatus *)
uint32_t __fastcall ApplyUnlockProcess__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?ApplyUnlockProcess@Object@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00402910 mac 10364e10 Object::IsInterfacePowerUpWhenInHand( const(void))
uint32_t __fastcall IsInterfacePowerUpWhenInHand__6ObjectCFv(const struct Object* this) asm("?IsInterfacePowerUpWhenInHand@Object@@UAEIXZ");
// win1.41 00402920 mac 103ad050 Object::ApplyOnlyAfterRecSystem(void)
uint32_t __fastcall ApplyOnlyAfterRecSystem__6ObjectFv(struct Object* this) asm("?ApplyOnlyAfterRecSystem@Object@@UAEIXZ");
// win1.41 00402930 mac 10101e60 Object::ApplyOnlyAfterReleased(void)
uint32_t __fastcall ApplyOnlyAfterReleased__6ObjectFv(struct Object* this) asm("?ApplyOnlyAfterReleased@Object@@UAEIXZ");
// win1.41 004196b0 mac 100a5960 Object::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceValidToTap@Object@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 004196c0 mac 100a59b0 Object::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceTap@Object@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00402940 mac 100a0900 Object::InterfaceValidToGiveObject(GInterfaceStatus *, Object *)
uint32_t __fastcall InterfaceValidToGiveObject__6ObjectFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2) asm("?InterfaceValidToGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z");
// win1.41 00402950 mac 101c8d40 Object::InterfaceGiveObject(GInterfaceStatus *, Object *)
uint32_t __fastcall InterfaceGiveObject__6ObjectFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2) asm("?InterfaceGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z");
// win1.41 00402960 mac 105890f0 Object::InterfaceValidToInteractAsMapCoordsObject(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToInteractAsMapCoordsObject__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceValidToInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00402970 mac 1016bbe0 Object::InterfaceInteractAsMapCoordsObject(GInterfaceStatus *)
uint32_t __fastcall InterfaceInteractAsMapCoordsObject__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006385e0 mac 103d4a70 Object::ThrowObjectFromHand(GInterfaceStatus *, int)
uint32_t __fastcall ThrowObjectFromHand__6ObjectFP16GInterfaceStatusi(struct Object* this, const void* edx, struct GInterfaceStatus* status, int param_2) asm("?ThrowObjectFromHand@Object@@UAEIPAVGInterfaceStatus@@H@Z");
// win1.41 00402980 mac 1016aaf0 Object::ValidToSelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToSelectFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2) asm("?ValidToSelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 00402990 mac 1056d5f0 Object::ValidToApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToApplyFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2) asm("?ValidToApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 004029a0 mac 103692a0 Object::SelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall SelectFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2) asm("?SelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 004029b0 mac 103690d0 Object::ApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ApplyFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2) asm("?ApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 004029c0 mac 10369240 Object::ValidToFightThisToObject(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToFightThisToObject__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2) asm("?ValidToFightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 004029d0 mac 101cbb80 Object::FightThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall FightThisToObject__6ObjectFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2) asm("?FightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z");
// win1.41 004029e0 mac 100068d0 Object::IsEffectReceiver(EffectValues *)
bool32_t __fastcall IsEffectReceiver__6ObjectFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@Object@@UAE_NPAVEffectValues@@@Z");
// win1.41 00639960 mac 103d2ba0 Object::CanBeDestroyedBySpell(Spell *)
bool32_t __fastcall CanBeDestroyedBySpell__6ObjectFP5Spell(struct Object* this, const void* edx, struct Spell* param_1) asm("?CanBeDestroyedBySpell@Object@@UAE_NPAVSpell@@@Z");
// win1.41 00638cf0 mac 103d3f30 Object::GetImportance(void)
float __fastcall GetImportance__6ObjectFv(struct Object* this) asm("?GetImportance@Object@@UAEMXZ");
// win1.41 00636f00 mac 103d7760 Object::CanBeDestroyedBySpell_2(void)
uint32_t __fastcall InitialisePhysicsFromHand__6ObjectFR7LHPointR7LHPointP16GInterfaceStatusP6Objecti(struct Object* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, struct GInterfaceStatus* param_3, struct Object* param_4, int param_5) asm("?InitialisePhysicsFromHand@Object@@UAEIPAULHPoint@@0PAVGInterfaceStatus@@PAV1@H@Z");
// win1.41 00637480 mac 103d74c0 Object::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
uint32_t __fastcall InitialisePhysics__6ObjectFRC7LHPointRC7LHPointP6ObjectbP16GInterfaceStatus(struct Object* this, const void* edx, const struct LHPoint* param_1, const struct LHPoint* param_2, struct Object* param_3, bool param_4, struct GInterfaceStatus* param_5) asm("?InitialisePhysics@Object@@UAEIPBULHPoint@@0PAV1@_NPAVGInterfaceStatus@@@Z");
// win1.41 006376a0 mac 103d71b0 Object::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__6ObjectFv(struct Object* this) asm("?GetPhysicsConstantsType@Object@@UAEIXZ");
// win1.41 006376b0 mac 103d70b0 Object::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__6ObjectFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@Object@@UAEXPAVPhysOb@@@Z");
// win1.41 006375a0 mac 103d7350 Object::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__6ObjectFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Object@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0063a7b0 mac 103d07b0 Object::DropSfx(void)
uint32_t __fastcall DropSfx__6ObjectFv(struct Object* this) asm("?DropSfx@Object@@UAEIXZ");
// win1.41 00637730 mac 103d6f80 Object::GetBoundingSphere(LHPoint &, float &)
void __fastcall GetBoundingSphere__6ObjectFR7LHPointRf(struct Object* this, const void* edx, struct LHPoint* center, float* radius) asm("?GetBoundingSphere@Object@@UAEXPAULHPoint@@PAM@Z");
// win1.41 006377b0 mac 103d6f30 Object::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__6ObjectFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Object@@UAE_NXZ");
// win1.41 00419890 mac 100a9e80 Object::ChecksVerticesVObjects(void)
uint32_t __fastcall ChecksVerticesVObjects__6ObjectFv(struct Object* this) asm("?ChecksVerticesVObjects@Object@@UAEIXZ");
// win1.41 006377d0 mac 103d6e50 Object::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object *)
void __fastcall ShouldPhysicsRaiseObjectUntilNotIntersectingThis__6ObjectFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@Object@@UAEXPAV1@@Z");
// win1.41 00402a00 mac 100b06b0 Object::PhysicallyDestroysAbodes(void)
uint32_t __fastcall PhysicallyDestroysAbodes__6ObjectFv(struct Object* this) asm("?PhysicallyDestroysAbodes@Object@@UAEIXZ");
// win1.41 006377c0 mac 103d6ee0 Object::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__6ObjectFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Object@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 006377e0 mac 103d6e10 Object::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__6ObjectFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Object@@UAE_NXZ");
// win1.41 00402a10 mac 103db1f0 Object::GetAlwaysRemainsInPhysicsInternalSystem(void)
bool __fastcall GetAlwaysRemainsInPhysicsInternalSystem__6ObjectFv(struct Object* this) asm("?GetAlwaysRemainsInPhysicsInternalSystem@Object@@UAE_NXZ");
// win1.41 00637470 mac 103d7730 Object::HasSunk(void)
bool __fastcall HasSunk__6ObjectFv(struct Object* this) asm("?HasSunk@Object@@UAE_NXZ");
// win1.41 00638740 mac 103d48a0 Object::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__6ObjectFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@Object@@UAE_NPAVCreature@@@Z");
// win1.41 00638790 mac 103d43b0 Object::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void __fastcall AddToRoutePlan__6ObjectFP8RPHolderP8CreatureiPFi7Point2Dfi_v(struct Object* this, const void* edx, struct RPHolder* param_1, struct Creature* param_2, int param_3, void (__cdecl* param_4)(int param_1, struct Point2D param_2, float param_3, int param_4)) asm("?AddToRoutePlan@Object@@UAEXPAVRPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z");
// win1.41 006384c0 mac 103d5070 Object::GetRoutePlanRadius(Creature *)
float __fastcall GetRoutePlanRadius__6ObjectFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?GetRoutePlanRadius@Object@@UAEMPAVCreature@@@Z");
// win1.41 00638be0 mac 103d41e0 Object::VillagerMustAvoid(Villager *)
bool32_t __fastcall VillagerMustAvoid__6ObjectFP8Villager(struct Object* this, const void* edx, struct Villager* param_1) asm("?VillagerMustAvoid@Object@@UAE_NPAVVillager@@@Z");
// win1.41 00639a00 mac 103d2b20 Object::IsFireMan(void)
bool __fastcall IsFireMan__6ObjectFv(struct Object* this) asm("?IsFireMan@Object@@UAE_NXZ");
// win1.41 00638730 mac 10097740 Object::IsARootedObject(void)
bool __fastcall IsARootedObject__6ObjectFv(struct Object* this) asm("?IsARootedObject@Object@@UAE_NXZ");
// win1.41 00637690 mac 103d7220 Object::GetCollideSoundType(void)
enum SOUND_COLLISION_TYPE __fastcall GetCollideSoundType__6ObjectFv(struct Object* this) asm("?GetCollideSoundType@Object@@UAE?AW4SOUND_COLLISION_TYPE@@XZ");
// win1.41 004198a0 mac 101bd530 Object::IsSolidToNewAbode(void)
bool32_t __fastcall IsSolidToNewAbode__6ObjectFv(struct Object* this) asm("?IsSolidToNewAbode@Object@@UAE_NXZ");
// win1.41 00639b50 mac 103d2250 Object::RemoveFromGame(void)
uint32_t __fastcall RemoveFromGame__6ObjectFv(struct Object* this) asm("?RemoveFromGame@Object@@UAEIXZ");
// win1.41 00638430 mac 103d52a0 Object::GetLandingPointCount(void)
int __fastcall GetLandingPointCount__6ObjectFv(struct Object* this) asm("?GetLandingPointCount@Object@@UAEHXZ");
// win1.41 00638450 mac 103d5230 Object::GetLandingPoint(unsigned char, LHPoint *)
bool __fastcall GetLandingPoint__6ObjectFUcP7LHPoint(struct Object* this, const void* edx, uint8_t param_1, struct LHPoint* param_2) asm("?GetLandingPoint@Object@@UAE_NEPAULHPoint@@@Z");
// win1.41 00402ab0 mac 103e2750 Object::GetTastiness(void)
uint32_t __fastcall GetTastiness__6ObjectFv(struct Object* this) asm("?GetTastiness@Object@@UAEIXZ");
// win1.41 00402ac0 mac 102fd110 Object::IsScary(void)
bool __fastcall IsScary__6ObjectFv(struct Object* this) asm("?IsScary@Object@@UAE_NXZ");
// win1.41 00638cb0 mac 103d3fe0 Object::GetInspectObjectPos(Villager *, MapCoords *)
bool __fastcall GetInspectObjectPos__6ObjectFP8VillagerP9MapCoords(struct Object* this, const void* edx, struct Villager* param_1, struct MapCoords* pos) asm("?GetInspectObjectPos@Object@@UAE_NPAVVillager@@PAUMapCoords@@@Z");
// win1.41 0063ab10 mac 103cfef0 Object::DiscipleInHandNear(Villager &, GInterfaceStatus &)
void __fastcall DiscipleInHandNear__6ObjectFR8VillagerR16GInterfaceStatus(struct Object* this, const void* edx, struct Villager* param_1, struct GInterfaceStatus* status) asm("?DiscipleInHandNear@Object@@UAEXPAVVillager@@PAVGInterfaceStatus@@@Z");
// win1.41 00638cd0 mac 103d3f70 Object::GetSpecialPos(unsigned long, MapCoords *)
bool32_t __fastcall GetSpecialPos__6ObjectFUlP9MapCoords(struct Object* this, const void* edx, uint32_t index, struct MapCoords* pos) asm("?GetSpecialPos@Object@@UAE_NIPAUMapCoords@@@Z");
// win1.41 00419960 mac 100adee0 Object::GetTownArtifact(void)
struct GameThing* __fastcall GetTownArtifact__6ObjectFv(struct Object* this) asm("?GetTownArtifact@Object@@UAEPAVGameThing@@XZ");
// win1.41 00419970 mac 100adf20 Object::IsTownArtifact(void)
bool32_t __fastcall IsTownArtifact__6ObjectFv(struct Object* this) asm("?IsTownArtifact@Object@@UAE_NXZ");
// win1.41 00639ad0 mac 1008a4c0 Object::ProcessInHand(void)
bool __fastcall ProcessInHand__6ObjectFv(struct Object* this) asm("?ProcessInHand@Object@@UAE_NXZ");
// win1.41 00639b10 mac 103d22d0 Object::ProcessInInteract(GInterfaceStatus *)
uint32_t __fastcall ProcessInInteract__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?ProcessInInteract@Object@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00402ad0 mac 102fd170 Object::GetObjectCollide(void)
uint32_t __fastcall GetObjectCollide__6ObjectFv(struct Object* this) asm("?GetObjectCollide@Object@@UAEIXZ");
// win1.41 00639620 mac 103d3290 Object::CalculateForceAppliedBy(Living *)
float __fastcall CalculateForceAppliedBy__6ObjectFP6Living(struct Object* this, const void* edx, struct Living* param_1) asm("?CalculateForceAppliedBy@Object@@UAEMPAVLiving@@@Z");
// win1.41 00402ae0 mac 102fd140 Object::IsPushable(void)
bool __fastcall IsPushable__6ObjectFv(struct Object* this) asm("?IsPushable@Object@@UAE_NXZ");
// win1.41 006397c0 mac 103d2f90 Object::PushObject(Living *, MapCoords &)
void __fastcall PushObject__6ObjectFP6LivingR9MapCoords(struct Object* this, const void* edx, struct Living* param_1, struct MapCoords* param_2) asm("?PushObject@Object@@UAEXPAVLiving@@PAUMapCoords@@@Z");
// win1.41 00639640 mac 103d30f0 Object::PushObject(Living *)
void __fastcall PushObject__6ObjectFP6Living(struct Object* this, const void* edx, struct Living* param_1) asm("?PushObject@Object@@UAEXPAVLiving@@@Z");
// win1.41 00402af0 mac 1016eb20 Object::GetCarriedTreeType(void)
uint32_t __fastcall GetCarriedTreeType__6ObjectFv(struct Object* this) asm("?GetCarriedTreeType@Object@@UAEIXZ");
// win1.41 00402b00 mac 105069f0 Object::GetFacingPitch(void)
float __fastcall GetFacingPitch__6ObjectFv(struct Object* this) asm("?GetFacingPitch@Object@@UAEMXZ");
// win1.41 00402b10 mac 1058c010 Object::SetHeadPos(MapCoords *)
void __fastcall SetHeadPos__6ObjectFP9MapCoords(struct Object* this, const void* edx, struct MapCoords* param_1) asm("?SetHeadPos@Object@@UAEXPAUMapCoords@@@Z");
// win1.41 00402b30 mac 1016e7f0 Object::IsAPotFromABuildingSite(void)
bool __fastcall IsAPotFromABuildingSite__6ObjectFv(struct Object* this) asm("?IsAPotFromABuildingSite@Object@@UAE_NXZ");
// win1.41 00636cd0 mac 103d8340 Object::GetNearestEdgeOfObject(Object *)
void __fastcall GetNearestEdgeOfObject__6ObjectFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?GetNearestEdgeOfObject@Object@@UAEXPAV1@@Z");
// win1.41 00636d30 mac 103d8250 Object::GetNearestPosOfObject(Object *)
void __fastcall GetNearestPosOfObject__6ObjectFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?GetNearestPosOfObject@Object@@UAEXPAV1@@Z");
// win1.41 00636da0 mac 103d8190 Object::GetNearestEdgeToPos(MapCoords const &)
void __fastcall GetNearestEdgeToPos__6ObjectFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?GetNearestEdgeToPos@Object@@UAEXPBUMapCoords@@@Z");
// win1.41 00636df0 mac 103d80e0 Object::GetNearestEdge(float, float)
void __fastcall GetNearestEdge__6ObjectFff(struct Object* this, const void* edx, float param_1, float param_2) asm("?GetNearestEdge@Object@@UAEXMM@Z");
// win1.41 0063a220 mac 103d1140 Object::GetImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetImmersionTexture__6ObjectFv(struct Object* this) asm("?GetImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");
// win1.41 0063a7c0 mac 103d0770 Object::GetInHandImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetInHandImmersionTexture__6ObjectFv(struct Object* this) asm("?GetInHandImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");
// win1.41 00419a50 mac 100a5a00 Object::ShouldFootpathsGoRound(void)
bool __fastcall ShouldFootpathsGoRound__6ObjectFv(struct Object* this) asm("?ShouldFootpathsGoRound@Object@@UAE_NXZ");
// win1.41 0063a640 mac 103d0b20 Object::InitialiseIsFixedForMapList(void)
void __fastcall InitialiseIsFixedForMapList__6ObjectFv(struct Object* this) asm("?InitialiseIsFixedForMapList@Object@@UAEXH@Z");
// win1.41 00402b50 mac 10335f20 Object::StandAnimation(void)
uint32_t __fastcall StandAnimation__6ObjectFv(struct Object* this) asm("?StandAnimation@Object@@UAEIXZ");
// win1.41 00419b30 mac 1009cd00 Object::GetCollideData(void)
struct NewCollide* __fastcall GetCollideData__6ObjectFv(const struct Object* this) asm("?GetCollideData@Object@@UAEPAVNewCollide@@XZ");

DECLARE_LH_LINKED_LIST(Object);

// win1.41 005e2ff0 mac 103782a0 RequestChangeTexture(Object *)
void __cdecl RequestChangeTexture__FP6Object(struct Object* param_1);

#endif /* BW1_DECOMP_OBJECT_INCLUDED_H */
