#ifndef BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H
#define BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;

struct SpellDispenser
{
  struct Abode super;  /* 0x0 */
};
static_assert(sizeof(struct SpellDispenser) == 0xc4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c225c0 mac inlined SpellDispenser::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14SpellDispenser asm("??_R0?AVSpellDispenser@@@8");
// win1.41 009b9330 mac inlined SpellDispenser::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14SpellDispenser asm("??_R1A@?0A@A@SpellDispenser@@8");
// win1.41 009b9348 mac inlined SpellDispenser::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14SpellDispenser asm("??_R2SpellDispenser@@8");
// win1.41 009b9370 mac inlined SpellDispenser::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14SpellDispenser asm("??_R3SpellDispenser@@8");

// Override methods

// win1.41 00722700 mac 1051a8e0 SpellDispenser::_dt(void)
void __fastcall __dt__14SpellDispenserFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellDispenser@@UAEPAXI@Z");
// win1.41 007228a0 mac 1051b9e0 SpellDispenser::ToBeDeleted(int)
void __fastcall ToBeDeleted__14SpellDispenserFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SpellDispenser@@UAEXH@Z");
// win1.41 00722fa0 mac 1051ac90 SpellDispenser::GetDebugText(void)
char* __fastcall GetDebugText__14SpellDispenserFv(struct GameThing* this) asm("?GetDebugText@SpellDispenser@@UAEPADXZ");
// win1.41 00722e80 mac 1051acf0 SpellDispenser::Load(GameOSFile &)
uint32_t __fastcall Load__14SpellDispenserFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellDispenser@@UAEIAAVGameOSFile@@@Z");
// win1.41 00722d50 mac 1051aeb0 SpellDispenser::Save(GameOSFile &)
uint32_t __fastcall Save__14SpellDispenserFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellDispenser@@UAEIAAVGameOSFile@@@Z");
// win1.41 007226f0 mac 1051aa40 SpellDispenser::GetSaveType(void)
uint32_t __fastcall GetSaveType__14SpellDispenserFv(struct GameThing* this) asm("?GetSaveType@SpellDispenser@@UAEIXZ");
// win1.41 007226d0 mac 1051a9b0 SpellDispenser::IsSpellDispenser(void)
uint32_t __fastcall IsSpellDispenser__14SpellDispenserFv(struct GameThingWithPos* this) asm("?IsSpellDispenser@SpellDispenser@@UAEIXZ");
// win1.41 007226c0 mac 1051a970 SpellDispenser::IsActive( const(void))
uint32_t __fastcall IsActive__14SpellDispenserCFv(const struct GameThingWithPos* this) asm("?IsActive@SpellDispenser@@UBEIXZ");
// win1.41 00722fb0 mac 1051ac40 SpellDispenser::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__14SpellDispenserFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@SpellDispenser@@UAEIXZ");
// win1.41 00722a70 mac 1051b590 SpellDispenser::Process(void)
uint32_t __fastcall Process__14SpellDispenserFv(struct Object* this) asm("?Process@SpellDispenser@@UAEIXZ");
// win1.41 00722940 mac 1051b6d0 SpellDispenser::Draw(void)
void __fastcall Draw__14SpellDispenserFv(struct Object* this) asm("?Draw@SpellDispenser@@UAEXXZ");
// win1.41 007227d0 mac 1051ba80 SpellDispenser::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__14SpellDispenserFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@SpellDispenser@@UAEXABUMapCoords@@@Z");
// win1.41 007226e0 mac 1051a9f0 SpellDispenser::IsSpellSeedReturnPoint( const(void))
bool __fastcall IsSpellSeedReturnPoint__14SpellDispenserCFv(const struct Object* this) asm("?IsSpellSeedReturnPoint@SpellDispenser@@UBE_NXZ");

#endif /* BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H */
