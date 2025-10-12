#ifndef BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct Creature;
struct EffectValues;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct Town;

struct TownDesireFlags
{
  struct Object super;  /* 0x0 */
  uint8_t field_0x54[0x44];
};
static_assert(sizeof(struct TownDesireFlags) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be02b8 mac inlined TownDesireFlags::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15TownDesireFlags asm("??_R0?AVTownDesireFlags@@@8");
// win1.41 009ad668 mac inlined TownDesireFlags::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15TownDesireFlags asm("??_R1A@?0A@A@TownDesireFlags@@8");
// win1.41 009ad680 mac inlined TownDesireFlags::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15TownDesireFlags asm("??_R2TownDesireFlags@@8");
// win1.41 009ad698 mac inlined TownDesireFlags::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15TownDesireFlags asm("??_R3TownDesireFlags@@8");
// win1.41 008e9b68 mac 1098d0cc TownDesireFlags::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15TownDesireFlags asm("??_R4TownDesireFlags@@6B@");
// win1.41 008e9b6c mac 106f814c TownDesireFlags::`vftable'
extern const struct ObjectVftable __vt__15TownDesireFlags asm("??_7TownDesireFlags@@6B@");

// Override methods

// win1.41 0055dae0 mac 1055db90 TownDesireFlags::_dt(void)
void __fastcall __dt__15TownDesireFlagsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTownDesireFlags@@UAEPAXI@Z");
// win1.41 00746a00 mac 1055db30 TownDesireFlags::ToBeDeleted(int)
void __fastcall ToBeDeleted__15TownDesireFlagsFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@TownDesireFlags@@UAEXH@Z");
// win1.41 0055da70 mac 103540e0 TownDesireFlags::GetTown(void)
struct Town* __fastcall GetTown__15TownDesireFlagsFv(struct GameThing* this) asm("?GetTown@TownDesireFlags@@UAEPAVTown@@XZ");
// win1.41 0055dad0 mac 1055c0c0 TownDesireFlags::GetDebugText(void)
char* __fastcall GetDebugText__15TownDesireFlagsFv(struct GameThing* this) asm("?GetDebugText@TownDesireFlags@@UAEPADXZ");
// win1.41 00747030 mac 1055c440 TownDesireFlags::Load(GameOSFile &)
uint32_t __fastcall Load__15TownDesireFlagsFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@TownDesireFlags@@UAEIAAVGameOSFile@@@Z");
// win1.41 00746f10 mac 1055c600 TownDesireFlags::Save(GameOSFile &)
uint32_t __fastcall Save__15TownDesireFlagsFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@TownDesireFlags@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055dac0 mac 1055c080 TownDesireFlags::GetSaveType(void)
uint32_t __fastcall GetSaveType__15TownDesireFlagsFv(struct GameThing* this) asm("?GetSaveType@TownDesireFlags@@UAEIXZ");
// win1.41 0055daa0 mac 1055bff0 TownDesireFlags::IsTownDesireFlag(void)
uint32_t __fastcall IsTownDesireFlag__15TownDesireFlagsFv(struct GameThingWithPos* this) asm("?IsTownDesireFlag@TownDesireFlags@@UAEIXZ");
// win1.41 00746ec0 mac 1055d420 TownDesireFlags::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__15TownDesireFlagsFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@TownDesireFlags@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00746ed0 mac 1055d3c0 TownDesireFlags::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__15TownDesireFlagsFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@TownDesireFlags@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00746ef0 mac 10018a10 TownDesireFlags::GetFOVHelpMessageSet(void)
uint32_t __fastcall GetFOVHelpMessageSet__15TownDesireFlagsFv(struct GameThingWithPos* this) asm("?GetFOVHelpMessageSet@TownDesireFlags@@UAEIXZ");
// win1.41 00746f00 mac 1055c7e0 TownDesireFlags::GetFOVHelpCondition(void)
uint32_t __fastcall GetFOVHelpCondition__15TownDesireFlagsFv(struct GameThingWithPos* this) asm("?GetFOVHelpCondition@TownDesireFlags@@UAEIXZ");
// win1.41 00746a20 mac 100550f0 TownDesireFlags::Process(void)
uint32_t __fastcall Process__15TownDesireFlagsFv(struct Object* this) asm("?Process@TownDesireFlags@@UAEIXZ");
// win1.41 0055da80 mac 1055bf60 TownDesireFlags::GetMesh( const(void))
int __fastcall GetMesh__15TownDesireFlagsCFv(const struct Object* this) asm("?GetMesh@TownDesireFlags@@UBEHXZ");
// win1.41 00746a30 mac 100364a0 TownDesireFlags::Draw(void)
void __fastcall Draw__15TownDesireFlagsFv(struct Object* this) asm("?Draw@TownDesireFlags@@UAEXXZ");
// win1.41 00746dc0 mac 1055d830 TownDesireFlags::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__15TownDesireFlagsFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@TownDesireFlags@@UAEXABUMapCoords@@@Z");
// win1.41 0055dab0 mac 1055c030 TownDesireFlags::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__15TownDesireFlagsFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@TownDesireFlags@@UAEIPAVEffectValues@@@Z");
// win1.41 00746a10 mac 1055dae0 TownDesireFlags::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__15TownDesireFlagsFv(struct Object* this) asm("?InteractsWithPhysicsObjects@TownDesireFlags@@UAE_NXZ");
// win1.41 00746de0 mac 1055d7e0 TownDesireFlags::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__15TownDesireFlagsFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@TownDesireFlags@@UAE_NPAVCreature@@@Z");
// win1.41 0055da90 mac 1055bfa0 TownDesireFlags::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__15TownDesireFlagsFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@TownDesireFlags@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H */
