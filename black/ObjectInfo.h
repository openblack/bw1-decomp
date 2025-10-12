#ifndef BW1_DECOMP_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum ALIGNMENT_TYPE, enum IMMERSION_EFFECT_TYPE, enum OBJECT_TYPE, enum SOUND_COLLISION_TYPE, enum TRIBE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo, struct GBaseInfoVftable */
#include "Object.h" /* For enum FOOD_TYPE */

// Forward Declares

struct Base;
struct GObjectInfo;

struct GObjectInfoVftable
{
  struct GBaseInfoVftable super;  /* 0x0 */
  uint32_t (__fastcall* GetMesh_0)(const struct GObjectInfo* this);  /* 0x2c */
  uint32_t (__fastcall* GetMesh_1)(const struct GObjectInfo* this, const void* edx, enum TRIBE_TYPE tribe);  /* 0x30 */
  enum ALIGNMENT_TYPE (__fastcall* GetAlignmentType)(const struct GObjectInfo* this);
  enum FOOD_TYPE (__fastcall* GetFoodType)(const struct GObjectInfo* this);
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

// Object Oriented datastructures

// win1.41 009c7eb0 mac inlined GObjectInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GObjectInfo asm("??_R0?AVGObjectInfo@@@8");
// win1.41 009a6338 mac inlined GObjectInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GObjectInfo asm("??_R1A@?0A@A@GObjectInfo@@8");
// win1.41 009b2e08 mac inlined GObjectInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11GObjectInfo asm("??_R2GObjectInfo@@8");
// win1.41 009b2e18 mac inlined GObjectInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11GObjectInfo asm("??_R3GObjectInfo@@8");
// win1.41 00930a5c mac 10734630 GObjectInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11GObjectInfo asm("??_R4GObjectInfo@@6B@");
// win1.41 00930a60 mac 10734638 GObjectInfo::`vftable'
extern const struct GObjectInfoVftable __vt__11GObjectInfo asm("??_7GObjectInfo@@6B@");

// Override methods

// win1.41 006363c0 mac 101cbbe0 GObjectInfo::_dt(void)
void __fastcall __dt__11GObjectInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGObjectInfo@@UAEPAXI@Z");
// win1.41 004012c0 mac 10511e08 GObjectInfo::GetDebugText(void)
const char* __fastcall GetDebugText__11GObjectInfoCFv(const struct GBaseInfo* this) asm("?GetDebugText@GObjectInfo@@UBEPBDXZ");
// win1.41 0042b380 mac 104cc120 GObjectInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__11GObjectInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GObjectInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 0042b370 mac 1016ddf0 GObjectInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__11GObjectInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GObjectInfo@@UBEIXZ");
// win1.41 00401290 mac 1016e3a0 GObjectInfo::GetMesh(TRIBE_TYPE) const
uint32_t __fastcall GetMesh__11GObjectInfoCF10TRIBE_TYPE(const struct GObjectInfo* this, const void* edx, enum TRIBE_TYPE tribe) asm("?GetMesh@GObjectInfo@@UBE?AW4MeshId@@W4TRIBE_TYPE@@@Z");
// win1.41 004012a0 mac 1016de30 GObjectInfo::GetAlignmentType(void) const
enum ALIGNMENT_TYPE __fastcall GetAlignmentType__11GObjectInfoCFv(const struct GObjectInfo* this) asm("?GetAlignmentType@GObjectInfo@@UBE?AW4ALIGNMENT_TYPE@@XZ");
// win1.41 004012b0 mac 100627a0 GObjectInfo::GetFoodType(void) const
enum FOOD_TYPE __fastcall GetFoodType__11GObjectInfoCFv(const struct GObjectInfo* this) asm("?GetFoodType@GObjectInfo@@UBE?AW4FOOD_TYPE@@XZ");

#endif /* BW1_DECOMP_OBJECT_INFO_INCLUDED_H */
