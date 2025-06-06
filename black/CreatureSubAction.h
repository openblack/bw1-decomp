#ifndef BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h" /* For struct Base */

// Forward Declares

struct Creature;

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

static struct BaseVftable* const __vt__17CreatureSubAction = (struct BaseVftable* const)0x008cd374;

// Constructors

// win1.41 00473db0 mac 101e0720 CreatureSubAction::CreatureSubAction(void)
void __fastcall __ct__17CreatureSubActionFv(struct CreatureSubAction* this);

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

static struct BaseVftable* const __vt__23CreatureSubActionAgenda = (struct BaseVftable* const)0x008cd354;

// Constructors

// win1.41 004ff1b0 mac 1028cea0 CreatureSubActionAgenda::CreatureSubActionAgenda(Creature*)
void __fastcall __ct__23CreatureSubActionAgendaFP8Creature(struct CreatureSubActionAgenda* this, const void* edx, struct Creature* creature);

#endif /* BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H */
