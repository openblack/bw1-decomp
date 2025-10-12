#ifndef BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H
#define BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct BaseAtomModifierData
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct BaseAtomModifierData) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed628 mac inlined BaseAtomModifierData::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20BaseAtomModifierData asm("??_R0?AVBaseAtomModifierData@@@8");
// win1.41 009aef10 mac inlined BaseAtomModifierData::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20BaseAtomModifierData asm("??_R1A@?0A@A@BaseAtomModifierData@@8");
// win1.41 009aeff0 mac inlined BaseAtomModifierData::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20BaseAtomModifierData asm("??_R2BaseAtomModifierData@@8");
// win1.41 009af008 mac inlined BaseAtomModifierData::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20BaseAtomModifierData asm("??_R3BaseAtomModifierData@@8");

// Override methods

// win1.41 0055f210 mac 1030ac30 BaseAtomModifierData::_dt(void)
void __fastcall __dt__20BaseAtomModifierDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GBaseAtomModifierData@@UAEPAXI@Z");
// win1.41 0055f200 mac 103ffe50 BaseAtomModifierData::GetDebugText(void)
char* __fastcall GetDebugText__20BaseAtomModifierDataFv(struct GameThing* this) asm("?GetDebugText@BaseAtomModifierData@@UAEPADXZ");
// win1.41 006947e0 mac 1041d650 BaseAtomModifierData::Load(GameOSFile &)
uint32_t __fastcall Load__20BaseAtomModifierDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@BaseAtomModifierData@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cb340 mac 10485830 BaseAtomModifierData::Save(GameOSFile &)
uint32_t __fastcall Save__20BaseAtomModifierDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@BaseAtomModifierData@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f1f0 mac 103ffe10 BaseAtomModifierData::GetSaveType(void)
uint32_t __fastcall GetSaveType__20BaseAtomModifierDataFv(struct GameThing* this) asm("?GetSaveType@BaseAtomModifierData@@UAEIXZ");

struct BaseCollectionModifierData
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct BaseCollectionModifierData) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed678 mac inlined BaseCollectionModifierData::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__26BaseCollectionModifierData asm("??_R0?AVBaseCollectionModifierData@@@8");
// win1.41 009aef80 mac inlined BaseCollectionModifierData::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__26BaseCollectionModifierData asm("??_R1A@?0A@A@BaseCollectionModifierData@@8");
// win1.41 009af030 mac inlined BaseCollectionModifierData::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__26BaseCollectionModifierData asm("??_R2BaseCollectionModifierData@@8");
// win1.41 009af048 mac inlined BaseCollectionModifierData::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__26BaseCollectionModifierData asm("??_R3BaseCollectionModifierData@@8");

// Override methods

// win1.41 0055f2a0 mac 1030ae90 BaseCollectionModifierData::_dt(void)
void __fastcall __dt__26BaseCollectionModifierDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GBaseCollectionModifierData@@UAEPAXI@Z");
// win1.41 0055f290 mac 103fffa0 BaseCollectionModifierData::GetDebugText(void)
char* __fastcall GetDebugText__26BaseCollectionModifierDataFv(struct GameThing* this) asm("?GetDebugText@BaseCollectionModifierData@@UAEPADXZ");
// win1.41 00694810 mac 1041d5a0 BaseCollectionModifierData::Load(GameOSFile &)
uint32_t __fastcall Load__26BaseCollectionModifierDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@BaseCollectionModifierData@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cb370 mac 10485780 BaseCollectionModifierData::Save(GameOSFile &)
uint32_t __fastcall Save__26BaseCollectionModifierDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@BaseCollectionModifierData@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f280 mac 103fff50 BaseCollectionModifierData::GetSaveType(void)
uint32_t __fastcall GetSaveType__26BaseCollectionModifierDataFv(struct GameThing* this) asm("?GetSaveType@BaseCollectionModifierData@@UAEIXZ");

struct DrawOffset
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct DrawOffset) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09468 mac inlined DrawOffset::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10DrawOffset asm("??_R0?AVDrawOffset@@@8");
// win1.41 009b7d30 mac inlined DrawOffset::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10DrawOffset asm("??_R1A@?0A@A@DrawOffset@@8");
// win1.41 009b7d48 mac inlined DrawOffset::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10DrawOffset asm("??_R2DrawOffset@@8");
// win1.41 009b7d60 mac inlined DrawOffset::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10DrawOffset asm("??_R3DrawOffset@@8");

// Override methods

// win1.41 006c7550 mac 1047e1d0 DrawOffset::_dt(void)
void __fastcall __dt__10DrawOffsetFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDrawOffset@@UAEPAXI@Z");
// win1.41 006c7540 mac 10423b80 DrawOffset::GetDebugText(void)
char* __fastcall GetDebugText__10DrawOffsetFv(struct GameThing* this) asm("?GetDebugText@DrawOffset@@UAEPADXZ");
// win1.41 00694d90 mac 1041cd70 DrawOffset::Load(GameOSFile &)
uint32_t __fastcall Load__10DrawOffsetFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DrawOffset@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cb8b0 mac 10484460 DrawOffset::Save(GameOSFile &)
uint32_t __fastcall Save__10DrawOffsetFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DrawOffset@@UAEIAAVGameOSFile@@@Z");
// win1.41 006c7530 mac 10423b40 DrawOffset::GetSaveType(void)
uint32_t __fastcall GetSaveType__10DrawOffsetFv(struct GameThing* this) asm("?GetSaveType@DrawOffset@@UAEIXZ");

