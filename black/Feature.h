#ifndef BW1_DECOMP_FEATURE_INCLUDED_H
#define BW1_DECOMP_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct Base;
struct Creature;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct Object;

struct Feature
{
  struct MultiMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct Feature) == 0x7c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9548 mac inlined Feature::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7Feature asm("??_R0?AVFeature@@@8");
// win1.41 009a7930 mac inlined Feature::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7Feature asm("??_R1A@?0A@A@Feature@@8");
// win1.41 009a79b0 mac inlined Feature::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7Feature asm("??_R2Feature@@8");
// win1.41 009a79d0 mac inlined Feature::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7Feature asm("??_R3Feature@@8");
// win1.41 008c231c mac 1073d268 Feature::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__7Feature asm("??_R4Feature@@6B@");
// win1.41 008c2320 mac 1073e240 Feature::`vftable'
extern const struct MultiMapFixedVftable __vt__7Feature asm("??_7Feature@@6B@");

// Override methods

// win1.41 00422e90 mac 100a7a50 Feature::_dt(void)
void __fastcall __dt__7FeatureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFeature@@UAEPAXI@Z");
// win1.41 00422e80 mac 100d1880 Feature::GetDebugText(void)
char* __fastcall GetDebugText__7FeatureFv(struct GameThing* this) asm("?GetDebugText@Feature@@UAEPADXZ");
// win1.41 00422e70 mac 100d1840 Feature::GetSaveType(void)
uint32_t __fastcall GetSaveType__7FeatureFv(struct GameThing* this) asm("?GetSaveType@Feature@@UAEIXZ");
// win1.41 00422140 mac 100a5490 Feature::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__7FeatureFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Feature@@UAEIXZ");
// win1.41 00422150 mac 100a54d0 Feature::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__7FeatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@Feature@@UAEIPAVCreature@@@Z");
// win1.41 005276d0 mac 100d0c30 Feature::IsMushroom(Creature *)
uint32_t __fastcall IsMushroom__7FeatureFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsMushroom@Feature@@UAEIPAVCreature@@@Z");
// win1.41 004220e0 mac 100a5350 Feature::IsFeature(void)
uint32_t __fastcall IsFeature__7FeatureFv(struct GameThingWithPos* this) asm("?IsFeature@Feature@@UAEIXZ");
// win1.41 005277d0 mac 100d0890 Feature::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__7FeatureFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@Feature@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00527820 mac 100d07b0 Feature::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__7FeatureFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@Feature@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 005276c0 mac 10008370 Feature::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__7FeatureFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Feature@@UAEIXZ");
// win1.41 004220d0 mac 100a52b0 Feature::GetMesh( const(void))
int __fastcall GetMesh__7FeatureCFv(const struct Object* this) asm("?GetMesh@Feature@@UBEHXZ");
// win1.41 00518690 mac 100238a0 Feature::Draw(void)
void __fastcall Draw__7FeatureFv(struct Object* this) asm("?Draw@Feature@@UAEXXZ");
// win1.41 005275b0 mac 100d0dc0 Feature::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__7FeatureFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Feature@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_FEATURE_INCLUDED_H */
