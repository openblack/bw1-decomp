#ifndef BW1_DECOMP_SPELL_SHIELD_INCLUDED_H
#define BW1_DECOMP_SPELL_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SpellWithObjects.h" /* For struct SpellWithObjects */

// Forward Declares

struct Base;
struct GMagicInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct Living;
struct MapCoords;
struct PSysProcessInfo;
struct Reaction;
struct Spell;
struct SpellCastData;

struct SpellShield
{
  struct SpellWithObjects super;  /* 0x0 */
  uint8_t field_0xf4[0x18];
};
static_assert(sizeof(struct SpellShield) == 0x10c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22778 mac inlined SpellShield::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11SpellShield asm("??_R0?AVSpellShield@@@8");
// win1.41 009b9548 mac inlined SpellShield::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11SpellShield asm("??_R1A@?0A@A@SpellShield@@8");
// win1.41 009b9560 mac inlined SpellShield::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11SpellShield asm("??_R2SpellShield@@8");
// win1.41 009b9580 mac inlined SpellShield::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11SpellShield asm("??_R3SpellShield@@8");
// win1.41 009828d4 mac 109e09bc SpellShield::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11SpellShield asm("??_R4SpellShield@@6B@");
// win1.41 009828d8 mac 109e09c4 SpellShield::`vftable'
extern const struct SpellWithObjectsVftable __vt__11SpellShield asm("??_7SpellShield@@6B@");

// Non-virtual methods

// win1.41 0072b820 mac 10532f60 SpellShield::GetMagicInfo(void) const
struct GMagicInfo* __fastcall GetMagicInfo__11SpellShieldCFv(struct SpellShield* this) asm("?GetMagicInfo@SpellShield@@QBEPAVGMagicInfo@@XZ");

// Override methods

// win1.41 0072b480 mac 10534250 SpellShield::_dt(void)
void __fastcall __dt__11SpellShieldFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellShield@@UAEPAXI@Z");
// win1.41 0072b500 mac 105334e0 SpellShield::ToBeDeleted(int)
void __fastcall ToBeDeleted__11SpellShieldFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SpellShield@@UAEXH@Z");
// win1.41 0072b450 mac 105321c0 SpellShield::GetRadius(void)
float __fastcall GetRadius__11SpellShieldFv(struct GameThing* this) asm("?GetRadius@SpellShield@@UAEMXZ");
// win1.41 0072b440 mac 10532220 SpellShield::Get2DRadius(void)
float __fastcall Get2DRadius__11SpellShieldFv(struct GameThing* this) asm("?Get2DRadius@SpellShield@@UAEMXZ");
// win1.41 0072b470 mac 10534380 SpellShield::GetDebugText(void)
char* __fastcall GetDebugText__11SpellShieldFv(struct GameThing* this) asm("?GetDebugText@SpellShield@@UAEPADXZ");
// win1.41 0072bb40 mac 105324f0 SpellShield::Load(GameOSFile &)
uint32_t __fastcall Load__11SpellShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072bc40 mac 10532270 SpellShield::Save(GameOSFile &)
uint32_t __fastcall Save__11SpellShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072b460 mac 10534340 SpellShield::GetSaveType(void)
uint32_t __fastcall GetSaveType__11SpellShieldFv(struct GameThing* this) asm("?GetSaveType@SpellShield@@UAEIXZ");
// win1.41 0072ba80 mac 10532920 SpellShield::GetImpressiveValue(Living *, Reaction *)
float __fastcall GetImpressiveValue__11SpellShieldFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2) asm("?GetImpressiveValue@SpellShield@@UAEMPAVLiving@@PAVReaction@@@Z");
// win1.41 0072b430 mac 10534300 SpellShield::IsSpellShield(void)
uint32_t __fastcall IsSpellShield__11SpellShieldFv(struct GameThingWithPos* this) asm("?IsSpellShield@SpellShield@@UAEIXZ");
// win1.41 0072b780 mac 105330f0 SpellShield::UpdateStruckReaction(void)
void __fastcall UpdateStruckReaction__11SpellShieldFv(struct Spell* this) asm("?UpdateStruckReaction@SpellShield@@UAEXXZ");
// win1.41 0072b7c0 mac 10533050 SpellShield::SetUpDestroyedReaction(void)
void __fastcall SetUpDestroyedReaction__11SpellShieldFv(struct Spell* this) asm("?SetUpDestroyedReaction@SpellShield@@UAEXXZ");
// win1.41 0072b750 mac 105331a0 SpellShield::Process(void)
uint32_t __fastcall Process__11SpellShieldFv(struct Spell* this) asm("?Process@SpellShield@@UAEIXZ");
// win1.41 0072b840 mac 10532f10 SpellShield::CloseDown(void)
void __fastcall CloseDown__11SpellShieldFv(struct Spell* this) asm("?CloseDown@SpellShield@@UAEXXZ");
// win1.41 0072b5f0 mac 10533230 SpellShield::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int __fastcall InitWithPos__11SpellShieldFP9GameThingRC9MapCoordsP13SpellCastDataRC15PSysProcessInfo(struct Spell* this, const void* edx, struct GameThing* param_1, const struct MapCoords* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4) asm("?InitWithPos@SpellShield@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z");
// win1.41 0072b7f0 mac 10532fb0 SpellShield::CalculateCostToMaintain(void)
float __fastcall CalculateCostToMaintain__11SpellShieldFv(struct Spell* this) asm("?CalculateCostToMaintain@SpellShield@@UAEMXZ");

#endif /* BW1_DECOMP_SPELL_SHIELD_INCLUDED_H */
