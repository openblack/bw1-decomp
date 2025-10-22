#ifndef BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "CreatureAction.h" /* For enum CREATURE_SUB_STATE_ACTIONS */

// Forward Declares

struct Creature;
struct SubArgument;

struct CreatureSubAction
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x4];
  uint32_t field_0xc;
  uint8_t field_0x10[0x4];
  struct LHPoint field_0x14;
  uint8_t field_0x20[0xc];
  uint32_t field_0x2c;
  uint8_t field_0x30[0x30];
};
static_assert(sizeof(struct CreatureSubAction) == 0x60, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cfa00 mac inlined CreatureSubAction::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17CreatureSubAction asm("??_R0?AVCreatureSubAction@@@8");
// win1.41 009a95a8 mac inlined CreatureSubAction::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17CreatureSubAction asm("??_R1A@?0A@A@CreatureSubAction@@8");
// win1.41 009a95c0 mac inlined CreatureSubAction::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17CreatureSubAction asm("??_R2CreatureSubAction@@8");
// win1.41 009a95d0 mac inlined CreatureSubAction::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17CreatureSubAction asm("??_R3CreatureSubAction@@8");
// win1.41 008cd370 mac 1077e1bc CreatureSubAction::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17CreatureSubAction asm("??_R4CreatureSubAction@@6B@");
// win1.41 008cd374 mac 1077e1c4 CreatureSubAction::`vftable'
extern const struct BaseVftable __vt__17CreatureSubAction asm("??_7CreatureSubAction@@6B@");

// Constructors

// win1.41 00473db0 mac 101e0720 CreatureSubAction::CreatureSubAction(void)
void __fastcall __ct__17CreatureSubActionFv(struct CreatureSubAction* this) asm("??0CreatureSubAction@@QAE@XZ");

// Override methods

// win1.41 00473dd0 mac 101deb60 CreatureSubAction::_dt(void)
void __fastcall __dt__17CreatureSubActionFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureSubAction@@UAEPAXI@Z");

struct CreatureSubActionAgenda
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  int field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  struct CreatureSubAction sub_actions[0x20];
  struct Creature* creature;  /* 0xc28 */
  uint32_t field_0xc2c;
  uint32_t field_0xc30;
  uint32_t field_0xc34;
  uint32_t field_0xc38;
  uint32_t field_0xc3c;
  uint32_t field_0xc40;
  uint32_t field_0xc44;
  uint32_t field_0xc48;
  uint32_t field_0xc4c;
};
static_assert(sizeof(struct CreatureSubActionAgenda) == 0xc50, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cf9b8 mac inlined CreatureSubActionAgenda::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23CreatureSubActionAgenda asm("??_R0?AVCreatureSubActionAgenda@@@8");
// win1.41 009a9558 mac inlined CreatureSubActionAgenda::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23CreatureSubActionAgenda asm("??_R1A@?0A@A@CreatureSubActionAgenda@@8");
// win1.41 009a9570 mac inlined CreatureSubActionAgenda::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23CreatureSubActionAgenda asm("??_R2CreatureSubActionAgenda@@8");
// win1.41 009a9580 mac inlined CreatureSubActionAgenda::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23CreatureSubActionAgenda asm("??_R3CreatureSubActionAgenda@@8");
// win1.41 008cd350 mac 1077e1f4 CreatureSubActionAgenda::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__23CreatureSubActionAgenda asm("??_R4CreatureSubActionAgenda@@6B@");
// win1.41 008cd354 mac 1077e1fc CreatureSubActionAgenda::`vftable'
extern const struct BaseVftable __vt__23CreatureSubActionAgenda asm("??_7CreatureSubActionAgenda@@6B@");

// Constructors

// win1.41 004ff1b0 mac 1028cea0 CreatureSubActionAgenda::CreatureSubActionAgenda(Creature*)
void __fastcall __ct__23CreatureSubActionAgendaFP8Creature(struct CreatureSubActionAgenda* this, const void* edx, struct Creature* creature) asm("??0CreatureSubActionAgenda@@QAE@PAVCreature@@@Z");

// Non-virtual methods

// win1.41 004ff240 mac 1028cc30 CreatureSubActionAgenda::AddSubAction(CREATURE_SUB_STATE_ACTIONS, SubArgument *, int (__thiscall Creature::*)(void const *, void *, struct MapCoords *), void (__thiscall Creature::*)(void const *, void *))
void __fastcall AddSubAction__23CreatureSubActionAgendaF26CREATURE_SUB_STATE_ACTIONSP11SubArgumentM8CreatureFPCvPvP9MapCoords_iM8CreatureFPCvPv_v(struct CreatureSubActionAgenda* this, const void* edx, enum CREATURE_SUB_STATE_ACTIONS param_1, struct SubArgument* param_2, int (__thiscall* param_3)(struct Creature * param_1, const void * param_2, void * param_3, struct MapCoords * param_4), void (__thiscall* param_4)(struct Creature * param_1, const void * param_2, void * param_3)) asm("?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z");
// win1.41 004ff3a0 mac 1028cb10 CreatureSubActionAgenda::AddMainSubAction(CREATURE_SUB_STATE_ACTIONS, SubArgument *, int (__thiscall Creature::*)(void const *, void *, struct MapCoords *), void (__thiscall Creature::*)(void const *, void *))
void __fastcall AddMainSubAction__23CreatureSubActionAgendaF26CREATURE_SUB_STATE_ACTIONSP11SubArgumentM8CreatureFPCvPvP9MapCoords_iM8CreatureFPCvPv_v(struct CreatureSubActionAgenda* this, const void* edx, enum CREATURE_SUB_STATE_ACTIONS param_1, struct SubArgument* param_2, int (__thiscall* param_3)(struct Creature * param_1, const void * param_2, void * param_3, struct MapCoords * param_4), void (__thiscall* param_4)(struct Creature * param_1, const void * param_2, void * param_3)) asm("?AddMainSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z");

// Override methods

// win1.41 00473df0 mac 101e0670 CreatureSubActionAgenda::_dt(void)
void __fastcall __dt__23CreatureSubActionAgendaFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureSubActionAgenda@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H */
