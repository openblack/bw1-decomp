#ifndef BW1_DECOMP_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum ALIGNMENT_TYPE, enum IMMERSION_EFFECT_TYPE, enum OBJECT_TYPE, enum SOUND_COLLISION_TYPE, enum TRIBE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "BaseInfo.h" /* For struct GBaseInfo, struct GBaseInfoVftable */

// Forward Declares

struct GObjectInfo;

struct GObjectInfoVftable
{
  struct GBaseInfoVftable super;  /* 0x0 */
  void* (__fastcall* GetMesh)(const struct GObjectInfo* this);  /* 0x2c */
  void* (__fastcall* GetMesh__TRIBE_TYPE)(const struct GObjectInfo* this, const void* edx, enum TRIBE_TYPE tribe);  /* 0x30 */
  enum ALIGNMENT_TYPE (__fastcall* GetAlignmentType)(const struct GObjectInfo* this);
  uint32_t (__fastcall* GetFoodType)(const struct GObjectInfo* this);
};
static_assert(sizeof(struct GObjectInfoVftable) == 0x3c, "Data type is of wrong size");

union GObjectInfoBase
{
  struct GBaseInfo super;
  struct GObjectInfoVftable* vftable;
};
static_assert(sizeof(union GObjectInfoBase) == 0x10, "Data type is of wrong size");

struct GObjectInfo
{
  union GObjectInfoBase base;  /* 0x0 */
  enum OBJECT_TYPE type;  /* 0x10 */
  enum ALIGNMENT_TYPE alignmentType;
  char debugString[0x30];
  enum SOUND_COLLISION_TYPE collideSound;  /* 0x48 */
  enum IMMERSION_EFFECT_TYPE immersion;
  enum HELP_TEXT helpStartEnum;  /* 0x50 */
  enum HELP_TEXT helpEndEnum;
  uint32_t helpMessage;
  uint32_t helpCondition;
  uint32_t helpInHand;  /* 0x60 */
  uint32_t handCondition;
  float foodValue;
  uint32_t woodValue;
  uint32_t food_type;  /* 0x70 */
  float defenceEffectBurn;
  float defenceEffectCrush;
  float defenceEffectHit;
  float defenceEffectHeal;  /* 0x80 */
  float defenceEffectFlyAway;
  float defenceEffectAlignmentModification;
  float defenceEffectBeliefModification;
  float defenceMultiplierBurn;  /* 0x90 */
  float defenceMultiplierCrush;
  float defenceMultiplierHit;
  float defenceMultiplierHeal;
  float defenceMultiplierFlyAway;  /* 0xa0 */
  float defenceMultiplierAlignmentModification;
  float defenceMultiplierBeliefModification;
  float weight;
  float heat_capacity;  /* 0xb0 */
  float combustionTemperature;
  float burningPriority;
  uint32_t canCreatureUseForBuilding;
  uint32_t canCreatureInteractWithMe;  /* 0xc0 */
  uint32_t canCreatureAttackMe;
  uint32_t canCreaturePlayWithMe;
  uint32_t canCreatureInspectMe;
  uint32_t canCreatureGiveMeToLiving;  /* 0xd0 */
  uint32_t canCreatureBringMeBackToTheCitadel;
  uint16_t villagerInteractState;
  uint16_t villagerInteractStateForBuilding;
  float field_0xdc;
  float villagerInteractDesire;  /* 0xe0 */
  float sacrificeValue;
  float impressiveValue;
  float aggressorValue;
  float villagerImpressiveValue;  /* 0xf0 */
  float artifactMultiplier;
  float drawImportance;
  float computer_attack_desire;
};
static_assert(sizeof(struct GObjectInfo) == 0x100, "Data type is of wrong size");

static struct GObjectInfoVftable* __vt__11GObjectInfo = (struct GObjectInfoVftable*)0x00930a60;

#endif /* BW1_DECOMP_OBJECT_INFO_INCLUDED_H */
