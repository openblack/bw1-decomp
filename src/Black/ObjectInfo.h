#ifndef BW1_DECOMP_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum ALIGNMENT_TYPE, enum IMMERSION_EFFECT_TYPE, enum OBJECT_TYPE, enum SOUND_COLLISION_TYPE, enum TRIBE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "BaseInfo.h"      /* For struct GBaseInfo, struct GBaseInfoVftable */
#include "EffectNumbers.h" /* For struct EffectNumbers */

// Forward Declares

class Base;
struct MapCoords;

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
	FOOD_TYPE             FoodType;
	float                 DefenceEffect[EFFECT_TYPE_LAST];
	float                 DefenceMultiplier[EFFECT_TYPE_LAST];
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

	// Static data

	// BW1W120 00d41668 BW1M119 01b3dd40
	static GObjectInfo Infos[OBJECT_TYPE_LAST];
	// BW1W120 00d41560 BW1M119 01b3dc28
	static GObjectInfo ComputerPlayerInfo; // fabricated

	// Override methods

	// BW1W120 004012c0 BW1M119 013e51c0
	virtual const char* GetDebugText() const { return DebugString; }
	// BW1W120 0042b380 BW1M119 013e4f50
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 0042b370 BW1M119 0157f860
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00401290 BW1M119 010e45f0
	virtual MESH_LIST GetMesh2(TRIBE_TYPE tribe) const { return MSH_DUMMY; }
	// BW1W120 004012a0 BW1M119 012fef20
	virtual ALIGNMENT_TYPE GetAlignmentType() const { return AlignmentType; }
	// BW1W120 004012b0 BW1M119 01064f20
	virtual FOOD_TYPE GetFoodType() const { return FoodType; }

	// Non-virtual methods

	// BW1W120 00638c40 BW1M119 013dbff0
	bool32_t IsOkToCreateAtPos(const MapCoords& coords, float param_2, float param_3) const;
	// BW1W120 00636e30 BW1M119 013dff10
	float GetMesh2DRadius(float scale) const;
};

#endif /* BW1_DECOMP_OBJECT_INFO_INCLUDED_H */
