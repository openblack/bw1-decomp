#ifndef BW1_DECOMP_ANIMAL_COW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_COW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "Animal.h" /* For struct Animal */

// Forward Declares

struct Base;
struct Creature;
struct GameThing;
struct GameThingWithPos;
struct Living;

struct Cow
{
  struct Animal super;  /* 0x0 */
};
static_assert(sizeof(struct Cow) == 0x148, "Data type is of wrong size");

// win1.41 008ad058 mac 1074b2d0 Cow::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__3Cow asm("??_R4Cow@@6B@");

// win1.41 008ad05c mac 1074b318 Cow::`vftable'
extern const struct LivingVftable __vt__3Cow asm("??_7Cow@@6B@");

// Override methods

// win1.41 0041d120 mac 101206f0 Cow::_dt(void)
void __fastcall __dt__3CowFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCow@@UAEPAXI@Z");
// win1.41 0041d100 mac 10171d80 Cow::GetDebugText(void)
char* __fastcall GetDebugText__3CowFv(struct GameThing* this) asm("?GetDebugText@Cow@@UAEPADXZ");
// win1.41 0041d0f0 mac 10171d50 Cow::GetSaveType(void)
uint32_t __fastcall GetSaveType__3CowFv(struct GameThing* this) asm("?GetSaveType@Cow@@UAEIXZ");
// win1.41 0041d110 mac 1012e4c0 Cow::IsCow(Creature *)
uint32_t __fastcall IsCow__3CowFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsCow@Cow@@UAEIPAVCreature@@@Z");
// win1.41 0041d1b0 mac 1000e870 Cow::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__3CowFv(struct Living* this) asm("?DecideWhatToDo@Cow@@UAE_NXZ");

#endif /* BW1_DECOMP_ANIMAL_COW_INCLUDED_H */
