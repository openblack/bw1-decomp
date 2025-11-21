#ifndef BW1_DECOMP_CREATURE_INCLUDED_H
#define BW1_DECOMP_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h> /* For enum CREATURE_DESIRES, enum EFFECT_TYPE, enum IMPRESSIVE_TYPE, enum REACTION */
#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CreatureHelp.h" /* For struct CreatureHelpStackEntry, struct CreatureHelpState */
#include "CreatureSubAction.h" /* For struct CreatureSubActionAgenda */
#include "Living.h" /* For struct Living */
#include "MapCoords.h" /* For struct MapCoords */
#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct BookmarkGraphic;
struct Bubble;
struct Citadel;
struct ControlHandUpdateInfo;
struct CreatureBelief;
struct CreatureMental;
struct CreaturePhysical;
struct CreaturePlan;
struct CreatureReceiveSpell;
struct Dance;
struct EffectNumbers;
struct EffectValues;
struct GAlignment;
struct GArena;
struct GCreatureInfo;
struct GInterfaceStatus;
struct GParticleContainer;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LH3DCreature;
struct LH3DSmoke;
struct LHOSFile;
struct LHPoint;
struct LandscapeVortex;
struct MobileWallHug;
struct Object;
struct PSysProcessInfo;
struct PhysOb;
struct PhysicsObject;
struct RPHolder;
struct Reaction;
struct Spell;

struct CreatureEmotionsForMusic
{
  uint32_t field_0x0;
  uint32_t field_0x4;
};
static_assert(sizeof(struct CreatureEmotionsForMusic) == 0x8, "Data type is of wrong size");

