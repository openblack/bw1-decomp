#ifndef BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Horse
{
  struct Cow super;  /* 0x0 */
};
static_assert(sizeof(struct Horse) == 0x148, "Data type is of wrong size");

// Override methods

// win1.41 0041d790 mac 10120c80 Horse::_dt(void)
void __fastcall __dt__5HorseFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GHorse@@UAEPAXI@Z");
// win1.41 0041d780 mac 10171060 Horse::GetDebugText(void)
char* __fastcall GetDebugText__5HorseFv(struct GameThing* this) asm("?GetDebugText@Horse@@UAEPADXZ");
// win1.41 0041d770 mac 10171030 Horse::GetSaveType(void)
uint32_t __fastcall GetSaveType__5HorseFv(struct GameThing* this) asm("?GetSaveType@Horse@@UAEIXZ");
// win1.41 0041cb40 mac 1016e1f0 Horse::StandAnimation(void)
uint32_t __fastcall StandAnimation__5HorseFv(struct Object* this) asm("?StandAnimation@Horse@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H */
