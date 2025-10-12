#ifndef BW1_DECOMP_STREET_LANTERN_INCLUDED_H
#define BW1_DECOMP_STREET_LANTERN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct Creature;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;

struct GStreetLantern
{
  struct Object super;  /* 0x0 */
  uint8_t field_0x54[0x10];
};
static_assert(sizeof(struct GStreetLantern) == 0x64, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becaf8 mac inlined GStreetLantern::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GStreetLantern asm("??_R0?AVGStreetLantern@@@8");
// win1.41 009ad9d8 mac inlined GStreetLantern::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GStreetLantern asm("??_R1A@?0A@A@GStreetLantern@@8");
// win1.41 009ad9f0 mac inlined GStreetLantern::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GStreetLantern asm("??_R2GStreetLantern@@8");
// win1.41 009ada08 mac inlined GStreetLantern::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GStreetLantern asm("??_R3GStreetLantern@@8");
// win1.41 008ea8d4 mac 109e0fa4 GStreetLantern::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14GStreetLantern asm("??_R4GStreetLantern@@6B@");
// win1.41 008ea8d8 mac 109e0fac GStreetLantern::`vftable'
extern const struct ObjectVftable __vt__14GStreetLantern asm("??_7GStreetLantern@@6B@");

// Override methods

// win1.41 00561470 mac 105353e0 GStreetLantern::_dt(void)
void __fastcall __dt__14GStreetLanternFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGStreetLantern@@UAEPAXI@Z");
// win1.41 00734ab0 mac 10534d50 GStreetLantern::ToBeDeleted(int)
void __fastcall ToBeDeleted__14GStreetLanternFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GStreetLantern@@UAEXH@Z");
// win1.41 00561460 mac 105347c0 GStreetLantern::GetDebugText(void)
char* __fastcall GetDebugText__14GStreetLanternFv(struct GameThing* this) asm("?GetDebugText@GStreetLantern@@UAEPADXZ");
// win1.41 00734be0 mac 10534ab0 GStreetLantern::Load(GameOSFile &)
uint32_t __fastcall Load__14GStreetLanternFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GStreetLantern@@UAEIAAVGameOSFile@@@Z");
// win1.41 00734c90 mac 10534980 GStreetLantern::Save(GameOSFile &)
uint32_t __fastcall Save__14GStreetLanternFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GStreetLantern@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561450 mac 10534780 GStreetLantern::GetSaveType(void)
uint32_t __fastcall GetSaveType__14GStreetLanternFv(struct GameThing* this) asm("?GetSaveType@GStreetLantern@@UAEIXZ");
// win1.41 00561440 mac 10534740 GStreetLantern::IsStreetLantern(void)
uint32_t __fastcall IsStreetLantern__14GStreetLanternFv(struct GameThingWithPos* this) asm("?IsStreetLantern@GStreetLantern@@UAEIXZ");
// win1.41 00734d40 mac 10003680 GStreetLantern::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__14GStreetLanternFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@GStreetLantern@@UAEIXZ");
// win1.41 00734a70 mac 1002d8c0 GStreetLantern::Draw(void)
void __fastcall Draw__14GStreetLanternFv(struct Object* this) asm("?Draw@GStreetLantern@@UAEXXZ");
// win1.41 00734810 mac 105350a0 GStreetLantern::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__14GStreetLanternFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@GStreetLantern@@UAEXABUMapCoords@@@Z");
// win1.41 007349d0 mac 10535050 GStreetLantern::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__14GStreetLanternFv(struct Object* this) asm("?InteractsWithPhysicsObjects@GStreetLantern@@UAE_NXZ");
// win1.41 00734d50 mac 10534800 GStreetLantern::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__14GStreetLanternFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@GStreetLantern@@UAE_NPAVCreature@@@Z");
// win1.41 00734b10 mac 10534be0 GStreetLantern::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__14GStreetLanternFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@GStreetLantern@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LIST_HEAD(GStreetLantern);

#endif /* BW1_DECOMP_STREET_LANTERN_INCLUDED_H */
