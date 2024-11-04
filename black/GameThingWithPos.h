#ifndef BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H
#define BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum DEATH_REASON, enum IMPRESSIVE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "GameThing.h" /* For struct GameThing, struct GameThingVftable */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

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
  void (__fastcall* SetPos)(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1);  /* 0xfc */
  struct MapCoords* (__fastcall* GetPos)(const struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1);  /* 0x100 */
  struct MapCoords* (__fastcall* GetArrivePos)(struct GameThingWithPos* this, const void* edx, struct MapCoords* coords);
  void (__fastcall* PhysicsEditorCreate)(struct GameThingWithPos* this, const void* edx, int param_1);
  uint32_t (__fastcall* GetCreatureBeliefType)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetCreatureBeliefListType)(struct GameThingWithPos* this);  /* 0x110 */
  struct Citadel* (__fastcall* GetCitadel)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetOrigin)(const struct GameThingWithPos* this);
  float (__fastcall* GetLife)(const struct GameThingWithPos* this);
  float (__fastcall* GetScale)(const struct GameThingWithPos* this);  /* 0x120 */
  void (__fastcall* SetScale)(struct GameThingWithPos* this, const void* edx, float scale);
  float (__fastcall* GetPower)(const struct GameThingWithPos* this);
  float (__fastcall* GetPSysPower)(const struct GameThingWithPos* this);
  float (__fastcall* GetSpeedInMetres)(const struct GameThingWithPos* this);  /* 0x130 */
  void (__fastcall* SetSpeedInMetres)(struct GameThingWithPos* this, const void* edx, float speed, int scale);
  float (__fastcall* GetRunningSpeedInMetres)(const struct GameThingWithPos* this);
  float (__fastcall* GetDistanceFromObject)(const struct GameThingWithPos* this, const void* edx, struct MapCoords* target);
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
  bool (__fastcall* IsObjectInMap)(struct GameThingWithPos* this);
  bool (__fastcall* IsDrowning)(struct GameThingWithPos* this);
  bool (__fastcall* IsCannotBePickedUp)(const struct GameThingWithPos* this);  /* 0x180 */
  uint32_t (__fastcall* GetOverwritePickUpToolTip)(struct GameThingWithPos* this);
  bool (__fastcall* IsStompable)(struct GameThingWithPos* this);
  bool (__fastcall* IsAvailableForStateChange)(struct GameThingWithPos* this);
  bool (__fastcall* IsInteractable)(struct GameThingWithPos* this);  /* 0x190 */
  uint32_t (__fastcall* GetOverwriteInteractableToolTip)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetOverwriteDropToolTip)(struct GameThingWithPos* this);
  uint32_t (__fastcall* GetOverwriteTapToolTip)(struct GameThingWithPos* this);
  bool (__fastcall* IsCastShadowAtNight)(struct GameThingWithPos* this);  /* 0x1a0 */
  void (__fastcall* CleanupWhenDeleted)(struct GameThingWithPos* this, const void* edx, int param_1);
  enum IMPRESSIVE_TYPE (__fastcall* GetImpressiveType)(struct GameThingWithPos* this);
  float (__fastcall* GetImpressiveIntensity)(struct GameThingWithPos* this, const void* edx, enum IMPRESSIVE_TYPE type);
  float (__fastcall* GetImpressiveValue)(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2);  /* 0x1b0 */
  float (__fastcall* GetUpdateOfBoredomValue)(struct GameThingWithPos* this, const void* edx, struct Reaction* param_1, struct GameThingWithPos* param_2);
  bool (__fastcall* IsTown_1)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);
  bool (__fastcall* IsTown_0)(struct GameThingWithPos* this);
  bool (__fastcall* IsActivityObjectWhichAngerAppliesTo)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);  /* 0x1c0 */
  bool (__fastcall* IsActivityObjectWhichCompassionAppliesTo)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);
  bool (__fastcall* IsActivityObjectWhichPlayfulnessAppliesTo)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);
  bool (__fastcall* IsTownBelongingToAnotherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* param_1);
  bool (__fastcall* TrueFunction)(struct GameThingWithPos* this);  /* 0x1d0 */
  bool (__fastcall* FalseFunction)(struct GameThingWithPos* this);
  bool (__fastcall* IsNotLiving)(struct GameThingWithPos* this);
  bool (__fastcall* IsSuitableForCreatureActivity)(struct GameThingWithPos* this);
  bool (__fastcall* IsTownCentre)(struct GameThingWithPos* this);  /* 0x1e0 */
  bool (__fastcall* IsTotemStatue)(struct GameThingWithPos* this);
  bool (__fastcall* IsTownDesireFlag)(struct GameThingWithPos* this);
  bool (__fastcall* IsRock_1)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsRock_0)(struct GameThingWithPos* this);  /* 0x1f0 */
  bool (__fastcall* IsSpellDispenser)(struct GameThingWithPos* this);
  bool (__fastcall* IsMist)(struct GameThingWithPos* this);
  bool (__fastcall* IsQueryIcon)(struct GameThingWithPos* this);
  bool (__fastcall* IsStreetLight)(struct GameThingWithPos* this);  /* 0x200 */
  bool (__fastcall* IsStreetLantern)(struct GameThingWithPos* this);
  bool (__fastcall* IsAbode)(struct GameThingWithPos* this);
  bool (__fastcall* IsField_1)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsField_0)(struct GameThingWithPos* this);  /* 0x210 */
  bool (__fastcall* IsBuildingMaterial)(struct GameThingWithPos* this);
  bool (__fastcall* IsMagicFireBall)(struct GameThingWithPos* this);
  bool (__fastcall* IsSuitableForCreatureAction)(struct GameThingWithPos* this);
  bool (__fastcall* IsCitadelHeart)(struct GameThingWithPos* this);  /* 0x220 */
  bool (__fastcall* IsDamaged)(struct GameThingWithPos* this);
  bool (__fastcall* CanBeHealedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeEatenByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanCreatureEatMe)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x230 */
  bool (__fastcall* CanBeAttackedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeFrighteningToCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeHelpedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBePlayedWithByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x240 */
  bool (__fastcall* CanBeImpressedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeInspectedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBePoodUponByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeBefriendedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x250 */
  bool (__fastcall* CanBeSleptNextToByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBePickedUpByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeStrokedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeKissedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x260 */
  bool (__fastcall* CanBeSetOnFire)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeStompedOnByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeThrownByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeGivenToVillager)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x270 */
  bool (__fastcall* CanBePutInAStoragePit)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeDestroyedByStoning)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeStonedAndEatenByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeExaminedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x280 */
  bool (__fastcall* CanBeFoughtByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanReceiveGifts)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanActAsAContainer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsBeingBuilt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x290 */
  bool (__fastcall* NeedsRepair)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsOnFire)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsNotOnFire)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeUsedForBuilding)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2a0 */
  bool (__fastcall* IsMushroom)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeUsedForRepair)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeGivenToTown)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeUsedToHoldWater)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2b0 */
  bool (__fastcall* CanBePutInFoodPile)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBePutInWoodPile)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanHaveMagicFoodCastOnMe)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanHaveMagicWoodCastOnMe)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2c0 */
  bool (__fastcall* CanBeBroughtBackToCitadel)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsVillager)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsVillagerFarFromHome)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsVillagerInTownWithoutManyBreeders)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2d0 */
  bool (__fastcall* IsVillagerNotWorshipping)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsVillagerBelongingToOtherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsCow)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBePoodOn)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2e0 */
  bool (__fastcall* IsVillagerWhoHasNotBeenImpressedRecently)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsVillagerWhoHasNotBeenDancedWithRecently)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* DoesVillagerBelongToATownWhichIsAlreadyImpressed)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* DoesTotemBelongToATownWhichIsVeryImpressedIndeed)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x2f0 */
  bool (__fastcall* IsDominantCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeDancedWith)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsAggressive)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsStoragePit)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x300 */
  bool (__fastcall* IsWorshipSite_0)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsWorshipSite_1)(struct GameThingWithPos* this);
  struct WorshipSite* (__fastcall* GetWorshipSite)(struct GameThingWithPos* this);
  bool (__fastcall* IsWorkshop_0)(struct GameThingWithPos* this);  /* 0x310 */
  bool (__fastcall* IsWorkshop_1)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsBuildingWhichIsBeingBuilt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsStoragePitWithFoodInIt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsFieldWhichNeedsWatering)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x320 */
  bool (__fastcall* IsFieldWithFoodInIt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsFieldBelongingToAnotherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsStoragePitBelongingToAnotherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsStoragePitBelongingToMyPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x330 */
  bool (__fastcall* BenefitsFromHavingWaterSprinkledOnIt)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsTree_1)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsTree_0)(struct GameThingWithPos* this);
  bool (__fastcall* IsTreeNotTooNearPlannedForest)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x340 */
  bool (__fastcall* IsTreeBigEnoughForCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsAFoodPileOutsideStoragePit)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsAWoodPileOutsideStoragePit)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsDoingSomethingInteresting)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x350 */
  bool (__fastcall* CanBeUsedForBuildingHomeByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsPickupableRock)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsCitadelPart_1)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsCitadelPart_0)(struct GameThingWithPos* this);  /* 0x360 */
  bool (__fastcall* IsPlayingFootball)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsPlayingFootballAndMySideHasJustScored)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsPlayingFootballAndOtherSideHasJustScored)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeBroughtHomeByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x370 */
  bool (__fastcall* IsAnimalBelongingToOtherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsOneOffSpellBelongingToOtherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsOneOffSpellAggressive)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsOneOffSpellCompassionate)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x380 */
  bool (__fastcall* IsOneOffSpellPlayful)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsOneOffSpellToRestoreHealth)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeKickedByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* CanBeStolenByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x390 */
  bool (__fastcall* IsStealableByCreature)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsStealableSpell)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsStealableScaffold)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsTownBelongingToOtherPlayer)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x3a0 */
  bool (__fastcall* IsTotemWithStealableSpell)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsCreatureAvailableForJointActivity)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsCreatureNotAvailableForJointActivity)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsToyAwayFromHome)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x3b0 */
  bool (__fastcall* IsToy)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsToyBall)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsToyDie)(struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsToyCuddly)(const struct GameThingWithPos* this, const void* edx, struct Creature* creature);  /* 0x3c0 */
  bool (__fastcall* IsLiving_1)(const struct GameThingWithPos* this, const void* edx, struct Creature* creature);
  bool (__fastcall* IsLiving_0)(const struct GameThingWithPos* this);
  bool (__fastcall* IsFence)(const struct GameThingWithPos* this);
  bool (__fastcall* IsSpellIcon)(const struct GameThingWithPos* this);  /* 0x3d0 */
  bool (__fastcall* NothingScareyNearMe)(const struct GameThingWithPos* this);
  bool (__fastcall* CanBeUsedForThrowingDamageByCreature)(const struct GameThingWithPos* this);
  bool (__fastcall* IsCreatureWhoSeemsFriendly)(const struct GameThingWithPos* this);
  bool (__fastcall* CanBeThrownInTheSeaPlayfully)(const struct GameThingWithPos* this);  /* 0x3e0 */
  uint32_t (__fastcall* GetCreatureMimicType)(const struct GameThingWithPos* this);
  float (__fastcall* GetHowMuchCreatureWantsToLookAtMe)(struct GameThingWithPos* this);
  bool (__fastcall* IsFlock)(const struct GameThingWithPos* this);
  bool (__fastcall* IsDance)(const struct GameThingWithPos* this);  /* 0x3f0 */
  bool (__fastcall* IsReward)(const struct GameThingWithPos* this);
  bool (__fastcall* IsScriptContainer)(const struct GameThingWithPos* this);
  bool (__fastcall* IsWeather)(const struct GameThingWithPos* this);
  bool (__fastcall* IsSpell)(const struct GameThingWithPos* this);  /* 0x400 */
  bool (__fastcall* IsDeletedWhenReleasedFromScript)(struct GameThingWithPos* this);
  bool (__fastcall* IsMobileWallHug)(const struct GameThingWithPos* this);
  bool (__fastcall* IsActive)(const struct GameThingWithPos* this);
  bool (__fastcall* IsObjectTurningTooFastForCameraToFollowSmoothly)(const struct GameThingWithPos* this);  /* 0x410 */
  void (__fastcall* CalculateWhereIWillBeAfterNSeconds)(struct GameThingWithPos* this, const void* edx, float seconds, struct LHPoint* outPos);
  uint32_t (__fastcall* AttitudeToCreatureEating)(struct GameThingWithPos* this);
  const char* (__fastcall* GetText)(struct GameThingWithPos* this);
  float (__fastcall* CalculateDesireForFood)(struct GameThingWithPos* this);  /* 0x420 */
  float (__fastcall* CalculateDesireForRest)(struct GameThingWithPos* this);
  float (__fastcall* CalculatePeopleHidingIndicator)(struct GameThingWithPos* this);
  float (__fastcall* GetHeight)(const struct GameThingWithPos* this);
  bool (__fastcall* IsReadyForNewScriptAction)(const struct GameThingWithPos* this);  /* 0x430 */
  int (__fastcall* ForDrawFXGetNumVertices)(struct GameThingWithPos* this);
  void (__fastcall* ForDrawFXGetVertexPos)(struct GameThingWithPos* this, const void* edx, int32_t param_1, struct LHPoint* param_2);
  void (__fastcall* SetInScript)(struct GameThingWithPos* this, const void* edx, int32_t param_1);
  void (__fastcall* SetControlledByScript)(struct GameThingWithPos* this, const void* edx, int32_t param_1);  /* 0x440 */
  enum DEATH_REASON (__fastcall* GetDeathReason)(struct GameThingWithPos* this);
  bool (__fastcall* IsInScript)(struct GameThingWithPos* this);
  bool (__fastcall* IsMaleVillager)(struct GameThingWithPos* this);
  bool (__fastcall* IsFemaleVillager)(struct GameThingWithPos* this);  /* 0x450 */
  bool (__fastcall* IsAnimal)(struct GameThingWithPos* this);
  bool (__fastcall* IsAChild)(struct GameThingWithPos* this);
  bool (__fastcall* IsHouse)(struct GameThingWithPos* this);
  bool (__fastcall* IsObject)(const struct GameThingWithPos* this);  /* 0x460 */
  bool (__fastcall* IsFootball)(const struct GameThingWithPos* this);
  bool (__fastcall* IsCitadel)(struct GameThingWithPos* this);
  bool (__fastcall* IsForest)(struct GameThingWithPos* this);
  bool (__fastcall* IsMobileObject)(struct GameThingWithPos* this);  /* 0x470 */
  bool (__fastcall* IsMobileStatic)(struct GameThingWithPos* this);
  bool (__fastcall* IsAnyKindOfTree)(struct GameThingWithPos* this);
  bool (__fastcall* IsDeadTree)(struct GameThingWithPos* this);
  bool (__fastcall* IsPileFood)(struct GameThingWithPos* this);  /* 0x480 */
  bool (__fastcall* IsFeature)(struct GameThingWithPos* this);
  bool (__fastcall* IsScriptMarker)(struct GameThingWithPos* this);
  bool (__fastcall* IsScriptHighlight)(struct GameThingWithPos* this);
  bool (__fastcall* IsWonder)(struct GameThingWithPos* this);  /* 0x490 */
  bool (__fastcall* IsInfluenceRing)(struct GameThingWithPos* this);
  bool (__fastcall* IsPuzzleGame)(struct GameThingWithPos* this);
  bool (__fastcall* IsScaffold)(struct GameThingWithPos* this);
  bool (__fastcall* IsSkeleton)(const struct GameThingWithPos* this);  /* 0x4a0 */
  bool (__fastcall* IsPoisoned)(const struct GameThingWithPos* this);
  bool (__fastcall* IsSpeedUp)(struct GameThingWithPos* this);
  bool (__fastcall* IsParticleContainer)(struct GameThingWithPos* this);
  bool (__fastcall* IsSacrificeAltar)(struct GameThingWithPos* this);  /* 0x4b0 */
  bool (__fastcall* IsPot)(struct GameThingWithPos* this);
  bool (__fastcall* IsComputerPlayer)(const struct GameThingWithPos* this);
  bool (__fastcall* CanBeThrownByPlayer)(const struct GameThingWithPos* this);
  void (__fastcall* SetSkeleton)(struct GameThingWithPos* this, const void* edx, int index);  /* 0x4c0 */
  bool (__fastcall* IsSpellSeed)(const struct GameThingWithPos* this);
  bool (__fastcall* IsSpellShield)(const struct GameThingWithPos* this);
  bool (__fastcall* IsPileResource)(const struct GameThingWithPos* this);
  bool (__fastcall* IsScriptTimer)(const struct GameThingWithPos* this);  /* 0x4d0 */
  bool (__fastcall* CreateBuildingSite)(const struct GameThingWithPos* this);
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

