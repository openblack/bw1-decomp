#ifndef BW1_DECOMP_SECRET_CREATURE_INCLUDED_H
#define BW1_DECOMP_SECRET_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct SecretCreature;

struct SecretCreatureVftable
{
  void (__fastcall* __dt)(struct SecretCreature* this);  /* 0x0 */
};
static_assert(sizeof(struct SecretCreatureVftable) == 0x4, "Data type is of wrong size");

struct SecretCreature
{
  struct SecretCreatureVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct SecretCreature) == 0x4, "Data type is of wrong size");

// win1.41 0095726c mac 1075ac64 SecretCreature::`vftable'
extern const struct SecretCreatureVftable __vt__14SecretCreature asm("??_7SecretCreature@@6B@");

// Override methods

// win1.41 00711d60 mac 101441a0 SecretCreature::_dt(void)
void __fastcall __dt__14SecretCreatureFv(struct SecretCreature* this) asm("??_GSecretCreature@@UAEPAXI@Z");

#endif /* BW1_DECOMP_SECRET_CREATURE_INCLUDED_H */
