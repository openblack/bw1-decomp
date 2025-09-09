#ifndef BW1_DECOMP_POO_INCLUDED_H
#define BW1_DECOMP_POO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct GameThing;
struct GameThingWithPos;
struct Object;

struct Poo
{
  struct MobileObject super;  /* 0x0 */
};
static_assert(sizeof(struct Poo) == 0x68, "Data type is of wrong size");

// Override methods

// win1.41 0055d0c0 mac 103be130 Poo::_dt(void)
void __fastcall __dt__3PooFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPoo@@UAEPAXI@Z");
// win1.41 0055d0b0 mac 103be1e0 Poo::GetDebugText(void)
char* __fastcall GetDebugText__3PooFv(struct GameThing* this) asm("?GetDebugText@Poo@@UAEPADXZ");
// win1.41 0055d0a0 mac 103be1b0 Poo::GetSaveType(void)
uint32_t __fastcall GetSaveType__3PooFv(struct GameThing* this) asm("?GetSaveType@Poo@@UAEIXZ");
// win1.41 006083c0 mac 103bad80 Poo::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__3PooFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Poo@@UAEIXZ");
// win1.41 006079d0 mac 103bc130 Poo::InsertMapObject(void)
void __fastcall InsertMapObject__3PooFv(struct Object* this) asm("?InsertMapObject@Poo@@UAEXXZ");
// win1.41 006083d0 mac 103bad50 Poo::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__3PooFv(struct Object* this) asm("?GetHoldType@Poo@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 006079c0 mac 103bc180 Poo::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__3PooFv(struct Object* this) asm("?GetPhysicsConstantsType@Poo@@UAEIXZ");

#endif /* BW1_DECOMP_POO_INCLUDED_H */
