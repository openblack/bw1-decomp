#ifndef BW1_DECOMP_TOTEM_STATUE_INCLUDED_H
#define BW1_DECOMP_TOTEM_STATUE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct Base;
struct ControlHandUpdateInfo;
struct Creature;
struct EffectValues;
struct GInterfaceStatus;
struct GPlayer;
struct GTotemStatueInfo;
struct Game3DObject;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct Object;
struct PhysicsObject;
struct Town;
struct TownCentre;
struct WorshipSite;

struct TotemStatue
{
  struct MultiMapFixed super;  /* 0x0 */
  struct TownCentre* town_centre;  /* 0x7c */
  float worship_speed;  /* 0x80 */
  uint32_t field_0x84;
  float worship_speed_2;
  struct Game3DObject* game_3d_object;
  float field_0x90;
  float field_0x94;
  uint32_t field_0x98;
  struct Zoomer zoomer;
  uint32_t field_0xcc;
  uint32_t field_0xd0;
  uint32_t field_0xd4;
};
static_assert(sizeof(struct TotemStatue) == 0xd8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd560 mac inlined TotemStatue::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11TotemStatue asm("??_R0?AVTotemStatue@@@8");
// win1.41 009ae798 mac inlined TotemStatue::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11TotemStatue asm("??_R1A@?0A@A@TotemStatue@@8");
// win1.41 009ae7b0 mac inlined TotemStatue::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11TotemStatue asm("??_R2TotemStatue@@8");
// win1.41 009ae7d0 mac inlined TotemStatue::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11TotemStatue asm("??_R3TotemStatue@@8");
// win1.41 008e0298 mac 107871cc TotemStatue::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11TotemStatue asm("??_R4TotemStatue@@6B@");
// win1.41 008e029c mac 106f7d68 TotemStatue::`vftable'
extern const struct MultiMapFixedVftable __vt__11TotemStatue asm("??_7TotemStatue@@6B@");

// Static methods

// win1.41 00737cc0 mac 10545210 TotemStatue::Create(TownCentre *)
struct TotemStatue* __cdecl Create__11TotemStatueFP10TownCentre(struct TownCentre* this) asm("?Create@TotemStatue@@SAPAV1@PAVTownCentre@@@Z");

// Constructors

// win1.41 00737b20 mac 10545880 TotemStatue::TotemStatue(TownCentre *, GTotemStatueInfo const *)
struct TotemStatue* __fastcall __ct__11TotemStatueFP10TownCentrePC16GTotemStatueInfo(struct TotemStatue* this, const void* edx, struct TownCentre* tc, struct GTotemStatueInfo* info) asm("??0TotemStatue@@QAE@PAVTownCentre@@PBVGTotemStatueInfo@@@Z");

// Non-virtual methods

// win1.41 00738260 mac 10544c70 TotemStatue::GetWorshipSpeed(void)
float __fastcall GetWorshipSpeed__11TotemStatueFv(struct TotemStatue* this) asm("?GetWorshipSpeed@TotemStatue@@QAEMXZ");
// win1.41 00738270 mac 10544b90 TotemStatue::SetWorshipPercentage(float)
void __fastcall SetWorshipPercentage__11TotemStatueFf(struct TotemStatue* this, const void* edx, float percentage) asm("?SetWorshipPercentage@TotemStatue@@QAEXM@Z");

// Override methods

// win1.41 00561180 mac 105457d0 TotemStatue::_dt(void)
void __fastcall __dt__11TotemStatueFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTotemStatue@@UAEPAXI@Z");
// win1.41 00737c20 mac 10545750 TotemStatue::ToBeDeleted(int)
void __fastcall ToBeDeleted__11TotemStatueFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@TotemStatue@@UAEXH@Z");
// win1.41 00738490 mac 10544a00 TotemStatue::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__11TotemStatueFv(struct GameThing* this) asm("?GetPlayer@TotemStatue@@UAEPAVGPlayer@@XZ");
// win1.41 00738480 mac 10544ac0 TotemStatue::GetTown(void)
struct Town* __fastcall GetTown__11TotemStatueFv(struct GameThing* this) asm("?GetTown@TotemStatue@@UAEPAVTown@@XZ");
// win1.41 00561170 mac 10543f30 TotemStatue::GetDebugText(void)
char* __fastcall GetDebugText__11TotemStatueFv(struct GameThing* this) asm("?GetDebugText@TotemStatue@@UAEPADXZ");
// win1.41 00738800 mac 10544120 TotemStatue::Load(GameOSFile &)
uint32_t __fastcall Load__11TotemStatueFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@TotemStatue@@UAEIAAVGameOSFile@@@Z");
// win1.41 00738700 mac 105442e0 TotemStatue::Save(GameOSFile &)
uint32_t __fastcall Save__11TotemStatueFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@TotemStatue@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561160 mac 10543ef0 TotemStatue::GetSaveType(void)
uint32_t __fastcall GetSaveType__11TotemStatueFv(struct GameThing* this) asm("?GetSaveType@TotemStatue@@UAEIXZ");
// win1.41 00738940 mac 105440b0 TotemStatue::ResolveLoad(void)
void __fastcall ResolveLoad__11TotemStatueFv(struct GameThing* this) asm("?ResolveLoad@TotemStatue@@UAEXXZ");
// win1.41 005610f0 mac 10543cd0 TotemStatue::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__11TotemStatueFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@TotemStatue@@UAEIXZ");
// win1.41 00561150 mac 10543eb0 TotemStatue::IsTotemStatue(void)
uint32_t __fastcall IsTotemStatue__11TotemStatueFv(struct GameThingWithPos* this) asm("?IsTotemStatue@TotemStatue@@UAEIXZ");
// win1.41 00561110 mac 10543d70 TotemStatue::CanBePlayedWithByCreature(Creature *)
uint32_t __fastcall CanBePlayedWithByCreature__11TotemStatueFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePlayedWithByCreature@TotemStatue@@UAEIPAVCreature@@@Z");
// win1.41 00561100 mac 10543d20 TotemStatue::CanBeImpressedByCreature(Creature *)
uint32_t __fastcall CanBeImpressedByCreature__11TotemStatueFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeImpressedByCreature@TotemStatue@@UAEIPAVCreature@@@Z");
// win1.41 004e3e70 mac 105e6740 TotemStatue::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
uint32_t __fastcall DoesTotemBelongToATownWhichIsVeryImpressedIndeed__11TotemStatueFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@TotemStatue@@UAEIPAVCreature@@@Z");
// win1.41 007384d0 mac 10544960 TotemStatue::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__11TotemStatueFv(struct GameThingWithPos* this) asm("?GetWorshipSite@TotemStatue@@UAEPAVWorshipSite@@XZ");
// win1.41 004e4110 mac 105e5eb0 TotemStatue::CanBeStolenByCreature(Creature *)
uint32_t __fastcall CanBeStolenByCreature__11TotemStatueFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStolenByCreature@TotemStatue@@UAEIPAVCreature@@@Z");
// win1.41 004e4170 mac 105e5d00 TotemStatue::IsTotemWithStealableSpell(Creature *)
uint32_t __fastcall IsTotemWithStealableSpell__11TotemStatueFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsTotemWithStealableSpell@TotemStatue@@UAEIPAVCreature@@@Z");
// win1.41 00738eb0 mac 10543f70 TotemStatue::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__11TotemStatueFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@TotemStatue@@UAEIXZ");
// win1.41 00561120 mac 10543dc0 TotemStatue::HandShouldFeelWithMeshIntersect(void)
uint32_t __fastcall HandShouldFeelWithMeshIntersect__11TotemStatueFv(struct Object* this) asm("?HandShouldFeelWithMeshIntersect@TotemStatue@@UAEIXZ");
// win1.41 00737c90 mac 10545510 TotemStatue::ReduceLife(float, GPlayer *)
void __fastcall ReduceLife__11TotemStatueFfP7GPlayer(struct Object* this, const void* edx, float param_1, struct GPlayer* param_2) asm("?ReduceLife@TotemStatue@@UAEXMPAVGPlayer@@@Z");
// win1.41 00737c60 mac 105455d0 TotemStatue::IncreaseLife(float)
void __fastcall IncreaseLife__11TotemStatueFf(struct Object* this, const void* edx, float param_1) asm("?IncreaseLife@TotemStatue@@UAEXM@Z");
// win1.41 00737f40 mac 10077f00 TotemStatue::Process(void)
uint32_t __fastcall Process__11TotemStatueFv(struct Object* this) asm("?Process@TotemStatue@@UAEIXZ");
// win1.41 005610e0 mac 10543c30 TotemStatue::GetMesh( const(void))
int __fastcall GetMesh__11TotemStatueCFv(const struct Object* this) asm("?GetMesh@TotemStatue@@UBEHXZ");
// win1.41 00738960 mac 10024bb0 TotemStatue::Draw(void)
void __fastcall Draw__11TotemStatueFv(struct Object* this) asm("?Draw@TotemStatue@@UAEXXZ");
// win1.41 00737d60 mac 10544f40 TotemStatue::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__11TotemStatueFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@TotemStatue@@UAEXABUMapCoords@@@Z");
// win1.41 00738500 mac 105447e0 TotemStatue::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t __fastcall ValidForLockedSelectProcess__11TotemStatueFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForLockedSelectProcess@TotemStatue@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00738590 mac 10544700 TotemStatue::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyStartLockedSelect__11TotemStatueFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyStartLockedSelect@TotemStatue@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 007385e0 mac 10544640 TotemStatue::NetworkUnfriendlyStartLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyStartLockedSelect__11TotemStatueFv(struct Object* this) asm("?NetworkUnfriendlyStartLockedSelect@TotemStatue@@UAEIXZ");
// win1.41 007386a0 mac 10544470 TotemStatue::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
uint32_t __fastcall NetworkUnfriendlyLockedSelect__11TotemStatueFP21ControlHandUpdateInfo(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1) asm("?NetworkUnfriendlyLockedSelect@TotemStatue@@UAEIPAUControlHandUpdateInfo@@@Z");
// win1.41 00738630 mac 10544580 TotemStatue::NetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyEndLockedSelect__11TotemStatueFv(struct Object* this) asm("?NetworkUnfriendlyEndLockedSelect@TotemStatue@@UAEIXZ");
// win1.41 00738690 mac 10544520 TotemStatue::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
uint32_t __fastcall NetworkFriendlyEndLockedSelect__11TotemStatueFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyEndLockedSelect@TotemStatue@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00561130 mac 10543e10 TotemStatue::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__11TotemStatueFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@TotemStatue@@UAEIPAVEffectValues@@@Z");
// win1.41 00737d40 mac 105451c0 TotemStatue::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__11TotemStatueFv(struct Object* this) asm("?InteractsWithPhysicsObjects@TotemStatue@@UAE_NXZ");
// win1.41 00737d50 mac 10545170 TotemStatue::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__11TotemStatueFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@TotemStatue@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00561140 mac 10543e60 TotemStatue::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__11TotemStatueFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@TotemStatue@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 00561090 mac 10543660 TotemStatue::IsRepaired(void)
bool __fastcall IsRepaired__11TotemStatueFv(struct MultiMapFixed* this) asm("?IsRepaired@TotemStatue@@UAE_NXZ");
// win1.41 005610b0 mac 1001a9a0 TotemStatue::IsBuilt(void)
bool __fastcall IsBuilt__11TotemStatueFv(struct MultiMapFixed* this) asm("?IsBuilt@TotemStatue@@UAE_NXZ");
// win1.41 00738130 mac 10544dd0 TotemStatue::AddToPlayer(void)
void __fastcall AddToPlayer__11TotemStatueFv(struct MultiMapFixed* this) asm("?AddToPlayer@TotemStatue@@UAEXXZ");

#endif /* BW1_DECOMP_TOTEM_STATUE_INCLUDED_H */
