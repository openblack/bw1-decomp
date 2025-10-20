#ifndef BW1_DECOMP_GAME_THING_INCLUDED_H
#define BW1_DECOMP_GAME_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base, struct BaseVftable */

// Forward Declares

struct Abode;
struct Creature;
struct GFootpath;
struct GFootpathLink;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct Living;
struct MapCoords;
struct MultiMapFixed;
struct PSysProcessInfo;
struct Spell;
struct SpellIcon;
struct SpellSeed;
struct Town;
struct Tree;
struct Villager;

enum GAME_THING_TYPE
{
  GAME_THING_TYPE_GFOOTPATH = 0x1,
  GAME_THING_TYPE_GFOOTPATH_LINK = 0x2,
  GAME_THING_TYPE_GFOOTPATH_NODE = 0x3,
  GAME_THING_TYPE_GFOOTPATH_LINK_SAVE = 0x4,
  GAME_THING_TYPE_GFOOTPATH_FINDER = 0x5,
  GAME_THING_TYPE_SPELL_FOREST = 0xf,
  GAME_THING_TYPE_CITADEL_HEART_1 = 0x3a,
  GAME_THING_TYPE_CITADEL_HEART_2 = 0x3b,
  GAME_THING_TYPE_POT = 0x58,
  GAME_THING_TYPE_GGAME = 0x6a,
  _GAME_THING_TYPE_COUNT = 0x6b
};
static_assert(sizeof(enum GAME_THING_TYPE) == 0x4, "Data type is of wrong size");

