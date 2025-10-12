#ifndef BW1_DECOMP_SPELL_CREATURE_INCLUDED_H
#define BW1_DECOMP_SPELL_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Spell.h" /* For struct Spell */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct Object;
struct PSysProcessInfo;
struct SpellCastData;

struct SpellCreature
{
  struct Spell super;  /* 0x0 */
};
static_assert(sizeof(struct SpellCreature) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22590 mac inlined SpellCreature::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13SpellCreature asm("??_R0?AVSpellCreature@@@8");
// win1.41 009b92d8 mac inlined SpellCreature::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13SpellCreature asm("??_R1A@?0A@A@SpellCreature@@8");
// win1.41 009b92f0 mac inlined SpellCreature::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13SpellCreature asm("??_R2SpellCreature@@8");
// win1.41 009b9308 mac inlined SpellCreature::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13SpellCreature asm("??_R3SpellCreature@@8");

// Override methods

// win1.41 00722240 mac 10519e90 SpellCreature::_dt(void)
void __fastcall __dt__13SpellCreatureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellCreature@@UAEPAXI@Z");
// win1.41 00722230 mac 10519fb0 SpellCreature::GetDebugText(void)
char* __fastcall GetDebugText__13SpellCreatureFv(struct GameThing* this) asm("?GetDebugText@SpellCreature@@UAEPADXZ");
// win1.41 00722520 mac 1051a0e0 SpellCreature::Load(GameOSFile &)
uint32_t __fastcall Load__13SpellCreatureFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellCreature@@UAEIAAVGameOSFile@@@Z");
// win1.41 00722590 mac 10519ff0 SpellCreature::Save(GameOSFile &)
uint32_t __fastcall Save__13SpellCreatureFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellCreature@@UAEIAAVGameOSFile@@@Z");
// win1.41 00722220 mac 10519f70 SpellCreature::GetSaveType(void)
uint32_t __fastcall GetSaveType__13SpellCreatureFv(struct GameThing* this) asm("?GetSaveType@SpellCreature@@UAEIXZ");
// win1.41 00722490 mac 1051a2e0 SpellCreature::ProcessSpellSeed(void)
void __fastcall ProcessSpellSeed__13SpellCreatureFv(struct Spell* this) asm("?ProcessSpellSeed@SpellCreature@@UAEXXZ");
// win1.41 007222c0 mac 1051a7a0 SpellCreature::GetCreatureCastOn(void)
uint32_t __fastcall GetCreatureCastOn__13SpellCreatureFv(struct Spell* this) asm("?GetCreatureCastOn@SpellCreature@@UAEIXZ");
// win1.41 00722380 mac 1051a4c0 SpellCreature::Process(void)
uint32_t __fastcall Process__13SpellCreatureFv(struct Spell* this) asm("?Process@SpellCreature@@UAEIXZ");
// win1.41 007224f0 mac 1051a290 SpellCreature::CloseDown(void)
void __fastcall CloseDown__13SpellCreatureFv(struct Spell* this) asm("?CloseDown@SpellCreature@@UAEXXZ");
// win1.41 007222d0 mac 1051a5f0 SpellCreature::InitWithObject(GameThing *, Object *, SpellCastData *, PSysProcessInfo const &)
int __fastcall InitWithObject__13SpellCreatureFP9GameThingP6ObjectP13SpellCastDataRC15PSysProcessInfo(struct Spell* this, const void* edx, struct GameThing* param_1, struct Object* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4) asm("?InitWithObject@SpellCreature@@UAEHPAVGameThing@@PAVObject@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z");

#endif /* BW1_DECOMP_SPELL_CREATURE_INCLUDED_H */
