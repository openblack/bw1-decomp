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

struct AgeToScale
{
	float values[20];
};

class GVillagerInfo : public GLivingInfo
{
public:
	TRIBE_TYPE      TribeType; /* 0x1f4 */
	SEX_TYPE        sex;
	VILLAGER_NUMBER VillagerNumber;
	MESH_LIST       SuperMesh; /* 0x200 */
	MESH_LIST       ChildMeshHigh;
	MESH_LIST       ChildMeshMedium;
	MESH_LIST       ChildMeshLow;
	MESH_LIST       HighDetail; /* 0x210 */
	MESH_LIST       StdDetail;
	MESH_LIST       LowDetail;
	JOB_INFO        PrimaryJob;
	JOB_INFO        SecondaryJob; /* 0x220 */
	float           JobEfficency;
	uint32_t        StartHavingSexAge;
	uint32_t        StopHavingSexAge;
	int             WantSexSpring; /* 0x230 */
	int             WantSexSummer;
	int             WantSexAutumn;
	int             WantSexWinter;
	uint32_t        TimePregnantFor; /* 0x240 */
	uint32_t        LookForJobDelay;
	uint32_t        WaitAtHome;
	uint32_t        RestAtHomeTime;
	float           RestAtHomeRestoresLifeBy; /* 0x250 */
	float           PregnancyChance;
	uint32_t        inheritence;
	uint32_t        BoyGirlChance;
	float           AveageHeightOfAdult; /* 0x260 */
	uint32_t        MaxFoodCarried;
	uint32_t        MaxWoodCarried;
	uint32_t        MinWoodToShowGraphic;
	uint32_t        MinFoodToShowGraphic; /* 0x270 */
	uint32_t        MaxTraderFoodCarried;
	uint32_t        MaxTraderWoodCarried;
	float           WoodUsedPerBuildCycle;
	float           RepairAmount; /* 0x280 */
	uint32_t        JobSpeed;
	float           PercentLazy;
	float           ChantLifeRate;
	uint32_t        DyingTimeWithoutGraveyard; /* 0x290 */
	uint32_t        DyingTimeWithGraveyard;
	uint32_t        TimeForFootballChance;
	uint32_t        FootballWinGoalTime;
	uint32_t        FootballLostGoalTime; /* 0x2a0 */
	float           LookAheadDistance;
	uint32_t        ScaredStiffTime;
	uint32_t        waitForDinner;
	uint32_t        HousewifeGossipTime; /* 0x2b0 */
	uint32_t        HousewifeWaits;
	float           FoodNurishmentMultiplier;
	float           GameTurnReducesFoodInBellyBy;
	float           HungryForFood; /* 0x2c0 */
	float           StarvingForFood;
	float           HappyWithFood;
	float           FullWithFood;
	float           HungerToLifeMultiplier; /* 0x2d0 */
	float           StarvingToLifeMultiplier;
	uint32_t        FoodReqiredForDinner;
	uint32_t        ProcessChecksEvery;
	uint32_t        HavingSexTime; /* 0x2e0 */
	uint32_t        DancingSpeed;
	AgeToScale      ageToScale;
	ANIM_LIST       LAttractAnim[0x3];   /* 0x338 */
	ANIM_LIST       LNeedAnim[0x3];      /* 0x344 */
	float           MaxDistCarryFoodPit; /* 0x350 */
	float           MaxDistCarryWoodPit;
	uint32_t        AllowFaceSubstitution;
	float           DamageThresholdToGoHome;
	float           DamageThresholdToSleepUntil; /* 0x360 */
	uint32_t        NumGameTurnsAfterAggressionInterestedInShield;
	float           PauseForASecondChance;
	float           BaseForTownNeedsSpeedMod;
	float           DivisorForTownNeedsSpeedMod; /* 0x370 */
	float           SpeedModWhenFullLoadOfWood;
	float           SpeedModWhenFullLoadOfFood;
	float           LifeWhenWalksWounded;
	float           LifeWhenCrawlsWounded; /* 0x380 */
	uint32_t        AmountOfWoodPerBuilderWanted;
	uint32_t        KeepMeshWhenChangeTown;
	float           OwnDesireThreshold;
	float           MaxDistanceFromArtifactDanceCanBe; /* 0x390 */
	uint16_t        InitialChillOutTime;
	uint16_t        SubsequentChillOutTime;
	uint16_t        TimeToWaitForArtifactDance;
	uint16_t        DrowningTime;
	float           FoodPowerupIncrease;
	float           MissionaryImpressiveValue; /* 0x3a0 */

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
