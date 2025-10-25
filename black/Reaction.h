#ifndef BW1_DECOMP_REACTION_INCLUDED_H
#define BW1_DECOMP_REACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum REACTION */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThingWithPos;
struct Living;
struct ReactionInfo;

struct Reaction
{
  struct GameThing super;  /* 0x0 */
  struct GameThingWithPos* target;  /* 0x14 */
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  enum REACTION type;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  struct GPlayer* player;
  float field_0x3c;
  struct Reaction* next;  /* 0x40 */
};
static_assert(sizeof(struct Reaction) == 0x44, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00beca78 mac inlined Reaction::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Reaction asm("??_R0?AVReaction@@@8");
// win1.41 009ad6c0 mac inlined Reaction::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Reaction asm("??_R1A@?0A@A@Reaction@@8");
// win1.41 009ad6d8 mac inlined Reaction::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Reaction asm("??_R2Reaction@@8");
// win1.41 009ad6e8 mac inlined Reaction::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Reaction asm("??_R3Reaction@@8");
// win1.41 008f3670 mac 10759508 Reaction::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Reaction asm("??_R4Reaction@@6B@");
// win1.41 008f3674 mac 10759510 Reaction::`vftable'
extern const struct GameThingVftable __vt__8Reaction asm("??_7Reaction@@6B@");

// Static methods

// win1.41 006e3d70 mac 10136010 Reaction::CreateReaction(GameThingWithPos *, unsigned char, GPlayer *, int)
struct Reaction* __cdecl CreateReaction__8ReactionFP16GameThingWithPosUcP7GPlayeri(struct GameThingWithPos* param_1, uint8_t param_2, struct GPlayer* player, int param_4) asm("?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z");

// Non-virtual methods

// win1.41 006e4700 mac 1008c230 Reaction::GetInfo(void) const
struct ReactionInfo* __fastcall GetInfo__8ReactionCFv(struct Reaction* this) asm("?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");
// win1.41 006e48a0 mac 10134d90 Reaction::GetDefaultReactionMultiplier(Living *)
float __fastcall GetDefaultReactionMultiplier__8ReactionFP6Living(struct Reaction* this, const void* edx, struct Living* param_1) asm("?GetDefaultReactionMultiplier@Reaction@@QAEMPAVLiving@@@Z");

// Override methods

// win1.41 0055c800 mac 10136550 Reaction::_dt(void)
void __fastcall __dt__8ReactionFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GReaction@@UAEPAXI@Z");
// win1.41 006e3aa0 mac 10136200 Reaction::ToBeDeleted(int)
void __fastcall ToBeDeleted__8ReactionFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Reaction@@UAEXH@Z");
// win1.41 0055c7b0 mac 10099cb0 Reaction::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__8ReactionFv(struct GameThing* this) asm("?GetPlayer@Reaction@@UAEPAVGPlayer@@XZ");
// win1.41 0055c7c0 mac 10134150 Reaction::SetPlayer(GPlayer *)
void __fastcall SetPlayer__8ReactionFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@Reaction@@UAEXPAVGPlayer@@@Z");
// win1.41 0055c7d0 mac 10049510 Reaction::GetRadius(void)
float __fastcall GetRadius__8ReactionFv(struct GameThing* this) asm("?GetRadius@Reaction@@UAEMXZ");
// win1.41 0055c7f0 mac 101342c0 Reaction::GetDebugText(void)
char* __fastcall GetDebugText__8ReactionFv(struct GameThing* this) asm("?GetDebugText@Reaction@@UAEPADXZ");
// win1.41 006e4ba0 mac 10134400 Reaction::Load(GameOSFile &)
uint32_t __fastcall Load__8ReactionFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Reaction@@UAEIAAVGameOSFile@@@Z");
// win1.41 006e4990 mac 10134810 Reaction::Save(GameOSFile &)
uint32_t __fastcall Save__8ReactionFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Reaction@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055c7e0 mac 10134280 Reaction::GetSaveType(void)
uint32_t __fastcall GetSaveType__8ReactionFv(struct GameThing* this) asm("?GetSaveType@Reaction@@UAEIXZ");

DECLARE_LH_LIST_HEAD(Reaction);

struct ReactionDoneWhen
{
  enum REACTION reaction;  /* 0x0 */
  uint32_t start_turn;
};
static_assert(sizeof(struct ReactionDoneWhen) == 0x8, "Data type is of wrong size");

DECLARE_LH_LIST_HEAD(ReactionDoneWhen);

#endif /* BW1_DECOMP_REACTION_INCLUDED_H */
