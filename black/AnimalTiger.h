#ifndef BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H
#define BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Tiger
{
  struct Lion super;  /* 0x0 */
};
static_assert(sizeof(struct Tiger) == 0x148, "Data type is of wrong size");

// Override methods

// win1.41 00421440 mac 10177fa0 Tiger::_dt(void)
void __fastcall __dt__5TigerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTiger@@UAEPAXI@Z");
// win1.41 00421430 mac 10178060 Tiger::GetDebugText(void)
char* __fastcall GetDebugText__5TigerFv(struct GameThing* this) asm("?GetDebugText@Tiger@@UAEPADXZ");
// win1.41 00421420 mac 10178030 Tiger::GetSaveType(void)
uint32_t __fastcall GetSaveType__5TigerFv(struct GameThing* this) asm("?GetSaveType@Tiger@@UAEIXZ");
// win1.41 0041c430 mac 1016f530 Tiger::StandAnimation(void)
uint32_t __fastcall StandAnimation__5TigerFv(struct Object* this) asm("?StandAnimation@Tiger@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H */
