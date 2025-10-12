#ifndef BW1_DECOMP_P_SYS_SOUND_INCLUDED_H
#define BW1_DECOMP_P_SYS_SOUND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct LHPoint;

struct PSysSound
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct PSysSound) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09760 mac inlined PSysSound::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9PSysSound asm("??_R0?AVPSysSound@@@8");
// win1.41 009b83f0 mac inlined PSysSound::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9PSysSound asm("??_R1A@?0A@A@PSysSound@@8");
// win1.41 009b8408 mac inlined PSysSound::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9PSysSound asm("??_R2PSysSound@@8");
// win1.41 009b8420 mac inlined PSysSound::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9PSysSound asm("??_R3PSysSound@@8");

// Override methods

// win1.41 006d0f50 mac 10486f90 PSysSound::_dt(void)
void __fastcall __dt__9PSysSoundFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPSysSound@@UAEPAXI@Z");
// win1.41 006d1000 mac 10486ea0 PSysSound::Get3DSoundPos(LHPoint *)
int __fastcall Get3DSoundPos__9PSysSoundFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1) asm("?Get3DSoundPos@PSysSound@@UAEHPAULHPoint@@@Z");
// win1.41 006d0f40 mac 10486980 PSysSound::GetDebugText(void)
char* __fastcall GetDebugText__9PSysSoundFv(struct GameThing* this) asm("?GetDebugText@PSysSound@@UAEPADXZ");
// win1.41 006d13a0 mac 10486b50 PSysSound::Load(GameOSFile &)
uint32_t __fastcall Load__9PSysSoundFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PSysSound@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d14a0 mac 104869c0 PSysSound::Save(GameOSFile &)
uint32_t __fastcall Save__9PSysSoundFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PSysSound@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0f30 mac 10486940 PSysSound::GetSaveType(void)
uint32_t __fastcall GetSaveType__9PSysSoundFv(struct GameThing* this) asm("?GetSaveType@PSysSound@@UAEIXZ");

#endif /* BW1_DECOMP_P_SYS_SOUND_INCLUDED_H */
