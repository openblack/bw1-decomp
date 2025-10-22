#ifndef BW1_DECOMP_STREAM_INCLUDED_H
#define BW1_DECOMP_STREAM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;

struct GStream
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x14];
};
static_assert(sizeof(struct GStream) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becbf8 mac inlined GStream::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7GStream asm("??_R0?AVGStream@@@8");
// win1.41 009adcc8 mac inlined GStream::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7GStream asm("??_R1A@?0A@A@GStream@@8");
// win1.41 009adce0 mac inlined GStream::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7GStream asm("??_R2GStream@@8");
// win1.41 009adcf0 mac inlined GStream::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7GStream asm("??_R3GStream@@8");
// win1.41 008ebb44 mac 1075dd20 GStream::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__7GStream asm("??_R4GStream@@6B@");
// win1.41 008ebb48 mac 1075dd28 GStream::`vftable'
extern const struct GameThingVftable __vt__7GStream asm("??_7GStream@@6B@");

// Static methods

// win1.41 00733ff0 mac 10154580 GStream::CreateAll(void)
void __cdecl CreateAll__7GStreamFv(void) asm("?CreateAll@GStream@@SAXXZ");

// Override methods

// win1.41 0055de20 mac 101549b0 GStream::_dt(void)
void __fastcall __dt__7GStreamFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGStream@@UAEPAXI@Z");
// win1.41 00733b10 mac 10154cf0 GStream::ToBeDeleted(int)
void __fastcall ToBeDeleted__7GStreamFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GStream@@UAEXH@Z");
// win1.41 0055de10 mac 10155220 GStream::GetDebugText(void)
char* __fastcall GetDebugText__7GStreamFv(struct GameThing* this) asm("?GetDebugText@GStream@@UAEPADXZ");
// win1.41 007344e0 mac 10153560 GStream::Load(GameOSFile &)
uint32_t __fastcall Load__7GStreamFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GStream@@UAEIAAVGameOSFile@@@Z");
// win1.41 00734380 mac 10153ac0 GStream::Save(GameOSFile &)
uint32_t __fastcall Save__7GStreamFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GStream@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055de00 mac 101551e0 GStream::GetSaveType(void)
uint32_t __fastcall GetSaveType__7GStreamFv(struct GameThing* this) asm("?GetSaveType@GStream@@UAEIXZ");
// win1.41 00734640 mac 101534f0 GStream::ResolveLoad(void)
void __fastcall ResolveLoad__7GStreamFv(struct GameThing* this) asm("?ResolveLoad@GStream@@UAEXXZ");

DECLARE_LH_LIST_HEAD(GStream);

#endif /* BW1_DECOMP_STREAM_INCLUDED_H */
