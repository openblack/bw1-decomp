#ifndef BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DefensiveShield.h" /* For struct DefensiveShield */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct DefensiveSphere
{
  struct DefensiveShield super;  /* 0x0 */
};
static_assert(sizeof(struct DefensiveSphere) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006d0d00 mac 10417570 DefensiveSphere::_dt(void)
void __fastcall __dt__15DefensiveSphereFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDefensiveSphere@@UAEPAXI@Z");
// win1.41 006d0cf0 mac 10417650 DefensiveSphere::GetDebugText(void)
char* __fastcall GetDebugText__15DefensiveSphereFv(struct GameThing* this) asm("?GetDebugText@DefensiveSphere@@UAEPADXZ");
// win1.41 00699cd0 mac 104179f0 DefensiveSphere::Load(GameOSFile &)
uint32_t __fastcall Load__15DefensiveSphereFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DefensiveSphere@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d06b0 mac 1047f3d0 DefensiveSphere::Save(GameOSFile &)
uint32_t __fastcall Save__15DefensiveSphereFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DefensiveSphere@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0ce0 mac 10417610 DefensiveSphere::GetSaveType(void)
uint32_t __fastcall GetSaveType__15DefensiveSphereFv(struct GameThing* this) asm("?GetSaveType@DefensiveSphere@@UAEIXZ");

#endif /* BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H */
