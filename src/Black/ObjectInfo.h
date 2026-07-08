#ifndef BW1_DECOMP_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum ALIGNMENT_TYPE, enum IMMERSION_EFFECT_TYPE, enum OBJECT_TYPE, enum SOUND_COLLISION_TYPE, enum TRIBE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "BaseInfo.h" /* For struct GBaseInfo, struct GBaseInfoVftable */
#include "Object.h"   /* For enum FOOD_TYPE */

// Forward Declares

class Base;

class GObjectInfo : public GBaseInfo
{
public:
	OBJECT_TYPE           type; /* 0x10 */
	ALIGNMENT_TYPE        AlignmentType;
	char                  DebugString[0x30];
	SOUND_COLLISION_TYPE  CollideSound; /* 0x48 */
	IMMERSION_EFFECT_TYPE immersion;
	HELP_TEXT             HelpStartEnum; /* 0x50 */
	HELP_TEXT             HelpEndEnum;
	uint32_t              HelpMessage;
	uint32_t              HelpCondition;
	uint32_t              HelpInHand; /* 0x60 */
	uint32_t              HandCondition;
	float                 FoodValue;
	uint32_t              WoodValue;
	FOOD_TYPE             FoodType; /* 0x70 */
	float                 DefenceEffectBurn;
	float                 DefenceEffectCrush;
	float                 DefenceEffectHit;
	float                 DefenceEffectHeal; /* 0x80 */
	float                 DefenceEffectFlyAway;
	float                 DefenceEffectAlignmentModification;
	float                 DefenceEffectBeliefModification;
	float                 DefenceMultiplierBurn; /* 0x90 */
	float                 DefenceMultiplierCrush;
	float                 DefenceMultiplierHit;
	float                 DefenceMultiplierHeal;
	float                 DefenceMultiplierFlyAway; /* 0xa0 */
	float                 DefenceMultiplierAlignmentModification;
	float                 DefenceMultiplierBeliefModification;
	float                 weight;
	float                 HeatCapacity; /* 0xb0 */
	float                 CombustionTemperature;
	float                 BurningPriority;
	uint32_t              CanCreatureUseForBuilding;
	uint32_t              CanCreatureInteractWithMe; /* 0xc0 */
	uint32_t              CanCreatureAttackMe;
	uint32_t              CanCreaturePlayWithMe;
	uint32_t              CanCreatureInspectMe;
	uint32_t              CanCreatureGiveMeToLiving; /* 0xd0 */
	uint32_t              CanCreatureBringMeBackToTheCitadel;
	uint16_t              VillagerInteractState;
	uint16_t              VillagerInteractStateForBuilding;
	float                 field_0xdc;
	float                 VillagerInteractDesire; /* 0xe0 */
	float                 SacrificeValue;
	float                 ImpressiveValue;
	float                 AggressorValue;
	float                 VillagerImpressiveValue; /* 0xf0 */
	float                 ArtifactMultiplier;
	float                 DrawImportance;
	float                 ComputerAttackDesire;

	// Override methods

	// BW1W120 006363c0 BW1M100 101cbbe0 GObjectInfo::_dt(void)
	virtual ~GObjectInfo();
	// BW1W120 004012c0 BW1M100 10511e08 GObjectInfo::GetDebugText(void)
	virtual const char* GetDebugText() { return DebugString; }
	// BW1W120 0042b380 BW1M100 104cc120 GObjectInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
	// BW1W120 0042b370 BW1M100 1016ddf0 GObjectInfo::GetMesh( const(void))
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00401290 BW1M100 1016e3a0 GObjectInfo::GetMesh(TRIBE_TYPE) const
	virtual MESH_LIST GetMesh(TRIBE_TYPE tribe) const { return MSH_DUMMY; }
	// BW1W120 004012a0 BW1M100 1016de30 GObjectInfo::GetAlignmentType(void) const
	virtual ALIGNMENT_TYPE GetAlignmentType() const { return AlignmentType; }
	// BW1W120 004012b0 BW1M100 100627a0 GObjectInfo::GetFoodType(void) const
	virtual FOOD_TYPE GetFoodType() const { return FoodType; }
};

#endif /* BW1_DECOMP_OBJECT_INFO_INCLUDED_H */
