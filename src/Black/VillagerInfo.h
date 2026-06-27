#ifndef BW1_DECOMP_VILLAGER_INFO_INCLUDED_H
#define BW1_DECOMP_VILLAGER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST, enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum JOB_INFO, enum SEX_TYPE, enum TOWN_DESIRE_INFO, enum TRIBE_TYPE, enum VILLAGER_NUMBER */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GVillagerInfo: public GLivingInfo
{
public:
    TRIBE_TYPE tribeType; /* 0x1f4 */
    SEX_TYPE sex;
    VILLAGER_NUMBER villagerNumber;
    MESH_LIST superMesh; /* 0x200 */
    MESH_LIST childMeshHigh;
    MESH_LIST childMeshMedium;
    MESH_LIST childMeshLow;
    MESH_LIST highDetail; /* 0x210 */
    MESH_LIST stdDetail;
    MESH_LIST lowDetail;
    JOB_INFO primaryJob;
    JOB_INFO secondaryJob; /* 0x220 */
    float jobEfficency;
    uint32_t startHavingSexAge;
    uint32_t stopHavingSexAge;
    int wantSexSpring; /* 0x230 */
    int wantSexSummer;
    int wantSexAutumn;
    int wantSexWinter;
    uint32_t timePregnantFor; /* 0x240 */
    uint32_t lookForJobDelay;
    uint32_t waitAtHome;
    uint32_t restAtHomeTime;
    float restAtHomeRestoresLifeBy; /* 0x250 */
    float pregnancyChance;
    uint32_t inheritence;
    uint32_t boyGirlChance;
    float aveageHeightOfAdult; /* 0x260 */
    uint32_t maxFoodCarried;
    uint32_t maxWoodCarried;
    uint32_t minWoodToShowGraphic;
    uint32_t minFoodToShowGraphic; /* 0x270 */
    uint32_t maxTraderFoodCarried;
    uint32_t maxTraderWoodCarried;
    float woodUsedPerBuildCycle;
    float repairAmount; /* 0x280 */
    uint32_t jobSpeed;
    float percentLazy;
    float chantLifeRate;
    uint32_t dyingTimeWithoutGraveyard; /* 0x290 */
    uint32_t dyingTimeWithGraveyard;
    uint32_t timeForFootballChance;
    uint32_t footballWinGoalTime;
    uint32_t footballLostGoalTime; /* 0x2a0 */
    float lookAheadDistance;
    uint32_t scaredStiffTime;
    uint32_t waitForDinner;
    uint32_t housewifeGossipTime; /* 0x2b0 */
    uint32_t housewifeWaits;
    float foodNurishmentMultiplier;
    float gameTurnReducesFoodInBellyBy;
    float hungryForFood; /* 0x2c0 */
    float starvingForFood;
    float happyWithFood;
    float fullWithFood;
    float hungerToLifeMultiplier; /* 0x2d0 */
    float starvingToLifeMultiplier;
    uint32_t foodReqiredForDinner;
    uint32_t processChecksEvery;
    uint32_t havingSexTime; /* 0x2e0 */
    uint32_t dancingSpeed;
    AgeToScale ageToScale;
    ANIM_LIST lAttractAnim[0x3]; /* 0x338 */
    ANIM_LIST lNeedAnim[0x3]; /* 0x344 */
    float maxDistCarryFoodPit; /* 0x350 */
    float maxDistCarryWoodPit;
    uint32_t allowFaceSubstitution;
    float damageThresholdToGoHome;
    float damageThresholdToSleepUntil; /* 0x360 */
    uint32_t numGameTurnsAfterAggressionInterestedInShield;
    float pauseForASecondChance;
    float baseForTownNeedsSpeedMod;
    float divisorForTownNeedsSpeedMod; /* 0x370 */
    float speedModWhenFullLoadOfWood;
    float speedModWhenFullLoadOfFood;
    float lifeWhenWalksWounded;
    float lifeWhenCrawlsWounded; /* 0x380 */
    uint32_t amountOfWoodPerBuilderWanted;
    uint32_t keepMeshWhenChangeTown;
    float ownDesireThreshold;
    float maxDistanceFromArtifactDanceCanBe; /* 0x390 */
    uint16_t initialChillOutTime;
    uint16_t subsequentChillOutTime;
    uint16_t timeToWaitForArtifactDance;
    uint16_t drowningTime;
    float foodPowerupIncrease;
    float missionaryImpressiveValue; /* 0x3a0 */

    // Override methods

    // BW1W120 0074f900 BW1M100 1056bfe0 GVillagerInfo::_dt(void)
    virtual ~GVillagerInfo();
    // BW1W120 0074f890 BW1M100 10571e90 GVillagerInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // BW1W120 0074f880 BW1M100 10571e50 GVillagerInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();

    // Static methods

    // BW1W120 007519e0 BW1M100 1056df60 GVillagerInfo::GetInfoFromText(char *)
    static int GetInfoFromText(char* text);
    // BW1W120 00752650 BW1M100 1056be30 GVillagerInfo::Find(TRIBE_TYPE, VILLAGER_NUMBER)
    static GVillagerInfo* Find(TRIBE_TYPE type, int villager_number);
};

#endif /* BW1_DECOMP_VILLAGER_INFO_INCLUDED_H */
