#ifndef BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H
#define BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum DEATH_REASON, enum IMPRESSIVE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing, struct GameThingVftable */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Base;
struct Citadel;
struct Creature;
struct GameOSFile;
struct GameThingWithPos;
struct LHPoint;
struct Living;
struct Object;
struct Reaction;
struct WorshipSite;

struct GameThingWithPosVftable
{
  struct GameThingVftable super;  /* 0x0 */
  void (__fastcall* SetPos)(struct GameThingWithPos* this, const void* edx, const struct MapCoords* param_1);  /* 0xfc */
  struct MapCoords* (__fastcall* GetPos)(const struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1);  /* 0x100 */
  struct MapCoords* (__fastcall* GetArrivePos)(struct GameThingWithPos* this, const void* edx, struct MapCoords* coords);
  void (__fastcall* PhysicsEditorCreate)(struct GameThingWithPos* this, const void* edx, int param_1);
  uint32_t (__fastcall* GetCreatureBeliefType)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetCreatureBeliefListType)(struct GameThingWithPos* this);  /* 0x110 */
  struct Citadel* (__fastcall* GetCitadel)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetOrigin)(struct GameThingWithPos* this);
  float (__fastcall* GetLife)(struct GameThingWithPos* this);
  float (__fastcall* GetScale)(struct GameThingWithPos* this);  /* 0x120 */
  void (__fastcall* SetScale)(struct GameThingWithPos* this, const void* edx, float scale);
  float (__fastcall* GetPower)(const struct GameThingWithPos* this);
  float (__fastcall* GetPSysPower)(const struct GameThingWithPos* this);
  float (__fastcall* GetSpeedInMetres)(const struct GameThingWithPos* this);  /* 0x130 */
  void (__fastcall* SetSpeedInMetres)(struct GameThingWithPos* this, const void* edx, float speed, int scale);
  float (__fastcall* GetRunningSpeedInMetres)(struct GameThingWithPos* this);
  float (__fastcall* GetDistanceFromObject)(struct GameThingWithPos* this, const void* edx, const struct MapCoords* target);
  float (__fastcall* GetDefaultSpeedInMetres)(struct GameThingWithPos* this);  /* 0x140 */
  void (__fastcall* SetHeight)(struct GameThingWithPos* this, const void* edx, float height);
  void (__fastcall* SetMaxHeight)(struct GameThingWithPos* this, const void* edx, float height);
  float (__fastcall* GetMaxHeight)(struct GameThingWithPos* this);
  void (__fastcall* GetPSysBeamTargetPos)(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos);  /* 0x150 */
  float (__fastcall* GetSpeedInMetresPerSecond)(const struct GameThingWithPos* this);
  void (__fastcall* SetSpeedInMetresPerSecond)(struct GameThingWithPos* this, const void* edx, float speed, int scale);
  float (__fastcall* GetRunningSpeedInMetresPerSecond)(struct GameThingWithPos* this);
  float (__fastcall* GetDefaultSpeedInMetresPerSecond)(struct GameThingWithPos* this);  /* 0x160 */
  bool (__fastcall* IsAnimate)(struct GameThingWithPos* this);
  void (__fastcall* GetMovementDirection)(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos);
  void (__fastcall* GetPhysicsMovementDirection)(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos);
  void (__fastcall* GetInteractPos)(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos);  /* 0x170 */
  bool (__fastcall* IsMoving)(const struct GameThingWithPos* this);
  bool (__fastcall* IsObjectInMap_0)(struct GameThingWithPos* this);
  bool (__fastcall* IsDrowning)(struct GameThingWithPos* this);
  bool (__fastcall* IsCannotBePickedUp)(const struct GameThingWithPos* this);  /* 0x180 */
  uint32_t (__fastcall* GetOverwritePickUpToolTip)(struct GameThingWithPos* this);
  bool (__fastcall* IsStompable)(struct GameThingWithPos* this);
  bool (__fastcall* IsAvailableForStateChange)(struct GameThingWithPos* this);
  bool (__fastcall* IsInteractable)(struct GameThingWithPos* this);  /* 0x190 */
  uint32_t (__fastcall* GetOverwriteInteractableToolTip)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetOverwriteDropToolTip)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetOverwriteTapToolTip)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsCastShadowAtNight)(struct GameThingWithPos* this);  /* 0x1a0 */
  void (__fastcall* CleanupWhenDeleted)(struct GameThingWithPos* this, const void* edx, int param_1);
  enum IMPRESSIVE_TYPE (__fastcall* GetImpressiveType)(struct GameThingWithPos* this);
  float (__fastcall* GetImpressiveIntensity)(struct GameThingWithPos* this, const void* edx, enum IMPRESSIVE_TYPE type);
  float (__fastcall* GetImpressiveValue)(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2);  /* 0x1b0 */
  float (__fastcall* GetUpdateOfBoredomValue)(struct GameThingWithPos* this, const void* edx, struct Reaction* param_1, struct GameThingWithPos* param_2);
  bool (__fastcall* IsTown_0)(struct GameThingWithPos* this);
  bool (__fastcall* IsTown_1)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);
  bool (__fastcall* IsActivityObjectWhichAngerAppliesTo)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);  /* 0x1c0 */
  bool (__fastcall* IsActivityObjectWhichCompassionAppliesTo)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);
  bool (__fastcall* IsActivityObjectWhichPlayfulnessAppliesTo)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);
  bool (__fastcall* IsTownBelongingToAnotherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);
  bool32_t (__fastcall* TrueFunction)(struct GameThingWithPos* this);  /* 0x1d0 */
  bool32_t (__fastcall* FalseFunction)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsNotLiving)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsSuitableForCreatureActivity)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsTownCentre)(struct GameThingWithPos* this);  /* 0x1e0 */
  bool32_t (__fastcall* IsTotemStatue)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsTownDesireFlag)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsRock_1)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsRock_0)(struct GameThingWithPos* this);  /* 0x1f0 */
  bool32_t (__fastcall* IsSpellDispenser)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsMist)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsQueryIcon)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsStreetLight)(struct GameThingWithPos* this);  /* 0x200 */
  bool32_t (__fastcall* IsStreetLantern)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsAbode)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsField_1)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsField_0)(struct GameThingWithPos* this);  /* 0x210 */
  bool32_t (__fastcall* IsBuildingMaterial)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsMagicFireBall)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsSuitableForCreatureAction)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsCitadelHeart)(struct GameThingWithPos* this);  /* 0x220 */
  bool32_t (__fastcall* IsDamaged)(struct GameThingWithPos* this);
  bool32_t (__fastcall* CanBeHealedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeEatenByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanCreatureEatMe)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x230 */
  bool32_t (__fastcall* CanBeAttackedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeFrighteningToCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeHelpedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBePlayedWithByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x240 */
  bool32_t (__fastcall* CanBeImpressedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeInspectedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBePoodUponByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeBefriendedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x250 */
  bool32_t (__fastcall* CanBeSleptNextToByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBePickedUpByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeStrokedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeKissedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x260 */
  bool32_t (__fastcall* CanBeSetOnFire)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeStompedOnByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeThrownByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeGivenToVillager)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x270 */
  bool32_t (__fastcall* CanBePutInAStoragePit)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeDestroyedByStoning)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeStonedAndEatenByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeExaminedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x280 */
  bool32_t (__fastcall* CanBeFoughtByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanReceiveGifts)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanActAsAContainer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsBeingBuilt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x290 */
  bool32_t (__fastcall* NeedsRepair)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsOnFire)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsNotOnFire)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeUsedForBuilding)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2a0 */
  bool32_t (__fastcall* IsMushroom)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeUsedForRepair)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeGivenToTown)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeUsedToHoldWater)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2b0 */
  bool32_t (__fastcall* CanBePutInFoodPile)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBePutInWoodPile)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanHaveMagicFoodCastOnMe)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanHaveMagicWoodCastOnMe)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2c0 */
  bool32_t (__fastcall* CanBeBroughtBackToCitadel)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsVillager)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsVillagerFarFromHome)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsVillagerInTownWithoutManyBreeders)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2d0 */
  bool32_t (__fastcall* IsVillagerNotWorshipping)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsVillagerBelongingToOtherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsCow)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBePoodOn)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2e0 */
  bool32_t (__fastcall* IsVillagerWhoHasNotBeenImpressedRecently)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsVillagerWhoHasNotBeenDancedWithRecently)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* DoesVillagerBelongToATownWhichIsAlreadyImpressed)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* DoesTotemBelongToATownWhichIsVeryImpressedIndeed)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2f0 */
  bool32_t (__fastcall* IsDominantCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeDancedWith)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsAggressive)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsStoragePit)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x300 */
  bool32_t (__fastcall* IsWorshipSite_1)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsWorshipSite_0)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  struct WorshipSite* (__fastcall* GetWorshipSite)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsWorkshop_0)(struct GameThingWithPos* this);  /* 0x310 */
  bool32_t (__fastcall* IsWorkshop_1)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsBuildingWhichIsBeingBuilt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsStoragePitWithFoodInIt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsFieldWhichNeedsWatering)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x320 */
  bool32_t (__fastcall* IsFieldWithFoodInIt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsFieldBelongingToAnotherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsStoragePitBelongingToAnotherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsStoragePitBelongingToMyPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x330 */
  bool32_t (__fastcall* BenefitsFromHavingWaterSprinkledOnIt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsTree_1)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsTree_0)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsTreeNotTooNearPlannedForest)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x340 */
  bool32_t (__fastcall* IsTreeBigEnoughForCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsAFoodPileOutsideStoragePit)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsAWoodPileOutsideStoragePit)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsDoingSomethingInteresting)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x350 */
  bool32_t (__fastcall* CanBeUsedForBuildingHomeByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsPickupableRock)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsCitadelPart_0)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsCitadelPart_1)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x360 */
  bool32_t (__fastcall* IsPlayingFootball)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsPlayingFootballAndMySideHasJustScored)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsPlayingFootballAndOtherSideHasJustScored)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeBroughtHomeByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x370 */
  bool32_t (__fastcall* IsAnimalBelongingToOtherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsOneOffSpellBelongingToOtherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsOneOffSpellAggressive)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsOneOffSpellCompassionate)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x380 */
  bool32_t (__fastcall* IsOneOffSpellPlayful)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsOneOffSpellToRestoreHealth)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeKickedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeStolenByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x390 */
  bool32_t (__fastcall* IsStealableByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsStealableSpell)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsStealableScaffold)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsTownBelongingToOtherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x3a0 */
  bool32_t (__fastcall* IsTotemWithStealableSpell)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsCreatureAvailableForJointActivity)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsCreatureNotAvailableForJointActivity)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsToyAwayFromHome)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x3b0 */
  bool32_t (__fastcall* IsToy)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsToyBall)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsToyDie)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsToyCuddly)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x3c0 */
  bool32_t (__fastcall* IsLiving_1)(const struct GameThingWithPos* this);
  bool32_t (__fastcall* IsLiving_0)(const struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsFence)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsSpellIcon)(struct GameThingWithPos* this);  /* 0x3d0 */
  bool32_t (__fastcall* NothingScareyNearMe)(const struct GameThingWithPos* this);
  bool32_t (__fastcall* CanBeUsedForThrowingDamageByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* IsCreatureWhoSeemsFriendly)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool32_t (__fastcall* CanBeThrownInTheSeaPlayfully)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x3e0 */
  uint32_t (__fastcall* GetCreatureMimicType)(struct GameThingWithPos* this);
  float (__fastcall* GetHowMuchCreatureWantsToLookAtMe)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsFlock)(const struct GameThingWithPos* this);
  bool32_t (__fastcall* IsDance)(const struct GameThingWithPos* this);  /* 0x3f0 */
  bool32_t (__fastcall* IsReward)(const struct GameThingWithPos* this);
  bool32_t (__fastcall* IsScriptContainer)(const struct GameThingWithPos* this);
  bool32_t (__fastcall* IsWeather)(const struct GameThingWithPos* this);
  bool32_t (__fastcall* IsSpell)(const struct GameThingWithPos* this);  /* 0x400 */
  bool32_t (__fastcall* IsDeletedWhenReleasedFromScript)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsMobileWallHug)(const struct GameThingWithPos* this);
  bool32_t (__fastcall* IsActive)(const struct GameThingWithPos* this);
  bool32_t (__fastcall* IsObjectTurningTooFastForCameraToFollowSmoothly)(struct GameThingWithPos* this);  /* 0x410 */
  void (__fastcall* CalculateWhereIWillBeAfterNSeconds)(struct GameThingWithPos* this, const void* edx, float seconds, struct LHPoint* outPos);
  uint32_t (__fastcall* AttitudeToCreatureEating)(struct GameThingWithPos* this);
  const char* (__fastcall* GetText)(struct GameThingWithPos* this);
  float (__fastcall* CalculateDesireForFood)(struct GameThingWithPos* this);  /* 0x420 */
  float (__fastcall* CalculateDesireForRest)(struct GameThingWithPos* this);
  float (__fastcall* CalculatePeopleHidingIndicator)(struct GameThingWithPos* this);
  float (__fastcall* GetHeight)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsReadyForNewScriptAction)(struct GameThingWithPos* this);  /* 0x430 */
  int (__fastcall* ForDrawFXGetNumVertices)(struct GameThingWithPos* this);
  void (__fastcall* ForDrawFXGetVertexPos)(struct GameThingWithPos* this, const void* edx, int param_1, struct LHPoint* param_2);
  void (__fastcall* SetInScript)(struct GameThingWithPos* this, const void* edx, int param_1);
  void (__fastcall* SetControlledByScript)(struct GameThingWithPos* this, const void* edx, int param_1);  /* 0x440 */
  enum DEATH_REASON (__fastcall* GetDeathReason)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsInScript)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsMaleVillager)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsFemaleVillager)(struct GameThingWithPos* this);  /* 0x450 */
  bool32_t (__fastcall* IsAnimal)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsAChild)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsHouse)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsObject)(struct GameThingWithPos* this);  /* 0x460 */
  bool32_t (__fastcall* IsFootball)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsCitadel)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsForest)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsMobileObject)(struct GameThingWithPos* this);  /* 0x470 */
  bool32_t (__fastcall* IsMobileStatic)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsAnyKindOfTree)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsDeadTree)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsPileFood)(struct GameThingWithPos* this);  /* 0x480 */
  bool32_t (__fastcall* IsFeature)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsScriptMarker)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsScriptHighlight)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsWonder)(struct GameThingWithPos* this);  /* 0x490 */
  bool32_t (__fastcall* IsInfluenceRing)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsPuzzleGame)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsScaffold)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsSkeleton)(const struct GameThingWithPos* this);  /* 0x4a0 */
  bool32_t (__fastcall* IsPoisoned)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsSpeedUp)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsParticleContainer)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsSacrificeAltar)(struct GameThingWithPos* this);  /* 0x4b0 */
  bool32_t (__fastcall* IsPot)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsComputerPlayer)(struct GameThingWithPos* this);
  bool32_t (__fastcall* CanBeThrownByPlayer)(struct GameThingWithPos* this);
  void (__fastcall* SetSkeleton)(struct GameThingWithPos* this, const void* edx, int index);  /* 0x4c0 */
  bool32_t (__fastcall* IsSpellSeed)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsSpellShield)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsPileResource)(struct GameThingWithPos* this);
  bool32_t (__fastcall* IsScriptTimer)(struct GameThingWithPos* this);  /* 0x4d0 */
  bool32_t (__fastcall* CreateBuildingSite)(struct GameThingWithPos* this);
  enum HELP_TEXT (__fastcall* GetQueryFirstEnumText)(struct GameThingWithPos* this);
  enum HELP_TEXT (__fastcall* GetQueryLastEnumText)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetFOVHelpMessageSet)(struct GameThingWithPos* this);  /* 0x4e0 */
  uint32_t (__fastcall* GetFOVHelpCondition)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetScriptObjectType)(struct GameThingWithPos* this);
  float (__fastcall* GetFacingDirection)(struct GameThingWithPos* this);
  void (__fastcall* SetAffectedByWind)(struct GameThingWithPos* this, const void* edx, int param_1);  /* 0x4f0 */
  float (__fastcall* GetReactionPower)(struct GameThingWithPos* this);
  void (__fastcall* GetSpellCastPos)(struct GameThingWithPos* this, const void* edx, struct MapCoords* outPos);
  void (__fastcall* CleanUpBeforeReset)(struct GameThingWithPos* this);
};
static_assert(sizeof(struct GameThingWithPosVftable) == 0x500, "Data type is of wrong size");

