#ifndef BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H
#define BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "LightSheet.h" /* For struct LightSheet */

// Forward Declares

struct Base;
struct EffectValues;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;
struct WorshipSite;

struct Q212WorshipTotem13TChargingData
{
  uint8_t field_0x0;
  struct LightSheet light_sheet;
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
};
static_assert(sizeof(struct Q212WorshipTotem13TChargingData) == 0x70, "Data type is of wrong size");

// Constructors

// win1.41 00780af0 mac inlined WorshipTotem::TChargingData::TChargingData(void)
struct Q212WorshipTotem13TChargingData* __fastcall __ct__Q212WorshipTotem13TChargingDataFv(struct Q212WorshipTotem13TChargingData* this);

struct WorshipTotem
{
  struct CitadelPart super;  /* 0x0 */
  uint32_t field_0x8c;
  struct Q212WorshipTotem13TChargingData charging_data;  /* 0x90 */
  struct WorshipSite* site;  /* 0x100 */
};
static_assert(sizeof(struct WorshipTotem) == 0x104, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8ee8 mac inlined WorshipTotem::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12WorshipTotem asm("??_R0?AVWorshipTotem@@@8");
// win1.41 009ba510 mac inlined WorshipTotem::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12WorshipTotem asm("??_R1A@?0A@A@WorshipTotem@@8");
// win1.41 009ba528 mac inlined WorshipTotem::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12WorshipTotem asm("??_R2WorshipTotem@@8");
// win1.41 009ba550 mac inlined WorshipTotem::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12WorshipTotem asm("??_R3WorshipTotem@@8");
// win1.41 0099e1b8 mac 1073a768 WorshipTotem::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12WorshipTotem asm("??_R4WorshipTotem@@6B@");
// win1.41 0099e1bc mac 106f5d3c WorshipTotem::`vftable'
extern const struct MultiMapFixedVftable __vt__12WorshipTotem asm("??_7WorshipTotem@@6B@");

// Static methods

// win1.41 00780930 mac 105b8440 WorshipTotem::Create(WorshipSite *)
struct WorshipTotem* __cdecl Create__12WorshipTotemFP11WorshipSite(struct WorshipSite* site) asm("?Create@WorshipTotem@@SAPAV1@PAVWorshipSite@@@Z");

// Constructors

// win1.41 00780840 mac 105b8640 WorshipTotem::WorshipTotem(WorshipSite *)
struct WorshipTotem* __fastcall __ct__12WorshipTotemFP11WorshipSite(struct WorshipTotem* this, const void* edx, struct WorshipSite* site) asm("??0WorshipTotem@@QAE@PAVWorshipSite@@@Z");

// Override methods

// win1.41 00780810 mac 105b74d0 WorshipTotem::_dt(void)
void __fastcall __dt__12WorshipTotemFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWorshipTotem@@UAEPAXI@Z");
// win1.41 007808e0 mac 105b8520 WorshipTotem::ToBeDeleted(int)
void __fastcall ToBeDeleted__12WorshipTotemFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@WorshipTotem@@UAEXH@Z");
// win1.41 00780800 mac 105b7760 WorshipTotem::GetDebugText(void)
char* __fastcall GetDebugText__12WorshipTotemFv(struct GameThing* this) asm("?GetDebugText@WorshipTotem@@UAEPADXZ");
// win1.41 00780f10 mac 105b7910 WorshipTotem::Load(GameOSFile &)
uint32_t __fastcall Load__12WorshipTotemFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@WorshipTotem@@UAEIAAVGameOSFile@@@Z");
// win1.41 00780f90 mac 105b7820 WorshipTotem::Save(GameOSFile &)
uint32_t __fastcall Save__12WorshipTotemFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@WorshipTotem@@UAEIAAVGameOSFile@@@Z");
// win1.41 007807f0 mac 105b7720 WorshipTotem::GetSaveType(void)
uint32_t __fastcall GetSaveType__12WorshipTotemFv(struct GameThing* this) asm("?GetSaveType@WorshipTotem@@UAEIXZ");
// win1.41 00780f00 mac 105b7a00 WorshipTotem::ResolveLoad(void)
void __fastcall ResolveLoad__12WorshipTotemFv(struct GameThing* this) asm("?ResolveLoad@WorshipTotem@@UAEXXZ");
// win1.41 00780ad0 mac 105b8160 WorshipTotem::GetPSysPower( const(void))
float __fastcall GetPSysPower__12WorshipTotemCFv(const struct GameThingWithPos* this) asm("?GetPSysPower@WorshipTotem@@UBEMXZ");
// win1.41 00780a80 mac 105b8330 WorshipTotem::CalculateDesireForFood(void)
float __fastcall CalculateDesireForFood__12WorshipTotemFv(struct GameThingWithPos* this) asm("?CalculateDesireForFood@WorshipTotem@@UAEMXZ");
// win1.41 00780a90 mac 105b82c0 WorshipTotem::CalculateDesireForRest(void)
float __fastcall CalculateDesireForRest__12WorshipTotemFv(struct GameThingWithPos* this) asm("?CalculateDesireForRest@WorshipTotem@@UAEMXZ");
// win1.41 00780aa0 mac 105b8240 WorshipTotem::CalculatePeopleHidingIndicator(void)
float __fastcall CalculatePeopleHidingIndicator__12WorshipTotemFv(struct GameThingWithPos* this) asm("?CalculatePeopleHidingIndicator@WorshipTotem@@UAEMXZ");
// win1.41 007807e0 mac 105b76e0 WorshipTotem::IsSacrificeAltar(void)
uint32_t __fastcall IsSacrificeAltar__12WorshipTotemFv(struct GameThingWithPos* this) asm("?IsSacrificeAltar@WorshipTotem@@UAEIXZ");
// win1.41 007807b0 mac inlined WorshipTotem::SetSpecularColor(LH3DColor)
void __fastcall SetSpecularColor__12WorshipTotemF9LH3DColor(struct Object* this, const void* edx, struct LH3DColor param_1) asm("?SetSpecularColor@WorshipTotem@@UAEXULH3DColor@@@Z");
// win1.41 007807c0 mac 105b7650 WorshipTotem::GetSpecularColor(void)
struct LH3DColor __fastcall GetSpecularColor__12WorshipTotemFv(struct Object* this) asm("?GetSpecularColor@WorshipTotem@@UAE?AULH3DColor@@XZ");
// win1.41 00780a70 mac 105b83a0 WorshipTotem::GetMesh( const(void))
int __fastcall GetMesh__12WorshipTotemCFv(const struct Object* this) asm("?GetMesh@WorshipTotem@@UBEHXZ");
// win1.41 00519360 mac 100c7bd0 WorshipTotem::Draw(void)
void __fastcall Draw__12WorshipTotemFv(struct Object* this) asm("?Draw@WorshipTotem@@UAEXXZ");
// win1.41 00780ab0 mac 105b81d0 WorshipTotem::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__12WorshipTotemFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@WorshipTotem@@UAEXABUMapCoords@@@Z");
// win1.41 007807d0 mac 105b7690 WorshipTotem::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__12WorshipTotemFv(struct Object* this) asm("?Get3DType@WorshipTotem@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 00780790 mac 105b7570 WorshipTotem::IsSpellSeedReturnPoint( const(void))
bool __fastcall IsSpellSeedReturnPoint__12WorshipTotemCFv(const struct Object* this) asm("?IsSpellSeedReturnPoint@WorshipTotem@@UBE_NXZ");
// win1.41 007807a0 mac 105b75c0 WorshipTotem::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__12WorshipTotemFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@WorshipTotem@@UAEIPAVEffectValues@@@Z");

#endif /* BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H */
