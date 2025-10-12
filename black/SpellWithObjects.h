#ifndef BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H
#define BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Spell.h" /* For struct Spell, struct SpellVftable */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct SpellWithObjects;

struct SpellWithObjectsVftable
{
  struct SpellVftable super;  /* 0x0 */
  bool (__fastcall* GetSetObjectsDyingOnCloseDown)(struct SpellWithObjects* this);  /* 0x554 */
};
static_assert(sizeof(struct SpellWithObjectsVftable) == 0x558, "Data type is of wrong size");

struct SpellWithObjects
{
  struct Spell super;  /* 0x0 */
  uint8_t field_0xec[0x8];
};
static_assert(sizeof(struct SpellWithObjects) == 0xf4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becca0 mac inlined SpellWithObjects::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16SpellWithObjects asm("??_R0?AVSpellWithObjects@@@8");
// win1.41 009adf88 mac inlined SpellWithObjects::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16SpellWithObjects asm("??_R1A@?0A@A@SpellWithObjects@@8");
// win1.41 009ad820 mac inlined SpellWithObjects::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16SpellWithObjects asm("??_R2SpellWithObjects@@8");
// win1.41 009ad838 mac inlined SpellWithObjects::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16SpellWithObjects asm("??_R3SpellWithObjects@@8");
// win1.41 008f452c mac 109a58f4 SpellWithObjects::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16SpellWithObjects asm("??_R4SpellWithObjects@@6B@");
// win1.41 008f4530 mac 109a591c SpellWithObjects::`vftable'
extern const struct SpellWithObjectsVftable __vt__16SpellWithObjects asm("??_7SpellWithObjects@@6B@");

// Override methods

// win1.41 0055cf80 mac 1030e320 SpellWithObjects::_dt(void)
void __fastcall __dt__16SpellWithObjectsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellWithObjects@@UAEPAXI@Z");
// win1.41 00720fd0 mac 10517170 SpellWithObjects::ToBeDeleted(int)
void __fastcall ToBeDeleted__16SpellWithObjectsFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SpellWithObjects@@UAEXH@Z");
// win1.41 0055cf70 mac 10519dd0 SpellWithObjects::GetDebugText(void)
char* __fastcall GetDebugText__16SpellWithObjectsFv(struct GameThing* this) asm("?GetDebugText@SpellWithObjects@@UAEPADXZ");
// win1.41 007210f0 mac 10516ed0 SpellWithObjects::Load(GameOSFile &)
uint32_t __fastcall Load__16SpellWithObjectsFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellWithObjects@@UAEIAAVGameOSFile@@@Z");
// win1.41 007211d0 mac 10516d00 SpellWithObjects::Save(GameOSFile &)
uint32_t __fastcall Save__16SpellWithObjectsFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellWithObjects@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055cf60 mac 10519d90 SpellWithObjects::GetSaveType(void)
uint32_t __fastcall GetSaveType__16SpellWithObjectsFv(struct GameThing* this) asm("?GetSaveType@SpellWithObjects@@UAEIXZ");
// win1.41 007212f0 mac 10516c10 SpellWithObjects::ProcessSpellSeed(void)
void __fastcall ProcessSpellSeed__16SpellWithObjectsFv(struct Spell* this) asm("?ProcessSpellSeed@SpellWithObjects@@UAEXXZ");
// win1.41 00721290 mac 10516c70 SpellWithObjects::Process(void)
uint32_t __fastcall Process__16SpellWithObjectsFv(struct Spell* this) asm("?Process@SpellWithObjects@@UAEIXZ");
// win1.41 00721300 mac 10516b50 SpellWithObjects::CloseDown(void)
void __fastcall CloseDown__16SpellWithObjectsFv(struct Spell* this) asm("?CloseDown@SpellWithObjects@@UAEXXZ");
// win1.41 0055cea0 mac inlined SpellWithObjects::GetMaxObjectsToCreate(void)
int __fastcall GetMaxObjectsToCreate__16SpellWithObjectsFv(struct Spell* this) asm("?GetMaxObjectsToCreate@SpellWithObjects@@UAEHXZ");
// win1.41 0055cf50 mac 103b1b10 SpellWithObjects::GetSetObjectsDyingOnCloseDown(void)
bool __fastcall GetSetObjectsDyingOnCloseDown__16SpellWithObjectsFv(struct SpellWithObjects* this) asm("?GetSetObjectsDyingOnCloseDown@SpellWithObjects@@UAE_NXZ");

#endif /* BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H */
