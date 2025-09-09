#ifndef BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H
#define BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Pigeon
{
  struct Dove super;  /* 0x0 */
};
static_assert(sizeof(struct Pigeon) == 0x148, "Data type is of wrong size");

// Override methods

// win1.41 0041eda0 mac 101717d0 Pigeon::_dt(void)
void __fastcall __dt__6PigeonFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPigeon@@UAEPAXI@Z");
// win1.41 0041ed90 mac 101718a0 Pigeon::GetDebugText(void)
char* __fastcall GetDebugText__6PigeonFv(struct GameThing* this) asm("?GetDebugText@Pigeon@@UAEPADXZ");
// win1.41 0041ed80 mac 10171860 Pigeon::GetSaveType(void)
uint32_t __fastcall GetSaveType__6PigeonFv(struct GameThing* this) asm("?GetSaveType@Pigeon@@UAEIXZ");
// win1.41 0041bf80 mac 101703f0 Pigeon::StandAnimation(void)
uint32_t __fastcall StandAnimation__6PigeonFv(struct Object* this) asm("?StandAnimation@Pigeon@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H */
