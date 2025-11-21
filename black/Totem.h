#ifndef BW1_DECOMP_TOTEM_INCLUDED_H
#define BW1_DECOMP_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Base;
struct ControlHandUpdateInfo;
struct Creature;
struct EffectValues;
struct GAbodeInfo;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct Object;
struct Town;

struct Totem
{
  struct Abode super;  /* 0x0 */
  struct MapCoords field_0xc4;
  struct MapCoords field_0xd0;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
};
static_assert(sizeof(struct Totem) == 0xe4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becf30 mac inlined Totem::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Totem asm("??_R0?AVTotem@@@8");
// win1.41 009ae8e8 mac inlined Totem::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Totem asm("??_R1A@?0A@A@Totem@@8");
// win1.41 009ae4c8 mac inlined Totem::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Totem asm("??_R2Totem@@8");
// win1.41 009ae4f0 mac inlined Totem::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Totem asm("??_R3Totem@@8");
// win1.41 008ef578 mac 10755f88 Totem::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5Totem asm("??_R4Totem@@6B@");
// win1.41 008ef57c mac 10755fc8 Totem::`vftable'
extern const struct AbodeVftable __vt__5Totem asm("??_7Totem@@6B@");

// Constructors

// win1.41 00737390 mac 105435b0 Totem::Totem(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct Totem* __fastcall __ct__5TotemFRC9MapCoordsPC10GAbodeInfoP4Townfffi(struct Totem* this, const void* edx, const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float param_4, float param_5, float param_6, int param_7) asm("??0Totem@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");

// Override methods

// win1.41 00561580 mac 10126730 Totem::_dt(void)
void __fastcall __dt__5TotemFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTotem@@UAEPAXI@Z");
// win1.41 00737410 mac 10543540 Totem::Delete(void)
void __fastcall Delete__5TotemFv(struct Base* this) asm("?Delete@Totem@@UAEXXZ");
// win1.41 00737430 mac 105434c0 Totem::ToBeDeleted(int)
void __fastcall ToBeDeleted__5TotemFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Totem@@UAEXH@Z");
// win1.41 00561570 mac 105427e0 Totem::GetDebugText(void)
char* __fastcall GetDebugText__5TotemFv(struct GameThing* this) asm("?GetDebugText@Totem@@UAEPADXZ");
// win1.41 00737800 mac 10542950 Totem::Load(GameOSFile &)
uint32_t __fastcall Load__5TotemFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Totem@@UAEIAAVGameOSFile@@@Z");
// win1.41 007378b0 mac 10542820 Totem::Save(GameOSFile &)
uint32_t __fastcall Save__5TotemFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Totem@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561560 mac 105427b0 Totem::GetSaveType(void)
uint32_t __fastcall GetSaveType__5TotemFv(struct GameThing* this) asm("?GetSaveType@Totem@@UAEIXZ");
// win1.41 00561530 mac 101337e0 Totem::IsCastShadowAtNight(void)
uint32_t __fastcall IsCastShadowAtNight__5TotemFv(struct GameThingWithPos* this) asm("?IsCastShadowAtNight@Totem@@UAEIXZ");
// win1.41 00561510 mac 10133740 Totem::CanBePlayedWithByCreature(Creature *)
uint32_t __fastcall CanBePlayedWithByCreature__5TotemFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePlayedWithByCreature@Totem@@UAEIPAVCreature@@@Z");
// win1.41 00561500 mac 101336f0 Totem::CanBeImpressedByCreature(Creature *)
uint32_t __fastcall CanBeImpressedByCreature__5TotemFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeImpressedByCreature@Totem@@UAEIPAVCreature@@@Z");
// win1.41 004e3e60 mac 105e6830 Totem::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
uint32_t __fastcall DoesTotemBelongToATownWhichIsVeryImpressedIndeed__5TotemFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@Totem@@UAEIPAVCreature@@@Z");
// win1.41 0051aba0 mac 100c5910 Totem::Draw(void)
void __fastcall Draw__5TotemFv(struct Object* this) asm("?Draw@Totem@@UAEXXZ");
// win1.41 00737490 mac 10543360 Totem::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__5TotemFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Totem@@UAEXABUMapCoords@@@Z");
// win1.41 00737520 mac 10543140 Totem::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t __fastcall ValidForLockedSelectProcess__5TotemFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForLockedSelectProcess@Totem@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00737570 mac 10543060 Totem::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyStartLockedSelect__5TotemFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyStartLockedSelect@Totem@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 007375c0 mac 10542ff0 Totem::NetworkUnfriendlyStartLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyStartLockedSelect__5TotemFv(struct Object* this) asm("?NetworkUnfriendlyStartLockedSelect@Totem@@UAEIXZ");
// win1.41 00737610 mac 10542df0 Totem::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
uint32_t __fastcall NetworkUnfriendlyLockedSelect__5TotemFP21ControlHandUpdateInfo(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1) asm("?NetworkUnfriendlyLockedSelect@Totem@@UAEIPAUControlHandUpdateInfo@@@Z");
// win1.41 007375e0 mac 10542f60 Totem::NetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyEndLockedSelect__5TotemFv(struct Object* this) asm("?NetworkUnfriendlyEndLockedSelect@Totem@@UAEIXZ");
// win1.41 00737600 mac 10542f00 Totem::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
uint32_t __fastcall NetworkFriendlyEndLockedSelect__5TotemFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyEndLockedSelect@Totem@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00561520 mac 10133790 Totem::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__5TotemFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@Totem@@UAEIPAVEffectValues@@@Z");

#endif /* BW1_DECOMP_TOTEM_INCLUDED_H */
