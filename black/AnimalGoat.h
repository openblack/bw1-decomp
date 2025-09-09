#ifndef BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H
#define BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Goat
{
  struct Cow super;  /* 0x0 */
};
static_assert(sizeof(struct Goat) == 0x148, "Data type is of wrong size");

// Override methods

// win1.41 0041d6e0 mac 101710a0 Goat::_dt(void)
void __fastcall __dt__4GoatFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGoat@@UAEPAXI@Z");
// win1.41 0041d6d0 mac 10171160 Goat::GetDebugText(void)
char* __fastcall GetDebugText__4GoatFv(struct GameThing* this) asm("?GetDebugText@Goat@@UAEPADXZ");
// win1.41 0041d6c0 mac 10171130 Goat::GetSaveType(void)
uint32_t __fastcall GetSaveType__4GoatFv(struct GameThing* this) asm("?GetSaveType@Goat@@UAEIXZ");
// win1.41 0041c9d0 mac 1016e580 Goat::StandAnimation(void)
uint32_t __fastcall StandAnimation__4GoatFv(struct Object* this) asm("?StandAnimation@Goat@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H */
