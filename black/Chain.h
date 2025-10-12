#ifndef BW1_DECOMP_CHAIN_INCLUDED_H
#define BW1_DECOMP_CHAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct Chain
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct Chain) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c095a8 mac inlined Chain::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Chain asm("??_R0?AVChain@@@8");
// win1.41 009b8078 mac inlined Chain::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Chain asm("??_R1A@?0A@A@Chain@@8");
// win1.41 009b8090 mac inlined Chain::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Chain asm("??_R2Chain@@8");
// win1.41 009b80a8 mac inlined Chain::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Chain asm("??_R3Chain@@8");

// Override methods

// win1.41 006c8810 mac 1047b970 Chain::_dt(void)
void __fastcall __dt__5ChainFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GChain@@UAEPAXI@Z");
// win1.41 006c8800 mac 10422b00 Chain::GetDebugText(void)
char* __fastcall GetDebugText__5ChainFv(struct GameThing* this) asm("?GetDebugText@Chain@@UAEPADXZ");
// win1.41 00695c10 mac 1041bda0 Chain::Load(GameOSFile &)
uint32_t __fastcall Load__5ChainFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Chain@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cc780 mac 10483590 Chain::Save(GameOSFile &)
uint32_t __fastcall Save__5ChainFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Chain@@UAEIAAVGameOSFile@@@Z");
// win1.41 006c87f0 mac 10422ad0 Chain::GetSaveType(void)
uint32_t __fastcall GetSaveType__5ChainFv(struct GameThing* this) asm("?GetSaveType@Chain@@UAEIXZ");

#endif /* BW1_DECOMP_CHAIN_INCLUDED_H */