union GameThingWithPosBase
{
  struct GameThing super;
  struct GameThingWithPosVftable* vftable;
};
static_assert(sizeof(union GameThingWithPosBase) == 0x14, "Data type is of wrong size");

struct GameThingWithPos
{
  union GameThingWithPosBase base;  /* 0x0 */
  struct MapCoords coords;  /* 0x14 */
  struct Object* map_child;  /* 0x20 */
  uint16_t field_0x24;
  uint8_t field_0x26;
};
static_assert(sizeof(struct GameThingWithPos) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c7f30 mac inlined GameThingWithPos::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GameThingWithPos asm("??_R0?AVGameThingWithPos@@@8");
// win1.41 009a63d8 mac inlined GameThingWithPos::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GameThingWithPos asm("??_R1A@?0A@A@GameThingWithPos@@8");
// win1.41 009a7a50 mac inlined GameThingWithPos::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GameThingWithPos asm("??_R2GameThingWithPos@@8");
// win1.41 009a7a60 mac inlined GameThingWithPos::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GameThingWithPos asm("??_R3GameThingWithPos@@8");
// win1.41 008c319c mac 107313b0 GameThingWithPos::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16GameThingWithPos asm("??_R4GameThingWithPos@@6B@");
// win1.41 008c31a0 mac 107313c8 GameThingWithPos::`vftable'
extern const struct GameThingWithPosVftable __vt__16GameThingWithPos asm("??_7GameThingWithPos@@6B@");

// Constructors

// win1.41 0055d050 mac 101bb2c0 GameThingWithPos::GameThingWithPos(void)
struct GameThingWithPos* __fastcall __ct__16GameThingWithPosFv(struct GameThingWithPos* this) asm("??0GameThingWithPos@@QAE@XZ");

// Non-virtual Destructors

// win1.41 00424800 mac 1015a100 GameThingWithPos::~GameThingWithPos(void)
void __fastcall __dt__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, uint8_t param_1) asm("??1GameThingWithPos@@UAE@XZ");

