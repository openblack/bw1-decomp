#ifndef BW1_DECOMP_WHALE_INCLUDED_H
#define BW1_DECOMP_WHALE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;

struct Whale
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0xc];
};
static_assert(sizeof(struct Whale) == 0x74, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bee188 mac inlined Whale::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Whale asm("??_R0?AVWhale@@@8");
// win1.41 009b0358 mac inlined Whale::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Whale asm("??_R1A@?0A@A@Whale@@8");
// win1.41 009b0370 mac inlined Whale::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Whale asm("??_R2Whale@@8");
// win1.41 009b0390 mac inlined Whale::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Whale asm("??_R3Whale@@8");
// win1.41 008febe8 mac 1075fc5c Whale::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5Whale asm("??_R4Whale@@6B@");
// win1.41 008febec mac 1075fc64 Whale::`vftable'
extern const struct MobileObjectVftable __vt__5Whale asm("??_7Whale@@6B@");

// Override methods

// win1.41 005612c0 mac 1015fe80 Whale::_dt(void)
void __fastcall __dt__5WhaleFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWhale@@UAEPAXI@Z");
// win1.41 00774c00 mac 10160d10 Whale::ToBeDeleted(int)
void __fastcall ToBeDeleted__5WhaleFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Whale@@UAEXH@Z");
// win1.41 005612b0 mac 10160000 Whale::GetDebugText(void)
char* __fastcall GetDebugText__5WhaleFv(struct GameThing* this) asm("?GetDebugText@Whale@@UAEPADXZ");
// win1.41 007752c0 mac 10160090 Whale::Load(GameOSFile &)
uint32_t __fastcall Load__5WhaleFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Whale@@UAEIAAVGameOSFile@@@Z");
// win1.41 007752a0 mac 101600f0 Whale::Save(GameOSFile &)
uint32_t __fastcall Save__5WhaleFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Whale@@UAEIAAVGameOSFile@@@Z");
// win1.41 005612a0 mac 1015ffd0 Whale::GetSaveType(void)
uint32_t __fastcall GetSaveType__5WhaleFv(struct GameThing* this) asm("?GetSaveType@Whale@@UAEIXZ");
// win1.41 007752e0 mac 10160040 Whale::ResolveLoad(void)
void __fastcall ResolveLoad__5WhaleFv(struct GameThing* this) asm("?ResolveLoad@Whale@@UAEXXZ");
// win1.41 00561280 mac 1015ff90 Whale::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__5WhaleFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@Whale@@UAEXH@Z");
// win1.41 00775280 mac 10160150 Whale::Process(void)
uint32_t __fastcall Process__5WhaleFv(struct Object* this) asm("?Process@Whale@@UAEIXZ");
// win1.41 00774e10 mac 101609a0 Whale::Draw(void)
void __fastcall Draw__5WhaleFv(struct Object* this) asm("?Draw@Whale@@UAEXXZ");
// win1.41 00774ca0 mac 10160a20 Whale::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__5WhaleFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Whale@@UAEXABUMapCoords@@@Z");
// win1.41 00561270 mac 1015ff50 Whale::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__5WhaleFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Whale@@UAE_NXZ");
// win1.41 00561290 mac 1015ff10 Whale::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__5WhaleFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Whale@@UAE_NXZ");

DECLARE_LH_LIST_HEAD(Whale);

#endif /* BW1_DECOMP_WHALE_INCLUDED_H */
