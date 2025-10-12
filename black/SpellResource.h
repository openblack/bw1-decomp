#ifndef BW1_DECOMP_SPELL_RESOURCE_INCLUDED_H
#define BW1_DECOMP_SPELL_RESOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Spell.h" /* For struct Spell */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct SpellEventInfo;

struct SpellResource
{
  struct Spell super;  /* 0x0 */
};
static_assert(sizeof(struct SpellResource) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becdc8 mac inlined SpellResource::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13SpellResource asm("??_R0?AVSpellResource@@@8");
// win1.41 009ae2f8 mac inlined SpellResource::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13SpellResource asm("??_R1A@?0A@A@SpellResource@@8");
// win1.41 009ae310 mac inlined SpellResource::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13SpellResource asm("??_R2SpellResource@@8");
// win1.41 009ae328 mac inlined SpellResource::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13SpellResource asm("??_R3SpellResource@@8");

// Override methods

// win1.41 0055cfd0 mac 1051fdd0 SpellResource::_dt(void)
void __fastcall __dt__13SpellResourceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellResource@@UAEPAXI@Z");
// win1.41 0055cfc0 mac 1051feb0 SpellResource::GetDebugText(void)
char* __fastcall GetDebugText__13SpellResourceFv(struct GameThing* this) asm("?GetDebugText@SpellResource@@UAEPADXZ");
// win1.41 007252f0 mac 1051f230 SpellResource::Load(GameOSFile &)
uint32_t __fastcall Load__13SpellResourceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellResource@@UAEIAAVGameOSFile@@@Z");
// win1.41 00725350 mac 1051f150 SpellResource::Save(GameOSFile &)
uint32_t __fastcall Save__13SpellResourceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellResource@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055cfb0 mac 1051fe70 SpellResource::GetSaveType(void)
uint32_t __fastcall GetSaveType__13SpellResourceFv(struct GameThing* this) asm("?GetSaveType@SpellResource@@UAEIXZ");
// win1.41 00724c90 mac 1051fc70 SpellResource::HasEnoughChantsAndLifeForRecast(void)
void __fastcall HasEnoughChantsAndLifeForRecast__13SpellResourceFv(struct Spell* this) asm("?HasEnoughChantsAndLifeForRecast@SpellResource@@UAEXXZ");
// win1.41 00724d80 mac 1051f9d0 SpellResource::SpellEvent(SpellEventInfo const &)
void __fastcall SpellEvent__13SpellResourceFRC14SpellEventInfo(struct Spell* this, const void* edx, const struct SpellEventInfo* param_1) asm("?SpellEvent@SpellResource@@UAEXABVSpellEventInfo@@@Z");

#endif /* BW1_DECOMP_SPELL_RESOURCE_INCLUDED_H */
