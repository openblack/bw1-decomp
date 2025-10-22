#ifndef BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H
#define BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */
#include "PSysModifiers.h" /* For struct BaseAtomModifierData, struct BaseCollectionModifierData */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct Q222UR_GesturingRecognised8AtomData;

struct AtomCollection
{
  uint8_t field_0x0[0x4];
};
static_assert(sizeof(struct AtomCollection) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00674ed0 mac 100773a0 AtomCollection::GetAge(void)
float __fastcall GetAge__14AtomCollectionFv(struct AtomCollection* this) asm("?GetAge@AtomCollection@@QAEMXZ");
// win1.41 00674880 mac 10423c00 AtomCollection::GetDebugText(void)
char* __fastcall GetDebugText__14AtomCollectionFv(struct AtomCollection* this) asm("?GetDebugText@AtomCollection@@UAEPADXZ");
// win1.41 00674890 mac 103e1fb0 AtomCollection::_dt(void)
void __fastcall __dt__14AtomCollectionFv(struct AtomCollection* this, const void* edx, uint32_t param_1) asm("??_GAtomCollection@@UAEPAXI@Z");

struct UR_GesturingRecognised
{
  uint8_t field_0x0[0x4];
};
static_assert(sizeof(struct UR_GesturingRecognised) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 006884f0 mac 1007c960 UR_GesturingRecognised::ModifyAtomCollection(AtomCollection *) const
uint32_t __fastcall ModifyAtomCollection__22UR_GesturingRecognisedCFP14AtomCollection(const struct UR_GesturingRecognised* this, const void* edx, struct AtomCollection* collection) asm("?ModifyAtomCollection@UR_GesturingRecognised@@QBEIPAUAtomCollection@@@Z");
// win1.41 00688910 mac 10406f90 UR_GesturingRecognised::ModifySubCollection(AtomCollection *, UR_GesturingRecognised::AtomData *) const
void __fastcall ModifySubCollection__22UR_GesturingRecognisedCFP14AtomCollectionPQ222UR_GesturingRecognised8AtomData(const struct UR_GesturingRecognised* this, const void* edx, struct AtomCollection* collection, struct Q222UR_GesturingRecognised8AtomData* data);

struct AtomCore
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct AtomCore) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02268 mac inlined AtomCore::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8AtomCore asm("??_R0?AVAtomCore@@@8");
// win1.41 009b37c0 mac inlined AtomCore::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8AtomCore asm("??_R1A@?0A@A@AtomCore@@8");
// win1.41 009b37d8 mac inlined AtomCore::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8AtomCore asm("??_R2AtomCore@@8");
// win1.41 009b37f0 mac inlined AtomCore::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8AtomCore asm("??_R3AtomCore@@8");

// Override methods

// win1.41 006739f0 mac 10091fd0 AtomCore::_dt(void)
void __fastcall __dt__8AtomCoreFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomCore@@UAEPAXI@Z");
// win1.41 00673c70 mac 103e41d0 AtomCore::GetRadius(void)
float __fastcall GetRadius__8AtomCoreFv(struct GameThing* this) asm("?GetRadius@AtomCore@@UAEMXZ");
// win1.41 006739e0 mac 10423c80 AtomCore::GetDebugText(void)
char* __fastcall GetDebugText__8AtomCoreFv(struct GameThing* this) asm("?GetDebugText@AtomCore@@UAEPADXZ");
// win1.41 00694840 mac 1041d1f0 AtomCore::Load(GameOSFile &)
uint32_t __fastcall Load__8AtomCoreFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomCore@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cb3a0 mac 10484ec0 AtomCore::Save(GameOSFile &)
uint32_t __fastcall Save__8AtomCoreFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomCore@@UAEIAAVGameOSFile@@@Z");
// win1.41 006739d0 mac 10423c40 AtomCore::GetSaveType(void)
uint32_t __fastcall GetSaveType__8AtomCoreFv(struct GameThing* this) asm("?GetSaveType@AtomCore@@UAEIXZ");

struct UR_GesturingRecognised__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_GesturingRecognised__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 006881d0 mac inlined UR_GesturingRecognised::AtomData::_dt( (void))
void __fastcall __dt__Q222UR_GesturingRecognised8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_GesturingRecognised@@UAEPAXI@Z");

struct UR_Plasma__AtomData
{
  struct BaseAtomModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Plasma__AtomData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f3e0 mac inlined UR_Plasma::AtomData::_dt( (void))
void __fastcall __dt__Q29UR_Plasma8AtomDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAtomData@UR_Plasma@@UAEPAXI@Z");
// win1.41 0055f390 mac inlined UR_Plasma::AtomData::GetDebugText( (void))
char* __fastcall GetDebugText__Q29UR_Plasma8AtomDataFv(struct GameThing* this) asm("?GetDebugText@AtomData@UR_Plasma@@UAEPADXZ");
// win1.41 00696570 mac inlined UR_Plasma::AtomData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q29UR_Plasma8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@AtomData@UR_Plasma@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cd0c0 mac inlined UR_Plasma::AtomData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q29UR_Plasma8AtomDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@AtomData@UR_Plasma@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f380 mac inlined UR_Plasma::AtomData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q29UR_Plasma8AtomDataFv(struct GameThing* this) asm("?GetSaveType@AtomData@UR_Plasma@@UAEIXZ");

struct UR_Plasma__SubCollectionData
{
  struct BaseCollectionModifierData super;  /* 0x0 */
};
static_assert(sizeof(struct UR_Plasma__SubCollectionData) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0055f3a0 mac inlined UR_Plasma::SubCollectionData::_dt( (void))
void __fastcall __dt__Q29UR_Plasma17SubCollectionDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSubCollectionData@UR_Plasma@@UAEPAXI@Z");
// win1.41 0055f340 mac inlined UR_Plasma::SubCollectionData::GetDebugText( (void))
char* __fastcall GetDebugText__Q29UR_Plasma17SubCollectionDataFv(struct GameThing* this) asm("?GetDebugText@SubCollectionData@UR_Plasma@@UAEPADXZ");
// win1.41 006963e0 mac inlined UR_Plasma::SubCollectionData::Load( (GameOSFile &))
uint32_t __fastcall Load__Q29UR_Plasma17SubCollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SubCollectionData@UR_Plasma@@UAEIAAVGameOSFile@@@Z");
// win1.41 006ccf60 mac inlined UR_Plasma::SubCollectionData::Save( (GameOSFile &))
uint32_t __fastcall Save__Q29UR_Plasma17SubCollectionDataFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SubCollectionData@UR_Plasma@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f330 mac inlined UR_Plasma::SubCollectionData::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q29UR_Plasma17SubCollectionDataFv(struct GameThing* this) asm("?GetSaveType@SubCollectionData@UR_Plasma@@UAEIXZ");

#endif /* BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H */