// Non-virtual methods

// win1.41 0056fe70 mac 103793b0 GameThingWithPos::GetBoredomMultiplier(Reaction *)
int __fastcall GetBoredomMultiplier__16GameThingWithPosFP8Reaction(struct GameThingWithPos* this, const void* edx, struct Reaction* param_1) asm("?GetBoredomMultiplier@GameThingWithPos@@QAEHPAVReaction@@@Z");
// win1.41 005705d0 mac 10098a30 GameThingWithPos::SetToZero(void)
void __fastcall SetToZero__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?SetToZero@GameThingWithPos@@QAEXXZ");
// win1.41 00768540 mac 10594d20 GameThingWithPos::AttitudeToCreatureNone(void)
uint32_t __fastcall AttitudeToCreatureNone__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?AttitudeToCreatureNone@GameThingWithPos@@QAEIXZ");
// win1.41 00768550 mac 00768550 GameThingWithPos::AttitudeToCreatureFear(void)
uint32_t __fastcall AttitudeToCreatureFear__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?AttitudeToCreatureFear@GameThingWithPos@@QAEIXZ");
// win1.41 00768560 mac 10594c80 GameThingWithPos::AttitudeToCreatureRespect(void)
uint32_t __fastcall AttitudeToCreatureRespect__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?AttitudeToCreatureRespect@GameThingWithPos@@QAEIXZ");

// Override methods