static const char* GAME_THING_TYPE_strs[_GAME_THING_TYPE_COUNT] = {
  "GAME_THING_TYPE_0x0",
  "GAME_THING_TYPE_GFOOTPATH",
  "GAME_THING_TYPE_GFOOTPATH_LINK",
  "GAME_THING_TYPE_GFOOTPATH_NODE",
  "GAME_THING_TYPE_GFOOTPATH_LINK_SAVE",
  "GAME_THING_TYPE_GFOOTPATH_FINDER",
  "GAME_THING_TYPE_0x6",
  "GAME_THING_TYPE_0x7",
  "GAME_THING_TYPE_0x8",
  "GAME_THING_TYPE_0x9",
  "GAME_THING_TYPE_0xa",
  "GAME_THING_TYPE_0xb",
  "GAME_THING_TYPE_0xc",
  "GAME_THING_TYPE_0xd",
  "GAME_THING_TYPE_0xe",
  "GAME_THING_TYPE_SPELL_FOREST",
  "GAME_THING_TYPE_0x10",
  "GAME_THING_TYPE_0x11",
  "GAME_THING_TYPE_0x12",
  "GAME_THING_TYPE_0x13",
  "GAME_THING_TYPE_0x14",
  "GAME_THING_TYPE_0x15",
  "GAME_THING_TYPE_0x16",
  "GAME_THING_TYPE_0x17",
  "GAME_THING_TYPE_0x18",
  "GAME_THING_TYPE_0x19",
  "GAME_THING_TYPE_0x1a",
  "GAME_THING_TYPE_0x1b",
  "GAME_THING_TYPE_0x1c",
  "GAME_THING_TYPE_0x1d",
  "GAME_THING_TYPE_0x1e",
  "GAME_THING_TYPE_0x1f",
  "GAME_THING_TYPE_0x20",
  "GAME_THING_TYPE_0x21",
  "GAME_THING_TYPE_0x22",
  "GAME_THING_TYPE_0x23",
  "GAME_THING_TYPE_0x24",
  "GAME_THING_TYPE_0x25",
  "GAME_THING_TYPE_0x26",
  "GAME_THING_TYPE_0x27",
  "GAME_THING_TYPE_0x28",
  "GAME_THING_TYPE_0x29",
  "GAME_THING_TYPE_0x2a",
  "GAME_THING_TYPE_0x2b",
  "GAME_THING_TYPE_0x2c",
  "GAME_THING_TYPE_0x2d",
  "GAME_THING_TYPE_0x2e",
  "GAME_THING_TYPE_0x2f",
  "GAME_THING_TYPE_0x30",
  "GAME_THING_TYPE_0x31",
  "GAME_THING_TYPE_0x32",
  "GAME_THING_TYPE_0x33",
  "GAME_THING_TYPE_0x34",
  "GAME_THING_TYPE_0x35",
  "GAME_THING_TYPE_0x36",
  "GAME_THING_TYPE_0x37",
  "GAME_THING_TYPE_0x38",
  "GAME_THING_TYPE_0x39",
  "GAME_THING_TYPE_CITADEL_HEART_1",
  "GAME_THING_TYPE_CITADEL_HEART_2",
  "GAME_THING_TYPE_0x3c",
  "GAME_THING_TYPE_0x3d",
  "GAME_THING_TYPE_0x3e",
  "GAME_THING_TYPE_0x3f",
  "GAME_THING_TYPE_0x40",
  "GAME_THING_TYPE_0x41",
  "GAME_THING_TYPE_0x42",
  "GAME_THING_TYPE_0x43",
  "GAME_THING_TYPE_0x44",
  "GAME_THING_TYPE_0x45",
  "GAME_THING_TYPE_0x46",
  "GAME_THING_TYPE_0x47",
  "GAME_THING_TYPE_0x48",
  "GAME_THING_TYPE_0x49",
  "GAME_THING_TYPE_0x4a",
  "GAME_THING_TYPE_0x4b",
  "GAME_THING_TYPE_0x4c",
  "GAME_THING_TYPE_0x4d",
  "GAME_THING_TYPE_0x4e",
  "GAME_THING_TYPE_0x4f",
  "GAME_THING_TYPE_0x50",
  "GAME_THING_TYPE_0x51",
  "GAME_THING_TYPE_0x52",
  "GAME_THING_TYPE_0x53",
  "GAME_THING_TYPE_0x54",
  "GAME_THING_TYPE_0x55",
  "GAME_THING_TYPE_0x56",
  "GAME_THING_TYPE_0x57",
  "GAME_THING_TYPE_POT",
  "GAME_THING_TYPE_0x59",
  "GAME_THING_TYPE_0x5a",
  "GAME_THING_TYPE_0x5b",
  "GAME_THING_TYPE_0x5c",
  "GAME_THING_TYPE_0x5d",
  "GAME_THING_TYPE_0x5e",
  "GAME_THING_TYPE_0x5f",
  "GAME_THING_TYPE_0x60",
  "GAME_THING_TYPE_0x61",
  "GAME_THING_TYPE_0x62",
  "GAME_THING_TYPE_0x63",
  "GAME_THING_TYPE_0x64",
  "GAME_THING_TYPE_0x65",
  "GAME_THING_TYPE_0x66",
  "GAME_THING_TYPE_0x67",
  "GAME_THING_TYPE_0x68",
  "GAME_THING_TYPE_0x69",
  "GAME_THING_TYPE_GGAME",
};

