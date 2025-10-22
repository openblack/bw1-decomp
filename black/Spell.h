#ifndef BW1_DECOMP_SPELL_INCLUDED_H
#define BW1_DECOMP_SPELL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE, enum MAGIC_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct Living;
struct Object;
struct PSysProcessInfo;
struct Reaction;
struct Spell;
struct SpellCastData;
struct SpellEventInfo;
struct WorshipSite;

struct SpellVftable
{
  struct GameThingWithPosVftable super;  /* 0x0 */
  void (__fastcall* ProcessSpellSeed)(struct Spell* this);  /* 0x500 */
  void (__fastcall* GetParticleType)(struct Spell* this);
  void (__fastcall* DrawSpellSeed)(struct Spell* this);
  void (__fastcall* Draw)(struct Spell* this);
  void (__fastcall* DebugDraw)(struct Spell* this);  /* 0x510 */
  bool (__fastcall* NeedsContinualPackets)(struct Spell* this, const void* edx, struct GInterfaceStatus* param_1);
  void (__fastcall* HasEnoughChantsAndLifeForRecast)(struct Spell* this);
  void (__fastcall* UpdateStruckReaction)(struct Spell* this);
  void (__fastcall* SetUpDestroyedReaction)(struct Spell* this);  /* 0x520 */
  uintptr_t (__fastcall* GetCreatureCastOn)(struct Spell* this);
  uint32_t (__fastcall* Process)(struct Spell* this);
  void (__fastcall* SpellEvent)(struct Spell* this, const void* edx, const struct SpellEventInfo* param_1);
  void (__fastcall* CloseDown)(struct Spell* this);  /* 0x530 */
  int (__fastcall* InitWithPos)(struct Spell* this, const void* edx, struct GameThing* param_1, const struct MapCoords* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4);
  int (__fastcall* InitWithObject)(struct Spell* this, const void* edx, struct GameThing* param_1, struct Object* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4);
  float (__fastcall* CalculateCostToMaintain)(struct Spell* this);
  void (__fastcall* AdjustSpellSeedPos)(struct Spell* this, const void* edx, struct MapCoords* pos);  /* 0x540 */
  bool (__fastcall* IsSpellCreature)(struct Spell* this);
  bool (__fastcall* IsSpellStormAndTornado)(struct Spell* this);
  void (__fastcall* SetMaxObjectsToCreate)(struct Spell* this, const void* edx, int value);
  int (__fastcall* GetMaxObjectsToCreate)(struct Spell* this);  /* 0x550 */
};
static_assert(sizeof(struct SpellVftable) == 0x554, "Data type is of wrong size");

