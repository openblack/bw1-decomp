#ifndef BW1_DECOMP_FIRE_EFFECT_INCLUDED_H
#define BW1_DECOMP_FIRE_EFFECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct FireGraphic;
struct GPlayer;
struct GameOSFile;
struct LHPoint;
struct Object;

struct FireEffect
{
  struct GameThing super;  /* 0x0 */
  float temperature;  /* 0x14 */
  float temperature2;
  struct Object* source;
  struct GPlayer* player;  /* 0x20 */
  struct GameThing* thing;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint8_t field_0x38;
  struct FireEffect* next;
  uint8_t field_0x40[0x8];
  uint32_t field_0x48;
  uint32_t field_0x4c;
};
static_assert(sizeof(struct FireEffect) == 0x50, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22940 mac inlined FireEffect::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10FireEffect asm("??_R0?AVFireEffect@@@8");
// win1.41 009b9828 mac inlined FireEffect::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10FireEffect asm("??_R1A@?0A@A@FireEffect@@8");
// win1.41 009b9840 mac inlined FireEffect::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10FireEffect asm("??_R2FireEffect@@8");
// win1.41 009b9850 mac inlined FireEffect::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10FireEffect asm("??_R3FireEffect@@8");
// win1.41 009996d0 mac 1075c8a4 FireEffect::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10FireEffect asm("??_R4FireEffect@@6B@");
// win1.41 009996d4 mac 1075c8ac FireEffect::`vftable'
extern const struct GameThingVftable __vt__10FireEffect asm("??_7FireEffect@@6B@");

// Constructors

// win1.41 0072ea80 mac 10150740 FireEffect::FireEffect(void)
struct FireEffect* __fastcall __ct__10FireEffectFv(struct FireEffect* this) asm("??0FireEffect@@QAE@XZ");

// Non-virtual methods

// win1.41 00730ad0 mac 1014c5c0 FireEffect::CreateSprites(void)
struct FireGraphic* __fastcall CreateSprites__10FireEffectFv(struct FireEffect* this) asm("?CreateSprites@FireEffect@@QAEPAVFireGraphic@@XZ");
// win1.41 00732ae0 mac 10149240 FireEffect::GetFirstCaused(void)
uint32_t __fastcall GetFirstCaused__10FireEffectFv(struct FireEffect* this) asm("?GetFirstCaused@FireEffect@@QAEIXZ");

// Override methods

// win1.41 0072eae0 mac 10150470 FireEffect::_dt(void)
void __fastcall __dt__10FireEffectFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFireEffect@@UAEPAXI@Z");
// win1.41 0072ebe0 mac 101500c0 FireEffect::ToBeDeleted(int)
void __fastcall ToBeDeleted__10FireEffectFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@FireEffect@@UAEXH@Z");
// win1.41 0072ee70 mac 1014fd50 FireEffect::Get3DSoundPos(LHPoint *)
int __fastcall Get3DSoundPos__10FireEffectFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1) asm("?Get3DSoundPos@FireEffect@@UAEHPAULHPoint@@@Z");
// win1.41 0072eab0 mac 1014cc60 FireEffect::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__10FireEffectFv(struct GameThing* this) asm("?GetPlayer@FireEffect@@UAEPAVGPlayer@@XZ");
// win1.41 0072ead0 mac 10150910 FireEffect::GetDebugText(void)
char* __fastcall GetDebugText__10FireEffectFv(struct GameThing* this) asm("?GetDebugText@FireEffect@@UAEPADXZ");
// win1.41 00730df0 mac 1014bcc0 FireEffect::Load(GameOSFile &)
uint32_t __fastcall Load__10FireEffectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@FireEffect@@UAEIAAVGameOSFile@@@Z");
// win1.41 00730b00 mac 1014c110 FireEffect::Save(GameOSFile &)
uint32_t __fastcall Save__10FireEffectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@FireEffect@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072eac0 mac 101508d0 FireEffect::GetSaveType(void)
uint32_t __fastcall GetSaveType__10FireEffectFv(struct GameThing* this) asm("?GetSaveType@FireEffect@@UAEIXZ");
// win1.41 007310d0 mac 1014bc70 FireEffect::ResolveLoad(void)
void __fastcall ResolveLoad__10FireEffectFv(struct GameThing* this) asm("?ResolveLoad@FireEffect@@UAEXXZ");

DECLARE_LH_LIST_HEAD(FireEffect);

#endif /* BW1_DECOMP_FIRE_EFFECT_INCLUDED_H */
