#ifndef BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct DefensiveShield
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct DefensiveShield) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006d0ad0 mac 1041dc60 DefensiveShield::_dt(void)
void __fastcall __dt__15DefensiveShieldFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDefensiveShield@@UAEPAXI@Z");
// win1.41 006d0ac0 mac 1041dc20 DefensiveShield::GetDebugText(void)
char* __fastcall GetDebugText__15DefensiveShieldFv(struct GameThing* this) asm("?GetDebugText@DefensiveShield@@UAEPADXZ");
// win1.41 00699ca0 mac 10417a80 DefensiveShield::Load(GameOSFile &)
uint32_t __fastcall Load__15DefensiveShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DefensiveShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0680 mac 1047f460 DefensiveShield::Save(GameOSFile &)
uint32_t __fastcall Save__15DefensiveShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DefensiveShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0ab0 mac 1041dbe0 DefensiveShield::GetSaveType(void)
uint32_t __fastcall GetSaveType__15DefensiveShieldFv(struct GameThing* this) asm("?GetSaveType@DefensiveShield@@UAEIXZ");

#endif /* BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H */
