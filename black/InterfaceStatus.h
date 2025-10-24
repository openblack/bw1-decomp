#ifndef BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H
#define BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MagicHand.h" /* For struct GMagicHand */

// Forward Declares

struct Base;
struct GGuidance;
struct GInterface;
struct GLeashStatus;
struct GPlayer;
struct GVirtualInfluence;
struct GameOSFile;
struct GameThing;
struct Object;
struct PSysProcessInfo;
struct Spell;

struct GInterfaceStatus
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t player_number;  /* 0x28 */
  struct GInterface* iface;
  struct GGuidance* guidance;  /* 0x30 */
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  uint8_t field_0x44[0x14];
  struct GMagicHand magic_hand[0x2];  /* 0x58 */
  bool hand_holding_something;  /* 0x90 */
  struct LHCoord field_0x94;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  struct LHPoint field_0xa4;
  struct LHPoint camera_pos;  /* 0xb0 */
  struct LHPoint camera_foc;
  struct LHPoint field_0xc8;
  struct LHPoint field_0xd4;
  uint32_t field_0xe0;
  uint32_t field_0xe4;
  struct LHPoint field_0xe8;
  float field_0xf4;
  float field_0xf8;
  float field_0xfc;
  float field_0x100;
  float field_0x104;
  float field_0x108;
  struct LHPoint hand_velocity;
  float field_0x118;
  uint32_t field_0x11c;
  struct Object* last_dropped_object;  /* 0x120 */
  uint32_t field_0x124;
  struct GLeashStatus* leash_status;
  struct GVirtualInfluence* influence;
  float field_0x130;
};
static_assert(sizeof(struct GInterfaceStatus) == 0x134, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be0340 mac inlined GInterfaceStatus::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GInterfaceStatus asm("??_R0?AVGInterfaceStatus@@@8");
// win1.41 009b16e0 mac inlined GInterfaceStatus::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GInterfaceStatus asm("??_R1A@?0A@A@GInterfaceStatus@@8");
// win1.41 009b16f8 mac inlined GInterfaceStatus::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GInterfaceStatus asm("??_R2GInterfaceStatus@@8");
// win1.41 009b1710 mac inlined GInterfaceStatus::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GInterfaceStatus asm("??_R3GInterfaceStatus@@8");
// win1.41 0092accc mac 1098d398 GInterfaceStatus::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16GInterfaceStatus asm("??_R4GInterfaceStatus@@6B@");
// win1.41 0092acd0 mac 106f8170 GInterfaceStatus::`vftable'
extern const struct GameThingWithPosVftable __vt__16GInterfaceStatus asm("??_7GInterfaceStatus@@6B@");

// Static methods

// win1.41 005cedc0 mac 1035acc0 GInterfaceStatus::SetActive(int)
void __fastcall SetActive__10GInterfaceFi(struct GInterface* this, const void* edx, int param_1) asm("?SetActive@GInterface@@SAXH@Z");
// win1.41 005d29c0 mac 10026ad0 GInterfaceStatus::ResetActionState(void)
void __fastcall ResetActionState__10GInterfaceFv(struct GInterface* this) asm("?ResetActionState@GInterface@@SAXXZ");

// Constructors

// win1.41 005db860 mac 1036f590 GInterfaceStatus::GInterfaceStatus(void)
struct GInterfaceStatus* __fastcall __ct__16GInterfaceStatusFv(struct GInterfaceStatus* this) asm("??0GInterfaceStatus@@QAE@XZ");

// Non-virtual methods

// win1.41 005dba00 mac 1036f310 GInterfaceStatus::SetToZero(GInterface *)
void __fastcall SetToZero__16GInterfaceStatusFP10GInterface(struct GInterfaceStatus* this, const void* edx, struct GInterface* param_1) asm("?SetToZero@GInterfaceStatus@@QAEXPAVGInterface@@@Z");
// win1.41 005dc130 mac 100755c0 GInterfaceStatus::GetFirstObjectInCurrentHand(void)
struct Object* __fastcall GetFirstObjectInCurrentHand__16GInterfaceStatusFv(struct GInterfaceStatus* this) asm("?GetFirstObjectInCurrentHand@GInterfaceStatus@@QAEPAVObject@@XZ");
// win1.41 005dc2f0 mac 1007b2f0 GInterfaceStatus::IsSpaceInHands(void)
bool __fastcall IsSpaceInHands__16GInterfaceStatusFv(struct GInterfaceStatus* this) asm("?IsSpaceInHands@GInterfaceStatus@@QAE_NXZ");
// win1.41 005dc8b0 mac 10035b20 GInterfaceStatus::GetInterface(void)
struct GInterface* __fastcall GetInterface__16GInterfaceStatusFv(struct GInterfaceStatus* this) asm("?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ");
// win1.41 005dd1a0 mac 1036bf20 GInterfaceStatus::Init(unsigned char, GInterface *)
void __fastcall Init__16GInterfaceStatusFUcP10GInterface(struct GInterfaceStatus* this, const void* edx, uint8_t player_number, struct GInterface* iface) asm("?Init@GInterfaceStatus@@QAEXEPAVGInterface@@@Z");

// Override methods

// win1.41 005db990 mac 1036f480 GInterfaceStatus::_dt(void)
void __fastcall __dt__16GInterfaceStatusFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGInterfaceStatus@@UAEPAXI@Z");
// win1.41 005dbb00 mac 1036f260 GInterfaceStatus::ToBeDeleted(int)
void __fastcall ToBeDeleted__16GInterfaceStatusFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GInterfaceStatus@@UAEXH@Z");
// win1.41 005dbc20 mac 10058730 GInterfaceStatus::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__16GInterfaceStatusFv(struct GameThing* this) asm("?GetPlayer@GInterfaceStatus@@UAEPAVGPlayer@@XZ");
// win1.41 005dc8f0 mac 1036d0e0 GInterfaceStatus::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void __fastcall UpdateSpellInfo__16GInterfaceStatusFP5SpellP15PSysProcessInfo(struct GameThing* this, const void* edx, struct Spell* param_1, struct PSysProcessInfo* param_2) asm("?UpdateSpellInfo@GInterfaceStatus@@UAEXPAVSpell@@PAUPSysProcessInfo@@@Z");
// win1.41 005db980 mac 1036be40 GInterfaceStatus::GetDebugText(void)
char* __fastcall GetDebugText__16GInterfaceStatusFv(struct GameThing* this) asm("?GetDebugText@GInterfaceStatus@@UAEPADXZ");
// win1.41 005dcdc0 mac 1036c160 GInterfaceStatus::Load(GameOSFile &)
uint32_t __fastcall Load__16GInterfaceStatusFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GInterfaceStatus@@UAEIAAVGameOSFile@@@Z");
// win1.41 005dca50 mac 1036c810 GInterfaceStatus::Save(GameOSFile &)
uint32_t __fastcall Save__16GInterfaceStatusFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GInterfaceStatus@@UAEIAAVGameOSFile@@@Z");
// win1.41 005db970 mac 1036be00 GInterfaceStatus::GetSaveType(void)
uint32_t __fastcall GetSaveType__16GInterfaceStatusFv(struct GameThing* this) asm("?GetSaveType@GInterfaceStatus@@UAEIXZ");
// win1.41 005dd130 mac 1036c080 GInterfaceStatus::SaveExtraData(GameOSFile &)
void __fastcall SaveExtraData__16GInterfaceStatusFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?SaveExtraData@GInterfaceStatus@@UAEXAAVGameOSFile@@@Z");
// win1.41 005dd190 mac 1036c020 GInterfaceStatus::ResolveLoad(void)
void __fastcall ResolveLoad__16GInterfaceStatusFv(struct GameThing* this) asm("?ResolveLoad@GInterfaceStatus@@UAEXXZ");
// win1.41 005db960 mac 1036bdc0 GInterfaceStatus::GetText(void)
const char* __fastcall GetText__16GInterfaceStatusFv(struct GameThingWithPos* this) asm("?GetText@GInterfaceStatus@@UAEPBDXZ");

#endif /* BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H */
