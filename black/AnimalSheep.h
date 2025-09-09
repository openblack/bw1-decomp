#ifndef BW1_DECOMP_ANIMAL_SHEEP_INCLUDED_H
#define BW1_DECOMP_ANIMAL_SHEEP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Sheep
{
  struct Cow super;  /* 0x0 */
};
static_assert(sizeof(struct Sheep) == 0x148, "Data type is of wrong size");

// Override methods

// win1.41 0041d550 mac 10120ff0 Sheep::_dt(void)
void __fastcall __dt__5SheepFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSheep@@UAEPAXI@Z");
// win1.41 0041d540 mac 101711d0 Sheep::GetDebugText(void)
char* __fastcall GetDebugText__5SheepFv(struct GameThing* this) asm("?GetDebugText@Sheep@@UAEPADXZ");
// win1.41 0041d530 mac 101711a0 Sheep::GetSaveType(void)
uint32_t __fastcall GetSaveType__5SheepFv(struct GameThing* this) asm("?GetSaveType@Sheep@@UAEIXZ");
// win1.41 0041c8e0 mac 100a0150 Sheep::StandAnimation(void)
uint32_t __fastcall StandAnimation__5SheepFv(struct Object* this) asm("?StandAnimation@Sheep@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_SHEEP_INCLUDED_H */
