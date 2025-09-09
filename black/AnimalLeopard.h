#ifndef BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H
#define BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Leopard
{
  struct Lion super;  /* 0x0 */
};
static_assert(sizeof(struct Leopard) == 0x148, "Data type is of wrong size");

// Override methods

// win1.41 0041fca0 mac 10171210 Leopard::_dt(void)
void __fastcall __dt__7LeopardFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GLeopard@@UAEPAXI@Z");
// win1.41 0041fc90 mac 101712e0 Leopard::GetDebugText(void)
char* __fastcall GetDebugText__7LeopardFv(struct GameThing* this) asm("?GetDebugText@Leopard@@UAEPADXZ");
// win1.41 0041fc80 mac 101712a0 Leopard::GetSaveType(void)
uint32_t __fastcall GetSaveType__7LeopardFv(struct GameThing* this) asm("?GetSaveType@Leopard@@UAEIXZ");
// win1.41 0041c2e0 mac 1016f8c0 Leopard::StandAnimation(void)
uint32_t __fastcall StandAnimation__7LeopardFv(struct Object* this) asm("?StandAnimation@Leopard@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H */
