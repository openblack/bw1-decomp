#ifndef BW1_DECOMP_SPELL_FLOCK_INCLUDED_H
#define BW1_DECOMP_SPELL_FLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "SpellWithObjects.h" /* For struct SpellWithObjects */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct MapCoords;
struct PSysProcessInfo;
struct Spell;
struct SpellCastData;

struct SpellFlock
{
  struct SpellWithObjects super;  /* 0x0 */
};
static_assert(sizeof(struct SpellFlock) == 0xf4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00beccc0 mac inlined SpellFlock::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10SpellFlock asm("??_R0?AVSpellFlock@@@8");
// win1.41 009adfa0 mac inlined SpellFlock::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10SpellFlock asm("??_R1A@?0A@A@SpellFlock@@8");
// win1.41 009adef8 mac inlined SpellFlock::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10SpellFlock asm("??_R2SpellFlock@@8");
// win1.41 009adf18 mac inlined SpellFlock::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10SpellFlock asm("??_R3SpellFlock@@8");

// Override methods

// win1.41 0055d250 mac 1030e480 SpellFlock::_dt(void)
void __fastcall __dt__10SpellFlockFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellFlock@@UAEPAXI@Z");
// win1.41 00724780 mac 1051c560 SpellFlock::Load(GameOSFile &)
uint32_t __fastcall Load__10SpellFlockFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellFlock@@UAEIAAVGameOSFile@@@Z");
// win1.41 007248a0 mac 1051c390 SpellFlock::Save(GameOSFile &)
uint32_t __fastcall Save__10SpellFlockFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellFlock@@UAEIAAVGameOSFile@@@Z");
// win1.41 00723280 mac 1051e660 SpellFlock::NeedsContinualPackets(GInterfaceStatus *)
bool __fastcall NeedsContinualPackets__10SpellFlockFP16GInterfaceStatus(struct Spell* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NeedsContinualPackets@SpellFlock@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 007233d0 mac 1051e2b0 SpellFlock::Process(void)
uint32_t __fastcall Process__10SpellFlockFv(struct Spell* this) asm("?Process@SpellFlock@@UAEIXZ");
// win1.41 00723270 mac 1051e760 SpellFlock::CloseDown(void)
void __fastcall CloseDown__10SpellFlockFv(struct Spell* this) asm("?CloseDown@SpellFlock@@UAEXXZ");
// win1.41 007232d0 mac 1051e4a0 SpellFlock::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int __fastcall InitWithPos__10SpellFlockFP9GameThingRC9MapCoordsP13SpellCastDataRC15PSysProcessInfo(struct Spell* this, const void* edx, struct GameThing* param_1, const struct MapCoords* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4) asm("?InitWithPos@SpellFlock@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z");
// win1.41 00723240 mac 1051e7b0 SpellFlock::CalculateCostToMaintain(void)
float __fastcall CalculateCostToMaintain__10SpellFlockFv(struct Spell* this) asm("?CalculateCostToMaintain@SpellFlock@@UAEMXZ");

#endif /* BW1_DECOMP_SPELL_FLOCK_INCLUDED_H */
