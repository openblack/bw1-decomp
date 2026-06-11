#ifndef BW1_DECOMP_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum ALIGNMENT_TYPE, enum IMMERSION_EFFECT_TYPE, enum OBJECT_TYPE, enum SOUND_COLLISION_TYPE, enum TRIBE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "BaseInfo.h" /* For struct GBaseInfo, struct GBaseInfoVftable */
#include "Object.h" /* For enum FOOD_TYPE */

// Forward Declares

class Base;

class GObjectInfo: public GBaseInfo
{
public:
    OBJECT_TYPE type; /* 0x10 */
    ALIGNMENT_TYPE alignmentType;
    char debugString[0x30];
    SOUND_COLLISION_TYPE collideSound; /* 0x48 */
    IMMERSION_EFFECT_TYPE immersion;
    HELP_TEXT helpStartEnum; /* 0x50 */
    HELP_TEXT helpEndEnum;
    uint32_t helpMessage;
    uint32_t helpCondition;
    uint32_t helpInHand; /* 0x60 */
    uint32_t handCondition;
    float foodValue;
    uint32_t woodValue;
    uint32_t food_type; /* 0x70 */
    float defenceEffectBurn;
    float defenceEffectCrush;
    float defenceEffectHit;
    float defenceEffectHeal; /* 0x80 */
    float defenceEffectFlyAway;
    float defenceEffectAlignmentModification;
    float defenceEffectBeliefModification;
    float defenceMultiplierBurn; /* 0x90 */
    float defenceMultiplierCrush;
    float defenceMultiplierHit;
    float defenceMultiplierHeal;
    float defenceMultiplierFlyAway; /* 0xa0 */
    float defenceMultiplierAlignmentModification;
    float defenceMultiplierBeliefModification;
    float weight;
    float heat_capacity; /* 0xb0 */
    float combustionTemperature;
    float burningPriority;
    uint32_t canCreatureUseForBuilding;
    uint32_t canCreatureInteractWithMe; /* 0xc0 */
    uint32_t canCreatureAttackMe;
    uint32_t canCreaturePlayWithMe;
    uint32_t canCreatureInspectMe;
    uint32_t canCreatureGiveMeToLiving; /* 0xd0 */
    uint32_t canCreatureBringMeBackToTheCitadel;
    uint16_t villagerInteractState;
    uint16_t villagerInteractStateForBuilding;
    float field_0xdc;
    float villagerInteractDesire; /* 0xe0 */
    float sacrificeValue;
    float impressiveValue;
    float aggressorValue;
    float villagerImpressiveValue; /* 0xf0 */
    float artifactMultiplier;
    float drawImportance;
    float computer_attack_desire;

    // Override methods

    // win1.41 006363c0 mac 101cbbe0 GObjectInfo::_dt(void)
    virtual ~GObjectInfo();
    // win1.41 004012c0 mac 10511e08 GObjectInfo::GetDebugText(void)
    virtual const char* GetDebugText();
    // win1.41 0042b380 mac 104cc120 GObjectInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // win1.41 0042b370 mac 1016ddf0 GObjectInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
    // win1.41 00401290 mac 1016e3a0 GObjectInfo::GetMesh(TRIBE_TYPE) const
    virtual uint32_t GetMesh(TRIBE_TYPE tribe);
    // win1.41 004012a0 mac 1016de30 GObjectInfo::GetAlignmentType(void) const
    virtual ALIGNMENT_TYPE GetAlignmentType();
    // win1.41 004012b0 mac 100627a0 GObjectInfo::GetFoodType(void) const
    virtual FOOD_TYPE GetFoodType();
};

#endif /* BW1_DECOMP_OBJECT_INFO_INCLUDED_H */
