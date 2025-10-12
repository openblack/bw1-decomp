#ifndef BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H
#define BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThing;

struct PSysManager
{
  struct PSysBase super;  /* 0x0 */
  uint8_t field_0x14[0xd0];
};
static_assert(sizeof(struct PSysManager) == 0xe4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02208 mac inlined PSysManager::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11PSysManager asm("??_R0?AVPSysManager@@@8");
// win1.41 009b3768 mac inlined PSysManager::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11PSysManager asm("??_R1A@?0A@A@PSysManager@@8");
// win1.41 009b3780 mac inlined PSysManager::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11PSysManager asm("??_R2PSysManager@@8");
// win1.41 009b3798 mac inlined PSysManager::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11PSysManager asm("??_R3PSysManager@@8");
// win1.41 009353bc mac 109b86b8 PSysManager::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11PSysManager asm("??_R4PSysManager@@6B@");
// win1.41 009353c0 mac 109b86c0 PSysManager::`vftable'
extern const struct GameThingVftable __vt__11PSysManager asm("??_7PSysManager@@6B@");

// Override methods

// win1.41 00672cb0 mac 103dcfb0 PSysManager::_dt(void)
void __fastcall __dt__11PSysManagerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPSysManager@@UAEPAXI@Z");
// win1.41 006735c0 mac 103dc100 PSysManager::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__11PSysManagerFv(struct GameThing* this) asm("?GetPlayer@PSysManager@@UAEPAVGPlayer@@XZ");
// win1.41 00672ca0 mac 10423d00 PSysManager::GetDebugText(void)
char* __fastcall GetDebugText__11PSysManagerFv(struct GameThing* this) asm("?GetDebugText@PSysManager@@UAEPADXZ");
// win1.41 00694500 mac 1041d6f0 PSysManager::Load(GameOSFile &)
uint32_t __fastcall Load__11PSysManagerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PSysManager@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cb090 mac 104858d0 PSysManager::Save(GameOSFile &)
uint32_t __fastcall Save__11PSysManagerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PSysManager@@UAEIAAVGameOSFile@@@Z");
// win1.41 00672c90 mac 10423cc0 PSysManager::GetSaveType(void)
uint32_t __fastcall GetSaveType__11PSysManagerFv(struct GameThing* this) asm("?GetSaveType@PSysManager@@UAEIXZ");

#endif /* BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H */
