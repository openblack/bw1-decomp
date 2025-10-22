#ifndef BW1_DECOMP_FRAGMENT_INCLUDED_H
#define BW1_DECOMP_FRAGMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE, enum SOUND_COLLISION_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Rock.h" /* For struct Rock */

// Forward Declares

struct Base;
struct Creature;
struct FragMesh;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;
struct PhysOb;
struct PhysicsObject;

struct Fragment
{
  struct Rock super;  /* 0x0 */
  struct FragMesh* frag_mesh;  /* 0x94 */
  uint32_t field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  uint32_t field_0xa4;
};
static_assert(sizeof(struct Fragment) == 0xa8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009d10d8 mac inlined Fragment::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Fragment asm("??_R0?AVFragment@@@8");
// win1.41 009b9ec8 mac inlined Fragment::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Fragment asm("??_R1A@?0A@A@Fragment@@8");
// win1.41 009b9ee0 mac inlined Fragment::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Fragment asm("??_R2Fragment@@8");
// win1.41 009b9f08 mac inlined Fragment::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Fragment asm("??_R3Fragment@@8");
// win1.41 0099aa94 mac 10746eac Fragment::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Fragment asm("??_R4Fragment@@6B@");
// win1.41 0099aa98 mac 106f601c Fragment::`vftable'
extern const struct RockVftable __vt__8Fragment asm("??_7Fragment@@6B@");

// Constructors

// win1.41 0076e900 mac 1015c440 Fragment::Fragment(void)
struct Fragment* __fastcall __ct__8FragmentFv(struct Fragment* this) asm("??0Fragment@@QAE@XZ");
// win1.41 0076e9d0 mac 1015c250 Fragment::Fragment(MapCoords const &, FragMesh *, GPlayer *)
struct Fragment* __fastcall __ct__8FragmentFRC9MapCoordsP8FragMeshP7GPlayer(struct Fragment* this, const void* edx, struct MapCoords* coords, struct FragMesh* frag_mesh, struct GPlayer* player) asm("??0Fragment@@QAE@ABUMapCoords@@PAUFragMesh@@PAVGPlayer@@@Z");

// Override methods

// win1.41 0076e9a0 mac 1015aa20 Fragment::_dt(void)
void __fastcall __dt__8FragmentFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFragment@@UAEPAXI@Z");
// win1.41 0076ea70 mac 1015c0b0 Fragment::ToBeDeleted(int)
void __fastcall ToBeDeleted__8FragmentFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Fragment@@UAEXH@Z");
// win1.41 0076e990 mac 1015ac80 Fragment::GetDebugText(void)
char* __fastcall GetDebugText__8FragmentFv(struct GameThing* this) asm("?GetDebugText@Fragment@@UAEPADXZ");
// win1.41 0076f6a0 mac 1015afa0 Fragment::Load(GameOSFile &)
uint32_t __fastcall Load__8FragmentFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Fragment@@UAEIAAVGameOSFile@@@Z");
// win1.41 0076f5d0 mac 1015b130 Fragment::Save(GameOSFile &)
uint32_t __fastcall Save__8FragmentFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Fragment@@UAEIAAVGameOSFile@@@Z");
// win1.41 0076e980 mac 1015ac40 Fragment::GetSaveType(void)
uint32_t __fastcall GetSaveType__8FragmentFv(struct GameThing* this) asm("?GetSaveType@Fragment@@UAEIXZ");
// win1.41 0076f7b0 mac 1015af50 Fragment::ResolveLoad(void)
void __fastcall ResolveLoad__8FragmentFv(struct GameThing* this) asm("?ResolveLoad@Fragment@@UAEXXZ");
// win1.41 0076e930 mac 1015aab0 Fragment::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__8FragmentFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@Fragment@@UAEIPAVCreature@@@Z");
// win1.41 0076e960 mac 1015aba0 Fragment::CanBeThrownByPlayer(void)
uint32_t __fastcall CanBeThrownByPlayer__8FragmentFv(struct GameThingWithPos* this) asm("?CanBeThrownByPlayer@Fragment@@UAEIXZ");
// win1.41 0076f7c0 mac 1015aef0 Fragment::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__8FragmentFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Fragment@@UAEIXZ");
// win1.41 0076ec00 mac 1015be10 Fragment::Draw(void)
void __fastcall Draw__8FragmentFv(struct Object* this) asm("?Draw@Fragment@@UAEXXZ");
// win1.41 0076e940 mac 1015ab00 Fragment::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__8FragmentFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@Fragment@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0076e950 mac 1015ab50 Fragment::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__8FragmentFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@Fragment@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0076ec40 mac 1015bdd0 Fragment::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__8FragmentFv(struct Object* this) asm("?GetPhysicsConstantsType@Fragment@@UAEIXZ");
// win1.41 0076ec50 mac 1015b540 Fragment::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__8FragmentFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@Fragment@@UAEXPAUPhysOb@@@Z");
// win1.41 0076f3f0 mac 1015b270 Fragment::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__8FragmentFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Fragment@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0076f3d0 mac 1015b4f0 Fragment::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__8FragmentFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Fragment@@UAE_NXZ");
// win1.41 0076f3e0 mac 1015b4a0 Fragment::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__8FragmentFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Fragment@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0076f7f0 mac 1015ae00 Fragment::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__8FragmentFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@Fragment@@UAE_NPAVCreature@@@Z");
// win1.41 0076f7d0 mac 1015aeb0 Fragment::GetCollideSoundType(void)
enum SOUND_COLLISION_TYPE __fastcall GetCollideSoundType__8FragmentFv(struct Object* this) asm("?GetCollideSoundType@Fragment@@UAE?AW4SOUND_COLLISION_TYPE@@XZ");
// win1.41 0076e970 mac 1015abe0 Fragment::GetInHandImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetInHandImmersionTexture__8FragmentFv(struct Object* this) asm("?GetInHandImmersionTexture@Fragment@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");
// win1.41 0076f7e0 mac 1015ae70 Fragment::ShouldFootpathsGoRound(void)
bool __fastcall ShouldFootpathsGoRound__8FragmentFv(struct Object* this) asm("?ShouldFootpathsGoRound@Fragment@@UAE_NXZ");

DECLARE_LH_LINKED_LIST(Fragment);

#endif /* BW1_DECOMP_FRAGMENT_INCLUDED_H */
