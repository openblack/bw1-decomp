#ifndef BW1_DECOMP_SPELL_FLOCK_GROUND_INCLUDED_H
#define BW1_DECOMP_SPELL_FLOCK_GROUND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SpellFlock.h" /* For struct SpellFlock */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct Spell;

struct SpellFlockGround
{
  struct SpellFlock super;  /* 0x0 */
};
static_assert(sizeof(struct SpellFlockGround) == 0xf4, "Data type is of wrong size");

// Override methods

// win1.41 0055d2f0 mac 1051bea0 SpellFlockGround::_dt(void)
void __fastcall __dt__16SpellFlockGroundFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellFlockGround@@UAEPAXI@Z");
// win1.41 0055d2e0 mac 1051bf80 SpellFlockGround::GetDebugText(void)
char* __fastcall GetDebugText__16SpellFlockGroundFv(struct GameThing* this) asm("?GetDebugText@SpellFlockGround@@UAEPADXZ");
// win1.41 00724bb0 mac 1051c030 SpellFlockGround::Load(GameOSFile &)
uint32_t __fastcall Load__16SpellFlockGroundFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellFlockGround@@UAEIAAVGameOSFile@@@Z");
// win1.41 00724bd0 mac 1051bfc0 SpellFlockGround::Save(GameOSFile &)
uint32_t __fastcall Save__16SpellFlockGroundFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellFlockGround@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d2d0 mac 1051bf40 SpellFlockGround::GetSaveType(void)
uint32_t __fastcall GetSaveType__16SpellFlockGroundFv(struct GameThing* this) asm("?GetSaveType@SpellFlockGround@@UAEIXZ");
// win1.41 00724290 mac 1051ccf0 SpellFlockGround::GetParticleType(void)
void __fastcall GetParticleType__16SpellFlockGroundFv(struct Spell* this) asm("?GetParticleType@SpellFlockGround@@UAEXXZ");
// win1.41 007242a0 mac 1051c720 SpellFlockGround::Process(void)
uint32_t __fastcall Process__16SpellFlockGroundFv(struct Spell* this) asm("?Process@SpellFlockGround@@UAEIXZ");

#endif /* BW1_DECOMP_SPELL_FLOCK_GROUND_INCLUDED_H */