struct DrawOffsetDecay
{
  struct DrawOffset super;  /* 0x0 */
};
static_assert(sizeof(struct DrawOffsetDecay) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c094a8 mac inlined DrawOffsetDecay::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15DrawOffsetDecay asm("??_R0?AVDrawOffsetDecay@@@8");
// win1.41 009b7de0 mac inlined DrawOffsetDecay::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15DrawOffsetDecay asm("??_R1A@?0A@A@DrawOffsetDecay@@8");
// win1.41 009b7df8 mac inlined DrawOffsetDecay::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15DrawOffsetDecay asm("??_R2DrawOffsetDecay@@8");
// win1.41 009b7e10 mac inlined DrawOffsetDecay::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15DrawOffsetDecay asm("??_R3DrawOffsetDecay@@8");

// Override methods

// win1.41 006c7820 mac 1047dcd0 DrawOffsetDecay::_dt(void)
void __fastcall __dt__15DrawOffsetDecayFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDrawOffsetDecay@@UAEPAXI@Z");
// win1.41 006c7810 mac 104239f0 DrawOffsetDecay::GetDebugText(void)
char* __fastcall GetDebugText__15DrawOffsetDecayFv(struct GameThing* this) asm("?GetDebugText@DrawOffsetDecay@@UAEPADXZ");
// win1.41 00694ea0 mac 1041cc10 DrawOffsetDecay::Load(GameOSFile &)
uint32_t __fastcall Load__15DrawOffsetDecayFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DrawOffsetDecay@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cb9c0 mac 10484300 DrawOffsetDecay::Save(GameOSFile &)
uint32_t __fastcall Save__15DrawOffsetDecayFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DrawOffsetDecay@@UAEIAAVGameOSFile@@@Z");
// win1.41 006c7800 mac 104239b0 DrawOffsetDecay::GetSaveType(void)
uint32_t __fastcall GetSaveType__15DrawOffsetDecayFv(struct GameThing* this) asm("?GetSaveType@DrawOffsetDecay@@UAEIXZ");

struct DrawOffsetLT
{
  struct DrawOffset super;  /* 0x0 */
};
static_assert(sizeof(struct DrawOffsetLT) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09488 mac inlined DrawOffsetLT::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12DrawOffsetLT asm("??_R0?AVDrawOffsetLT@@@8");
// win1.41 009b7d88 mac inlined DrawOffsetLT::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12DrawOffsetLT asm("??_R1A@?0A@A@DrawOffsetLT@@8");
// win1.41 009b7da0 mac inlined DrawOffsetLT::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12DrawOffsetLT asm("??_R2DrawOffsetLT@@8");
// win1.41 009b7db8 mac inlined DrawOffsetLT::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12DrawOffsetLT asm("??_R3DrawOffsetLT@@8");

// Override methods

// win1.41 006c75e0 mac 10423a30 DrawOffsetLT::_dt(void)
void __fastcall __dt__12DrawOffsetLTFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDrawOffsetLT@@UAEPAXI@Z");
// win1.41 006c75d0 mac 10423b00 DrawOffsetLT::GetDebugText(void)
char* __fastcall GetDebugText__12DrawOffsetLTFv(struct GameThing* this) asm("?GetDebugText@DrawOffsetLT@@UAEPADXZ");
// win1.41 00694df0 mac 1041ccd0 DrawOffsetLT::Load(GameOSFile &)
uint32_t __fastcall Load__12DrawOffsetLTFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DrawOffsetLT@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cb910 mac 104843c0 DrawOffsetLT::Save(GameOSFile &)
uint32_t __fastcall Save__12DrawOffsetLTFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DrawOffsetLT@@UAEIAAVGameOSFile@@@Z");
// win1.41 006c75c0 mac 10423ac0 DrawOffsetLT::GetSaveType(void)
uint32_t __fastcall GetSaveType__12DrawOffsetLTFv(struct GameThing* this) asm("?GetSaveType@DrawOffsetLT@@UAEIXZ");

struct GJAnimVolFX
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct GJAnimVolFX) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c044b8 mac inlined GJAnimVolFX::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GJAnimVolFX asm("??_R0?AVGJAnimVolFX@@@8");
// win1.41 009b45d8 mac inlined GJAnimVolFX::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GJAnimVolFX asm("??_R1A@?0A@A@GJAnimVolFX@@8");
// win1.41 009b45f0 mac inlined GJAnimVolFX::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11GJAnimVolFX asm("??_R2GJAnimVolFX@@8");
// win1.41 009b4608 mac inlined GJAnimVolFX::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11GJAnimVolFX asm("??_R3GJAnimVolFX@@8");

// Override methods

// win1.41 0069d2d0 mac inlined GJAnimVolFX::_dt(void)
void __fastcall __dt__11GJAnimVolFXFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGJAnimVolFX@@UAEPAXI@Z");

#endif /* BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H */