static struct GameThingWithPosVftable* __vt__16GameThingWithPos = (struct GameThingWithPosVftable*)0x008c31a0;

// Constructors

// win1.41 0055d050 mac 101bb2c0 GameThingWithPos::GameThingWithPos(void)
struct GameThingWithPos* __fastcall __ct__16GameThingWithPosFv(struct GameThingWithPos* this);
// win1.41 0055d050 mac inlined GameThingWithPos::GameThingWithPos(MapCoords const &)
struct GameThingWithPos* __fastcall __ct__16GameThingWithPosFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* coords);

// Non-virtual methods

// win1.41 005705d0 mac 10098a30 GameThingWithPos::SetToZero(void)
void __fastcall SetToZero__16GameThingWithPosFv(struct GameThingWithPos* this);

// Override methods

// win1.41 00570350 mac 10005560 GameThingWithPos::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void __fastcall UseFootpathIfNecessary__16GameThingWithPosFP6LivingRC9MapCoordsUc(struct GameThingWithPos* this, const void* edx, struct Living* param_1, const struct MapCoords* param_2, unsigned char param_3);
// win1.41 005704a0 mac 1016a2c0 GameThingWithPos::Load(GameOSFile &)
uint32_t __fastcall Load__16GameThingWithPosFR10GameOSFile(struct GameThingWithPos* this, const void* edx, struct GameOSFile* file);
// win1.41 00401940 mac 1004d010 GameThingWithPos::SetPos(MapCoords const &)
void __fastcall SetPos__16GameThingWithPosFRC9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_2);

DECLARE_LH_LINKED_LIST(GameThingWithPos);

#endif /* BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H */
