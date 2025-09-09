#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct CreatureBelief
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x44];
};
static_assert(sizeof(struct CreatureBelief) == 0x4c, "Data type is of wrong size");

// win1.41 008cfe0c mac 10989878 CreatureBelief::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14CreatureBelief asm("??_R4CreatureBelief@@6B@");

// win1.41 008cfe10 mac 10989880 CreatureBelief::`vftable'
extern const struct BaseVftable __vt__14CreatureBelief asm("??_7CreatureBelief@@6B@");

// Override methods

// win1.41 004d78d0 mac 10252070 CreatureBelief::_dt(void)
void __fastcall __dt__14CreatureBeliefFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBelief@@UAEPAXI@Z");

struct CreatureBeliefAboutAbode
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutAbode) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004d6660 mac 10255910 CreatureBeliefAboutAbode::_dt(void)
void __fastcall __dt__24CreatureBeliefAboutAbodeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutAbode@@UAEPAXI@Z");

struct CreatureBeliefAboutCitadel
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutCitadel) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004d6570 mac 102557b0 CreatureBeliefAboutCitadel::_dt(void)
void __fastcall __dt__26CreatureBeliefAboutCitadelFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutCitadel@@UAEPAXI@Z");

struct CreatureBeliefAboutContext
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutContext) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004d66c0 mac 10255710 CreatureBeliefAboutContext::_dt(void)
void __fastcall __dt__26CreatureBeliefAboutContextFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutContext@@UAEPAXI@Z");

struct CreatureBeliefAboutCreature
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutCreature) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004d65c0 mac 10255d30 CreatureBeliefAboutCreature::_dt(void)
void __fastcall __dt__27CreatureBeliefAboutCreatureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutCreature@@UAEPAXI@Z");

struct CreatureBeliefAboutFlock
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutFlock) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004d6520 mac 10255e90 CreatureBeliefAboutFlock::_dt(void)
void __fastcall __dt__24CreatureBeliefAboutFlockFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutFlock@@UAEPAXI@Z");

struct CreatureBeliefAboutForest
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutForest) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004d6610 mac 10255bd0 CreatureBeliefAboutForest::_dt(void)
void __fastcall __dt__25CreatureBeliefAboutForestFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutForest@@UAEPAXI@Z");

struct CreatureBeliefAboutMobileObject
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutMobileObject) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004da700 mac inlined CreatureBeliefAboutMobileObject::_dt(void)
void __fastcall __dt__31CreatureBeliefAboutMobileObjectFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutMobileObject@@UAEPAXI@Z");

struct CreatureBeliefAboutTown
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutTown) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004d64d0 mac 10255ff0 CreatureBeliefAboutTown::_dt(void)
void __fastcall __dt__23CreatureBeliefAboutTownFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutTown@@UAEPAXI@Z");

struct CreatureBeliefAboutVillager
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutVillager) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004d6480 mac 10255a70 CreatureBeliefAboutVillager::_dt(void)
void __fastcall __dt__27CreatureBeliefAboutVillagerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutVillager@@UAEPAXI@Z");

struct CreatureBeliefSmall
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefSmall) == 0x4c, "Data type is of wrong size");

// Override methods

// win1.41 004d6430 mac 10256140 CreatureBeliefSmall::_dt(void)
void __fastcall __dt__19CreatureBeliefSmallFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefSmall@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H */
