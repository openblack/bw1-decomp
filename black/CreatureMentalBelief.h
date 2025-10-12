#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct CreatureBelief
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x44];
};
static_assert(sizeof(struct CreatureBelief) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf1e8 mac inlined CreatureBelief::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14CreatureBelief asm("??_R0?AVCreatureBelief@@@8");
// win1.41 009aa9a0 mac inlined CreatureBelief::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14CreatureBelief asm("??_R1A@?0A@A@CreatureBelief@@8");
// win1.41 009aaa08 mac inlined CreatureBelief::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14CreatureBelief asm("??_R2CreatureBelief@@8");
// win1.41 009aaa18 mac inlined CreatureBelief::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14CreatureBelief asm("??_R3CreatureBelief@@8");
// win1.41 008cfe0c mac 10989878 CreatureBelief::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14CreatureBelief asm("??_R4CreatureBelief@@6B@");
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

// Object Oriented datastructures

// win1.41 00bdf110 mac inlined CreatureBeliefAboutAbode::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24CreatureBeliefAboutAbode asm("??_R0?AVCreatureBeliefAboutAbode@@@8");
// win1.41 009aa810 mac inlined CreatureBeliefAboutAbode::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24CreatureBeliefAboutAbode asm("??_R1A@?0A@A@CreatureBeliefAboutAbode@@8");
// win1.41 009aa828 mac inlined CreatureBeliefAboutAbode::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24CreatureBeliefAboutAbode asm("??_R2CreatureBeliefAboutAbode@@8");
// win1.41 009aa838 mac inlined CreatureBeliefAboutAbode::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24CreatureBeliefAboutAbode asm("??_R3CreatureBeliefAboutAbode@@8");

// Override methods

// win1.41 004d6660 mac 10255910 CreatureBeliefAboutAbode::_dt(void)
void __fastcall __dt__24CreatureBeliefAboutAbodeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutAbode@@UAEPAXI@Z");

struct CreatureBeliefAboutCitadel
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutCitadel) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf1b8 mac inlined CreatureBeliefAboutCitadel::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__26CreatureBeliefAboutCitadel asm("??_R0?AVCreatureBeliefAboutCitadel@@@8");
// win1.41 009aa950 mac inlined CreatureBeliefAboutCitadel::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__26CreatureBeliefAboutCitadel asm("??_R1A@?0A@A@CreatureBeliefAboutCitadel@@8");
// win1.41 009aa968 mac inlined CreatureBeliefAboutCitadel::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__26CreatureBeliefAboutCitadel asm("??_R2CreatureBeliefAboutCitadel@@8");
// win1.41 009aa978 mac inlined CreatureBeliefAboutCitadel::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__26CreatureBeliefAboutCitadel asm("??_R3CreatureBeliefAboutCitadel@@8");

// Override methods

// win1.41 004d6570 mac 102557b0 CreatureBeliefAboutCitadel::_dt(void)
void __fastcall __dt__26CreatureBeliefAboutCitadelFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutCitadel@@UAEPAXI@Z");

struct CreatureBeliefAboutContext
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutContext) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf0b0 mac inlined CreatureBeliefAboutContext::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__26CreatureBeliefAboutContext asm("??_R0?AVCreatureBeliefAboutContext@@@8");
// win1.41 009aa770 mac inlined CreatureBeliefAboutContext::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__26CreatureBeliefAboutContext asm("??_R1A@?0A@A@CreatureBeliefAboutContext@@8");
// win1.41 009aa788 mac inlined CreatureBeliefAboutContext::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__26CreatureBeliefAboutContext asm("??_R2CreatureBeliefAboutContext@@8");
// win1.41 009aa798 mac inlined CreatureBeliefAboutContext::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__26CreatureBeliefAboutContext asm("??_R3CreatureBeliefAboutContext@@8");

// Override methods

// win1.41 004d66c0 mac 10255710 CreatureBeliefAboutContext::_dt(void)
void __fastcall __dt__26CreatureBeliefAboutContextFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutContext@@UAEPAXI@Z");

struct CreatureBeliefAboutCreature
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutCreature) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf160 mac inlined CreatureBeliefAboutCreature::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__27CreatureBeliefAboutCreature asm("??_R0?AVCreatureBeliefAboutCreature@@@8");
// win1.41 009aa8b0 mac inlined CreatureBeliefAboutCreature::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__27CreatureBeliefAboutCreature asm("??_R1A@?0A@A@CreatureBeliefAboutCreature@@8");
// win1.41 009aa8c8 mac inlined CreatureBeliefAboutCreature::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__27CreatureBeliefAboutCreature asm("??_R2CreatureBeliefAboutCreature@@8");
// win1.41 009aa8d8 mac inlined CreatureBeliefAboutCreature::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__27CreatureBeliefAboutCreature asm("??_R3CreatureBeliefAboutCreature@@8");

// Override methods

// win1.41 004d65c0 mac 10255d30 CreatureBeliefAboutCreature::_dt(void)
void __fastcall __dt__27CreatureBeliefAboutCreatureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutCreature@@UAEPAXI@Z");

struct CreatureBeliefAboutFlock
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutFlock) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf208 mac inlined CreatureBeliefAboutFlock::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24CreatureBeliefAboutFlock asm("??_R0?AVCreatureBeliefAboutFlock@@@8");
// win1.41 009aa9b8 mac inlined CreatureBeliefAboutFlock::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24CreatureBeliefAboutFlock asm("??_R1A@?0A@A@CreatureBeliefAboutFlock@@8");
// win1.41 009aa9d0 mac inlined CreatureBeliefAboutFlock::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24CreatureBeliefAboutFlock asm("??_R2CreatureBeliefAboutFlock@@8");
// win1.41 009aa9e0 mac inlined CreatureBeliefAboutFlock::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24CreatureBeliefAboutFlock asm("??_R3CreatureBeliefAboutFlock@@8");

