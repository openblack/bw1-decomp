#ifndef BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

struct Base;
struct Creature;
struct GameThing;
struct GameThingWithPos;

struct Vulture
{
  struct Dove super;  /* 0x0 */
};
static_assert(sizeof(struct Vulture) == 0x148, "Data type is of wrong size");

// Override methods

// win1.41 0041f0e0 mac 10171370 Vulture::_dt(void)
void __fastcall __dt__7VultureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GVulture@@UAEPAXI@Z");
// win1.41 0041f0c0 mac 10171440 Vulture::GetDebugText(void)
char* __fastcall GetDebugText__7VultureFv(struct GameThing* this) asm("?GetDebugText@Vulture@@UAEPADXZ");
// win1.41 0041f0b0 mac 10171400 Vulture::GetSaveType(void)
uint32_t __fastcall GetSaveType__7VultureFv(struct GameThing* this) asm("?GetSaveType@Vulture@@UAEIXZ");
// win1.41 0041f0d0 mac 10171480 Vulture::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__7VultureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@Vulture@@UAEIPAVCreature@@@Z");

#endif /* BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H */
