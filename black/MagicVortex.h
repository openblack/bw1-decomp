#ifndef BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H
#define BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum VORTEX_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MobileStatic.h" /* For struct MobileStatic */
#include "MultiMapFixed.h" /* For struct MultiMapFixedVftable */

// Forward Declares

struct Base;
struct Creature;
struct EffectValues;
struct Flock;
struct GInterfaceStatus;
struct GVortexInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LandscapeVortex;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PhysicsObject;
struct Town;
struct Villager;

struct LandscapeVortexVftable
{
  struct MultiMapFixedVftable super;  /* 0x0 */
  void (__fastcall* ProcessContentsOfVortex)(struct LandscapeVortex* this);  /* 0x90c */
  void (__fastcall* SetFlockParams)(struct LandscapeVortex* this, const void* edx, const struct MapCoords* coords, float param_2, float param_3, struct Flock* flock);  /* 0x910 */
  bool (__fastcall* IsVillagerBeingThrownByThisVortex)(struct LandscapeVortex* this, const void* edx, struct Villager* villager);
};
static_assert(sizeof(struct LandscapeVortexVftable) == 0x918, "Data type is of wrong size");

struct LandscapeVortex
{
  struct MobileStatic super;  /* 0x0 */
  struct LandscapeVortex* next;  /* 0x88 */
  float field_0x8c;
  float field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t field_0xac;
  uint32_t field_0xb0;
  uint32_t field_0xb4;
  uint8_t field_0xb8;
  uint32_t field_0xbc;
  uint32_t field_0xc0;
  uint32_t field_0xc4;
  uint32_t field_0xc8;
  uint32_t field_0xcc;
  uint32_t field_0xd0;
  uint32_t field_0xd4;
  uint32_t field_0xd8;
  uint32_t field_0xdc;
  enum VORTEX_TYPE type;  /* 0xe0 */
  uint32_t field_0xe4;
  float field_0xe8;
};
static_assert(sizeof(struct LandscapeVortex) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf0200 mac inlined LandscapeVortex::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15LandscapeVortex asm("??_R0?AVLandscapeVortex@@@8");
// win1.41 009b1cc8 mac inlined LandscapeVortex::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15LandscapeVortex asm("??_R1A@?0A@A@LandscapeVortex@@8");
// win1.41 009b1e30 mac inlined LandscapeVortex::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15LandscapeVortex asm("??_R2LandscapeVortex@@8");
// win1.41 009b1e58 mac inlined LandscapeVortex::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15LandscapeVortex asm("??_R3LandscapeVortex@@8");
// win1.41 0092ee7c mac 1099b714 LandscapeVortex::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15LandscapeVortex asm("??_R4LandscapeVortex@@6B@");
// win1.41 0092ee80 mac 106f8abc LandscapeVortex::`vftable'
extern const struct LandscapeVortexVftable __vt__15LandscapeVortex asm("??_7LandscapeVortex@@6B@");

// Constructors

// win1.41 005fe7a0 mac 103b69b0 LandscapeVortex::LandscapeVortex(void)
struct LandscapeVortex* __fastcall __ct__15LandscapeVortexFv(struct LandscapeVortex* this) asm("??0LandscapeVortex@@QAE@XZ");

// Non-virtual methods

// win1.41 005fd570 mac 103b8c60 LandscapeVortex::GetVortexInfo(void)
struct GVortexInfo* __fastcall GetVortexInfo__15LandscapeVortexFv(struct LandscapeVortex* this) asm("?GetVortexInfo@LandscapeVortex@@QAEPAVGVortexInfo@@XZ");

// Override methods

// win1.41 005fe7f0 mac 103b7ce0 LandscapeVortex::_dt(void)
void __fastcall __dt__15LandscapeVortexFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GLandscapeVortex@@UAEPAXI@Z");
// win1.41 005fe8f0 mac 103b63a0 LandscapeVortex::ToBeDeleted(int)
void __fastcall ToBeDeleted__15LandscapeVortexFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@LandscapeVortex@@UAEXH@Z");
// win1.41 00600210 mac 103b3c80 LandscapeVortex::Load(GameOSFile &)
uint32_t __fastcall Load__15LandscapeVortexFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@LandscapeVortex@@UAEIAAVGameOSFile@@@Z");
// win1.41 00600000 mac 103b4050 LandscapeVortex::Save(GameOSFile &)
uint32_t __fastcall Save__15LandscapeVortexFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@LandscapeVortex@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fd610 mac 103b93a0 LandscapeVortex::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__15LandscapeVortexFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@LandscapeVortex@@UAEXH@Z");
// win1.41 005fd620 mac 103b93e0 LandscapeVortex::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005fd630 mac 103b9430 LandscapeVortex::CanBeSetOnFire(Creature *)
uint32_t __fastcall CanBeSetOnFire__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeSetOnFire@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005fd640 mac 103b9480 LandscapeVortex::CanBeStompedOnByCreature(Creature *)
uint32_t __fastcall CanBeStompedOnByCreature__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStompedOnByCreature@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005fd650 mac 103b94e0 LandscapeVortex::CanBeThrownByCreature(Creature *)
uint32_t __fastcall CanBeThrownByCreature__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeThrownByCreature@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005fd660 mac 103b9530 LandscapeVortex::CanBePutInAStoragePit(Creature *)
uint32_t __fastcall CanBePutInAStoragePit__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePutInAStoragePit@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005fd670 mac 103b9580 LandscapeVortex::CanBeDestroyedByStoning(Creature *)
uint32_t __fastcall CanBeDestroyedByStoning__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeDestroyedByStoning@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005fd680 mac 103b95d0 LandscapeVortex::CanBeStonedAndEatenByCreature(Creature *)
uint32_t __fastcall CanBeStonedAndEatenByCreature__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStonedAndEatenByCreature@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005fd690 mac 103b9630 LandscapeVortex::CanBeExaminedByCreature(Creature *)
uint32_t __fastcall CanBeExaminedByCreature__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeExaminedByCreature@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005fd6a0 mac 103b9680 LandscapeVortex::CanBeFoughtByCreature(Creature *)
uint32_t __fastcall CanBeFoughtByCreature__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFoughtByCreature@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005fd6b0 mac 103b96d0 LandscapeVortex::CanActAsAContainer(Creature *)
uint32_t __fastcall CanActAsAContainer__15LandscapeVortexFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanActAsAContainer@LandscapeVortex@@UAEIPAVCreature@@@Z");
// win1.41 005ffff0 mac 103b4430 LandscapeVortex::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__15LandscapeVortexFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@LandscapeVortex@@UAEIXZ");
// win1.41 005fedf0 mac 103b5d50 LandscapeVortex::Create3DObject(void)
void __fastcall Create3DObject__15LandscapeVortexFv(struct Object* this) asm("?Create3DObject@LandscapeVortex@@UAEXXZ");
// win1.41 005fd600 mac 103b9350 LandscapeVortex::HandShouldFeelWithMeshIntersect(void)
uint32_t __fastcall HandShouldFeelWithMeshIntersect__15LandscapeVortexFv(struct Object* this) asm("?HandShouldFeelWithMeshIntersect@LandscapeVortex@@UAEIXZ");
// win1.41 005fee20 mac 103b5d10 LandscapeVortex::GetMesh( const(void))
int __fastcall GetMesh__15LandscapeVortexCFv(const struct Object* this) asm("?GetMesh@LandscapeVortex@@UBEHXZ");
// win1.41 005ffdc0 mac 103b4900 LandscapeVortex::Draw(void)
void __fastcall Draw__15LandscapeVortexFv(struct Object* this) asm("?Draw@LandscapeVortex@@UAEXXZ");
// win1.41 005fee30 mac 103b5770 LandscapeVortex::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__15LandscapeVortexFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@LandscapeVortex@@UAEXABUMapCoords@@@Z");
// win1.41 005ff300 mac 103b5710 LandscapeVortex::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__15LandscapeVortexFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@LandscapeVortex@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 005fffa0 mac 103b4580 LandscapeVortex::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__15LandscapeVortexFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@LandscapeVortex@@UAEIPAVEffectValues@@@Z");
// win1.41 005fff80 mac 103b4620 LandscapeVortex::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__15LandscapeVortexFv(struct Object* this) asm("?InteractsWithPhysicsObjects@LandscapeVortex@@UAE_NXZ");
// win1.41 005fff90 mac 103b45d0 LandscapeVortex::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__15LandscapeVortexFv(struct Object* this) asm("?CanBecomeAPhysicsObject@LandscapeVortex@@UAE_NXZ");

struct LandscapeVortexIn
{
  struct LandscapeVortex super;  /* 0x0 */
};
static_assert(sizeof(struct LandscapeVortexIn) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4098 mac inlined LandscapeVortexIn::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17LandscapeVortexIn asm("??_R0?AVLandscapeVortexIn@@@8");
// win1.41 009b1d50 mac inlined LandscapeVortexIn::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17LandscapeVortexIn asm("??_R1A@?0A@A@LandscapeVortexIn@@8");
// win1.41 009b1d68 mac inlined LandscapeVortexIn::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17LandscapeVortexIn asm("??_R2LandscapeVortexIn@@8");
// win1.41 009b1d98 mac inlined LandscapeVortexIn::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17LandscapeVortexIn asm("??_R3LandscapeVortexIn@@8");

// Override methods

// win1.41 005fd7b0 mac 103b98f0 LandscapeVortexIn::_dt(void)
void __fastcall __dt__17LandscapeVortexInFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GLandscapeVortexIn@@UAEPAXI@Z");
// win1.41 005fd860 mac 103b8770 LandscapeVortexIn::ToBeDeleted(int)
void __fastcall ToBeDeleted__17LandscapeVortexInFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@LandscapeVortexIn@@UAEXH@Z");
// win1.41 005fd7a0 mac 103b99f0 LandscapeVortexIn::GetDebugText(void)
char* __fastcall GetDebugText__17LandscapeVortexInFv(struct GameThing* this) asm("?GetDebugText@LandscapeVortexIn@@UAEPADXZ");
// win1.41 00600550 mac 103b3a80 LandscapeVortexIn::Load(GameOSFile &)
uint32_t __fastcall Load__17LandscapeVortexInFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@LandscapeVortexIn@@UAEIAAVGameOSFile@@@Z");
// win1.41 00600460 mac 103b3b80 LandscapeVortexIn::Save(GameOSFile &)
uint32_t __fastcall Save__17LandscapeVortexInFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@LandscapeVortexIn@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fd790 mac 103b99b0 LandscapeVortexIn::GetSaveType(void)
uint32_t __fastcall GetSaveType__17LandscapeVortexInFv(struct GameThing* this) asm("?GetSaveType@LandscapeVortexIn@@UAEIXZ");
// win1.41 005fd970 mac 103b8540 LandscapeVortexIn::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__17LandscapeVortexInFv(struct Object* this) asm("?GetPhysicsConstantsType@LandscapeVortexIn@@UAEIXZ");
// win1.41 005fd8c0 mac 103b8720 LandscapeVortexIn::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__17LandscapeVortexInFv(struct Object* this) asm("?InteractsWithPhysicsObjects@LandscapeVortexIn@@UAE_NXZ");
// win1.41 005fd8d0 mac 103b86b0 LandscapeVortexIn::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object *)
void __fastcall ShouldPhysicsRaiseObjectUntilNotIntersectingThis__17LandscapeVortexInFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@LandscapeVortexIn@@UAEXPAVObject@@@Z");
// win1.41 005fd8e0 mac 103b8590 LandscapeVortexIn::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__17LandscapeVortexInFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@LandscapeVortexIn@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 005fd980 mac 103b84a0 LandscapeVortexIn::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__17LandscapeVortexInFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@LandscapeVortexIn@@UAE_NPAVCreature@@@Z");

struct LandscapeVortexOut
{
  struct LandscapeVortex super;  /* 0x0 */
};
static_assert(sizeof(struct LandscapeVortexOut) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf40d8 mac inlined LandscapeVortexOut::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18LandscapeVortexOut asm("??_R0?AVLandscapeVortexOut@@@8");
// win1.41 009b1dc0 mac inlined LandscapeVortexOut::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18LandscapeVortexOut asm("??_R1A@?0A@A@LandscapeVortexOut@@8");
// win1.41 009b1dd8 mac inlined LandscapeVortexOut::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18LandscapeVortexOut asm("??_R2LandscapeVortexOut@@8");
// win1.41 009b1e08 mac inlined LandscapeVortexOut::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18LandscapeVortexOut asm("??_R3LandscapeVortexOut@@8");

// Override methods

// win1.41 005fdde0 mac 103b97a0 LandscapeVortexOut::_dt(void)
void __fastcall __dt__18LandscapeVortexOutFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GLandscapeVortexOut@@UAEPAXI@Z");
// win1.41 005fdf10 mac 103b78f0 LandscapeVortexOut::ToBeDeleted(int)
void __fastcall ToBeDeleted__18LandscapeVortexOutFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@LandscapeVortexOut@@UAEXH@Z");
// win1.41 005fddd0 mac 103b98a0 LandscapeVortexOut::GetDebugText(void)
char* __fastcall GetDebugText__18LandscapeVortexOutFv(struct GameThing* this) asm("?GetDebugText@LandscapeVortexOut@@UAEPADXZ");
// win1.41 00600880 mac 103b3300 LandscapeVortexOut::Load(GameOSFile &)
uint32_t __fastcall Load__18LandscapeVortexOutFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@LandscapeVortexOut@@UAEIAAVGameOSFile@@@Z");
// win1.41 00600630 mac 103b3690 LandscapeVortexOut::Save(GameOSFile &)
uint32_t __fastcall Save__18LandscapeVortexOutFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@LandscapeVortexOut@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fddc0 mac 103b9860 LandscapeVortexOut::GetSaveType(void)
uint32_t __fastcall GetSaveType__18LandscapeVortexOutFv(struct GameThing* this) asm("?GetSaveType@LandscapeVortexOut@@UAEIXZ");
// win1.41 005fdfe0 mac 103b77f0 LandscapeVortexOut::SetTown(Town *)
void __fastcall SetTown__18LandscapeVortexOutFP4Town(struct MultiMapFixed* this, const void* edx, struct Town* param_1) asm("?SetTown@LandscapeVortexOut@@UAEXPAVTown@@@Z");

struct LandscapeVortexVolc
{
  struct LandscapeVortex super;  /* 0x0 */
};
static_assert(sizeof(struct LandscapeVortexVolc) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4060 mac inlined LandscapeVortexVolc::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19LandscapeVortexVolc asm("??_R0?AVLandscapeVortexVolc@@@8");
// win1.41 009b1ce0 mac inlined LandscapeVortexVolc::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19LandscapeVortexVolc asm("??_R1A@?0A@A@LandscapeVortexVolc@@8");
// win1.41 009b1cf8 mac inlined LandscapeVortexVolc::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19LandscapeVortexVolc asm("??_R2LandscapeVortexVolc@@8");
// win1.41 009b1d28 mac inlined LandscapeVortexVolc::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19LandscapeVortexVolc asm("??_R3LandscapeVortexVolc@@8");

// Override methods

// win1.41 005fd700 mac 103b9200 LandscapeVortexVolc::_dt(void)
void __fastcall __dt__19LandscapeVortexVolcFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GLandscapeVortexVolc@@UAEPAXI@Z");
// win1.41 005fd6f0 mac 103b9300 LandscapeVortexVolc::GetDebugText(void)
char* __fastcall GetDebugText__19LandscapeVortexVolcFv(struct GameThing* this) asm("?GetDebugText@LandscapeVortexVolc@@UAEPADXZ");
// win1.41 005fd6e0 mac 103b92c0 LandscapeVortexVolc::GetSaveType(void)
uint32_t __fastcall GetSaveType__19LandscapeVortexVolcFv(struct GameThing* this) asm("?GetSaveType@LandscapeVortexVolc@@UAEIXZ");

#endif /* BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H */