// Override methods

// win1.41 004d6520 mac 10255e90 CreatureBeliefAboutFlock::_dt(void)
void __fastcall __dt__24CreatureBeliefAboutFlockFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutFlock@@UAEPAXI@Z");

struct CreatureBeliefAboutForest
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutForest) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf138 mac inlined CreatureBeliefAboutForest::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25CreatureBeliefAboutForest asm("??_R0?AVCreatureBeliefAboutForest@@@8");
// win1.41 009aa860 mac inlined CreatureBeliefAboutForest::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25CreatureBeliefAboutForest asm("??_R1A@?0A@A@CreatureBeliefAboutForest@@8");
// win1.41 009aa878 mac inlined CreatureBeliefAboutForest::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25CreatureBeliefAboutForest asm("??_R2CreatureBeliefAboutForest@@8");
// win1.41 009aa888 mac inlined CreatureBeliefAboutForest::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25CreatureBeliefAboutForest asm("??_R3CreatureBeliefAboutForest@@8");

// Override methods

// win1.41 004d6610 mac 10255bd0 CreatureBeliefAboutForest::_dt(void)
void __fastcall __dt__25CreatureBeliefAboutForestFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutForest@@UAEPAXI@Z");

struct CreatureBeliefAboutMobileObject
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutMobileObject) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf428 mac inlined CreatureBeliefAboutMobileObject::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__31CreatureBeliefAboutMobileObject asm("??_R0?AVCreatureBeliefAboutMobileObject@@@8");
// win1.41 009aaa90 mac inlined CreatureBeliefAboutMobileObject::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__31CreatureBeliefAboutMobileObject asm("??_R1A@?0A@A@CreatureBeliefAboutMobileObject@@8");
// win1.41 009aaaa8 mac inlined CreatureBeliefAboutMobileObject::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__31CreatureBeliefAboutMobileObject asm("??_R2CreatureBeliefAboutMobileObject@@8");
// win1.41 009aaab8 mac inlined CreatureBeliefAboutMobileObject::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__31CreatureBeliefAboutMobileObject asm("??_R3CreatureBeliefAboutMobileObject@@8");

// Override methods

// win1.41 004da700 mac inlined CreatureBeliefAboutMobileObject::_dt(void)
void __fastcall __dt__31CreatureBeliefAboutMobileObjectFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutMobileObject@@UAEPAXI@Z");

struct CreatureBeliefAboutTown
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutTown) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf088 mac inlined CreatureBeliefAboutTown::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23CreatureBeliefAboutTown asm("??_R0?AVCreatureBeliefAboutTown@@@8");
// win1.41 009aa720 mac inlined CreatureBeliefAboutTown::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23CreatureBeliefAboutTown asm("??_R1A@?0A@A@CreatureBeliefAboutTown@@8");
// win1.41 009aa738 mac inlined CreatureBeliefAboutTown::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23CreatureBeliefAboutTown asm("??_R2CreatureBeliefAboutTown@@8");
// win1.41 009aa748 mac inlined CreatureBeliefAboutTown::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23CreatureBeliefAboutTown asm("??_R3CreatureBeliefAboutTown@@8");

// Override methods

// win1.41 004d64d0 mac 10255ff0 CreatureBeliefAboutTown::_dt(void)
void __fastcall __dt__23CreatureBeliefAboutTownFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutTown@@UAEPAXI@Z");

struct CreatureBeliefAboutVillager
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefAboutVillager) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf0e0 mac inlined CreatureBeliefAboutVillager::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__27CreatureBeliefAboutVillager asm("??_R0?AVCreatureBeliefAboutVillager@@@8");
// win1.41 009aa7c0 mac inlined CreatureBeliefAboutVillager::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__27CreatureBeliefAboutVillager asm("??_R1A@?0A@A@CreatureBeliefAboutVillager@@8");
// win1.41 009aa7d8 mac inlined CreatureBeliefAboutVillager::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__27CreatureBeliefAboutVillager asm("??_R2CreatureBeliefAboutVillager@@8");
// win1.41 009aa7e8 mac inlined CreatureBeliefAboutVillager::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__27CreatureBeliefAboutVillager asm("??_R3CreatureBeliefAboutVillager@@8");

// Override methods

// win1.41 004d6480 mac 10255a70 CreatureBeliefAboutVillager::_dt(void)
void __fastcall __dt__27CreatureBeliefAboutVillagerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefAboutVillager@@UAEPAXI@Z");

struct CreatureBeliefSmall
{
  struct CreatureBelief super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureBeliefSmall) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf190 mac inlined CreatureBeliefSmall::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19CreatureBeliefSmall asm("??_R0?AVCreatureBeliefSmall@@@8");
// win1.41 009aa900 mac inlined CreatureBeliefSmall::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19CreatureBeliefSmall asm("??_R1A@?0A@A@CreatureBeliefSmall@@8");
// win1.41 009aa918 mac inlined CreatureBeliefSmall::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19CreatureBeliefSmall asm("??_R2CreatureBeliefSmall@@8");
// win1.41 009aa928 mac inlined CreatureBeliefSmall::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19CreatureBeliefSmall asm("??_R3CreatureBeliefSmall@@8");

// Override methods

// win1.41 004d6430 mac 10256140 CreatureBeliefSmall::_dt(void)
void __fastcall __dt__19CreatureBeliefSmallFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefSmall@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H */
