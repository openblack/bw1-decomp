#ifndef BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H
#define BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "SpellFlock.h" /* For struct SpellFlock */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct Spell;

struct SpellFlockFlying
{
  struct SpellFlock super;  /* 0x0 */
};
static_assert(sizeof(struct SpellFlockFlying) == 0xf4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00beca00 mac inlined SpellFlockFlying::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16SpellFlockFlying asm("??_R0?AVSpellFlockFlying@@@8");
// win1.41 009ad4d0 mac inlined SpellFlockFlying::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16SpellFlockFlying asm("??_R1A@?0A@A@SpellFlockFlying@@8");
// win1.41 009ad4e8 mac inlined SpellFlockFlying::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16SpellFlockFlying asm("??_R2SpellFlockFlying@@8");
// win1.41 009ad508 mac inlined SpellFlockFlying::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16SpellFlockFlying asm("??_R3SpellFlockFlying@@8");

// Override methods

// win1.41 0055d2a0 mac 1051dac0 SpellFlockFlying::_dt(void)
void __fastcall __dt__16SpellFlockFlyingFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellFlockFlying@@UAEPAXI@Z");
// win1.41 0055d290 mac 1051ec90 SpellFlockFlying::GetDebugText(void)
char* __fastcall GetDebugText__16SpellFlockFlyingFv(struct GameThing* this) asm("?GetDebugText@SpellFlockFlying@@UAEPADXZ");
// win1.41 007249d0 mac 1051c220 SpellFlockFlying::Load(GameOSFile &)
uint32_t __fastcall Load__16SpellFlockFlyingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellFlockFlying@@UAEIAAVGameOSFile@@@Z");
// win1.41 00724ac0 mac 1051c0a0 SpellFlockFlying::Save(GameOSFile &)
uint32_t __fastcall Save__16SpellFlockFlyingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellFlockFlying@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d280 mac 1051ec50 SpellFlockFlying::GetSaveType(void)
uint32_t __fastcall GetSaveType__16SpellFlockFlyingFv(struct GameThing* this) asm("?GetSaveType@SpellFlockFlying@@UAEIXZ");
// win1.41 00723a30 mac 1051d940 SpellFlockFlying::GetParticleType(void)
void __fastcall GetParticleType__16SpellFlockFlyingFv(struct Spell* this) asm("?GetParticleType@SpellFlockFlying@@UAEXXZ");
// win1.41 00724100 mac 1051cea0 SpellFlockFlying::Draw(void)
void __fastcall Draw__16SpellFlockFlyingFv(struct Spell* this) asm("?Draw@SpellFlockFlying@@UAEXXZ");
// win1.41 00723bc0 mac 1051d040 SpellFlockFlying::Process(void)
uint32_t __fastcall Process__16SpellFlockFlyingFv(struct Spell* this) asm("?Process@SpellFlockFlying@@UAEIXZ");

#endif /* BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H */
