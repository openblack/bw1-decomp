#ifndef BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H
#define BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Villager.h" /* For struct Villager */

// Forward Declares

struct Base;
struct GSpecialVillagerInfo;
struct GVillagerInfo;
struct GameOSFile;
struct GameThing;
struct MapCoords;
struct Object;

struct SpecialVillager
{
  struct Villager super;  /* 0x0 */
  uint32_t field_0x134;  /* 0x130 */
};
static_assert(sizeof(struct SpecialVillager) == 0x134, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8f48 mac inlined SpecialVillager::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15SpecialVillager asm("??_R0?AVSpecialVillager@@@8");
// win1.41 009ad8d0 mac inlined SpecialVillager::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15SpecialVillager asm("??_R1A@?0A@A@SpecialVillager@@8");
// win1.41 009ad8e8 mac inlined SpecialVillager::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15SpecialVillager asm("??_R2SpecialVillager@@8");
// win1.41 009ad910 mac inlined SpecialVillager::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15SpecialVillager asm("??_R3SpecialVillager@@8");
// win1.41 008e15b0 mac 1073bc5c SpecialVillager::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15SpecialVillager asm("??_R4SpecialVillager@@6B@");
// win1.41 008e15b4 mac 106f5d78 SpecialVillager::`vftable'
extern const struct VillagerVftable __vt__15SpecialVillager asm("??_7SpecialVillager@@6B@");

// Static methods

// win1.41 0071f1a0 mac 10147420 SpecialVillager::Create(MapCoords const &, GVillagerInfo const *, unsigned long, int, GSpecialVillagerInfo *)
struct SpecialVillager* __cdecl Create__15SpecialVillagerFRC9MapCoordsPC13GVillagerInfoUliP20GSpecialVillagerInfo(const struct MapCoords* coords, const struct GVillagerInfo* villager_info, uint32_t age, bool skeleton, struct GSpecialVillagerInfo* info) asm("?Create@SpecialVillager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KHPAVGSpecialVillagerInfo@@@Z");

// Non-virtual methods

// win1.41 0071f470 mac 101470a0 SpecialVillager::CanShowName(void)
bool __fastcall CanShowName__15SpecialVillagerFv(struct SpecialVillager* this) asm("?CanShowName@SpecialVillager@@QAE_NXZ");

// Override methods

// win1.41 00560fe0 mac 10147590 SpecialVillager::_dt(void)
void __fastcall __dt__15SpecialVillagerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpecialVillager@@UAEPAXI@Z");
// win1.41 0071f0c0 mac 101477e0 SpecialVillager::ToBeDeleted(int)
void __fastcall ToBeDeleted__15SpecialVillagerFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SpecialVillager@@UAEXH@Z");
// win1.41 00560fd0 mac 10147cc0 SpecialVillager::GetDebugText(void)
char* __fastcall GetDebugText__15SpecialVillagerFv(struct GameThing* this) asm("?GetDebugText@SpecialVillager@@UAEPADXZ");
// win1.41 0071f5d0 mac 10146d20 SpecialVillager::Load(GameOSFile &)
uint32_t __fastcall Load__15SpecialVillagerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpecialVillager@@UAEIAAVGameOSFile@@@Z");
// win1.41 0071f560 mac 10146e00 SpecialVillager::Save(GameOSFile &)
uint32_t __fastcall Save__15SpecialVillagerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpecialVillager@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560fc0 mac 10147c80 SpecialVillager::GetSaveType(void)
uint32_t __fastcall GetSaveType__15SpecialVillagerFv(struct GameThing* this) asm("?GetSaveType@SpecialVillager@@UAEIXZ");
// win1.41 0071f3d0 mac 1002d450 SpecialVillager::Draw(void)
void __fastcall Draw__15SpecialVillagerFv(struct Object* this) asm("?Draw@SpecialVillager@@UAEXXZ");
// win1.41 0071f490 mac 10147040 SpecialVillager::GetVillagerName(void)
const char* __fastcall GetVillagerName__15SpecialVillagerFv(struct Villager* this) asm("?GetVillagerName@SpecialVillager@@UAEPBDXZ");
// win1.41 0071f240 mac 10068e20 SpecialVillager::DrawVillagerInfo(void)
uint32_t __fastcall DrawVillagerInfo__15SpecialVillagerFv(struct Villager* this) asm("?DrawVillagerInfo@SpecialVillager@@UAEIXZ");

#endif /* BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H */