struct Creature
{
  struct Living super;  /* 0x0 */
  char16_t name[0x40];  /* 0xe0 */
  struct CreaturePhysical* physical;  /* 0x160 */
  struct CreatureMental* mind;
  struct GAlignment* alignment;
  uint32_t field_0x16c;
  uint32_t field_0x170;
  uint32_t field_0x174;
  uint32_t field_0x178;
  uint32_t field_0x17c;
  uint32_t field_0x180;
  uint32_t field_0x184;
  struct CreatureHelpState help_state;
  struct LHLinkedList__CreatureHelpStackEntry help_stack_entries[0x2a];  /* 0x220 */
  struct CreatureReceiveSpell* receive_spell;  /* 0x370 */
  float field_0x374;
  float field_0x378;
  uint8_t field_0x37c;
  uint8_t field_0x37d;
  uint8_t field_0x37e;
  uint8_t field_0x37f;
  uint32_t field_0x380;
  uint32_t field_0x384;
  struct CreatureEmotionsForMusic emotions_for_music;
  uint32_t field_0x390[0xe];
  uint32_t field_0x3c8;
  uint32_t field_0x3cc;
  struct Creature* next;  /* 0x3d0 */
  uint32_t field_0x3d4;
  struct MapCoords field_0x3d8;
  uint32_t field_0x3e4;
  uint32_t field_0x3e8;
  struct MapCoords field_0x3ec;
  uint8_t field_0x3f8;
  uint8_t field_0x3f9;
  uint8_t field_0x3fa;
  uint8_t field_0x3fb;
  float field_0x3fc;
  float field_0x400;
  uint8_t field_0x404;
  uint8_t field_0x405;
  uint8_t field_0x406;
  uint8_t field_0x407;
  struct CreatureSubActionAgenda sub_action_agenda;
  int field_0x1058;
  uint32_t field_0x105c;
  uint32_t field_0x1060;
  uint32_t field_0x1064;
  uint32_t field_0x1068;
  uint32_t field_0x106c;
  struct GPlayer* owner;  /* 0x1070 */
  struct Dance* dance;
  uint32_t field_0x1078;
  struct GParticleContainer* particle_container_0x107c;
  struct GParticleContainer* particle_container_0x1080;
  uint32_t field_0x1084;
  uint32_t field_0x1088;
  uint32_t field_0x108c;
  uint32_t field_0x1090;
  uint32_t field_0x1094;
  uint32_t field_0x1098;
  struct LH3DSmoke* smoke;
  struct GArena* arena;  /* 0x10a0 */
  uint32_t field_0x10a4;
  uint32_t field_0x10a8;
  uint32_t field_0x10ac;
  uint32_t field_0x10b0;
  uint32_t field_0x10b4;
  uint32_t field_0x10b8;
  uint32_t field_0x10bc;
  uint32_t field_0x10c0;
  uint8_t field_0x10c4[0x8];
  uint32_t field_0x10cc;
  uint32_t field_0x10d0;
  uint32_t field_0x10d4;
  uint8_t field_0x10d8[0x10];
  uint32_t field_0x10e8;
  uint32_t field_0x10ec;
  uint32_t field_0x10f0;
  uint32_t field_0x10f4;
  uint32_t field_0x10f8;
  uint32_t field_0x10fc;
  uint32_t field_0x1100;
  uint32_t field_0x1104;
  uint32_t field_0x1108;
  uint32_t field_0x110c;
  int field_0x1110;
  uint32_t field_0x1114;
  uint32_t field_0x1118;
  uint32_t field_0x111c;
  uint32_t field_0x1120;
  int game_turn;
  uint8_t field_0x1128[0x28];
  uint32_t field_0x1150;
  uint32_t field_0x1154;
  uint32_t field_0x1158;
  uint32_t field_0x115c;
  uint32_t field_0x1160;
  struct MapCoords field_0x1164;
  uint32_t field_0x1170[0x8];
  uint32_t field_0x1190;
  uint8_t field_0x1194[0x14];
  struct MapCoords field_0x11a8;
  uint32_t field_0x11b4;
  uint32_t field_0x11b8;
  uint32_t field_0x11bc;
  uint32_t field_0x11c0;
  uint32_t field_0x11c4;
  uint32_t field_0x11c8;
  struct MapCoords field_0x11cc;
  uint8_t field_0x11d8[0xc];
  struct GParticleContainer* particle_container_0x11e4;
  uint32_t field_0x11e8;
  struct BookmarkGraphic* bookmark_graphic;
  uint8_t field_0x11f0;
  uint8_t field_0x11f1;
  uint8_t field_0x11f2;
  uint8_t field_0x11f3;
  uint32_t field_0x11f4;
  uint32_t field_0x11f8;
  uint32_t field_0x11fc;
  struct MapCoords field_0x1200;
  uint32_t field_0x120c;
  uint32_t field_0x1210;
  struct MapCoords field_0x1214;
  uint32_t field_0x1220;
  uint32_t field_0x1224;
  uint8_t field_0x1228[0x40];
  int field_0x1268;
  uint32_t field_0x126c;
  uint32_t field_0x1270;
  uint32_t field_0x1274;
  uint32_t field_0x1278;
  struct Bubble* bubble;
  uint32_t field_0x1280;
  uint32_t field_0x1284;
  uint32_t field_0x1288;
  uint8_t field_0x128c[0x8];
  uint32_t field_0x1294;
  uint32_t field_0x1298;
  int field_0x129c;
  uint32_t field_0x12a0;
  uint32_t field_0x12a4;
  uint32_t field_0x12a8;
  uint8_t field_0x12ac;
  uint8_t field_0x12ad;
  uint8_t field_0x12ae;
  uint8_t field_0x12af;
  uint32_t field_0x12b0;
  uint32_t field_0x12b4;
  uint32_t field_0x12b8;
  uint32_t field_0x12bc;
  uint32_t field_0x12c0;
  uint32_t field_0x12c4;
};
static_assert(sizeof(struct Creature) == 0x12c8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8060 mac inlined Creature::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Creature asm("??_R0?AVCreature@@@8");
// win1.41 009a94f0 mac inlined Creature::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Creature asm("??_R1A@?0A@A@Creature@@8");
// win1.41 009a9508 mac inlined Creature::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Creature asm("??_R2Creature@@8");
// win1.41 009a9530 mac inlined Creature::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Creature asm("??_R3Creature@@8");
// win1.41 008cc80c mac 1077dda8 Creature::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Creature asm("??_R4Creature@@6B@");
// win1.41 008cc810 mac 1077e3fc Creature::`vftable'
extern const struct LivingVftable __vt__8Creature asm("??_7Creature@@6B@");

// Static methods

// win1.41 00474a20 mac 101dfc60 Creature::Create(MapCoords const &, CreatureInfo const *, GPlayer *)
struct Creature* __cdecl Create__8CreatureFRC9MapCoordsPC12CreatureInfoP7GPlayer(const struct MapCoords* coords, const struct GCreatureInfo* info, struct GPlayer* player) asm("?Create@Creature@@SAPAV1@ABUMapCoords@@PBVCreatureInfo@@PAVGPlayer@@@Z");
// win1.41 00474b50 mac 101dfb90 Creature::CreateCreature(MapCoords const &, CreatureInfo const *, GPlayer *)
struct Creature* __cdecl CreateCreature__8CreatureFRC9MapCoordsPC12CreatureInfoP7GPlayer(const struct MapCoords* coords, const struct GCreatureInfo* info, struct GPlayer* player) asm("?CreateCreature@Creature@@SAPAV1@ABUMapCoords@@PBVCreatureInfo@@PAVGPlayer@@@Z");

// Constructors

// win1.41 00474690 mac 101dfe30 Creature::Creature(void)
struct Creature* __fastcall __ct__8CreatureFv(struct Creature* this) asm("??0Creature@@QAE@XZ");

// Non-virtual methods

// win1.41 00475730 mac 101ddff0 Creature::FinishActionUnsuccessfully(char *, int, int)
void __fastcall FinishActionUnsuccessfully__8CreatureFPcii(struct Creature* this, const void* edx, char* param_1, int param_2, int param_3) asm("?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z");
// win1.41 00477850 mac 101daef0 Creature::GetCreature3D(void)
struct LH3DCreature* __fastcall GetCreature3D__8CreatureFv(struct Creature* this) asm("?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ");
// win1.41 0047c650 mac 101d2500 Creature::SetAnimationTimeModify(bool value)
void __fastcall SetAnimationTimeModify__8CreatureFb(struct Creature* this, const void* edx, bool value) asm("?SetAnimationTimeModify@Creature@@QAEX_N@Z");
// win1.41 0047c690 mac 101d2420 Creature::IsOnHomeTeam(void)
bool __fastcall IsOnHomeTeam__8CreatureFv(struct Creature* this) asm("?IsOnHomeTeam@Creature@@QAE_NXZ");
// win1.41 004c4450 mac 10230ac0 Creature::ForceActivityAndForceAction(CREATURE_DESIRES, CreatureBelief *, CREATURE_ACTION, CreatureBelief *, CreatureBelief *, int, int)
void __fastcall ForceActivityAndForceAction__8CreatureF16CREATURE_DESIRESP14CreatureBelief15CREATURE_ACTIONP14CreatureBeliefP14CreatureBeliefii(struct Creature* this, const void* edx, enum CREATURE_DESIRES param_1, struct CreatureBelief* param_2, enum CREATURE_ACTION param_3, struct CreatureBelief* param_4, struct CreatureBelief* param_5, int param_6, int param_7) asm("?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z");
// win1.41 004c44b0 mac 10230950 Creature::ForceActivityAndForceAction(CreaturePlan &, int, int)
void __fastcall ForceActivityAndForceAction__8CreatureFR12CreaturePlanii(struct Creature* this, const void* edx, struct CreaturePlan* param_1, int param_2, int param_3) asm("?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z");
// win1.41 004ea670 mac 10279d20 Creature::DecideOnNewPlan(CreaturePlan &)
void __fastcall DecideOnNewPlan__8CreatureFR12CreaturePlan(struct Creature* this, const void* edx, struct CreaturePlan* param_1) asm("?DecideOnNewPlan@Creature@@QAEXAAVCreaturePlan@@@Z");
// win1.41 004f8b80 mac 1028a7b0 Creature::ProcessSpells(void)
void __fastcall ProcessSpells__8CreatureFv(struct Creature* this) asm("?ProcessSpells@Creature@@QAEXXZ");
// win1.41 004ffdd0 mac 102a0fc0 Creature::SubStatePerformPickUpParameter(CreatureBelief *)
uint32_t __fastcall SubStatePerformPickUpParameter__8CreatureFP14CreatureBelief(struct Creature* this, const void* edx, struct CreatureBelief* param_1) asm("?SubStatePerformPickUpParameter@Creature@@QAEIPAVCreatureBelief@@@Z");
// win1.41 00501d10 mac 1029da30 Creature::SubStatePerformAddVillagersToDance(void)
bool __fastcall SubStatePerformAddVillagersToDance__8CreatureFv(struct Creature* this) asm("?SubStatePerformAddVillagersToDance@Creature@@QAE_NXZ");

// Override methods

// win1.41 00474100 mac 101de750 Creature::_dt(void)
void __fastcall __dt__8CreatureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreature@@UAEPAXI@Z");
// win1.41 00474f00 mac 101df130 Creature::ToBeDeleted(int)
void __fastcall ToBeDeleted__8CreatureFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Creature@@UAEXH@Z");
// win1.41 00473f20 mac 100a0db0 Creature::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__8CreatureFv(struct GameThing* this) asm("?GetPlayer@Creature@@UAEPAVGPlayer@@XZ");
// win1.41 00473f30 mac 101e2cc0 Creature::RemoveDance(void)
void __fastcall RemoveDance__8CreatureFv(struct GameThing* this) asm("?RemoveDance@Creature@@UAEXXZ");
// win1.41 00474090 mac 101e32a0 Creature::IsCreature(Creature *)
bool __fastcall IsCreature__8CreatureFP8Creature(struct GameThing* this, const void* edx, struct Creature* param_1) asm("?IsCreature@Creature@@UAE_NPAVCreature@@@Z");
// win1.41 00474080 mac inlined Creature::IsCreature_1(void)
bool __fastcall IsCreature_1__8CreatureFv(struct GameThing* this) asm("?IsCreature@Creature@@UAE_NXZ");
// win1.41 004e4080 mac 105e6020 Creature::IsCreatureNotTooNear(Creature *)
bool __fastcall IsCreatureNotTooNear__8CreatureFP8Creature(struct GameThing* this, const void* edx, struct Creature* param_1) asm("?IsCreatureNotTooNear@Creature@@UAE_NPAVCreature@@@Z");
// win1.41 0047b1f0 mac 101d48a0 Creature::GetMaxAlignmentChangePerGameTurn(void)
float __fastcall GetMaxAlignmentChangePerGameTurn__8CreatureFv(struct GameThing* this) asm("?GetMaxAlignmentChangePerGameTurn@Creature@@UAEMXZ");
// win1.41 004f8350 mac inlined Creature::MaintainSpell(unsigned int, float)
void __fastcall MaintainSpell__8CreatureFUif(struct GameThing* this, const void* edx, uint32_t param_1, float param_2) asm("?MaintainSpell@Creature@@UAEXIM@Z");
// win1.41 004f8750 mac 1028b0e0 Creature::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void __fastcall UpdateSpellInfo__8CreatureFP5SpellP15PSysProcessInfo(struct GameThing* this, const void* edx, struct Spell* param_1, struct PSysProcessInfo* param_2) asm("?UpdateSpellInfo@Creature@@UAEXPAVSpell@@PAUPSysProcessInfo@@@Z");
// win1.41 004792c0 mac 101d8510 Creature::GetRadius(void)
float __fastcall GetRadius__8CreatureFv(struct GameThing* this) asm("?GetRadius@Creature@@UAEMXZ");
// win1.41 00477f40 mac 101d9fc0 Creature::Get2DRadius(void)
float __fastcall Get2DRadius__8CreatureFv(struct GameThing* this) asm("?Get2DRadius@Creature@@UAEMXZ");
// win1.41 00474010 mac 101e3070 Creature::CastCreature(void)
struct Creature* __fastcall CastCreature__8CreatureFv(struct GameThing* this) asm("?CastCreature@Creature@@UAEPAVCreature@@XZ");
// win1.41 004740d0 mac 101e3430 Creature::GetDebugText(void)
char* __fastcall GetDebugText__8CreatureFv(struct GameThing* this) asm("?GetDebugText@Creature@@UAEPADXZ");
// win1.41 0071bd50 mac 1050fcd0 Creature::GetSampleForAttack(void)
uint32_t __fastcall GetSampleForAttack__8CreatureFv(struct GameThing* this) asm("?GetSampleForAttack@Creature@@UAEIXZ");
// win1.41 004e5ff0 mac 1026b130 Creature::Load(GameOSFile &)
uint32_t __fastcall Load__8CreatureFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Creature@@UAEIAAVGameOSFile@@@Z");
// win1.41 004e4ea0 mac 1026c9c0 Creature::Save(GameOSFile &)
uint32_t __fastcall Save__8CreatureFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Creature@@UAEIAAVGameOSFile@@@Z");
// win1.41 004740c0 mac 101e33f0 Creature::GetSaveType(void)
uint32_t __fastcall GetSaveType__8CreatureFv(struct GameThing* this) asm("?GetSaveType@Creature@@UAEIXZ");
// win1.41 004e6ab0 mac 1026aa90 Creature::ResolveLoad(void)
void __fastcall ResolveLoad__8CreatureFv(struct GameThing* this) asm("?ResolveLoad@Creature@@UAEXXZ");
// win1.41 00473f70 mac 101e2dd0 Creature::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__8CreatureFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Creature@@UAEIXZ");
// win1.41 00477df0 mac 101da380 Creature::GetCreatureBeliefListType(void)
uint32_t __fastcall GetCreatureBeliefListType__8CreatureFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefListType@Creature@@UAEIXZ");
// win1.41 004792d0 mac 101d84a0 Creature::GetCitadel(void)
struct Citadel* __fastcall GetCitadel__8CreatureFv(struct GameThingWithPos* this) asm("?GetCitadel@Creature@@UAEPAVCitadel@@XZ");
// win1.41 0047b190 mac 101d4a30 Creature::GetScale(void)
float __fastcall GetScale__8CreatureFv(struct GameThingWithPos* this) asm("?GetScale@Creature@@UAEMXZ");
// win1.41 0047b160 mac 101d4a80 Creature::SetScale(float)
void __fastcall SetScale__8CreatureFf(struct GameThingWithPos* this, const void* edx, float param_1) asm("?SetScale@Creature@@UAEXM@Z");
// win1.41 0047d810 mac 101cf1e0 Creature::SetSpeedInMetres(float, int)
void __fastcall SetSpeedInMetres__8CreatureFfi(struct GameThingWithPos* this, const void* edx, float param_1, int param_2) asm("?SetSpeedInMetres@Creature@@UAEXMH@Z");
// win1.41 0047c630 mac 101d25d0 Creature::GetRunningSpeedInMetres(void)
float __fastcall GetRunningSpeedInMetres__8CreatureFv(struct GameThingWithPos* this) asm("?GetRunningSpeedInMetres@Creature@@UAEMXZ");
// win1.41 0047c640 mac 101d2580 Creature::GetDefaultSpeedInMetres(void)
float __fastcall GetDefaultSpeedInMetres__8CreatureFv(struct GameThingWithPos* this) asm("?GetDefaultSpeedInMetres@Creature@@UAEMXZ");
// win1.41 0047de80 mac 101ce5d0 Creature::SetHeight(float)
void __fastcall SetHeight__8CreatureFf(struct GameThingWithPos* this, const void* edx, float param_1) asm("?SetHeight@Creature@@UAEXM@Z");
// win1.41 004f8b30 mac 1028a9c0 Creature::GetPSysBeamTargetPos(LHPoint *)
void __fastcall GetPSysBeamTargetPos__8CreatureFP7LHPoint(struct GameThingWithPos* this, const void* edx, struct LHPoint* param_1) asm("?GetPSysBeamTargetPos@Creature@@UAEXPAULHPoint@@@Z");
// win1.41 00477ac0 mac 101daa00 Creature::GetMovementDirection(LHPoint *)
void __fastcall GetMovementDirection__8CreatureFP7LHPoint(struct GameThingWithPos* this, const void* edx, struct LHPoint* param_1) asm("?GetMovementDirection@Creature@@UAEXPAULHPoint@@@Z");
// win1.41 00479e40 mac 101d6a50 Creature::IsMoving( const(void))
bool __fastcall IsMoving__8CreatureCFv(const struct GameThingWithPos* this) asm("?IsMoving@Creature@@UBE_NXZ");
// win1.41 00477e10 mac 101da2c0 Creature::GetImpressiveType(void)
enum IMPRESSIVE_TYPE __fastcall GetImpressiveType__8CreatureFv(struct GameThingWithPos* this) asm("?GetImpressiveType@Creature@@UAE?AW4IMPRESSIVE_TYPE@@XZ");
// win1.41 0047b150 mac 101d4b00 Creature::GetImpressiveIntensity(IMPRESSIVE_TYPE)
float __fastcall GetImpressiveIntensity__8CreatureF15IMPRESSIVE_TYPE(struct GameThingWithPos* this, const void* edx, enum IMPRESSIVE_TYPE param_1) asm("?GetImpressiveIntensity@Creature@@UAEMW4IMPRESSIVE_TYPE@@@Z");
// win1.41 0047b200 mac 101d4730 Creature::GetImpressiveValue(Living *, Reaction *)
float __fastcall GetImpressiveValue__8CreatureFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2) asm("?GetImpressiveValue@Creature@@UAEMPAVLiving@@PAVReaction@@@Z");
// win1.41 004e4310 mac 105e5880 Creature::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichAngerAppliesTo__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichAngerAppliesTo@Creature@@UAE_NPAVCreature@@@Z");
// win1.41 00474020 mac 101e30a0 Creature::IsActivityObjectWhichCompassionAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichCompassionAppliesTo__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichCompassionAppliesTo@Creature@@UAE_NPAVCreature@@@Z");
// win1.41 00474030 mac 101e3100 Creature::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichPlayfulnessAppliesTo__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichPlayfulnessAppliesTo@Creature@@UAE_NPAVCreature@@@Z");
// win1.41 004c5e50 mac 10231ab0 Creature::FalseFunction(void)
uint32_t __fastcall FalseFunction__8CreatureFv(struct GameThingWithPos* this) asm("?FalseFunction@Creature@@UAEIXZ");
// win1.41 00473fd0 mac 101e2f50 Creature::IsSuitableForCreatureActivity(void)
uint32_t __fastcall IsSuitableForCreatureActivity__8CreatureFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureActivity@Creature@@UAEIXZ");
// win1.41 00474050 mac 101e31b0 Creature::CanBeEatenByCreature(Creature *)
uint32_t __fastcall CanBeEatenByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeEatenByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004e4280 mac 105e5900 Creature::CanBeAttackedByCreature(Creature *)
uint32_t __fastcall CanBeAttackedByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeAttackedByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004740b0 mac 101e33a0 Creature::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 00474070 mac 101e3250 Creature::CanBePlayedWithByCreature(Creature *)
uint32_t __fastcall CanBePlayedWithByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePlayedWithByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 00474060 mac 101e3200 Creature::CanBeBefriendedByCreature(Creature *)
uint32_t __fastcall CanBeBefriendedByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeBefriendedByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 00474040 mac 101e3160 Creature::CanBeSleptNextToByCreature(Creature *)
uint32_t __fastcall CanBeSleptNextToByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeSleptNextToByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004e4cd0 mac 105e3b70 Creature::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004e3f10 mac 105e6580 Creature::CanBeKissedByCreature(Creature *)
uint32_t __fastcall CanBeKissedByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeKissedByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004e3c70 mac 105e6d70 Creature::CanBeStompedOnByCreature(Creature *)
uint32_t __fastcall CanBeStompedOnByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStompedOnByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 00473ff0 mac 101e2fe0 Creature::CanBeExaminedByCreature(Creature *)
uint32_t __fastcall CanBeExaminedByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeExaminedByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004740a0 mac 101e3320 Creature::CanBeFoughtByCreature(Creature *)
uint32_t __fastcall CanBeFoughtByCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFoughtByCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004792f0 mac 101d83c0 Creature::IsDominantCreature(Creature *)
uint32_t __fastcall IsDominantCreature__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsDominantCreature@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004e4430 mac 105e55b0 Creature::IsCreatureAvailableForJointActivity(Creature *)
uint32_t __fastcall IsCreatureAvailableForJointActivity__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsCreatureAvailableForJointActivity@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004e4450 mac 105e5530 Creature::IsCreatureNotAvailableForJointActivity(Creature *)
uint32_t __fastcall IsCreatureNotAvailableForJointActivity__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsCreatureNotAvailableForJointActivity@Creature@@UAEIPAVCreature@@@Z");
// win1.41 004e45e0 mac 105e5000 Creature::IsCreatureWhoSeemsFriendly(Creature *)
uint32_t __fastcall IsCreatureWhoSeemsFriendly__8CreatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsCreatureWhoSeemsFriendly@Creature@@UAEIPAVCreature@@@Z");
// win1.41 00473f80 mac 101e2e10 Creature::GetCreatureMimicType(void)
uint32_t __fastcall GetCreatureMimicType__8CreatureFv(struct GameThingWithPos* this) asm("?GetCreatureMimicType@Creature@@UAEIXZ");
// win1.41 004d1b30 mac 10243070 Creature::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__8CreatureFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@Creature@@UAEMXZ");
// win1.41 00477e30 mac 101da220 Creature::IsObjectTurningTooFastForCameraToFollowSmoothly(void)
uint32_t __fastcall IsObjectTurningTooFastForCameraToFollowSmoothly__8CreatureFv(struct GameThingWithPos* this) asm("?IsObjectTurningTooFastForCameraToFollowSmoothly@Creature@@UAEIXZ");
// win1.41 0063bad0 mac 103da330 Creature::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void __fastcall CalculateWhereIWillBeAfterNSeconds__8CreatureFfP7LHPoint(struct GameThingWithPos* this, const void* edx, float param_1, struct LHPoint* param_2) asm("?CalculateWhereIWillBeAfterNSeconds@Creature@@UAEXMPAULHPoint@@@Z");
// win1.41 00477f50 mac 101d9f50 Creature::GetHeight(void)
float __fastcall GetHeight__8CreatureFv(struct GameThingWithPos* this) asm("?GetHeight@Creature@@UAEMXZ");
// win1.41 004794a0 mac 101d7fc0 Creature::IsReadyForNewScriptAction(void)
uint32_t __fastcall IsReadyForNewScriptAction__8CreatureFv(struct GameThingWithPos* this) asm("?IsReadyForNewScriptAction@Creature@@UAEIXZ");
// win1.41 0047d2c0 mac 101cfdf0 Creature::SetControlledByScript(int)
void __fastcall SetControlledByScript__8CreatureFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?SetControlledByScript@Creature@@UAEXH@Z");
// win1.41 0047d8f0 mac 101cef90 Creature::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__8CreatureFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@Creature@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 0047d940 mac 101cef30 Creature::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__8CreatureFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@Creature@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 0047c8b0 mac 101d10b0 Creature::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__8CreatureFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Creature@@UAEIXZ");
// win1.41 00477ec0 mac 101da1c0 Creature::GetFacingDirection(void)
float __fastcall GetFacingDirection__8CreatureFv(struct GameThingWithPos* this) asm("?GetFacingDirection@Creature@@UAEMXZ");
// win1.41 004f6760 mac 10289e50 Creature::SetFocus(LHPoint const &)
void __fastcall SetFocus__8CreatureFRC7LHPoint(struct Object* this, const void* edx, const struct LHPoint* param_1) asm("?SetFocus@Creature@@UAEXPBULHPoint@@@Z");
// win1.41 00473f50 mac 101e2d40 Creature::IsReachable(void)
bool __fastcall IsReachable__8CreatureFv(struct Object* this) asm("?IsReachable@Creature@@UAE_NXZ");
// win1.41 00479e50 mac 101d6990 Creature::MoveMapObject(MapCoords const &)
int __fastcall MoveMapObject__8CreatureFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?MoveMapObject@Creature@@UAEHPBUMapCoords@@@Z");
// win1.41 0047dd00 mac 101ce700 Creature::ReduceLife(float, GPlayer *)
void __fastcall ReduceLife__8CreatureFfP7GPlayer(struct Object* this, const void* edx, float param_1, struct GPlayer* param_2) asm("?ReduceLife@Creature@@UAEXMPAVGPlayer@@@Z");
// win1.41 0047de20 mac 101ce640 Creature::IncreaseLife(float)
void __fastcall IncreaseLife__8CreatureFf(struct Object* this, const void* edx, float param_1) asm("?IncreaseLife@Creature@@UAEXM@Z");
// win1.41 00478c00 mac 101d8e40 Creature::FillInEffectDefenceMultiplier(EffectNumbers &)
void __fastcall FillInEffectDefenceMultiplier__8CreatureFR13EffectNumbers(struct Object* this, const void* edx, struct EffectNumbers* param_1) asm("?FillInEffectDefenceMultiplier@Creature@@UAEXAAUEffectNumbers@@@Z");
// win1.41 00478c80 mac 101d89d0 Creature::ApplyEffect(EffectValues &, int)
void __fastcall ApplyEffect__8CreatureFR12EffectValuesi(struct Object* this, const void* edx, struct EffectValues* param_1, int param_2) asm("?ApplyEffect@Creature@@UAEXAAVEffectValues@@H@Z");
// win1.41 00476f70 mac 101dbeb0 Creature::DestroyedByEffect(GPlayer *, float)
uint32_t __fastcall DestroyedByEffect__8CreatureFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* param_1, float param_2) asm("?DestroyedByEffect@Creature@@UAEIPAVGPlayer@@M@Z");
// win1.41 00479020 mac 101d8950 Creature::ApplySingleEffect(EFFECT_TYPE, float, GameThing *, MapCoords const &)
void __fastcall ApplySingleEffect__8CreatureF11EFFECT_TYPEfP9GameThingRC9MapCoords(struct Object* this, const void* edx, enum EFFECT_TYPE param_1, float param_2, struct GameThing* param_3, const struct MapCoords* param_4) asm("?ApplySingleEffect@Creature@@UAEXW4EFFECT_TYPE@@MPAVGameThing@@PBUMapCoords@@@Z");
// win1.41 00517910 mac 100c9670 Creature::Draw(void)
void __fastcall Draw__8CreatureFv(struct Object* this) asm("?Draw@Creature@@UAEXXZ");
// win1.41 00472dc0 mac 101e16f0 Creature::ProcessState(void)
uint32_t __fastcall ProcessState__8CreatureFv(struct Object* this) asm("?ProcessState@Creature@@UAEIXZ");
// win1.41 00477ef0 mac 101da120 Creature::GetProjectileSpeed(void)
float __fastcall GetProjectileSpeed__8CreatureFv(struct Object* this) asm("?GetProjectileSpeed@Creature@@UAEMXZ");
// win1.41 00473fe0 mac 101e2fa0 Creature::CanBePickedUp(void)
bool __fastcall CanBePickedUp__8CreatureFv(struct Object* this) asm("?CanBePickedUp@Creature@@UAE_NXZ");
// win1.41 0047cd60 mac 101d06d0 Creature::GetWeight(void)
float __fastcall GetWeight__8CreatureFv(struct Object* this) asm("?GetWeight@Creature@@UAEMXZ");
// win1.41 004f8a10 mac 1028ac60 Creature::CanBeSuckedIntoVortex(LandscapeVortex *)
bool __fastcall CanBeSuckedIntoVortex__8CreatureFP15LandscapeVortex(struct Object* this, const void* edx, struct LandscapeVortex* param_1) asm("?CanBeSuckedIntoVortex@Creature@@UAE_NPAVLandscapeVortex@@@Z");
// win1.41 00476e10 mac 101dc300 Creature::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t __fastcall ValidForLockedSelectProcess__8CreatureFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForLockedSelectProcess@Creature@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00476e70 mac 101dc260 Creature::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyStartLockedSelect__8CreatureFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyStartLockedSelect@Creature@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00476eb0 mac 101dc160 Creature::IsReadyForNetworkUnfriendlyLockedSelect(void)
uint32_t __fastcall IsReadyForNetworkUnfriendlyLockedSelect__8CreatureFv(struct Object* this) asm("?IsReadyForNetworkUnfriendlyLockedSelect@Creature@@UAEIXZ");
// win1.41 00476ec0 mac 101dc100 Creature::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
uint32_t __fastcall NetworkUnfriendlyLockedSelect__8CreatureFP21ControlHandUpdateInfo(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1) asm("?NetworkUnfriendlyLockedSelect@Creature@@UAEIPAUControlHandUpdateInfo@@@Z");
// win1.41 00476ed0 mac 101dc060 Creature::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall GetReadyForNetworkUnfriendlyEndLockedSelect__8CreatureFv(struct Object* this) asm("?GetReadyForNetworkUnfriendlyEndLockedSelect@Creature@@UAEIXZ");
// win1.41 00476f00 mac 101dbf90 Creature::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall IsReadyForNetworkUnfriendlyEndLockedSelect__8CreatureFv(struct Object* this) asm("?IsReadyForNetworkUnfriendlyEndLockedSelect@Creature@@UAEIXZ");
// win1.41 00476f60 mac 101dbf40 Creature::NetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyEndLockedSelect__8CreatureFv(struct Object* this) asm("?NetworkUnfriendlyEndLockedSelect@Creature@@UAEIXZ");
// win1.41 00476e90 mac 101dc1c0 Creature::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
uint32_t __fastcall NetworkFriendlyEndLockedSelect__8CreatureFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyEndLockedSelect@Creature@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00473f60 mac 101e2d80 Creature::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__8CreatureFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@Creature@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0047a330 mac 101d6240 Creature::InterfaceValidToGiveObject(GInterfaceStatus *, Object *)
uint32_t __fastcall InterfaceValidToGiveObject__8CreatureFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?InterfaceValidToGiveObject@Creature@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 0047a320 mac 101d63d0 Creature::InterfaceGiveObject(GInterfaceStatus *, Object *)
uint32_t __fastcall InterfaceGiveObject__8CreatureFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?InterfaceGiveObject@Creature@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 00476dc0 mac 101dc510 Creature::ValidToSelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToSelectFightThisToMapCoord__8CreatureFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ValidToSelectFightThisToMapCoord@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 00476dd0 mac 101dc480 Creature::ValidToApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToApplyFightThisToMapCoord__8CreatureFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ValidToApplyFightThisToMapCoord@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 004c6460 mac 10233f70 Creature::SelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall SelectFightThisToMapCoord__8CreatureFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?SelectFightThisToMapCoord@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 004c64d0 mac 10233ea0 Creature::ApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ApplyFightThisToMapCoord__8CreatureFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ApplyFightThisToMapCoord@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 00476df0 mac 101dc3f0 Creature::ValidToFightThisToObject(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToFightThisToObject__8CreatureFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ValidToFightThisToObject@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z");
// win1.41 004c5fe0 mac 102345e0 Creature::FightThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall FightThisToObject__8CreatureFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?FightThisToObject@Creature@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 0047b1e0 mac inlined Creature::CanBeDestroyedBySpell_1(Spell *)
uint32_t __fastcall CanBeDestroyedBySpell_1__8CreatureFP5Spell(struct Object* this, const void* edx, struct Spell* param_1) asm("?CanBeDestroyedBySpell@Creature@@UAEIPAVSpell@@@Z");
// win1.41 00479b80 mac 101d6f90 Creature::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__8CreatureFv(struct Object* this) asm("?GetPhysicsConstantsType@Creature@@UAEIXZ");
// win1.41 00479b90 mac 101d6db0 Creature::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__8CreatureFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@Creature@@UAEXPAUPhysOb@@@Z");
// win1.41 00479970 mac 101d72a0 Creature::GetBoundingSphere(LHPoint &, float &)
void __fastcall GetBoundingSphere__8CreatureFR7LHPointRf(struct Object* this, const void* edx, struct LHPoint* param_1, float* param_2) asm("?GetBoundingSphere@Creature@@UAEXAAULHPoint@@AAM@Z");
// win1.41 00479d20 mac 101d6d20 Creature::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__8CreatureFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Creature@@UAE_NXZ");
// win1.41 00479990 mac 101d6fd0 Creature::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__8CreatureFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Creature@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00479d10 mac 101d6d70 Creature::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__8CreatureFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Creature@@UAE_NXZ");
// win1.41 0047d4b0 mac 101cf930 Creature::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__8CreatureFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@Creature@@UAE_NPAVCreature@@@Z");
// win1.41 0047d500 mac 101cf7f0 Creature::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void __fastcall AddToRoutePlan__8CreatureFP8RPHolderP8CreatureiPFi7Point2Dfi_v(struct Object* this, const void* edx, struct RPHolder* param_1, struct Creature* param_2, int param_3, void (__cdecl* param_4)(int param_1, struct Point2D param_2, float param_3, int param_4)) asm("?AddToRoutePlan@Creature@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z");
// win1.41 00477f00 mac 101da0d0 Creature::IsScary(void)
bool __fastcall IsScary__8CreatureFv(struct Object* this) asm("?IsScary@Creature@@UAE_NXZ");
// win1.41 00477ee0 mac 101da160 Creature::GetFacingPitch(void)
float __fastcall GetFacingPitch__8CreatureFv(struct Object* this) asm("?GetFacingPitch@Creature@@UAEMXZ");
// win1.41 004770d0 mac 101dbbc0 Creature::SetHeadPos(MapCoords *)
void __fastcall SetHeadPos__8CreatureFP9MapCoords(struct Object* this, const void* edx, struct MapCoords* param_1) asm("?SetHeadPos@Creature@@UAEXPAUMapCoords@@@Z");
// win1.41 00477f70 mac 101d9d60 Creature::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__8CreatureFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Creature@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 00477860 mac 101dae90 Creature::GetNearestEdgeOfObject(Object *)
void __fastcall GetNearestEdgeOfObject__8CreatureFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?GetNearestEdgeOfObject@Creature@@UAEXPAVObject@@@Z");
// win1.41 004753c0 mac 101de710 Creature::GetDestPos(void)
struct MapCoords* __fastcall GetDestPos__8CreatureFv(struct MobileWallHug* this) asm("?GetDestPos@Creature@@UAEPAUMapCoords@@XZ");
// win1.41 004753d0 mac 101de690 Creature::GetFinalDestPos(MapCoords *)
struct MapCoords* __fastcall GetFinalDestPos__8CreatureFP9MapCoords(struct Living* this, const void* edx, struct MapCoords* param_1) asm("?GetFinalDestPos@Creature@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 004f0560 mac 1027a2e0 Creature::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__8CreatureFv(struct Living* this) asm("?DecideWhatToDo@Creature@@UAE_NXZ");
// win1.41 0047b1a0 mac 101d49f0 Creature::GetAge(void)
uint32_t __fastcall GetAge__8CreatureFv(struct Living* this) asm("?GetAge@Creature@@UAEIXZ");
// win1.41 0047b1b0 mac 101d49b0 Creature::SetAge(unsigned long)
void __fastcall SetAge__8CreatureFUl(struct Living* this, const void* edx, uint32_t param_1) asm("?SetAge@Creature@@UAEXI@Z");
// win1.41 00473f00 mac inlined Creature::CallIntoAnimationFunction(VILLAGER_STATES)
int __fastcall CallIntoAnimationFunction__8CreatureF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallIntoAnimationFunction@Creature@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00473f10 mac inlined Creature::CallOutofAnimationFunction(VILLAGER_STATES)
int __fastcall CallOutofAnimationFunction__8CreatureF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallOutofAnimationFunction@Creature@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00473f40 mac inlined Creature::IsFinalState(VILLAGER_STATES)
bool __fastcall IsFinalState__8CreatureF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsFinalState@Creature@@UAE_NW4VILLAGER_STATES@@@Z");
// win1.41 00473f90 mac inlined Creature::SetAnim__i(int)
void __fastcall SetAnim__i__8CreatureFi(struct Living* this, const void* edx, int param_1) asm("?SetAnim__i@Creature@@UAEXH@Z");
// win1.41 00473ef0 mac 101e2be0 Creature::GetAnimId(void)
enum ANIM_LIST __fastcall GetAnimId__8CreatureFv(struct Living* this) asm("?GetAnimId@Creature@@UAE?AW4ANIM_LIST@@XZ");
// win1.41 00473fa0 mac inlined Creature::CallExitStateFunction(VILLAGER_STATES)
uint32_t __fastcall CallExitStateFunction__8CreatureF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallExitStateFunction@Creature@@UAEIW4VILLAGER_STATES@@@Z");
// win1.41 00473fc0 mac inlined Creature::CallEntryStateFunctionUcUc(VILLAGER_STATES, VILLAGER_STATES)
uint32_t __fastcall CallEntryStateFunction__UcUc__8CreatureF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2) asm("?CallEntryStateFunctionUcUc@Creature@@UAEIW4VILLAGER_STATES@@0@Z");
// win1.41 00473fb0 mac inlined Creature::CallEntryStateFunctionUc(VILLAGER_STATES)
uint32_t __fastcall CallEntryStateFunction__Uc__8CreatureF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallEntryStateFunctionUc@Creature@@UAEIW4VILLAGER_STATES@@@Z");
// win1.41 0047c670 mac 101d2490 Creature::IsDancing(void)
bool __fastcall IsDancing__8CreatureFv(struct Living* this) asm("?IsDancing@Creature@@UAE_NXZ");
// win1.41 004f2820 mac 1027db00 Creature::IsAvailableForReaction(REACTION)
bool __fastcall IsAvailableForReaction__8CreatureF8REACTION(struct Living* this, const void* edx, enum REACTION param_1) asm("?IsAvailableForReaction@Creature@@UAE_NW4REACTION@@@Z");
// win1.41 004f2780 mac 1027dca0 Creature::UpdateHowImpressed(Reaction *, int)
void __fastcall UpdateHowImpressed__8CreatureFP8Reactioni(struct Living* this, const void* edx, struct Reaction* param_1, int param_2) asm("?UpdateHowImpressed@Creature@@UAEXPAVReaction@@H@Z");
// win1.41 004f2680 mac inlined Creature::AddReaction(Reaction *, VILLAGER_STATES)
void __fastcall AddReaction__8CreatureFP8Reaction15VILLAGER_STATES(struct Living* this, const void* edx, struct Reaction* param_1, enum VILLAGER_STATES param_2) asm("?AddReaction@Creature@@UAEXPAVReaction@@W4VILLAGER_STATES@@@Z");
// win1.41 004f26d0 mac 1027ddf0 Creature::StartReacting(REACTION, GameThingWithPos *, Reaction *)
void __fastcall StartReacting__8CreatureF8REACTIONP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, enum REACTION param_1, struct GameThingWithPos* param_2, struct Reaction* param_3) asm("?StartReacting@Creature@@UAEXW4REACTION@@PAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00477f30 mac 101da020 Creature::ResetStateAfterReacting(void)
void __fastcall ResetStateAfterReacting__8CreatureFv(struct Living* this) asm("?ResetStateAfterReacting@Creature@@UAEXXZ");
// win1.41 004f2b00 mac 1027d490 Creature::SetupFleeFromObject(GameThingWithPos *, Reaction *)
void __fastcall SetupFleeFromObject__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupFleeFromObject@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f2b40 mac 1027d3d0 Creature::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
void __fastcall SetupLookAtNiceSpell__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupLookAtNiceSpell@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f2ce0 mac 1027cef0 Creature::SetupReactToCreature(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToCreature__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToCreature@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f2de0 mac 1027cd30 Creature::SetupReactToFood(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFood__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFood@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f2e50 mac 1027cbf0 Creature::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicTree__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicTree@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f35a0 mac 1027bc30 Creature::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFlyingObject__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFlyingObject@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f2f70 mac 1027c710 Creature::SetupReactToFire(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFire__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFire@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f2ea0 mac 1027ca50 Creature::SetupReactToBall(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToBall__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToBall@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f3090 mac 1027c690 Creature::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicShield__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicShield@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f36b0 mac 1027b920 Creature::SetupReactToHandPickUp(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToHandPickUp__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToHandPickUp@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f3820 mac 1027b720 Creature::SetupReactToHandUsingTotem(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToHandUsingTotem__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToHandUsingTotem@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f3930 mac 1027b440 Creature::SetupReactToObjectCrushed(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToObjectCrushed__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToObjectCrushed@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f3a00 mac 1027b2e0 Creature::SetupReactToFight(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFight__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFight@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f3a60 mac 1027b080 Creature::SetupReactToTeleport(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToTeleport__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToTeleport@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f2b80 mac 1027d2e0 Creature::SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToHandPuttingStuffInStoragePit__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToHandPuttingStuffInStoragePit@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f3b50 mac 1027af10 Creature::SetupReactToDeath(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToDeath__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToDeath@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f3b90 mac 1027ae30 Creature::SetupReactToFainting(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFainting__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFainting@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f3bd0 mac 1027ad40 Creature::SetupReactToConfused(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToConfused__8CreatureFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToConfused@Creature@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004f2ab0 mac 1027d550 Creature::FleeFromSpellPriority(Reaction *, Reaction *)
uint8_t __fastcall FleeFromSpellPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?FleeFromSpellPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f2bf0 mac 1027d060 Creature::ReactToCreaturePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToCreaturePriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToCreaturePriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f2d90 mac 1027ce00 Creature::ReactToFoodPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFoodPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFoodPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f2e20 mac 1027cc70 Creature::ReactToMagicTreePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicTreePriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicTreePriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f3480 mac 1027bd70 Creature::ReactToFlyingObjectPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFlyingObjectPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFlyingObjectPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f2e70 mac 1027cb30 Creature::ReactToBallPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToBallPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToBallPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f2ee0 mac 1027c920 Creature::ReactToFirePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFirePriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFirePriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f3620 mac 1027bac0 Creature::ReactToHandPickUpPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToHandPickUpPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToHandPickUpPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f37d0 mac 1027b830 Creature::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToHandUsingTotemPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToHandUsingTotemPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f3870 mac 1027b560 Creature::ReactToObjectCrushedPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToObjectCrushedPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToObjectCrushedPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f3990 mac 1027b340 Creature::ReactToFightPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFightPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFightPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f3a10 mac 1027b200 Creature::ReactToTeleportPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToTeleportPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToTeleportPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f2bc0 mac 1027d200 Creature::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToHandPuttingStuffInStoragePitPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToHandPuttingStuffInStoragePitPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f3b20 mac 1027afe0 Creature::ReactToDeathPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToDeathPriority__8CreatureFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToDeathPriority@Creature@@UAEEPAVReaction@@0@Z");
// win1.41 004f29c0 mac 1027d840 Creature::StandardNumGameTurnsToReactFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall StandardNumGameTurnsToReactFunction__8CreatureFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?StandardNumGameTurnsToReactFunction@Creature@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 004f2a20 mac 1027d730 Creature::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall StandardNumGameTurnsBeforeReactingAgainFunction__8CreatureFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?StandardNumGameTurnsBeforeReactingAgainFunction@Creature@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 004f2a70 mac 1027d6b0 Creature::NumGameTurnsToReactToCreatureFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsToReactToCreatureFunction__8CreatureFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsToReactToCreatureFunction@Creature@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 004f2a90 mac 1027d620 Creature::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsBeforeReactingAgainToCreatureFunction__8CreatureFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsBeforeReactingAgainToCreatureFunction@Creature@@UAEIPAVGameThingWithPos@@IM@Z");

DECLARE_LH_LINKED_LIST(Creature);

struct Creed
{
  struct MobileObject super;  /* 0x0 */
};
static_assert(sizeof(struct Creed) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be6838 mac inlined Creed::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Creed asm("??_R0?AVCreed@@@8");
// win1.41 009ab4e8 mac inlined Creed::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Creed asm("??_R1A@?0A@A@Creed@@8");
// win1.41 009ab500 mac inlined Creed::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Creed asm("??_R2Creed@@8");
// win1.41 009ab520 mac inlined Creed::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Creed asm("??_R3Creed@@8");

// Override methods

// win1.41 0050b370 mac 100c01e0 Creed::_dt(void)
void __fastcall __dt__5CreedFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreed@@UAEPAXI@Z");
// win1.41 0050b3d0 mac 100c0600 Creed::ToBeDeleted(int)
void __fastcall ToBeDeleted__5CreedFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Creed@@UAEXH@Z");
// win1.41 0050b360 mac 100c0320 Creed::GetDebugText(void)
char* __fastcall GetDebugText__5CreedFv(struct GameThing* this) asm("?GetDebugText@Creed@@UAEPADXZ");
// win1.41 0050b4e0 mac 100c03b0 Creed::Load(GameOSFile &)
uint32_t __fastcall Load__5CreedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Creed@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050b4c0 mac 100c0410 Creed::Save(GameOSFile &)
uint32_t __fastcall Save__5CreedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Creed@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050b350 mac 100c02f0 Creed::GetSaveType(void)
uint32_t __fastcall GetSaveType__5CreedFv(struct GameThing* this) asm("?GetSaveType@Creed@@UAEIXZ");
// win1.41 0050b4a0 mac 100c0470 Creed::SetScale(float)
void __fastcall SetScale__5CreedFf(struct GameThingWithPos* this, const void* edx, float param_1) asm("?SetScale@Creed@@UAEXM@Z");
// win1.41 0050b500 mac 100c0360 Creed::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__5CreedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@Creed@@UAEIPAVCreature@@@Z");
// win1.41 0050b420 mac 100c04d0 Creed::Create3DObject(void)
void __fastcall Create3DObject__5CreedFv(struct Object* this) asm("?Create3DObject@Creed@@UAEXXZ");
// win1.41 005186a0 mac 100c8cf0 Creed::Draw(void)
void __fastcall Draw__5CreedFv(struct Object* this) asm("?Draw@Creed@@UAEXXZ");
// win1.41 005186d0 mac 100c8c40 Creed::DrawOutOfMap(bool)
void __fastcall DrawOutOfMap__5CreedFb(struct Object* this, const void* edx, bool param_1) asm("?DrawOutOfMap@Creed@@UAEX_N@Z");
// win1.41 0050b3a0 mac 100c06a0 Creed::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__5CreedFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Creed@@UAEXABUMapCoords@@@Z");
// win1.41 0050b330 mac 100c0270 Creed::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__5CreedFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Creed@@UAE_NXZ");
// win1.41 0050b340 mac 100c02b0 Creed::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__5CreedFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Creed@@UAE_NXZ");

#endif /* BW1_DECOMP_CREATURE_INCLUDED_H */
