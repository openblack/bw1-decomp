#ifndef BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct VortexObjectInfo
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct VortexObjectInfo) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055d830 mac 103b2be0 VortexObjectInfo::_dt(void)
void __fastcall __dt__16VortexObjectInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GVortexObjectInfo@@UAEPAXI@Z");
// win1.41 0055d820 mac 103b2cb0 VortexObjectInfo::GetDebugText(void)
char* __fastcall GetDebugText__16VortexObjectInfoFv(struct GameThing* this) asm("?GetDebugText@VortexObjectInfo@@UAEPADXZ");
// win1.41 00600bf0 mac 103b2d00 VortexObjectInfo::Load(GameOSFile &)
uint32_t __fastcall Load__16VortexObjectInfoFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@VortexObjectInfo@@UAEIAAVGameOSFile@@@Z");
// win1.41 00600ad0 mac 103b3000 VortexObjectInfo::Save(GameOSFile &)
uint32_t __fastcall Save__16VortexObjectInfoFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@VortexObjectInfo@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d810 mac 103b2c70 VortexObjectInfo::GetSaveType(void)
uint32_t __fastcall GetSaveType__16VortexObjectInfoFv(struct GameThing* this) asm("?GetSaveType@VortexObjectInfo@@UAEIXZ");

#endif /* BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H */
