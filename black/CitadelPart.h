#ifndef BW1_DECOMP_CITADEL_PART_INCLUDED_H
#define BW1_DECOMP_CITADEL_PART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct Base;
struct Citadel;
struct Creature;
struct GCitadelPartInfo;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct Object;
struct PhysicsObject;
struct PlannedMultiMapFixed;
struct Spell;

struct CitadelPart
{
  struct MultiMapFixed super;  /* 0x0 */
  float field_0x7c;
  struct Citadel* citadel;  /* 0x80 */
  struct CitadelPart* next;
  struct GameThing* game_thing_0x88;
};
static_assert(sizeof(struct CitadelPart) == 0x8c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce888 mac inlined CitadelPart::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11CitadelPart asm("??_R0?AVCitadelPart@@@8");
// win1.41 009a8f00 mac inlined CitadelPart::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11CitadelPart asm("??_R1A@?0A@A@CitadelPart@@8");
// win1.41 009a9150 mac inlined CitadelPart::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11CitadelPart asm("??_R2CitadelPart@@8");
// win1.41 009a9170 mac inlined CitadelPart::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11CitadelPart asm("??_R3CitadelPart@@8");
// win1.41 008caafc mac 107339ec CitadelPart::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11CitadelPart asm("??_R4CitadelPart@@6B@");
// win1.41 008cab00 mac 10733a24 CitadelPart::`vftable'
extern const struct MultiMapFixedVftable __vt__11CitadelPart asm("??_7CitadelPart@@6B@");

// Constructors

// win1.41 inlined mac 1030de40 CitadelPart::CitadelPart(void)
struct CitadelPart* __fastcall __ct__11CitadelPartFv(struct CitadelPart* this) asm("??0CitadelPart@@QAE@XZ");
// win1.41 004693f0 mac 101c35b0 CitadelPart::CitadelPart(MapCoords const &, GCitadelPartInfo const *, Citadel *, float, float, float, int)
struct CitadelPart* __fastcall __ct__11CitadelPartFRC9MapCoordsPC16GCitadelPartInfoP7Citadelfffi(struct CitadelPart* this, const void* edx, struct MapCoords* coords, struct GCitadelPartInfo* info, struct Citadel* citadel, float y_angle, float scale, float param_6, int param_7) asm("??0CitadelPart@@QAE@ABUMapCoords@@PBVGCitadelPartInfo@@PAVCitadel@@MMMH@Z");

// Override methods

// win1.41 00469500 mac 101c3520 CitadelPart::_dt(void)
void __fastcall __dt__11CitadelPartFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCitadelPart@@UAEPAXI@Z");
// win1.41 00469540 mac 101c3320 CitadelPart::ToBeDeleted(int)
void __fastcall ToBeDeleted__11CitadelPartFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@CitadelPart@@UAEXH@Z");
// win1.41 00469750 mac 10075f70 CitadelPart::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__11CitadelPartFv(struct GameThing* this) asm("?GetPlayer@CitadelPart@@UAEPAVGPlayer@@XZ");
// win1.41 004694e0 mac 101c37f0 CitadelPart::GetDebugText(void)
char* __fastcall GetDebugText__11CitadelPartFv(struct GameThing* this) asm("?GetDebugText@CitadelPart@@UAEPADXZ");
// win1.41 004698b0 mac 101c2780 CitadelPart::Load(GameOSFile &)
uint32_t __fastcall Load__11CitadelPartFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@CitadelPart@@UAEIAAVGameOSFile@@@Z");
// win1.41 00469830 mac 101c2870 CitadelPart::Save(GameOSFile &)
uint32_t __fastcall Save__11CitadelPartFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CitadelPart@@UAEIAAVGameOSFile@@@Z");
// win1.41 004694d0 mac 101c37b0 CitadelPart::GetSaveType(void)
uint32_t __fastcall GetSaveType__11CitadelPartFv(struct GameThing* this) asm("?GetSaveType@CitadelPart@@UAEIXZ");
// win1.41 00464aa0 mac 101c2460 CitadelPart::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__11CitadelPartFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@CitadelPart@@UAEIXZ");
// win1.41 00464a80 mac 1008aa80 CitadelPart::GetCitadel(void)
struct Citadel* __fastcall GetCitadel__11CitadelPartFv(struct GameThingWithPos* this) asm("?GetCitadel@CitadelPart@@UAEPAVCitadel@@XZ");
// win1.41 00464b00 mac inlined CitadelPart::IsCitadelPart_0(void)
uint32_t __fastcall IsCitadelPart_0__11CitadelPartFv(struct GameThingWithPos* this) asm("?IsCitadelPart@CitadelPart@@UAEIXZ");
// win1.41 00464b10 mac inlined CitadelPart::IsCitadelPart_1(Creature *)
uint32_t __fastcall IsCitadelPart_1__11CitadelPartFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsCitadelPart@CitadelPart@@UAEIPAVCreature@@@Z");
// win1.41 00469780 mac 101c2a50 CitadelPart::GetActualObjectToEffect(GPlayer *, bool)
void* __fastcall GetActualObjectToEffect__11CitadelPartFP7GPlayerb(struct Object* this, const void* edx, struct GPlayer* param_1, bool param_2) asm("?GetActualObjectToEffect@CitadelPart@@UAEPAXPAVGPlayer@@_N@Z");
// win1.41 004695c0 mac 101c32d0 CitadelPart::DestroyedByEffect(GPlayer *, float)
uint32_t __fastcall DestroyedByEffect__11CitadelPartFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* param_1, float param_2) asm("?DestroyedByEffect@CitadelPart@@UAEIPAVGPlayer@@M@Z");
// win1.41 00469490 mac 101ba510 CitadelPart::Process(void)
uint32_t __fastcall Process__11CitadelPartFv(struct Object* this) asm("?Process@CitadelPart@@UAEIXZ");
// win1.41 00464a90 mac 101c2400 CitadelPart::GetMesh( const(void))
int __fastcall GetMesh__11CitadelPartCFv(const struct Object* this) asm("?GetMesh@CitadelPart@@UBEHXZ");
// win1.41 00469760 mac 101c2b70 CitadelPart::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__11CitadelPartFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@CitadelPart@@UAEXABUMapCoords@@@Z");
// win1.41 004694b0 mac 101c3720 CitadelPart::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__11CitadelPartFv(struct Object* this) asm("?Get3DType@CitadelPart@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 004695d0 mac inlined CitadelPart::CanBeDestroyedBySpell_1(Spell *)
uint32_t __fastcall CanBeDestroyedBySpell_1__11CitadelPartFP5Spell(struct Object* this, const void* edx, struct Spell* param_1) asm("?CanBeDestroyedBySpell@CitadelPart@@UAEIPAVSpell@@@Z");
// win1.41 004697f0 mac 101c2970 CitadelPart::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__11CitadelPartFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@CitadelPart@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 004694c0 mac 101c3760 CitadelPart::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__11CitadelPartFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@CitadelPart@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 004694f0 mac 101c3830 CitadelPart::ShouldFootpathsGoRound(void)
bool __fastcall ShouldFootpathsGoRound__11CitadelPartFv(struct Object* this) asm("?ShouldFootpathsGoRound@CitadelPart@@UAE_NXZ");
// win1.41 00464ab0 mac 101c08e0 CitadelPart::IsRepaired(void)
bool __fastcall IsRepaired__11CitadelPartFv(struct MultiMapFixed* this) asm("?IsRepaired@CitadelPart@@UAE_NXZ");
// win1.41 00464ad0 mac 10081060 CitadelPart::IsBuilt(void)
bool __fastcall IsBuilt__11CitadelPartFv(struct MultiMapFixed* this) asm("?IsBuilt@CitadelPart@@UAE_NXZ");
// win1.41 004694a0 mac 101b91f0 CitadelPart::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__11CitadelPartFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@CitadelPart@@UAEPAVPlannedMultiMapFixed@@XZ");

DECLARE_LH_LIST_HEAD(CitadelPart);

#endif /* BW1_DECOMP_CITADEL_PART_INCLUDED_H */
