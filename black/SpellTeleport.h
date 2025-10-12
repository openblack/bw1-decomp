#ifndef BW1_DECOMP_SPELL_TELEPORT_INCLUDED_H
#define BW1_DECOMP_SPELL_TELEPORT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "SpellWithObjects.h" /* For struct SpellWithObjects */

// Forward Declares

struct Base;
struct GameThing;
struct MapCoords;
struct PSysProcessInfo;
struct Spell;
struct SpellCastData;

struct SpellTeleport
{
  struct SpellWithObjects super;  /* 0x0 */
};
static_assert(sizeof(struct SpellTeleport) == 0xf4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becc10 mac inlined SpellTeleport::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13SpellTeleport asm("??_R0?AVSpellTeleport@@@8");
// win1.41 009add18 mac inlined SpellTeleport::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13SpellTeleport asm("??_R1A@?0A@A@SpellTeleport@@8");
// win1.41 009add30 mac inlined SpellTeleport::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13SpellTeleport asm("??_R2SpellTeleport@@8");
// win1.41 009add50 mac inlined SpellTeleport::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13SpellTeleport asm("??_R3SpellTeleport@@8");

// Override methods

// win1.41 0055d870 mac 103b19e0 SpellTeleport::_dt(void)
void __fastcall __dt__13SpellTeleportFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellTeleport@@UAEPAXI@Z");
// win1.41 0055d860 mac 103b1ad0 SpellTeleport::GetDebugText(void)
char* __fastcall GetDebugText__13SpellTeleportFv(struct GameThing* this) asm("?GetDebugText@SpellTeleport@@UAEPADXZ");
// win1.41 0055d850 mac 103b1a90 SpellTeleport::GetSaveType(void)
uint32_t __fastcall GetSaveType__13SpellTeleportFv(struct GameThing* this) asm("?GetSaveType@SpellTeleport@@UAEIXZ");
// win1.41 005fbeb0 mac 103b1550 SpellTeleport::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int __fastcall InitWithPos__13SpellTeleportFP9GameThingRC9MapCoordsP13SpellCastDataRC15PSysProcessInfo(struct Spell* this, const void* edx, struct GameThing* param_1, const struct MapCoords* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4) asm("?InitWithPos@SpellTeleport@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z");

#endif /* BW1_DECOMP_SPELL_TELEPORT_INCLUDED_H */
