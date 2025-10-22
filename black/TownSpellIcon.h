#ifndef BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For POWER_UP_TYPE_LAST, enum POWER_UP_TYPE */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SpellIcon.h" /* For struct SpellIcon */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct Object;
struct Town;
struct WorshipSite;

struct TownSpellIcon
{
  struct SpellIcon super;  /* 0x0 */
  struct TownSpellIcon* next;  /* 0x110 */
  struct Town* town;
};
static_assert(sizeof(struct TownSpellIcon) == 0x118, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becec8 mac inlined TownSpellIcon::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13TownSpellIcon asm("??_R0?AVTownSpellIcon@@@8");
// win1.41 009ae810 mac inlined TownSpellIcon::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13TownSpellIcon asm("??_R1A@?0A@A@TownSpellIcon@@8");
// win1.41 009ae518 mac inlined TownSpellIcon::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13TownSpellIcon asm("??_R2TownSpellIcon@@8");
// win1.41 009ae540 mac inlined TownSpellIcon::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13TownSpellIcon asm("??_R3TownSpellIcon@@8");
// win1.41 008e7790 mac 109e5998 TownSpellIcon::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13TownSpellIcon asm("??_R4TownSpellIcon@@6B@");
// win1.41 008e7794 mac 109e59d8 TownSpellIcon::`vftable'
extern const struct MultiMapFixedVftable __vt__13TownSpellIcon asm("??_7TownSpellIcon@@6B@");

// Override methods

// win1.41 0055e070 mac 10561b50 TownSpellIcon::_dt(void)
void __fastcall __dt__13TownSpellIconFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTownSpellIcon@@UAEPAXI@Z");
// win1.41 00748ae0 mac 10561aa0 TownSpellIcon::ToBeDeleted(int)
void __fastcall ToBeDeleted__13TownSpellIconFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@TownSpellIcon@@UAEXH@Z");
// win1.41 00748b90 mac 10561a00 TownSpellIcon::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__13TownSpellIconFv(struct GameThing* this) asm("?GetPlayer@TownSpellIcon@@UAEPAVGPlayer@@XZ");
// win1.41 0055e040 mac 10560ac0 TownSpellIcon::GetTown(void)
struct Town* __fastcall GetTown__13TownSpellIconFv(struct GameThing* this) asm("?GetTown@TownSpellIcon@@UAEPAVTown@@XZ");
// win1.41 0055e060 mac 10561d20 TownSpellIcon::GetDebugText(void)
char* __fastcall GetDebugText__13TownSpellIconFv(struct GameThing* this) asm("?GetDebugText@TownSpellIcon@@UAEPADXZ");
// win1.41 00748fb0 mac 10560fa0 TownSpellIcon::Load(GameOSFile &)
uint32_t __fastcall Load__13TownSpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@TownSpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 00748f70 mac 10561030 TownSpellIcon::Save(GameOSFile &)
uint32_t __fastcall Save__13TownSpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@TownSpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055e050 mac 10561ce0 TownSpellIcon::GetSaveType(void)
uint32_t __fastcall GetSaveType__13TownSpellIconFv(struct GameThing* this) asm("?GetSaveType@TownSpellIcon@@UAEIXZ");
// win1.41 00748f00 mac 10561170 TownSpellIcon::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__13TownSpellIconFv(struct GameThingWithPos* this) asm("?GetWorshipSite@TownSpellIcon@@UAEPAVWorshipSite@@XZ");
// win1.41 00748be0 mac 105619b0 TownSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__13TownSpellIconFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@TownSpellIcon@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LIST_HEAD(TownSpellIcon);

struct TownCentreSpellIcon
{
  struct TownSpellIcon super;  /* 0x0 */
  uint32_t field_0x118;
  uint32_t power_up_enabled[POWER_UP_TYPE_LAST];
};
static_assert(sizeof(struct TownCentreSpellIcon) == 0x128, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becee8 mac inlined TownCentreSpellIcon::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19TownCentreSpellIcon asm("??_R0?AVTownCentreSpellIcon@@@8");
// win1.41 009ae828 mac inlined TownCentreSpellIcon::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19TownCentreSpellIcon asm("??_R1A@?0A@A@TownCentreSpellIcon@@8");
// win1.41 009ae840 mac inlined TownCentreSpellIcon::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19TownCentreSpellIcon asm("??_R2TownCentreSpellIcon@@8");
// win1.41 009ae868 mac inlined TownCentreSpellIcon::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19TownCentreSpellIcon asm("??_R3TownCentreSpellIcon@@8");

// Non-virtual methods

// win1.41 00748eb0 mac 105612c0 TownCentreSpellIcon::SetPULevel(POWER_UP_TYPE, bool)
void __fastcall SetPULevel__19TownCentreSpellIconF13POWER_UP_TYPEb(struct TownCentreSpellIcon* this, const void* edx, enum POWER_UP_TYPE power_up_type, bool enabled) asm("?SetPULevel@TownCentreSpellIcon@@QAEXW4POWER_UP_TYPE@@_N@Z");
// win1.41 00748ed0 mac 10561210 TownCentreSpellIcon::UpdateGraphicWithPULevels(void)
void __fastcall UpdateGraphicWithPULevels__19TownCentreSpellIconFv(struct TownCentreSpellIcon* this) asm("?UpdateGraphicWithPULevels@TownCentreSpellIcon@@QAEXXZ");

// Override methods

// win1.41 0055e0c0 mac 105617e0 TownCentreSpellIcon::_dt(void)
void __fastcall __dt__19TownCentreSpellIconFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTownCentreSpellIcon@@UAEPAXI@Z");
// win1.41 00748c80 mac 105616f0 TownCentreSpellIcon::ToBeDeleted(int)
void __fastcall ToBeDeleted__19TownCentreSpellIconFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@TownCentreSpellIcon@@UAEXH@Z");
// win1.41 0055e0b0 mac 10560a80 TownCentreSpellIcon::GetDebugText(void)
char* __fastcall GetDebugText__19TownCentreSpellIconFv(struct GameThing* this) asm("?GetDebugText@TownCentreSpellIcon@@UAEPADXZ");
// win1.41 007490e0 mac 10560b00 TownCentreSpellIcon::Load(GameOSFile &)
uint32_t __fastcall Load__19TownCentreSpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@TownCentreSpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 00748ff0 mac 10560d50 TownCentreSpellIcon::Save(GameOSFile &)
uint32_t __fastcall Save__19TownCentreSpellIconFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@TownCentreSpellIcon@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055e0a0 mac 10560a40 TownCentreSpellIcon::GetSaveType(void)
uint32_t __fastcall GetSaveType__19TownCentreSpellIconFv(struct GameThing* this) asm("?GetSaveType@TownCentreSpellIcon@@UAEIXZ");
// win1.41 00519640 mac 100c7a30 TownCentreSpellIcon::Draw(void)
void __fastcall Draw__19TownCentreSpellIconFv(struct Object* this) asm("?Draw@TownCentreSpellIcon@@UAEXXZ");
// win1.41 00748d20 mac 105613d0 TownCentreSpellIcon::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__19TownCentreSpellIconFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@TownCentreSpellIcon@@UAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H */
