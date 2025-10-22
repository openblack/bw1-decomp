#ifndef BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H
#define BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct Creature;

struct ScriptCreatureCurse
{
  float height;  /* 0x0 */
  float strength;
  float alignment;
};
static_assert(sizeof(struct ScriptCreatureCurse) == 0xc, "Data type is of wrong size");

// Non-virtual methods

// win1.41 006f6190 mac 105e86b0 ScriptCreatureCurse::Init(Creature *)
void __fastcall Init__19ScriptCreatureCurseFP8Creature(struct ScriptCreatureCurse* this, const void* edx, struct Creature* creature) asm("?Init@ScriptCreatureCurse@@QAEXPAVCreature@@@Z");
// win1.41 006f61e0 mac 105e85d0 ScriptCreatureCurse::ResolveLoad(Creature *)
void __fastcall ResolveLoad__19ScriptCreatureCurseFP8Creature(struct ScriptCreatureCurse* this, const void* edx, struct Creature* creature) asm("?ResolveLoad@ScriptCreatureCurse@@QAEXPAVCreature@@@Z");

#endif /* BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H */
