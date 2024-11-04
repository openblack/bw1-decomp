#ifndef BW1_DECOMP_VILLAGER_INFO_INCLUDED_H
#define BW1_DECOMP_VILLAGER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST, enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum JOB_INFO, enum SEX_TYPE, enum TOWN_DESIRE_INFO, enum TRIBE_TYPE, enum VILLAGER_NUMBER */

#include "LivingInfo.h" /* For struct GLivingInfo */

struct DiscipleInfo
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  enum TOWN_DESIRE_INFO desire_i_fulfil;
  uint32_t field_0x18;
};
static_assert(sizeof(struct DiscipleInfo) == 0x1c, "Data type is of wrong size");

struct AgeToScale
{
  float values[0x14];  /* 0x0 */
};
static_assert(sizeof(struct AgeToScale) == 0x50, "Data type is of wrong size");

struct GVillagerInfo
{
  struct GLivingInfo super;  /* 0x0 */
  enum TRIBE_TYPE tribeType;  /* 0x1f4 */
  enum SEX_TYPE sex;
  enum VILLAGER_NUMBER villagerNumber;
  enum MESH_LIST superMesh;  /* 0x200 */
  enum MESH_LIST childMeshHigh;
  enum MESH_LIST childMeshMedium;
  enum MESH_LIST childMeshLow;
  enum MESH_LIST highDetail;  /* 0x210 */
  enum MESH_LIST stdDetail;
  enum MESH_LIST lowDetail;
  enum JOB_INFO primaryJob;
  enum JOB_INFO secondaryJob;  /* 0x220 */
  float jobEfficency;
  uint32_t startHavingSexAge;
  uint32_t stopHavingSexAge;
  int wantSexSpring;  /* 0x230 */
  int wantSexSummer;
  int wantSexAutumn;
  int wantSexWinter;
  uint32_t timePregnantFor;  /* 0x240 */
  uint32_t lookForJobDelay;
  uint32_t waitAtHome;
  uint32_t restAtHomeTime;
  float restAtHomeRestoresLifeBy;  /* 0x250 */
  float pregnancyChance;
  uint32_t inheritence;
  uint32_t boyGirlChance;
  float aveageHeightOfAdult;  /* 0x260 */
  uint32_t maxFoodCarried;
  uint32_t maxWoodCarried;
  uint32_t minWoodToShowGraphic;
  uint32_t minFoodToShowGraphic;  /* 0x270 */
  uint32_t maxTraderFoodCarried;
  uint32_t maxTraderWoodCarried;
  float woodUsedPerBuildCycle;
  float repairAmount;  /* 0x280 */
  uint32_t jobSpeed;
  float percentLazy;
  float chantLifeRate;
  uint32_t dyingTimeWithoutGraveyard;  /* 0x290 */
  uint32_t dyingTimeWithGraveyard;
  uint32_t timeForFootballChance;
  uint32_t footballWinGoalTime;
  uint32_t footballLostGoalTime;  /* 0x2a0 */
  float lookAheadDistance;
  uint32_t scaredStiffTime;
  uint32_t waitForDinner;
  uint32_t housewifeGossipTime;  /* 0x2b0 */
  uint32_t housewifeWaits;
  float foodNurishmentMultiplier;
  float gameTurnReducesFoodInBellyBy;
  float hungryForFood;  /* 0x2c0 */
  float starvingForFood;
  float happyWithFood;
  float fullWithFood;
  float hungerToLifeMultiplier;  /* 0x2d0 */
  float starvingToLifeMultiplier;
  uint32_t foodReqiredForDinner;
  uint32_t processChecksEvery;
  uint32_t havingSexTime;  /* 0x2e0 */
  uint32_t dancingSpeed;
  struct AgeToScale ageToScale;
  enum ANIM_LIST lAttractAnim[0x3];  /* 0x338 */
  enum ANIM_LIST lNeedAnim[0x3];  /* 0x344 */
  float maxDistCarryFoodPit;  /* 0x350 */
  float maxDistCarryWoodPit;
  uint32_t allowFaceSubstitution;
  float damageThresholdToGoHome;
  float damageThresholdToSleepUntil;  /* 0x360 */
  uint32_t numGameTurnsAfterAggressionInterestedInShield;
  float pauseForASecondChance;
  float baseForTownNeedsSpeedMod;
  float divisorForTownNeedsSpeedMod;  /* 0x370 */
  float speedModWhenFullLoadOfWood;
  float speedModWhenFullLoadOfFood;
  float lifeWhenWalksWounded;
  float lifeWhenCrawlsWounded;  /* 0x380 */
  uint32_t amountOfWoodPerBuilderWanted;
  uint32_t keepMeshWhenChangeTown;
  float ownDesireThreshold;
  float maxDistanceFromArtifactDanceCanBe;  /* 0x390 */
  uint16_t initialChillOutTime;
  uint16_t subsequentChillOutTime;
  uint16_t timeToWaitForArtifactDance;
  uint16_t drowningTime;
  float foodPowerupIncrease;
  float missionaryImpressiveValue;  /* 0x3a0 */
};
static_assert(sizeof(struct GVillagerInfo) == 0x3a4, "Data type is of wrong size");

static struct GObjectInfoVftable* const __vt__13GVillagerInfo = (struct GObjectInfoVftable* const)0x0099a3e4;

// Static methods

// win1.41 007519e0 mac 1056df60 GVillagerInfo::GetInfoFromText(char *)
int __cdecl GetInfoFromText__13GVillagerInfoFPc(const char* text);
// win1.41 00752650 mac 1056be30 GVillagerInfo::Find(TRIBE_TYPE, VILLAGER_NUMBER)
struct GVillagerInfo* __cdecl Find__13GVillagerInfoF10TRIBE_TYPE15VILLAGER_NUMBER(enum TRIBE_TYPE type, int villager_number);

#endif /* BW1_DECOMP_VILLAGER_INFO_INCLUDED_H */