// win1.41 0056fe00 mac 100bc3e0 GameThingWithPos::ToBeDeleted(int)
void __fastcall ToBeDeleted__16GameThingWithPosFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GameThingWithPos@@UAEXH@Z");
// win1.41 0056fe20 mac 106fd140 GameThingWithPos::Get3DSoundPos(LHPoint*)
int __fastcall Get3DSoundPos__16GameThingWithPosFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1) asm("?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z");
// win1.41 00570350 mac 10005560 GameThingWithPos::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void __fastcall UseFootpathIfNecessary__16GameThingWithPosFP6LivingRC9MapCoordsUc(struct GameThing* this, const void* edx, struct Living* param_1, const struct MapCoords* param_2, unsigned char param_3) asm("?UseFootpathIfNecessary@GameThingWithPos@@QAEXPAVLiving@@ABUMapCoords@@E@Z");
// win1.41 004178f0 mac 101bb350 GameThingWithPos::GetDebugText(void)
char* __fastcall GetDebugText__16GameThingWithPosFv(struct GameThing* this) asm("?GetDebugText@GameThingWithPos@@QAEPADXZ");
// win1.41 005704a0 mac 1016a2c0 GameThingWithPos::Load(GameOSFile &)
uint32_t __fastcall Load__16GameThingWithPosFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z");
// win1.41 005703f0 mac 10512f10 GameThingWithPos::Save(GameOSFile &)
uint32_t __fastcall Save__16GameThingWithPosFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z");
// win1.41 00570560 mac 10430e60 GameThingWithPos::GetSaveType(void)
uint32_t __fastcall GetSaveType__16GameThingWithPosFv(struct GameThing* this) asm("?GetSaveType@GameThingWithPos@@QAEKXZ");
// win1.41 00401940 mac 1004d010 GameThingWithPos::SetPos(MapCoords const &)
void __fastcall SetPos__16GameThingWithPosFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* param_2) asm("?SetPos@GameThingWithPos@@QAEXABUMapCoords@@@Z");
// win1.41 00401960 mac 10032b70 GameThingWithPos::GetPos(void)
struct MapCoords* __fastcall GetPos__16GameThingWithPosFv(const struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetPos@GameThingWithPos@@QAEPAUMapCoords@@XZ");
// win1.41 00405260 mac 101c7ec0 GameThingWithPos::GetArrivePos(void)
struct MapCoords* __fastcall GetArrivePos__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetArrivePos@GameThingWithPos@@QAEPAUMapCoords@@XZ");
// win1.41 00401980 mac 103d18f0 GameThingWithPos::GetArriPhysicsEditorCreatevePos(int)
void __fastcall PhysicsEditorCreate__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@GameThingWithPos@@QAEXH@Z");
// win1.41 00405280 mac 103e5940 GameThingWithPos::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@GameThingWithPos@@UAEIXZ");
// win1.41 00401990 mac 103e0cc0 GameThingWithPos::GetCreatureBeliefListType(void)
uint32_t __fastcall GetCreatureBeliefListType__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefListType@GameThingWithPos@@UAEIXZ");
// win1.41 004019a0 mac 103e0d50 GameThingWithPos::GetCitadel(void)
struct Citadel* __fastcall GetCitadel__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetCitadel@GameThingWithPos@@UAEPAUCitadel@@XZ");
// win1.41 00405290 mac 103efe40 GameThingWithPos::GetOrigin(void)
uint32_t __fastcall GetOrigin__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetOrigin@GameThingWithPos@@UBEIXZ");
// win1.41 004052a0 mac 103e1210 GameThingWithPos::GetLife(void)
float __fastcall GetLife__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetLife@GameThingWithPos@@UBEMXZ");
// win1.41 004247e0 mac 103e0c80 GameThingWithPos::GetScale(void)
float __fastcall GetScale__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetScale@GameThingWithPos@@UBEMXZ");
// win1.41 004247f0 mac 103e31e0 GameThingWithPos::SetScale(float)
void __fastcall SetScale__16GameThingWithPosFf(struct GameThingWithPos* this, const void* edx, float scale) asm("?SetScale@GameThingWithPos@@UAEXM@Z");
// win1.41 0056fe60 mac 100bbfe0 GameThingWithPos::GetPower( const(void))
float __fastcall GetPower__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?GetPower@GameThingWithPos@@UBEMXZ");
// win1.41 0056fec0 mac 10513050 GameThingWithPos::GetPSysPower( const(void))
float __fastcall GetPSysPower__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?GetPSysPower@GameThingWithPos@@UBEMXZ");
// win1.41 00570220 mac 103e3220 GameThingWithPos::GetSpeedInMetres( const(void))
float __fastcall GetSpeedInMetres__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?GetSpeedInMetres@GameThingWithPos@@UBEMXZ");
// win1.41 00570210 mac 10357d80 GameThingWithPos::SetSpeedInMetres(float, int)
void __fastcall SetSpeedInMetres__16GameThingWithPosFfi(struct GameThingWithPos* this, const void* edx, float speed, int scale) asm("?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z");
// win1.41 00570230 mac 10492670 GameThingWithPos::GetRunningSpeedInMetres(void)
float __fastcall GetRunningSpeedInMetres__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ");
// win1.41 005702b0 mac 10172410 GameThingWithPos::GetDistanceFromObject(MapCoords const &)
float __fastcall GetDistanceFromObject__16GameThingWithPosFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* target) asm("?GetDistanceFromObject@GameThingWithPos@@UBEMPAUMapCoords@@@Z");
// win1.41 00570240 mac 101473d0 GameThingWithPos::GetDefaultSpeedInMetres(void)
float __fastcall GetDefaultSpeedInMetres__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ");
// win1.41 004019b0 mac 103e1140 GameThingWithPos::SetHeight(float)
void __fastcall SetHeight__16GameThingWithPosFf(struct GameThingWithPos* this, const void* edx, float height) asm("?SetHeight@GameThingWithPos@@UAEXM@Z");
// win1.41 004019c0 mac 103e3580 GameThingWithPos::SetMaxHeight(float)
void __fastcall SetMaxHeight__16GameThingWithPosFf(struct GameThingWithPos* this, const void* edx, float height) asm("?SetMaxHeight@GameThingWithPos@@UAEXM@Z");
// win1.41 004019d0 mac 103e11c0 GameThingWithPos::GetMaxHeight(void)
float __fastcall GetMaxHeight__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetMaxHeight@GameThingWithPos@@UAEMXZ");
// win1.41 005702e0 mac 10110d20 GameThingWithPos::GetPSysBeamTargetPos(LHPoint *)
void __fastcall GetPSysBeamTargetPos__16GameThingWithPosFP7LHPoint(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos) asm("?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z");
// win1.41 00570260 mac 1055f490 GameThingWithPos::GetSpeedInMetresPerSecond( const(void))
float __fastcall GetSpeedInMetresPerSecond__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ");
// win1.41 00570250 mac 101723c0 GameThingWithPos::SetSpeedInMetresPerSecond(float, int)
void __fastcall SetSpeedInMetresPerSecond__16GameThingWithPosFfi(struct GameThingWithPos* this, const void* edx, float speed, int scale) asm("?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z");
// win1.41 00570270 mac 100bc060 GameThingWithPos::GetRunningSpeedInMetresPerSecond(void)
float __fastcall GetRunningSpeedInMetresPerSecond__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ");
// win1.41 00570280 mac 1055e070 GameThingWithPos::GetDefaultSpeedInMetresPerSecond(void)
float __fastcall GetDefaultSpeedInMetresPerSecond__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ");
// win1.41 004019e0 mac 103e1180 GameThingWithPos::IsAnimate(void)
bool __fastcall IsAnimate__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsAnimate@GameThingWithPos@@UAE_NXZ");
// win1.41 0056ff20 mac 1019c820 GameThingWithPos::GetMovementDirection(LHPoint *)
void __fastcall GetMovementDirection__16GameThingWithPosFP7LHPoint(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos) asm("?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z");
// win1.41 0056ff50 mac 1056c0f0 GameThingWithPos::GetPhysicsMovementDirection(LHPoint *)
void __fastcall GetPhysicsMovementDirection__16GameThingWithPosFP7LHPoint(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos) asm("?GetPhysicsMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z");
// win1.41 004019f0 mac 103efd20 GameThingWithPos::GetInteractPos(void)
void __fastcall GetInteractPos__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos) asm("?GetInteractPos@GameThingWithPos@@UAEXPAULHPoint@@@Z");
// win1.41 004052b0 mac 103efb80 GameThingWithPos::IsMoving( const(void))
bool __fastcall IsMoving__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsMoving@GameThingWithPos@@UBE_NXZ");
// win1.41 004052c0 mac 103f07b0 GameThingWithPos::IsObjectInMap(void)
bool __fastcall IsObjectInMap__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsObjectInMap@GameThingWithPos@@UAE_NXZ");
// win1.41 004052d0 mac 103ee440 GameThingWithPos::IsDrowning(void)
bool __fastcall IsDrowning__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsDrowning@GameThingWithPos@@UAE_NXZ");
// win1.41 00401a10 mac 100cb2b0 GameThingWithPos::IsCannotBePickedUp( const(void))
bool __fastcall IsCannotBePickedUp__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsCannotBePickedUp@GameThingWithPos@@UBE_NXZ");
// win1.41 00570590 mac 101bf190 GameThingWithPos::GetOverwritePickUpToolTip(void)
uint32_t __fastcall GetOverwritePickUpToolTip__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ");
// win1.41 00401a20 mac 100cb270 GameThingWithPos::IsStompable(void)
bool __fastcall IsStompable__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsStompable@GameThingWithPos@@UAE_NXZ");
// win1.41 00401a30 mac 100cb210 GameThingWithPos::IsAvailableForStateChange(void)
bool __fastcall IsAvailableForStateChange__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsAvailableForStateChange@GameThingWithPos@@UAE_NXZ");
// win1.41 005701b0 mac 1007b9d0 GameThingWithPos::IsInteractable(void)
bool __fastcall IsInteractable__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsInteractable@GameThingWithPos@@UAE_NXZ");
// win1.41 005705a0 mac 100b34e0 GameThingWithPos::GetOverwriteInteractableToolTip(void)
uint32_t __fastcall GetOverwriteInteractableToolTip__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ");
// win1.41 005705b0 mac 10097060 GameThingWithPos::GetOverwriteDropToolTip(void)
uint32_t __fastcall GetOverwriteDropToolTip__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ");
// win1.41 005705c0 mac 103eff20 GameThingWithPos::GetOverwriteTapToolTip(void)
uint32_t __fastcall GetOverwriteTapToolTip__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetOverwriteTapToolTip@GameThingWithPos@@UAEIXZ");
// win1.41 004052e0 mac 10405890 GameThingWithPos::IsCastShadowAtNight(void)
bool32_t __fastcall IsCastShadowAtNight__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsCastShadowAtNight@GameThingWithPos@@UAE_NXZ");
// win1.41 004052f0 mac 1055f350 GameThingWithPos::CleanupWhenDeleted(int)
void __fastcall CleanupWhenDeleted__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?CleanupWhenDeleted@GameThingWithPos@@UAEXH@Z");
// win1.41 0056ff70 mac 10569e60 GameThingWithPos::GetImpressiveType(void)
enum IMPRESSIVE_TYPE __fastcall GetImpressiveType__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ");
// win1.41 00401a40 mac 103104e0 GameThingWithPos::GetImpressiveIntensity(IMPRESSIVE_TYPE)
float __fastcall GetImpressiveIntensity__16GameThingWithPosF15IMPRESSIVE_TYPE(struct GameThingWithPos* this, const void* edx, enum IMPRESSIVE_TYPE type) asm("?GetImpressiveIntensity@GameThingWithPos@@UAEMW4IMPRESSIVE_TYPE@@@Z");
// win1.41 00405300 mac 100026f0 GameThingWithPos::GetImpressiveValue(Living *, Reaction *)
float __fastcall GetImpressiveValue__16GameThingWithPosFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2) asm("?GetImpressiveValue@GameThingWithPos@@UAEMPAULiving@@PAUReaction@@@Z");
// win1.41 0056feb0 mac 10002750 GameThingWithPos::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
float __fastcall GetUpdateOfBoredomValue__16GameThingWithPosFP8ReactionP16GameThingWithPos(struct GameThingWithPos* this, const void* edx, struct Reaction* param_1, struct GameThingWithPos* param_2) asm("?GetUpdateOfBoredomValue@GameThingWithPos@@UAEMPAUReaction@@PAV1@@Z");
// win1.41 00401ae0 mac 100d3ed0 GameThingWithPos::IsTown(void)
bool __fastcall IsTown__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsTown@GameThingWithPos@@UAE_NXZ");
// win1.41 00401a50 mac 1002b190 GameThingWithPos::IsTown(Creature *)
bool __fastcall IsTown__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsTown@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401a60 mac 103efcc0 GameThingWithPos::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichAngerAppliesTo__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichAngerAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401a70 mac 100c8d70 GameThingWithPos::IsActivityObjectWhichCompassionAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichCompassionAppliesTo__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichCompassionAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401a80 mac 10381cb0 GameThingWithPos::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichPlayfulnessAppliesTo__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichPlayfulnessAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401a90 mac 1055f950 GameThingWithPos::IsTownBelongingToAnotherPlayer(Creature *)
bool __fastcall IsTownBelongingToAnotherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsTownBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401aa0 mac 10354120 GameThingWithPos::TrueFunction(void)
bool32_t __fastcall TrueFunction__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?TrueFunction@GameThingWithPos@@UAE_NXZ");
// win1.41 00401ab0 mac 100c53e0 GameThingWithPos::FalseFunction(void)
bool32_t __fastcall FalseFunction__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?FalseFunction@GameThingWithPos@@UAE_NXZ");
// win1.41 00401ac0 mac 10174ec0 GameThingWithPos::IsNotLiving(void)
bool32_t __fastcall IsNotLiving__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsNotLiving@GameThingWithPos@@UAE_NXZ");
// win1.41 00401ad0 mac 100a9d40 GameThingWithPos::IsSuitableForCreatureActivity(void)
bool32_t __fastcall IsSuitableForCreatureActivity__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureActivity@GameThingWithPos@@UAE_NXZ");
// win1.41 00401af0 mac 10093ec0 GameThingWithPos::IsTownCentre(void)
bool32_t __fastcall IsTownCentre__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsTownCentre@GameThingWithPos@@UAE_NXZ");
// win1.41 00401b00 mac 101a36a0 GameThingWithPos::IsTotemStatue(void)
bool32_t __fastcall IsTotemStatue__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsTotemStatue@GameThingWithPos@@UAE_NXZ");
// win1.41 00401b10 mac 103d8ae0 GameThingWithPos::IsTownDesireFlag(void)
bool32_t __fastcall IsTownDesireFlag__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsTownDesireFlag@GameThingWithPos@@UAE_NXZ");
// win1.41 00401f50 mac 104a9cd0 GameThingWithPos::IsRock(Creature *)
bool32_t __fastcall IsRock__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsRock@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401b20 mac 10135ee0 GameThingWithPos::IsRock(void)
bool32_t __fastcall IsRock__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsRock@GameThingWithPos@@UAE_NXZ");
// win1.41 00401b30 mac 103d8b30 GameThingWithPos::IsSpellDispenser(void)
bool32_t __fastcall IsSpellDispenser__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsSpellDispenser@GameThingWithPos@@UAE_NXZ");
// win1.41 00401b40 mac 100c3630 GameThingWithPos::IsMist(void)
bool32_t __fastcall IsMist__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsMist@GameThingWithPos@@UAE_NXZ");
// win1.41 00401b50 mac 10097020 GameThingWithPos::IsQueryIcon(void)
bool32_t __fastcall IsQueryIcon__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsQueryIcon@GameThingWithPos@@UAE_NXZ");
// win1.41 00401b60 mac 105e81b0 GameThingWithPos::IsStreetLight(void)
bool32_t __fastcall IsStreetLight__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsStreetLight@GameThingWithPos@@UAE_NXZ");
// win1.41 00401b70 mac 104a63f0 GameThingWithPos::IsStreetLantern(void)
bool32_t __fastcall IsStreetLantern__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsStreetLantern@GameThingWithPos@@UAE_NXZ");
// win1.41 00405310 mac 1009aa60 GameThingWithPos::IsAbode(void)
bool32_t __fastcall IsAbode__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsAbode@GameThingWithPos@@UAE_NXZ");
// win1.41 00401e40 mac 104c28e0 GameThingWithPos::IsField(Creature *)
bool32_t __fastcall IsField__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsField@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401b80 mac 105e8170 GameThingWithPos::IsField(void)
bool32_t __fastcall IsField__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsField@GameThingWithPos@@UAE_NXZ");
// win1.41 00405320 mac 105e8120 GameThingWithPos::IsBuildingMaterial(void)
bool32_t __fastcall IsBuildingMaterial__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsBuildingMaterial@GameThingWithPos@@UAE_NXZ");
// win1.41 00401b90 mac 1009eea0 GameThingWithPos::IsMagicFireBall(void)
bool32_t __fastcall IsMagicFireBall__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsMagicFireBall@GameThingWithPos@@UAE_NXZ");
// win1.41 00405330 mac 104a6920 GameThingWithPos::IsSuitableForCreatureAction(void)
bool32_t __fastcall IsSuitableForCreatureAction__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureAction@GameThingWithPos@@UAE_NXZ");
// win1.41 00401ba0 mac 104a8310 GameThingWithPos::IsCitadelHeart(void)
bool32_t __fastcall IsCitadelHeart__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsCitadelHeart@GameThingWithPos@@UAE_NXZ");
// win1.41 00401bb0 mac 10479f30 GameThingWithPos::IsDamaged(void)
bool32_t __fastcall IsDamaged__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsDamaged@GameThingWithPos@@UAE_NXZ");
// win1.41 00401bd0 mac 100c7090 GameThingWithPos::CanBeHealedByCreature(Creature *)
bool32_t __fastcall CanBeHealedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeHealedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405340 mac 1016b460 GameThingWithPos::CanBeEatenByCreature(Creature *)
bool32_t __fastcall CanBeEatenByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004e4b90 mac 105e3d90 GameThingWithPos::CanCreatureEatMe(Creature *)
bool32_t __fastcall CanCreatureEatMe__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanCreatureEatMe@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405350 mac 103820f0 GameThingWithPos::CanBeAttackedByCreature(Creature *)
bool32_t __fastcall CanBeAttackedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeAttackedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405360 mac 101744e0 GameThingWithPos::CanBeFrighteningToCreature(Creature *)
bool32_t __fastcall CanBeFrighteningToCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeFrighteningToCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405370 mac 10550480 GameThingWithPos::CanBeHelpedByCreature(Creature *)
bool32_t __fastcall CanBeHelpedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeHelpedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405380 mac 1055da80 GameThingWithPos::CanBePlayedWithByCreature(Creature *)
bool32_t __fastcall CanBePlayedWithByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePlayedWithByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405390 mac 1054f030 GameThingWithPos::CanBeImpressedByCreature(Creature *)
bool32_t __fastcall CanBeImpressedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeImpressedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004053a0 mac 10148420 GameThingWithPos::CanBeInspectedByCreature(Creature *)
bool32_t __fastcall CanBeInspectedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeInspectedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004053b0 mac 103d5780 GameThingWithPos::CanBePoodUponByCreature(Creature *)
bool32_t __fastcall CanBePoodUponByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePoodUponByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401be0 mac 104956c0 GameThingWithPos::CanBeBefriendedByCreature(Creature *)
bool32_t __fastcall CanBeBefriendedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeBefriendedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004053c0 mac 102fdd30 GameThingWithPos::CanBeSleptNextToByCreature(Creature *)
bool32_t __fastcall CanBeSleptNextToByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeSleptNextToByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004053d0 mac 102fde30 GameThingWithPos::CanBePickedUpByCreature(Creature *)
bool32_t __fastcall CanBePickedUpByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePickedUpByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004053e0 mac 100cb730 GameThingWithPos::CanBeStrokedByCreature(Creature *)
bool32_t __fastcall CanBeStrokedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeStrokedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401bf0 mac 102fe080 GameThingWithPos::CanBeKissedByCreature(Creature *)
bool32_t __fastcall CanBeKissedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeKissedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004053f0 mac 105609f0 GameThingWithPos::CanBeSetOnFire(Creature *)
bool32_t __fastcall CanBeSetOnFire__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeSetOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405400 mac 1043fa70 GameThingWithPos::CanBeStompedOnByCreature(Creature *)
bool32_t __fastcall CanBeStompedOnByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeStompedOnByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405410 mac 10147ea0 GameThingWithPos::CanBeThrownByCreature(Creature *)
bool32_t __fastcall CanBeThrownByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeThrownByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401c00 mac 10569b20 GameThingWithPos::CanBeGivenToVillager(Creature *)
bool32_t __fastcall CanBeGivenToVillager__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeGivenToVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405420 mac 101660d0 GameThingWithPos::CanBePutInAStoragePit(Creature *)
bool32_t __fastcall CanBePutInAStoragePit__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePutInAStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405430 mac 104fb730 GameThingWithPos::CanBeDestroyedByStoning(Creature *)
bool32_t __fastcall CanBeDestroyedByStoning__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeDestroyedByStoning@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401c10 mac 104fb7d0 GameThingWithPos::CanBeStonedAndEatenByCreature(Creature *)
bool32_t __fastcall CanBeStonedAndEatenByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeStonedAndEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405440 mac 10160390 GameThingWithPos::CanBeExaminedByCreature(Creature *)
bool32_t __fastcall CanBeExaminedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeExaminedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401c50 mac 100d4ba0 GameThingWithPos::CanBeFoughtByCreature(Creature *)
bool32_t __fastcall CanBeFoughtByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeFoughtByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401c60 mac 1038a3e0 GameThingWithPos::CanReceiveGifts(Creature *)
bool32_t __fastcall CanReceiveGifts__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanReceiveGifts@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401c70 mac 103dc5a0 GameThingWithPos::CanActAsAContainer(Creature *)
bool32_t __fastcall CanActAsAContainer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanActAsAContainer@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405450 mac 103e0d90 GameThingWithPos::IsBeingBuilt(Creature *)
bool32_t __fastcall IsBeingBuilt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405460 mac 104272b0 GameThingWithPos::NeedsRepair(Creature *)
bool32_t __fastcall NeedsRepair__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?NeedsRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405470 mac 1036f0b0 GameThingWithPos::IsOnFire(Creature *)
bool32_t __fastcall IsOnFire__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401c80 mac 10554b50 GameThingWithPos::IsNotOnFire(Creature *)
bool32_t __fastcall IsNotOnFire__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsNotOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401ca0 mac 10596ca0 GameThingWithPos::CanBeUsedForBuilding(Creature *)
bool32_t __fastcall CanBeUsedForBuilding__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeUsedForBuilding@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401cb0 mac 100a8420 GameThingWithPos::IsMushroom(Creature *)
bool32_t __fastcall IsMushroom__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsMushroom@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401cc0 mac 100be460 GameThingWithPos::CanBeUsedForRepair(Creature *)
bool32_t __fastcall CanBeUsedForRepair__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeUsedForRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401cd0 mac 103efed0 GameThingWithPos::CanBeGivenToTown(Creature *)
bool32_t __fastcall CanBeGivenToTown__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeGivenToTown@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401ce0 mac 103efe80 GameThingWithPos::CanBeUsedToHoldWater(Creature *)
bool32_t __fastcall CanBeUsedToHoldWater__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeUsedToHoldWater@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405480 mac 100d56a0 GameThingWithPos::CanBePutInFoodPile(Creature *)
bool32_t __fastcall CanBePutInFoodPile__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePutInFoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00405490 mac 105644c0 GameThingWithPos::CanBePutInWoodPile(Creature *)
bool32_t __fastcall CanBePutInWoodPile__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePutInWoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401cf0 mac 1054aa20 GameThingWithPos::CanHaveMagicFoodCastOnMe(Creature *)
bool32_t __fastcall CanHaveMagicFoodCastOnMe__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanHaveMagicFoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d00 mac 1057ace0 GameThingWithPos::CanHaveMagicWoodCastOnMe(Creature *)
bool32_t __fastcall CanHaveMagicWoodCastOnMe__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanHaveMagicWoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004054a0 mac 103e1250 GameThingWithPos::CanBeBroughtBackToCitadel(Creature *)
bool32_t __fastcall CanBeBroughtBackToCitadel__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeBroughtBackToCitadel@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d10 mac 10091d50 GameThingWithPos::IsVillager(Creature *)
bool32_t __fastcall IsVillager__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d20 mac 10478860 GameThingWithPos::IsVillagerFarFromHome(Creature *)
bool32_t __fastcall IsVillagerFarFromHome__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsVillagerFarFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d30 mac 1036e6c0 GameThingWithPos::IsVillagerInTownWithoutManyBreeders(Creature *)
bool32_t __fastcall IsVillagerInTownWithoutManyBreeders__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsVillagerInTownWithoutManyBreeders@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d40 mac 101343a0 GameThingWithPos::IsVillagerNotWorshipping(Creature *)
bool32_t __fastcall IsVillagerNotWorshipping__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsVillagerNotWorshipping@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d50 mac 1036f100 GameThingWithPos::IsVillagerBelongingToOtherPlayer(Creature *)
bool32_t __fastcall IsVillagerBelongingToOtherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsVillagerBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d60 mac 101107f0 GameThingWithPos::IsCow(Creature *)
bool32_t __fastcall IsCow__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsCow@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004054b0 mac 10560070 GameThingWithPos::CanBePoodOn(Creature *)
bool32_t __fastcall CanBePoodOn__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBePoodOn@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d70 mac 102aa900 GameThingWithPos::IsVillagerWhoHasNotBeenImpressedRecently(Creature *)
bool32_t __fastcall IsVillagerWhoHasNotBeenImpressedRecently__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsVillagerWhoHasNotBeenImpressedRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d80 mac 10569bf0 GameThingWithPos::IsVillagerWhoHasNotBeenDancedWithRecently(Creature *)
bool32_t __fastcall IsVillagerWhoHasNotBeenDancedWithRecently__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsVillagerWhoHasNotBeenDancedWithRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401d90 mac 10336360 GameThingWithPos::DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature *)
bool32_t __fastcall DoesVillagerBelongToATownWhichIsAlreadyImpressed__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?DoesVillagerBelongToATownWhichIsAlreadyImpressed@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401da0 mac 100fc2f0 GameThingWithPos::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
bool32_t __fastcall DoesTotemBelongToATownWhichIsVeryImpressedIndeed__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401db0 mac 103c9640 GameThingWithPos::IsDominantCreature(Creature *)
bool32_t __fastcall IsDominantCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsDominantCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401dc0 mac 100e9bb0 GameThingWithPos::CanBeDancedWith(Creature *)
bool32_t __fastcall CanBeDancedWith__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeDancedWith@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401dd0 mac 103c91e0 GameThingWithPos::IsAggressive(Creature *)
bool32_t __fastcall IsAggressive__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401de0 mac 100ed8f0 GameThingWithPos::IsStoragePit(Creature *)
bool32_t __fastcall IsStoragePit__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401e00 mac 10553fb0 GameThingWithPos::IsWorshipSite(Creature *)
bool32_t __fastcall IsWorshipSite__16GameThingWithPosFP8Creature(struct GameThingWithPos* this) asm("?IsWorshipSite@GameThingWithPos@@UAE_NXZ");
// win1.41 00401df0 mac 103d4fd0 GameThingWithPos::IsWorshipSite(void)
bool32_t __fastcall IsWorshipSite__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsWorshipSite@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401e10 mac 10136890 GameThingWithPos::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetWorshipSite@GameThingWithPos@@UAEPAUWorshipSite@@XZ");
// win1.41 004023b0 mac 1042dbb0 GameThingWithPos::IsWorkshop(Creature *)
bool32_t __fastcall IsWorkshop__16GameThingWithPosFP8Creature(struct GameThingWithPos* this) asm("?IsWorkshop@GameThingWithPos@@UAE_NXZ");
// win1.41 00401e20 mac 1002c6a0 GameThingWithPos::IsWorkshop(void)
bool32_t __fastcall IsWorkshop__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsWorkshop@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004054c0 mac 1048f310 GameThingWithPos::IsBuildingWhichIsBeingBuilt(Creature *)
bool32_t __fastcall IsBuildingWhichIsBeingBuilt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsBuildingWhichIsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401e30 mac 104964f0 GameThingWithPos::IsStoragePitWithFoodInIt(Creature *)
bool32_t __fastcall IsStoragePitWithFoodInIt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsStoragePitWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401e50 mac 1048f2b0 GameThingWithPos::IsFieldWhichNeedsWatering(Creature *)
bool32_t __fastcall IsFieldWhichNeedsWatering__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsFieldWhichNeedsWatering@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401e60 mac 1054fb10 GameThingWithPos::IsFieldWithFoodInIt(Creature *)
bool32_t __fastcall IsFieldWithFoodInIt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsFieldWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401e70 mac 1054f730 GameThingWithPos::IsFieldBelongingToAnotherPlayer(Creature *)
bool32_t __fastcall IsFieldBelongingToAnotherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsFieldBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401e80 mac 100b1d40 GameThingWithPos::IsStoragePitBelongingToAnotherPlayer(Creature *)
bool32_t __fastcall IsStoragePitBelongingToAnotherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsStoragePitBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401e90 mac 10379d10 GameThingWithPos::IsStoragePitBelongingToMyPlayer(Creature *)
bool32_t __fastcall IsStoragePitBelongingToMyPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsStoragePitBelongingToMyPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401ea0 mac 1055e010 GameThingWithPos::BenefitsFromHavingWaterSprinkledOnIt(Creature *)
bool32_t __fastcall BenefitsFromHavingWaterSprinkledOnIt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?BenefitsFromHavingWaterSprinkledOnIt@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402320 mac 1055e8b0 GameThingWithPos::IsTree(Creature *)
bool32_t __fastcall IsTree__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsTree@GameThingWithPos@@UAE_NXZ");
// win1.41 00401eb0 mac 1055e440 GameThingWithPos::IsTree(void)
bool32_t __fastcall IsTree__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsTree@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401ec0 mac 10159e90 GameThingWithPos::IsTreeNotTooNearPlannedForest(Creature *)
bool32_t __fastcall IsTreeNotTooNearPlannedForest__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsTreeNotTooNearPlannedForest@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401ed0 mac 1017ac30 GameThingWithPos::IsTreeBigEnoughForCreature(Creature *)
bool32_t __fastcall IsTreeBigEnoughForCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsTreeBigEnoughForCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401ee0 mac 10552270 GameThingWithPos::IsAFoodPileOutsideStoragePit(Creature *)
bool32_t __fastcall IsAFoodPileOutsideStoragePit__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsAFoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401ef0 mac 1055e160 GameThingWithPos::IsAWoodPileOutsideStoragePit(Creature *)
bool32_t __fastcall IsAWoodPileOutsideStoragePit__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsAWoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401f00 mac 1055e800 GameThingWithPos::IsDoingSomethingInteresting(Creature *)
bool32_t __fastcall IsDoingSomethingInteresting__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsDoingSomethingInteresting@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401f10 mac 1055e630 GameThingWithPos::CanBeUsedForBuildingHomeByCreature(Creature *)
bool32_t __fastcall CanBeUsedForBuildingHomeByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeUsedForBuildingHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401f60 mac 1055ec40 GameThingWithPos::IsPickupableRock(Creature *)
bool32_t __fastcall IsPickupableRock__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsPickupableRock@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402360 mac 1055e860 GameThingWithPos::IsCitadelPart(void)
bool32_t __fastcall IsCitadelPart__16GameThingWithPosFP8Creature(struct GameThingWithPos* this) asm("?IsCitadelPart@GameThingWithPos@@UAE_NXZ");
// win1.41 00401fa0 mac 1055df30 GameThingWithPos::IsCitadelPart(Creature *)
bool32_t __fastcall IsCitadelPart__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsCitadelPart@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401fb0 mac 1055ddd0 GameThingWithPos::IsPlayingFootball(Creature *)
bool32_t __fastcall IsPlayingFootball__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsPlayingFootball@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401fc0 mac 10365210 GameThingWithPos::IsPlayingFootballAndMySideHasJustScored(Creature *)
bool32_t __fastcall IsPlayingFootballAndMySideHasJustScored__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsPlayingFootballAndMySideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401fd0 mac 1055f4e0 GameThingWithPos::IsPlayingFootballAndOtherSideHasJustScored(Creature *)
bool32_t __fastcall IsPlayingFootballAndOtherSideHasJustScored__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsPlayingFootballAndOtherSideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004e3f30 mac 105e6470 GameThingWithPos::CanBeBroughtHomeByCreature(Creature *)
bool32_t __fastcall CanBeBroughtHomeByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeBroughtHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401fe0 mac 100db860 GameThingWithPos::IsAnimalBelongingToOtherPlayer(Creature *)
bool32_t __fastcall IsAnimalBelongingToOtherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsAnimalBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00401ff0 mac 103c3e80 GameThingWithPos::IsOneOffSpellBelongingToOtherPlayer(Creature *)
bool32_t __fastcall IsOneOffSpellBelongingToOtherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsOneOffSpellBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402000 mac 10167800 GameThingWithPos::IsOneOffSpellAggressive(Creature *)
bool32_t __fastcall IsOneOffSpellAggressive__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsOneOffSpellAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402010 mac 10565280 GameThingWithPos::IsOneOffSpellCompassionate(Creature *)
bool32_t __fastcall IsOneOffSpellCompassionate__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsOneOffSpellCompassionate@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402020 mac 103c95f0 GameThingWithPos::IsOneOffSpellPlayful(Creature *)
bool32_t __fastcall IsOneOffSpellPlayful__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsOneOffSpellPlayful@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402030 mac 103c9590 GameThingWithPos::IsOneOffSpellToRestoreHealth(Creature *)
bool32_t __fastcall IsOneOffSpellToRestoreHealth__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsOneOffSpellToRestoreHealth@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004054d0 mac 100e74b0 GameThingWithPos::CanBeKickedByCreature(Creature *)
bool32_t __fastcall CanBeKickedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeKickedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402040 mac 1055f7f0 GameThingWithPos::CanBeStolenByCreature(Creature *)
bool32_t __fastcall CanBeStolenByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeStolenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004e4210 mac 105e5ae0 GameThingWithPos::IsStealableByCreature(Creature *)
bool32_t __fastcall IsStealableByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsStealableByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402050 mac 100e7500 GameThingWithPos::IsStealableSpell(Creature *)
bool32_t __fastcall IsStealableSpell__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402060 mac 10541f60 GameThingWithPos::IsStealableScaffold(Creature *)
bool32_t __fastcall IsStealableScaffold__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsStealableScaffold@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402070 mac 100dee30 GameThingWithPos::IsTownBelongingToOtherPlayer(Creature *)
bool32_t __fastcall IsTownBelongingToOtherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsTownBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402080 mac 10598e70 GameThingWithPos::IsTotemWithStealableSpell(Creature *)
bool32_t __fastcall IsTotemWithStealableSpell__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsTotemWithStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 00402090 mac 100bc240 GameThingWithPos::IsCreatureAvailableForJointActivity(Creature *)
bool32_t __fastcall IsCreatureAvailableForJointActivity__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsCreatureAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004020a0 mac 100bc380 GameThingWithPos::IsCreatureNotAvailableForJointActivity(Creature *)
bool32_t __fastcall IsCreatureNotAvailableForJointActivity__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsCreatureNotAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004020b0 mac 100b1cf0 GameThingWithPos::IsToyAwayFromHome(Creature *)
bool32_t __fastcall IsToyAwayFromHome__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsToyAwayFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004020c0 mac 10378410 GameThingWithPos::IsToy(Creature *)
bool32_t __fastcall IsToy__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsToy@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004020d0 mac 1014d010 GameThingWithPos::IsToyBall(Creature *)
bool32_t __fastcall IsToyBall__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsToyBall@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004020e0 mac 10570d30 GameThingWithPos::IsToyDie(Creature *)
bool32_t __fastcall IsToyDie__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsToyDie@GameThingWithPos@@UAE_NPAVCreature@@@Z");
// win1.41 004020f0 mac 1055e0d0 GameThingWithPos::IsToyCuddly(Creature *)
bool32_t __fastcall IsToyCuddly__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsToyCuddly@GameThingWithPos@@UBE_NPAVCreature@@@Z");
// win1.41 00402350 mac 103d8a70 GameThingWithPos::IsLiving(void)
bool32_t __fastcall IsLiving__16GameThingWithPosFv(const struct GameThingWithPos* this) asm("?IsLiving@GameThingWithPos@@UBE_NXZ");
// win1.41 00402100 mac 10560030 GameThingWithPos::IsLiving(Creature *)
bool32_t __fastcall IsLiving__16GameThingWithPosFP8Creature(const struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsLiving@GameThingWithPos@@UBE_NPAVCreature@@@Z");
// win1.41 00402110 mac 1007f100 GameThingWithPos::IsFence(void)
bool32_t __fastcall IsFence__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsFence@GameThingWithPos@@UBE_NXZ");
// win1.41 00402120 mac 1055f270 GameThingWithPos::IsSpellIcon(void)
bool32_t __fastcall IsSpellIcon__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsSpellIcon@GameThingWithPos@@UBE_NXZ");
// win1.41 004e4480 mac 105e54b0 GameThingWithPos::NothingScareyNearMe(Creature *)
bool32_t __fastcall NothingScareyNearMe__16GameThingWithPosFP8Creature(const struct GameThingWithPos* this) asm("?NothingScareyNearMe@GameThingWithPos@@UBE_NXZ");
// win1.41 00402130 mac 1054f090 GameThingWithPos::CanBeUsedForThrowingDamageByCreature(Creature *)
bool32_t __fastcall CanBeUsedForThrowingDamageByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeUsedForThrowingDamageByCreature@GameThingWithPos@@UBE_NPAVCreature@@@Z");
// win1.41 00402140 mac 1055f2b0 GameThingWithPos::IsCreatureWhoSeemsFriendly(Creature *)
bool32_t __fastcall IsCreatureWhoSeemsFriendly__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsCreatureWhoSeemsFriendly@GameThingWithPos@@UBE_NPAVCreature@@@Z");
// win1.41 00402150 mac 1019d0f0 GameThingWithPos::CanBeThrownInTheSeaPlayfully(Creature *)
bool32_t __fastcall CanBeThrownInTheSeaPlayfully__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeThrownInTheSeaPlayfully@GameThingWithPos@@UBE_NPAVCreature@@@Z");
// win1.41 004054e0 mac 10554000 GameThingWithPos::GetCreatureMimicType(void)
uint32_t __fastcall GetCreatureMimicType__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetCreatureMimicType@GameThingWithPos@@UBEIXZ");
// win1.41 004054f0 mac 100e5cc0 GameThingWithPos::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@GameThingWithPos@@UAEMXZ");
// win1.41 00402160 mac 10057640 GameThingWithPos::IsFlock( const(void))
bool32_t __fastcall IsFlock__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsFlock@GameThingWithPos@@UBE_NXZ");
// win1.41 00402170 mac 103dbe60 GameThingWithPos::IsDance( const(void))
bool32_t __fastcall IsDance__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsDance@GameThingWithPos@@UBE_NXZ");
// win1.41 00402180 mac 100d0970 GameThingWithPos::IsReward( const(void))
bool32_t __fastcall IsReward__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsReward@GameThingWithPos@@UBE_NXZ");
// win1.41 00402190 mac 10033ae0 GameThingWithPos::IsScriptContainer( const(void))
bool32_t __fastcall IsScriptContainer__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsScriptContainer@GameThingWithPos@@UBE_NXZ");
// win1.41 004021a0 mac 1055f140 GameThingWithPos::IsWeather( const(void))
bool32_t __fastcall IsWeather__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsWeather@GameThingWithPos@@UBE_NXZ");
// win1.41 004021b0 mac 1015a0c0 GameThingWithPos::IsSpell( const(void))
bool32_t __fastcall IsSpell__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsSpell@GameThingWithPos@@UBE_NXZ");
// win1.41 004021c0 mac 10000790 GameThingWithPos::IsDeletedWhenReleasedFromScript(void)
bool32_t __fastcall IsDeletedWhenReleasedFromScript__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsDeletedWhenReleasedFromScript@GameThingWithPos@@UAE_NXZ");
// win1.41 004021d0 mac 100332d0 GameThingWithPos::IsMobileWallHug( const(void))
bool32_t __fastcall IsMobileWallHug__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsMobileWallHug@GameThingWithPos@@UBE_NXZ");
// win1.41 004021e0 mac 10576f20 GameThingWithPos::IsActive( const(void))
bool32_t __fastcall IsActive__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsActive@GameThingWithPos@@UBE_NXZ");
// win1.41 004021f0 mac 1012f070 GameThingWithPos::IsObjectTurningTooFastForCameraToFollowSmoothly(void)
bool32_t __fastcall IsObjectTurningTooFastForCameraToFollowSmoothly__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsObjectTurningTooFastForCameraToFollowSmoothly@GameThingWithPos@@UBE_NXZ");
// win1.41 005703a0 mac 103dbd40 GameThingWithPos::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void __fastcall CalculateWhereIWillBeAfterNSeconds__16GameThingWithPosFfP7LHPoint(struct GameThingWithPos* this, const void* edx, float seconds, struct LHPoint* outPos) asm("?CalculateWhereIWillBeAfterNSeconds@GameThingWithPos@@UAEXMPAULHPoint@@@Z");
// win1.41 00768570 mac 10594c30 GameThingWithPos::AttitudeToCreatureEating(void)
uint32_t __fastcall AttitudeToCreatureEating__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?AttitudeToCreatureEating@GameThingWithPos@@UAEIXZ");
// win1.41 00402200 mac 100db7b0 GameThingWithPos::CalculateDesireForFood(void)
float __fastcall CalculateDesireForFood__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?CalculateDesireForFood@GameThingWithPos@@UAEMXZ");
// win1.41 00402210 mac 10111950 GameThingWithPos::CalculateDesireForRest(void)
float __fastcall CalculateDesireForRest__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?CalculateDesireForRest@GameThingWithPos@@UAEMXZ");
// win1.41 00402220 mac 100db800 GameThingWithPos::CalculatePeopleHidingIndicator(void)
float __fastcall CalculatePeopleHidingIndicator__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?CalculatePeopleHidingIndicator@GameThingWithPos@@UAEMXZ");
// win1.41 00405500 mac 100b1980 GameThingWithPos::GetHeight(void)
float __fastcall GetHeight__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetHeight@GameThingWithPos@@UBEMXZ");
// win1.41 00402230 mac 10495720 GameThingWithPos::IsReadyForNewScriptAction(void)
bool32_t __fastcall IsReadyForNewScriptAction__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsReadyForNewScriptAction@GameThingWithPos@@UBE_NXZ");
// win1.41 00570290 mac 1036ad90 GameThingWithPos::ForDrawFXGetNumVertices(void)
int __fastcall ForDrawFXGetNumVertices__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ");
// win1.41 005702a0 mac 1056f610 GameThingWithPos::ForDrawFXGetVertexPos(long, LHPoint *)
void __fastcall ForDrawFXGetVertexPos__16GameThingWithPosFlP7LHPoint(struct GameThingWithPos* this, const void* edx, int param_1, struct LHPoint* param_2) asm("?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z");
// win1.41 00405510 mac 10003460 GameThingWithPos::SetInScript(int)
void __fastcall SetInScript__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?SetInScript@GameThingWithPos@@UAEXH@Z");
// win1.41 00402240 mac 100552b0 GameThingWithPos::SetControlledByScript(int)
void __fastcall SetControlledByScript__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?SetControlledByScript@GameThingWithPos@@UAEXH@Z");
// win1.41 00402270 mac 101a4ed0 GameThingWithPos::GetDeathReason(void)
enum DEATH_REASON __fastcall GetDeathReason__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetDeathReason@GameThingWithPos@@UAE?AW4DEATH_REASON@@XZ");
// win1.41 00402280 mac 1004cf30 GameThingWithPos::IsInScript(void)
bool32_t __fastcall IsInScript__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsInScript@GameThingWithPos@@UAE_NXZ");
// win1.41 00402290 mac 1033c710 GameThingWithPos::IsMaleVillager(void)
bool32_t __fastcall IsMaleVillager__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsMaleVillager@GameThingWithPos@@UAE_NXZ");
// win1.41 004022a0 mac 1056d120 GameThingWithPos::IsFemaleVillager(void)
bool32_t __fastcall IsFemaleVillager__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsFemaleVillager@GameThingWithPos@@UAE_NXZ");
// win1.41 004022b0 mac 1002a950 GameThingWithPos::IsAnimal(void)
bool32_t __fastcall IsAnimal__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsAnimal@GameThingWithPos@@UAE_NXZ");
// win1.41 004022c0 mac 10572f10 GameThingWithPos::IsAChild(void)
bool32_t __fastcall IsAChild__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsAChild@GameThingWithPos@@UAE_NXZ");
// win1.41 00405540 mac 103c1df0 GameThingWithPos::IsHouse(void)
bool32_t __fastcall IsHouse__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsHouse@GameThingWithPos@@UAE_NXZ");
// win1.41 00405550 mac 103c2360 GameThingWithPos::IsObject( const(void))
bool32_t __fastcall IsObject__16GameThingWithPosCFv(struct GameThingWithPos* this) asm("?IsObject@GameThingWithPos@@UBE_NXZ");
// win1.41 004022d0 mac 100b6810 GameThingWithPos::IsFootball(void)
bool32_t __fastcall IsFootball__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsFootball@GameThingWithPos@@UBE_NXZ");
// win1.41 004022e0 mac 10159fa0 GameThingWithPos::IsCitadel(void)
bool32_t __fastcall IsCitadel__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsCitadel@GameThingWithPos@@UAE_NXZ");
// win1.41 004022f0 mac 100fd0e0 GameThingWithPos::IsForest(void)
bool32_t __fastcall IsForest__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsForest@GameThingWithPos@@UAE_NXZ");
// win1.41 00402300 mac 105a2310 GameThingWithPos::IsMobileObject(void)
bool32_t __fastcall IsMobileObject__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsMobileObject@GameThingWithPos@@UAE_NXZ");
// win1.41 00402310 mac 101c64c0 GameThingWithPos::IsMobileStatic(void)
bool32_t __fastcall IsMobileStatic__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsMobileStatic@GameThingWithPos@@UAE_NXZ");
// win1.41 00402330 mac 100d56f0 GameThingWithPos::IsAnyKindOfTree(void)
bool32_t __fastcall IsAnyKindOfTree__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsAnyKindOfTree@GameThingWithPos@@UAE_NXZ");
// win1.41 00402340 mac 1055e120 GameThingWithPos::IsDeadTree(void)
bool32_t __fastcall IsDeadTree__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsDeadTree@GameThingWithPos@@UAE_NXZ");
// win1.41 00402370 mac 105600c0 GameThingWithPos::IsPileFood(void)
bool32_t __fastcall IsPileFood__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsPileFood@GameThingWithPos@@UAE_NXZ");
// win1.41 00402380 mac 1055f840 GameThingWithPos::IsFeature(void)
bool32_t __fastcall IsFeature__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsFeature@GameThingWithPos@@UAE_NXZ");
// win1.41 00402390 mac 100bc020 GameThingWithPos::IsScriptMarker(void)
bool32_t __fastcall IsScriptMarker__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsScriptMarker@GameThingWithPos@@UAE_NXZ");
// win1.41 004023a0 mac 10000870 GameThingWithPos::IsScriptHighlight(void)
bool32_t __fastcall IsScriptHighlight__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsScriptHighlight@GameThingWithPos@@UAE_NXZ");
// win1.41 004178d0 mac 10380910 GameThingWithPos::IsWonder(void)
bool32_t __fastcall IsWonder__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsWonder@GameThingWithPos@@UAE_NXZ");
// win1.41 004023c0 mac 10380730 GameThingWithPos::IsInfluenceRing(void)
bool32_t __fastcall IsInfluenceRing__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsInfluenceRing@GameThingWithPos@@UAE_NXZ");
// win1.41 004023d0 mac 103809e0 GameThingWithPos::IsPuzzleGame(void)
bool32_t __fastcall IsPuzzleGame__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsPuzzleGame@GameThingWithPos@@UAE_NXZ");
// win1.41 004023e0 mac 100a08c0 GameThingWithPos::IsScaffold(void)
bool32_t __fastcall IsScaffold__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsScaffold@GameThingWithPos@@UAE_NXZ");
// win1.41 004023f0 mac 1019d850 GameThingWithPos::IsSkeleton( const(void))
bool32_t __fastcall IsSkeleton__16GameThingWithPosCFv(const struct GameThingWithPos* this) asm("?IsSkeleton@GameThingWithPos@@UBE_NXZ");
// win1.41 00402400 mac 100dcd70 GameThingWithPos::IsPoisoned(void)
bool32_t __fastcall IsPoisoned__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsPoisoned@GameThingWithPos@@UBE_NXZ");
// win1.41 00402410 mac 10427300 GameThingWithPos::IsSpeedUp(void)
bool32_t __fastcall IsSpeedUp__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsSpeedUp@GameThingWithPos@@UAE_NXZ");
// win1.41 00402420 mac 10170360 GameThingWithPos::IsParticleContainer(void)
bool32_t __fastcall IsParticleContainer__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsParticleContainer@GameThingWithPos@@UAE_NXZ");
// win1.41 00402430 mac 103dbea0 GameThingWithPos::IsSacrificeAltar(void)
bool32_t __fastcall IsSacrificeAltar__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsSacrificeAltar@GameThingWithPos@@UAE_NXZ");
// win1.41 00402440 mac 10570ed0 GameThingWithPos::IsPot(void)
bool32_t __fastcall IsPot__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsPot@GameThingWithPos@@UAE_NXZ");
// win1.41 00402450 mac 104daf10 GameThingWithPos::IsComputerPlayer(void)
bool32_t __fastcall IsComputerPlayer__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsComputerPlayer@GameThingWithPos@@UBE_NXZ");
// win1.41 005701c0 mac 103623e0 GameThingWithPos::CanBeThrownByPlayer(void)
bool32_t __fastcall CanBeThrownByPlayer__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ");
// win1.41 00402460 mac 1035b870 GameThingWithPos::SetSkeleton(int)
void __fastcall SetSkeleton__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int index) asm("?SetSkeleton@GameThingWithPos@@UAEXH@Z");
// win1.41 00402470 mac 1007b170 GameThingWithPos::IsSpellSeed(void)
bool32_t __fastcall IsSpellSeed__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsSpellSeed@GameThingWithPos@@UBE_NXZ");
// win1.41 00402480 mac 10571e10 GameThingWithPos::IsSpellShield(void)
bool32_t __fastcall IsSpellShield__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsSpellShield@GameThingWithPos@@UBE_NXZ");
// win1.41 00402490 mac 1054ecb0 GameThingWithPos::IsPileResource(void)
bool32_t __fastcall IsPileResource__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsPileResource@GameThingWithPos@@UBE_NXZ");
// win1.41 004024a0 mac 100bb900 GameThingWithPos::IsScriptTimer(void)
bool32_t __fastcall IsScriptTimer__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?IsScriptTimer@GameThingWithPos@@UBE_NXZ");
// win1.41 004178e0 mac 102ff000 GameThingWithPos::CreateBuildingSite(void)
bool32_t __fastcall CreateBuildingSite__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?CreateBuildingSite@GameThingWithPos@@UBE_NXZ");
// win1.41 00405560 mac 102ffbb0 GameThingWithPos::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00405570 mac 1055f0f0 GameThingWithPos::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 005703d0 mac 10174fb0 GameThingWithPos::GetFOVHelpMessageSet(void)
uint32_t __fastcall GetFOVHelpMessageSet__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetFOVHelpMessageSet@GameThingWithPos@@UAEIXZ");
// win1.41 005703e0 mac 100e46f0 GameThingWithPos::GetFOVHelpCondition(void)
uint32_t __fastcall GetFOVHelpCondition__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetFOVHelpCondition@GameThingWithPos@@UAEIXZ");
// win1.41 00570200 mac 100008c0 GameThingWithPos::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@GameThingWithPos@@UAEIXZ");
// win1.41 004024b0 mac 100b2190 GameThingWithPos::GetFacingDirection(void)
float __fastcall GetFacingDirection__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetFacingDirection@GameThingWithPos@@UAEMXZ");
// win1.41 004024c0 mac 1055fa50 GameThingWithPos::SetAffectedByWind(int)
void __fastcall SetAffectedByWind__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?SetAffectedByWind@GameThingWithPos@@UAEXH@Z");
// win1.41 004024d0 mac 100188b0 GameThingWithPos::GetReactionPower(void)
float __fastcall GetReactionPower__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?GetReactionPower@GameThingWithPos@@UAEMXZ");
// win1.41 00570570 mac 10541fb0 GameThingWithPos::GetSpellCastPos(void)
void __fastcall GetSpellCastPos__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct MapCoords* outPos) asm("?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z");
// win1.41 004024e0 mac 1015a1b0 GameThingWithPos::CleanUpBeforeReset(void)
void __fastcall CleanUpBeforeReset__16GameThingWithPosFv(struct GameThingWithPos* this) asm("?CleanUpBeforeReset@GameThingWithPos@@UAEXXZ");

DECLARE_LH_LINKED_LIST(GameThingWithPos);

#endif /* BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H */