struct Spell
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
  float field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  uint32_t field_0x44;
  uint32_t field_0x48;
  uint32_t field_0x4c;
  float field_0x50;
  float field_0x54;
  float field_0x58;
  uint8_t field_0x5c;
  uint8_t field_0x5d;
  uint32_t field_0x60;
  struct LHPoint field_0x64;
  struct LHPoint field_0x70;
  struct LHPoint field_0x7c;
  struct LHPoint field_0x88;
  float field_0x94;
  uint32_t field_0x98;
  uint8_t field_0x9c;
  struct GameThing* creator;  /* 0xa0 */
  struct GameThing* field_0xa4;
  struct GameThing* interface_status;
  struct GameThing* field_0xac;
  uint32_t field_0xb0;
  enum MAGIC_TYPE magic_type;
  float field_0xb8;
  float field_0xbc;
  struct MapCoords field_0xc0;
  struct MapCoords field_0xcc;
  uint32_t field_0xd8;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
  float field_0xe4;
  struct Spell* next;
};
static_assert(sizeof(struct Spell) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be0300 mac inlined Spell::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Spell asm("??_R0?AVSpell@@@8");
// win1.41 009ae728 mac inlined Spell::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Spell asm("??_R1A@?0A@A@Spell@@8");
// win1.41 009b9298 mac inlined Spell::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Spell asm("??_R2Spell@@8");
// win1.41 009b92b0 mac inlined Spell::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Spell asm("??_R3Spell@@8");
// win1.41 009805ac mac 1075942c Spell::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5Spell asm("??_R4Spell@@6B@");
// win1.41 009805b0 mac 106f64a8 Spell::`vftable'
extern const struct SpellVftable __vt__5Spell asm("??_7Spell@@6B@");

// Constructors

// win1.41 0071fa30 mac 10519bb0 Spell::Spell(void)
struct Spell* __fastcall __ct__5SpellFv(struct Spell* this) asm("??0Spell@@QAE@XZ");
// win1.41 0071fb40 mac 105198a0 Spell::Spell(MAGIC_TYPE, GameThing *)
struct Spell* __fastcall __ct__5SpellF10MAGIC_TYPEP9GameThing(struct Spell* this, const void* edx, enum MAGIC_TYPE type, struct GameThing* creator) asm("??0Spell@@QAE@W4MAGIC_TYPE@@PAVGameThing@@@Z");

// Override methods

// win1.41 0071fb10 mac 1030e5c0 Spell::_dt(void)
void __fastcall __dt__5SpellFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpell@@UAEPAXI@Z");
// win1.41 0071fd90 mac 105195a0 Spell::ToBeDeleted(int)
void __fastcall ToBeDeleted__5SpellFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Spell@@UAEXH@Z");
// win1.41 0055cdf0 mac 100d40a0 Spell::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__5SpellFv(struct GameThing* this) asm("?GetPlayer@Spell@@UAEPAVGPlayer@@XZ");
// win1.41 0055cdc0 mac 103b1c30 Spell::IsFunctional(void)
bool __fastcall IsFunctional__5SpellFv(struct GameThing* this) asm("?IsFunctional@Spell@@UAE_NXZ");
// win1.41 0071fb00 mac 10514e70 Spell::GetDebugText(void)
char* __fastcall GetDebugText__5SpellFv(struct GameThing* this) asm("?GetDebugText@Spell@@UAEPADXZ");
// win1.41 0071bc30 mac 1050fe70 Spell::GetSampleForAttack(void)
uint32_t __fastcall GetSampleForAttack__5SpellFv(struct GameThing* this) asm("?GetSampleForAttack@Spell@@UAEIXZ");
// win1.41 00721cd0 mac 10514eb0 Spell::Load(GameOSFile &)
uint32_t __fastcall Load__5SpellFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Spell@@UAEIAAVGameOSFile@@@Z");
// win1.41 00721930 mac 105155b0 Spell::Save(GameOSFile &)
uint32_t __fastcall Save__5SpellFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Spell@@UAEIAAVGameOSFile@@@Z");
// win1.41 0071faf0 mac 10514e40 Spell::GetSaveType(void)
uint32_t __fastcall GetSaveType__5SpellFv(struct GameThing* this) asm("?GetSaveType@Spell@@UAEIXZ");
// win1.41 0055cec0 mac 103b1fa0 Spell::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__5SpellFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Spell@@UAEIXZ");
// win1.41 0055ceb0 mac 103b1f60 Spell::GetCreatureBeliefListType(void)
uint32_t __fastcall GetCreatureBeliefListType__5SpellFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefListType@Spell@@UAEIXZ");
// win1.41 0055cef0 mac 103b2070 Spell::GetOrigin(void)
uint32_t __fastcall GetOrigin__5SpellFv(struct GameThingWithPos* this) asm("?GetOrigin@Spell@@UAEIXZ");
// win1.41 0055cdb0 mac 103b1c00 Spell::GetLife(void)
float __fastcall GetLife__5SpellFv(struct GameThingWithPos* this) asm("?GetLife@Spell@@UAEMXZ");
// win1.41 00721340 mac 10516b00 Spell::GetMovementDirection(LHPoint *)
void __fastcall GetMovementDirection__5SpellFP7LHPoint(struct GameThingWithPos* this, const void* edx, struct LHPoint* param_1) asm("?GetMovementDirection@Spell@@UAEXPAULHPoint@@@Z");
// win1.41 007202b0 mac 10518bd0 Spell::GetImpressiveType(void)
enum IMPRESSIVE_TYPE __fastcall GetImpressiveType__5SpellFv(struct GameThingWithPos* this) asm("?GetImpressiveType@Spell@@UAE?AW4IMPRESSIVE_TYPE@@XZ");
// win1.41 0055cf20 mac 103b2120 Spell::GetImpressiveIntensity(IMPRESSIVE_TYPE)
float __fastcall GetImpressiveIntensity__5SpellF15IMPRESSIVE_TYPE(struct GameThingWithPos* this, const void* edx, enum IMPRESSIVE_TYPE param_1) asm("?GetImpressiveIntensity@Spell@@UAEMW4IMPRESSIVE_TYPE@@@Z");
// win1.41 00721630 mac 10516340 Spell::GetImpressiveValue(Living *, Reaction *)
float __fastcall GetImpressiveValue__5SpellFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2) asm("?GetImpressiveValue@Spell@@UAEMPAVLiving@@PAVReaction@@@Z");
// win1.41 007216d0 mac 105162d0 Spell::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
float __fastcall GetUpdateOfBoredomValue__5SpellFP8ReactionP16GameThingWithPos(struct GameThingWithPos* this, const void* edx, struct Reaction* param_1, struct GameThingWithPos* param_2) asm("?GetUpdateOfBoredomValue@Spell@@UAEMPAVReaction@@PAVGameThingWithPos@@@Z");
// win1.41 0055cee0 mac 103b2030 Spell::IsSuitableForCreatureAction(void)
uint32_t __fastcall IsSuitableForCreatureAction__5SpellFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureAction@Spell@@UAEIXZ");
// win1.41 0055ced0 mac 103b1fe0 Spell::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__5SpellFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@Spell@@UAEIPAVCreature@@@Z");
// win1.41 00720240 mac 10518ca0 Spell::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__5SpellFv(struct GameThingWithPos* this) asm("?GetWorshipSite@Spell@@UAEPAVWorshipSite@@XZ");
// win1.41 0055ce50 mac 103b1df0 Spell::IsSpell( const(void))
uint32_t __fastcall IsSpell__5SpellCFv(const struct GameThingWithPos* this) asm("?IsSpell@Spell@@UBEIXZ");
// win1.41 0055cf00 mac 103b20a0 Spell::GetText(void)
const char* __fastcall GetText__5SpellFv(struct GameThingWithPos* this) asm("?GetText@Spell@@UAEPBDXZ");
// win1.41 007218a0 mac 10515fb0 Spell::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__5SpellFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@Spell@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 007218b0 mac 10515f40 Spell::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__5SpellFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@Spell@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 007218c0 mac 10515ed0 Spell::GetFOVHelpMessageSet(void)
uint32_t __fastcall GetFOVHelpMessageSet__5SpellFv(struct GameThingWithPos* this) asm("?GetFOVHelpMessageSet@Spell@@UAEIXZ");
// win1.41 007218d0 mac 10515e60 Spell::GetFOVHelpCondition(void)
uint32_t __fastcall GetFOVHelpCondition__5SpellFv(struct GameThingWithPos* this) asm("?GetFOVHelpCondition@Spell@@UAEIXZ");
// win1.41 0055cf10 mac 103b20d0 Spell::GetReactionPower(void)
float __fastcall GetReactionPower__5SpellFv(struct GameThingWithPos* this) asm("?GetReactionPower@Spell@@UAEMXZ");
// win1.41 0055cd80 mac inlined Spell::GetSpellCastPos(MapCoords *)
void __fastcall GetSpellCastPos__5SpellFP9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetSpellCastPos@Spell@@UAEXPAUMapCoords@@@Z");
// win1.41 00721370 mac 10516a00 Spell::ProcessSpellSeed(void)
void __fastcall ProcessSpellSeed__5SpellFv(struct Spell* this) asm("?ProcessSpellSeed@Spell@@UAEXXZ");
// win1.41 00720130 mac 105190d0 Spell::GetParticleType(void)
void __fastcall GetParticleType__5SpellFv(struct Spell* this) asm("?GetParticleType@Spell@@UAEXXZ");
// win1.41 00721360 mac 10516aa0 Spell::DrawSpellSeed(void)
void __fastcall DrawSpellSeed__5SpellFv(struct Spell* this) asm("?DrawSpellSeed@Spell@@UAEXXZ");
// win1.41 00720430 mac 105187e0 Spell::Draw(void)
void __fastcall Draw__5SpellFv(struct Spell* this) asm("?Draw@Spell@@UAEXXZ");
// win1.41 007203e0 mac 105188d0 Spell::DebugDraw(void)
void __fastcall DebugDraw__5SpellFv(struct Spell* this) asm("?DebugDraw@Spell@@UAEXXZ");
// win1.41 007214c0 mac 105166c0 Spell::NeedsContinualPackets(GInterfaceStatus *)
bool __fastcall NeedsContinualPackets__5SpellFP16GInterfaceStatus(struct Spell* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NeedsContinualPackets@Spell@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0055ce00 mac 103b1ce0 Spell::HasEnoughChantsAndLifeForRecast(void)
void __fastcall HasEnoughChantsAndLifeForRecast__5SpellFv(struct Spell* this) asm("?HasEnoughChantsAndLifeForRecast@Spell@@UAEXXZ");
// win1.41 0055ce10 mac 103b1d30 Spell::UpdateStruckReaction(void)
void __fastcall UpdateStruckReaction__5SpellFv(struct Spell* this) asm("?UpdateStruckReaction@Spell@@UAEXXZ");
// win1.41 0055ce20 mac 103b1d70 Spell::SetUpDestroyedReaction(void)
void __fastcall SetUpDestroyedReaction__5SpellFv(struct Spell* this) asm("?SetUpDestroyedReaction@Spell@@UAEXXZ");
// win1.41 0055ce30 mac 103b1db0 Spell::GetCreatureCastOn(void)
uint32_t __fastcall GetCreatureCastOn__5SpellFv(struct Spell* this) asm("?GetCreatureCastOn@Spell@@UAEIXZ");
// win1.41 00720710 mac 10518300 Spell::Process(void)
uint32_t __fastcall Process__5SpellFv(struct Spell* this) asm("?Process@Spell@@UAEIXZ");
// win1.41 00720f40 mac 105172a0 Spell::SpellEvent(SpellEventInfo const &)
void __fastcall SpellEvent__5SpellFRC14SpellEventInfo(struct Spell* this, const void* edx, const struct SpellEventInfo* param_1) asm("?SpellEvent@Spell@@UAEXABVSpellEventInfo@@@Z");
// win1.41 0055ce40 mac 10280a00 Spell::CloseDown(void)
void __fastcall CloseDown__5SpellFv(struct Spell* this) asm("?CloseDown@Spell@@UAEXXZ");
// win1.41 0071fe50 mac 10519200 Spell::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int __fastcall InitWithPos__5SpellFP9GameThingRC9MapCoordsP13SpellCastDataRC15PSysProcessInfo(struct Spell* this, const void* edx, struct GameThing* param_1, const struct MapCoords* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4) asm("?InitWithPos@Spell@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z");
// win1.41 007200e0 mac 10519120 Spell::InitWithObject(GameThing *, Object *, SpellCastData *, PSysProcessInfo const &)
int __fastcall InitWithObject__5SpellFP9GameThingP6ObjectP13SpellCastDataRC15PSysProcessInfo(struct Spell* this, const void* edx, struct GameThing* param_1, struct Object* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4) asm("?InitWithObject@Spell@@UAEHPAVGameThing@@PAVObject@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z");
// win1.41 00720810 mac 10518100 Spell::CalculateCostToMaintain(void)
float __fastcall CalculateCostToMaintain__5SpellFv(struct Spell* this) asm("?CalculateCostToMaintain@Spell@@UAEMXZ");
// win1.41 0055ce60 mac 103b1e20 Spell::AdjustSpellSeedPos(MapCoords *)
void __fastcall AdjustSpellSeedPos__5SpellFP9MapCoords(struct Spell* this, const void* edx, struct MapCoords* param_1) asm("?AdjustSpellSeedPos@Spell@@UAEXPAUMapCoords@@@Z");
// win1.41 0055ce70 mac 103b1e60 Spell::IsSpellCreature(void)
bool __fastcall IsSpellCreature__5SpellFv(struct Spell* this) asm("?IsSpellCreature@Spell@@UAE_NXZ");
// win1.41 0055ce80 mac 103b1ea0 Spell::IsSpellStormAndTornado(void)
bool __fastcall IsSpellStormAndTornado__5SpellFv(struct Spell* this) asm("?IsSpellStormAndTornado@Spell@@UAE_NXZ");
// win1.41 0055ce90 mac 103b1ee0 Spell::SetMaxObjectsToCreate(long)
void __fastcall SetMaxObjectsToCreate__5SpellFl(struct Spell* this, const void* edx, int param_1) asm("?SetMaxObjectsToCreate@Spell@@UAEXH@Z");

DECLARE_LH_LIST_HEAD(Spell);

#endif /* BW1_DECOMP_SPELL_INCLUDED_H */