struct GameThingVftable
{
  struct BaseVftable super;  /* 0x0 */
  struct GPlayer* (__fastcall* GetPlayer)(struct GameThing* this);  /* 0x1c */
  void (__fastcall* SetPlayer)(struct GameThing* this, const void* edx, struct GPlayer* player);  /* 0x20 */
  float (__fastcall* CalculateInfluence)(struct GameThing* this, const void* edx, const struct MapCoords* param_1);
  void (__fastcall* RemoveDance)(struct GameThing* this);
  bool (__fastcall* IsAvailable)(struct GameThing* this);
  bool (__fastcall* IsCreature_0)(struct GameThing* this, const void* edx, struct Creature* param_1);  /* 0x30 */
  bool (__fastcall* IsCreature_1)(struct GameThing* this);
  bool (__fastcall* IsCreatureNotTooNear)(struct GameThing* this, const void* edx, struct Creature* param_1);
  float (__fastcall* GetDrawImportance)(struct GameThing* this);
  float (__fastcall* GetMaxAlignmentChangePerGameTurn)(struct GameThing* this);  /* 0x40 */
  bool (__fastcall* GetComputerSeen)(struct GameThing* this);
  struct Town* (__fastcall* GetTown)(struct GameThing* this);
  float (__fastcall* GetVillagerActivityDesire)(struct GameThing* this, const void* edx, struct Villager* param_1);
  uint32_t (__fastcall* SetVillagerActivity)(struct GameThing* this, const void* edx, struct Villager* param_1);  /* 0x50 */
  uint32_t (__fastcall* UpdateVillagerActivityEffect)(struct GameThing* this, const void* edx, struct Villager* param_1);
  void (__fastcall* MaintainSpell)(struct GameThing* this, const void* edx, uint32_t param_1, float param_2);
  void (__fastcall* UpdateSpellInfo)(struct GameThing* this, const void* edx, struct Spell* param_1, struct PSysProcessInfo* param_2);
  float (__fastcall* GetRadius)(struct GameThing* this);  /* 0x60 */
  float (__fastcall* Get2DRadius)(struct GameThing* this);
  struct GPlayer* (__fastcall* GetPlayerWhoLastPickedMeUp)(struct GameThing* this);
  struct GPlayer* (__fastcall* GetPlayerWhoLastDroppedMe)(struct GameThing* this);
  bool32_t (__fastcall* IsFootpathLink)(struct GameThing* this);  /* 0x70 */
  struct GFootpathLink* (__fastcall* GetFootpathLink)(struct GameThing* this);
  uint32_t (__fastcall* AddFootpathLink)(struct GameThing* this, const void* edx, struct GFootpath* param_1);
  uint32_t (__fastcall* GetNearestPathTo)(struct GameThing* this, const void* edx, const struct MapCoords* param_1, float param_2, int param_3);
  void (__fastcall* UseFootpathIfNecessary)(struct GameThing* this, const void* edx, struct Living* param_1, const struct MapCoords* param_2, unsigned char param_3);  /* 0x80 */
  uint32_t (__fastcall* AddFootpath)(struct GameThing* this, const void* edx, struct GFootpath* param_1);
  uint32_t (__fastcall* RemoveFootpath)(struct GameThing* this, const void* edx, struct GFootpath* param_1);
  uint32_t (__fastcall* JustAddResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool param_3);
  uint32_t (__fastcall* JustRemoveResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);  /* 0x90 */
  uint32_t (__fastcall* JustGetResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
  uint32_t (__fastcall* GetResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type);
  uint32_t (__fastcall* AddResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* coords, int param_6);
  uint32_t (__fastcall* RemoveResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4);  /* 0xa0 */
  struct Creature* (__fastcall* CastCreature)(struct GameThing* this);
  struct GPlayer* (__fastcall* CastPlayer)(struct GameThing* this);
  struct SpellSeed* (__fastcall* CastOneOffSpellSeed)(struct GameThing* this);
  struct Abode* (__fastcall* CastAbode)(struct GameThing* this);  /* 0xb0 */
  struct MultiMapFixed* (__fastcall* CastMultiMapFixed)(struct GameThing* this);
  struct SpellIcon* (__fastcall* CastSpellIcon)(struct GameThing* this);
  struct Tree* (__fastcall* CastTree)(struct GameThing* this);
  bool32_t (__fastcall* IsDeletedOnNewMap)(struct GameThing* this);  /* 0xc0 */
  uint16_t (__fastcall* GetNumberOfInstanceForGlobalList)(struct GameThing* this);
  float (__fastcall* GetTownArtifactValue)(struct GameThing* this);
  bool (__fastcall* CanBecomeArtifact)(struct GameThing* this);
  void (__fastcall* DrawInHand)(struct GameThing* this, const void* edx, struct GInterfaceStatus* param_1);  /* 0xd0 */
  bool (__fastcall* IsFunctional)(struct GameThing* this);
  char* (__fastcall* GetDebugText)(struct GameThing* this);
  uint32_t (__fastcall* GetSampleForAttack)(struct GameThing* this);
  uint32_t (__fastcall* GetGuidanceResourceType)(struct GameThing* this);  /* 0xe0 */
  uint32_t (__fastcall* GetShowNeedsPos)(struct GameThing* this, const void* edx, uint32_t param_1, struct MapCoords* param_2);
  uint32_t (__fastcall* Load)(struct GameThing* this, const void* edx, struct GameOSFile* file);
  uint32_t (__fastcall* Save)(struct GameThing* this, const void* edx, struct GameOSFile* file);
  uint32_t (__fastcall* GetSaveType)(struct GameThing* this);  /* 0xf0 */
  void (__fastcall* SaveExtraData)(struct GameThing* this, const void* edx, struct GameOSFile* file);
  void (__fastcall* ResolveLoad)(struct GameThing* this);
};
static_assert(sizeof(struct GameThingVftable) == 0xfc, "Data type is of wrong size");

union GameThingBase
{
  struct Base super;
  struct GameThingVftable* vftable;
};
static_assert(sizeof(union GameThingBase) == 0x8, "Data type is of wrong size");

struct GameThing
{
  union GameThingBase base;  /* 0x0 */
  uint16_t field_0x8;
  uint8_t field_0xa;
  uint16_t field_0xc;
  struct GameThing* next;  /* 0x10 */
};
static_assert(sizeof(struct GameThing) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c7f18 mac inlined GameThing::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GameThing asm("??_R0?AVGameThing@@@8");
// win1.41 009a63c0 mac inlined GameThing::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GameThing asm("??_R1A@?0A@A@GameThing@@8");
// win1.41 009b0510 mac inlined GameThing::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GameThing asm("??_R2GameThing@@8");
// win1.41 009b0520 mac inlined GameThing::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GameThing asm("??_R3GameThing@@8");
// win1.41 008fff4c mac 10731394 GameThing::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GameThing asm("??_R4GameThing@@6B@");
// win1.41 008fff50 mac 107313a4 GameThing::`vftable'
extern const struct GameThingVftable __vt__9GameThing asm("??_7GameThing@@6B@");

// Static methods

// win1.41 0056fb10 mac 1008e550 GameThing::ProcessDeadList(int)
void __stdcall ProcessDeadList__9GameThingFi(int param_1);

// Constructors

// win1.41 0056fa10 mac 10088880 GameThing::GameThing(void)
struct GameThing* __fastcall __ct__9GameThingFv(struct GameThing* this);

// Non-virtual Destructors

// win1.41 0056fa50 mac 10086e30 GameThing::~GameThing(void)
void __fastcall __dt__9GameThingFv(struct GameThing* this, const void* edx, uint8_t param_1) asm("??1GameThing@@UAE@XZ");

// Non-virtual methods

// win1.41 0056faa0 mac 10492500 GameThing::ProcessDead(int)
void __fastcall ProcessDead__9GameThingFi(struct GameThing* this, const void* edx, int param_1);
// win1.41 0056fef0 mac 103c2300 GameThing::CheckAndSetSaved(void)
bool __fastcall CheckAndSetSaved__9GameThingFv(struct GameThing* this) asm("?CheckAndSetSaved@GameThing@@QAE_NXZ");

// Override methods

// win1.41 0056fb70 mac 10380a20 GameThing::ToBeDeleted(int)
void __fastcall ToBeDeleted__9GameThingFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GameThing@@UAEXH@Z");
// win1.41 00570130 mac 10364e60 GameThing::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9GameThingFv(struct GameThing* this) asm("?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ");
// win1.41 00570150 mac 10359980 GameThing::SetPlayer(GPlayer *)
void __fastcall SetPlayer__9GameThingFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z");
// win1.41 004017f0 mac 1010bb00 GameThing::CalculateInfluence(MapCoords const &)
float __fastcall CalculateInfluence__9GameThingFRC9MapCoords(struct GameThing* this, const void* edx, const struct MapCoords* param_1) asm("?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z");
// win1.41 00401800 mac 10494700 GameThing::RemoveDance(void)
void __fastcall RemoveDance__9GameThingFv(struct GameThing* this) asm("?RemoveDance@GameThing@@QAEXXZ");
// win1.41 00401810 mac 100512d0 GameThing::IsAvailable(void)
bool __fastcall IsAvailable__9GameThingFv(struct GameThing* this) asm("?IsAvailable@GameThing@@QAE_NXZ");
// win1.41 00401820 mac 10494880 GameThing::IsCreature(Creature *)
bool __fastcall IsCreature__9GameThingFP8Creature(struct GameThing* this, const void* edx, struct Creature* param_1) asm("?IsCreature@GameThing@@QAE_NPAVCreature@@@Z");
// win1.41 00401830 mac 1002c400 GameThing::IsCreature(void)
bool __fastcall IsCreature__9GameThingFv(struct GameThing* this) asm("?IsCreature@GameThing@@UAE_NXZ");
// win1.41 00401840 mac 104948c0 GameThing::IsCreatureNotTooNear(Creature *)
bool __fastcall IsCreatureNotTooNear__9GameThingFP8Creature(struct GameThing* this, const void* edx, struct Creature* param_1) asm("?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z");
// win1.41 00405130 mac 10169a70 GameThing::GetDrawImportance(void)
float __fastcall GetDrawImportance__9GameThingFv(struct GameThing* this) asm("?GetDrawImportance@GameThing@@QAEMXZ");
// win1.41 00401850 mac 10428ff0 GameThing::GetMaxAlignmentChangePerGameTurn(void)
float __fastcall GetMaxAlignmentChangePerGameTurn__9GameThingFv(struct GameThing* this) asm("?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ");
// win1.41 00401860 mac 10425a40 GameThing::GetComputerSeen(void)
bool __fastcall GetComputerSeen__9GameThingFv(struct GameThing* this) asm("?GetComputerSeen@GameThing@@UAE_NXZ");
// win1.41 0056ff10 mac 103c22d0 GameThing::GetTown(void)
struct Town* __fastcall GetTown__9GameThingFv(struct GameThing* this) asm("?GetTown@GameThing@@QAEPAVTown@@XZ");
// win1.41 00401870 mac 103f1450 GameThing::GetVillagerActivityDesire(Villager *)
float __fastcall GetVillagerActivityDesire__9GameThingFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z");
// win1.41 00401880 mac 10389ac0 GameThing::SetVillagerActivity(Villager *)
uint32_t __fastcall SetVillagerActivity__9GameThingFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z");
// win1.41 00401890 mac 1037f2e0 GameThing::UpdateVillagerActivityEffect(Villager *)
uint32_t __fastcall UpdateVillagerActivityEffect__9GameThingFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z");
// win1.41 0056fed0 mac 10160960 GameThing::MaintainSpell(Spell *, float)
void __fastcall MaintainSpell__9GameThingFP5Spellf(struct GameThing* this, const void* edx, uint32_t param_1, float param_2) asm("?MaintainSpell@GameThing@@UAEXIM@Z");
// win1.41 0056fee0 mac 100fc510 GameThing::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void __fastcall UpdateSpellInfo__9GameThingFP5SpellP15PSysProcessInfo(struct GameThing* this, const void* edx, struct Spell* param_1, struct PSysProcessInfo* param_2) asm("?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z");
// win1.41 00405140 mac 104e9450 GameThing::GetRadius(void)
float __fastcall GetRadius__9GameThingFv(struct GameThing* this) asm("?GetRadius@GameThing@@QAEMXZ");
// win1.41 00405150 mac 1034f3d0 GameThing::Get2DRadius(void)
float __fastcall Get2DRadius__9GameThingFv(struct GameThing* this) asm("?Get2DRadius@GameThing@@QAEMXZ");
// win1.41 004018a0 mac 101664f0 GameThing::GetPlayerWhoLastPickedMeUp(void)
struct GPlayer* __fastcall GetPlayerWhoLastPickedMeUp__9GameThingFv(struct GameThing* this) asm("?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ");
// win1.41 004018b0 mac 10381da0 GameThing::GetPlayerWhoLastDroppedMe(void)
struct GPlayer* __fastcall GetPlayerWhoLastDroppedMe__9GameThingFv(struct GameThing* this) asm("?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ");
// win1.41 00405160 mac 103c36e0 GameThing::IsFootpathLink(void)
bool32_t __fastcall IsFootpathLink__9GameThingFv(struct GameThing* this) asm("?IsFootpathLink@GameThing@@QAE_NXZ");
// win1.41 00405170 mac 1056c160 GameThing::GetFootpathLink(void)
struct GFootpathLink* __fastcall GetFootpathLink__9GameThingFv(struct GameThing* this) asm("?GetFootpathLink@GameThing@@QAEPAVGFootpathLink@@XZ");
// win1.41 004018c0 mac 101063a0 GameThing::AddFootpathLink(GFootpath *)
uint32_t __fastcall AddFootpathLink__9GameThingFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z");
// win1.41 00405180 mac 104788b0 GameThing::GetNearestPathTo(MapCoords const &, float, int)
uint32_t __fastcall GetNearestPathTo__9GameThingFRC9MapCoordsfi(struct GameThing* this, const void* edx, const struct MapCoords* param_1, float param_2, int param_3) asm("?GetNearestPathTo@GameThing@@QAEIABUMapCoords@@MH@Z");
// win1.41 00570330 mac 100e4740 GameThing::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void __fastcall UseFootpathIfNecessary__9GameThingFP6LivingRC9MapCoordsUc(struct GameThing* this, const void* edx, struct Living* param_1, const struct MapCoords* param_2, unsigned char param_3) asm("?UseFootpathIfNecessary@GameThing@@QAEXPAVLiving@@ABUMapCoords@@E@Z");
// win1.41 00405190 mac 103dffc0 GameThing::AddFootpath(GFootpath *)
uint32_t __fastcall AddFootpath__9GameThingFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?AddFootpath@GameThing@@QAEIPAVGFootpath@@@Z");
// win1.41 004051a0 mac 103dff70 GameThing::RemoveFootpath(GFootpath *)
uint32_t __fastcall RemoveFootpath__9GameThingFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?RemoveFootpath@GameThing@@QAEIPAVGFootpath@@@Z");
// win1.41 005705f0 mac 10560530 GameThing::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
uint32_t __fastcall JustAddResource__9GameThingF13RESOURCE_TYPEUlb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool param_3) asm("?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z");
// win1.41 00570600 mac 1054a9d0 GameThing::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t __fastcall JustRemoveResource__9GameThingF13RESOURCE_TYPEUlPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3) asm("?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z");
// win1.41 00570610 mac 101669d0 GameThing::JustGetResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t __fastcall JustGetResource__9GameThingF13RESOURCE_TYPEUlPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3) asm("?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z");
// win1.41 004051b0 mac 1056c950 GameThing::GetResource(RESOURCE_TYPE)
uint32_t __fastcall GetResource__9GameThingF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type) asm("?GetResource@GameThing@@QAEIW4RESOURCE_TYPE@@@Z");
// win1.41 004051c0 mac 1056c9a0 GameThing::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__9GameThingF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* coords, int param_6) asm("?AddResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@_NABUMapCoords@@H@Z");
// win1.41 004051d0 mac 104f8b20 GameThing::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__9GameThingF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@PA_N@Z");
// win1.41 004018d0 mac 103dd790 GameThing::CastCreature(void)
struct Creature* __fastcall CastCreature__9GameThingFv(struct GameThing* this) asm("?CastCreature@GameThing@@QAEPAVCreature@@XZ");
// win1.41 004018e0 mac 103dd5d0 GameThing::CastPlayer(void)
struct GPlayer* __fastcall CastPlayer__9GameThingFv(struct GameThing* this) asm("?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ");
// win1.41 004018f0 mac 104fb790 GameThing::CastOneOffSpellSeed(void)
struct SpellSeed* __fastcall CastOneOffSpellSeed__9GameThingFv(struct GameThing* this) asm("?CastOneOffSpellSeed@GameThing@@UAEIXZ");
// win1.41 004051e0 mac 1017ebc0 GameThing::CastAbode(void)
struct Abode* __fastcall CastAbode__9GameThingFv(struct GameThing* this) asm("?CastAbode@GameThing@@QAEPAVAbode@@XZ");
// win1.41 004051f0 mac 10199740 GameThing::CastMultiMapFixed(void)
struct MultiMapFixed* __fastcall CastMultiMapFixed__9GameThingFv(struct GameThing* this) asm("?CastMultiMapFixed@GameThing@@QAEPAVMultiMapFixed@@XZ");
// win1.41 00401900 mac 100a0a70 GameThing::CastSpellIcon(void)
struct SpellIcon* __fastcall CastSpellIcon__9GameThingFv(struct GameThing* this) asm("?CastSpellIcon@GameThing@@UAEIXZ");
// win1.41 00401910 mac 101c8320 GameThing::CastTree(void)
struct Tree* __fastcall CastTree__9GameThingFv(struct GameThing* this) asm("?CastTree@GameThing@@UAEIXZ");
// win1.41 00401920 mac 1019e2b0 GameThing::IsDeletedOnNewMap(void)
bool32_t __fastcall IsDeletedOnNewMap__9GameThingFv(struct GameThing* this) asm("?IsDeletedOnNewMap@GameThing@@QAE_NXZ");
// win1.41 00405200 mac 100ac9a0 GameThing::GetNumberOfInstanceForGlobalList(void)
uint16_t __fastcall GetNumberOfInstanceForGlobalList__9GameThingFv(struct GameThing* this) asm("?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ");
// win1.41 00405210 mac 1019aa00 GameThing::GetTownArtifactValue(void)
float __fastcall GetTownArtifactValue__9GameThingFv(struct GameThing* this) asm("?GetTownArtifactValue@GameThing@@QAEMXZ");
// win1.41 00405220 mac 10199de0 GameThing::CanBecomeArtifact(void)
bool __fastcall CanBecomeArtifact__9GameThingFv(struct GameThing* this) asm("?CanBecomeArtifact@GameThing@@QAE_NXZ");
// win1.41 00405230 mac 10199e20 GameThing::DrawInHand(GInterfaceStatus *)
void __fastcall DrawInHand__9GameThingFP16GInterfaceStatus(struct GameThing* this, const void* edx, struct GInterfaceStatus* param_1) asm("?DrawInHand@GameThing@@QAEXPAVGInterfaceStatus@@@Z");
// win1.41 00405240 mac 10067860 GameThing::IsFunctional(void)
bool __fastcall IsFunctional__9GameThingFv(struct GameThing* this) asm("?IsFunctional@GameThing@@QAE_NXZ");
// win1.41 00425da0 mac 1054ef00 GameThing::GetDebugText(void)
char* __fastcall GetDebugText__9GameThingFv(struct GameThing* this) asm("?GetDebugText@GameThing@@QAEPADXZ");
// win1.41 0071bc20 mac 1050ff50 GameThing::GetSampleForAttack(void)
uint32_t __fastcall GetSampleForAttack__9GameThingFv(struct GameThing* this) asm("?GetSampleForAttack@GameThing@@UAEIXZ");
// win1.41 0071bdd0 mac 1050fc90 GameThing::GetGuidanceResourceType(void)
uint32_t __fastcall GetGuidanceResourceType__9GameThingFv(struct GameThing* this) asm("?GetGuidanceResourceType@GameThing@@UAEIXZ");
// win1.41 00401930 mac 1017a550 GameThing::GetShowNeedsPos(unsigned long, MapCoords *)
uint32_t __fastcall GetShowNeedsPos__9GameThingFUlP9MapCoords(struct GameThing* this, const void* edx, uint32_t param_1, struct MapCoords* param_2) asm("?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z");
// win1.41 0056fcf0 mac 103807f0 GameThing::Load(GameOSFile &)
uint32_t __fastcall Load__9GameThingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@GameThing@@QAEIAAVGGameOSFile@@@Z");
// win1.41 0056fbe0 mac 101724b0 GameThing::Save(GameOSFile &)
uint32_t __fastcall Save__9GameThingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@GameThing@@QAEIAAVGGameOSFile@@@Z");
// win1.41 0056fd90 mac 101361c0 GameThing::GetSaveType(void)
uint32_t __fastcall GetSaveType__9GameThingFv(struct GameThing* this) asm("?GetSaveType@GameThing@@UAEIXZ");
// win1.41 0056fda0 mac 100bc180 GameThing::SaveExtraData(GameOSFile &)
void __fastcall SaveExtraData__9GameThingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z");
// win1.41 00405250 mac 1057b140 GameThing::ResolveLoad(void)
void __fastcall ResolveLoad__9GameThingFv(struct GameThing* this) asm("?ResolveLoad@GameThing@@QAEXXZ");

DECLARE_LH_LINKED_LIST(GameThing);

DECLARE_LH_LIST_HEAD(GameThing);

#endif /* BW1_DECOMP_GAME_THING_INCLUDED_H */
