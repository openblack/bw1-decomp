#ifndef BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H
#define BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhlib/ver5.0/GJVector.h> /* For DECLARE_GJ_VECTOR */

// Forward Declares

struct Creature;

struct CreatureReceiveSpell__QueueData
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct CreatureReceiveSpell__QueueData) == 0x1, "Data type is of wrong size");

DECLARE_GJ_VECTOR(CreatureReceiveSpell__QueueData);

struct CreatureReceiveSpell__TPerSpellData
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
};
static_assert(sizeof(struct CreatureReceiveSpell__TPerSpellData) == 0x18, "Data type is of wrong size");

struct CreatureReceiveSpell
{
  struct Creature* creature;  /* 0x0 */
  struct CreatureReceiveSpell__TPerSpellData data[0x10];
  struct GJVector__CreatureReceiveSpell__QueueData queue_data;  /* 0x184 */
  uint8_t field_0x194[0x8];
  struct LHPoint field_0x19c;
  struct LHPoint field_0x1a8;
  struct LHPoint field_0x1b4;
  struct LHPoint field_0x1c0;
  float field_0x1cc;
  uint32_t field_0x1d0;
  uint8_t field_0x1d4;
};
static_assert(sizeof(struct CreatureReceiveSpell) == 0x1d8, "Data type is of wrong size");

// Constructors

// win1.41 004f5240 mac 102802a0 CreatureReceiveSpell::CreatureReceiveSpell(Creature *)
struct CreatureReceiveSpell* __fastcall __ct__20CreatureReceiveSpellFP8Creature(struct CreatureReceiveSpell* this, const void* edx, struct Creature* creature) asm("??0CreatureReceiveSpell@@QAE@PAVCreature@@@Z");

#endif /* BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H */
