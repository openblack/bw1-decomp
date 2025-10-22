#ifndef BW1_DECOMP_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For LEASH_TYPE_LAST, enum ABODE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct Citadel;
struct Creature;
struct GCitadelHeartInfo;
struct GInterfaceStatus;
struct GPlayer;
struct GTribeInfo;
struct GWorshipSiteInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LH3DObject;
struct LH3DSprite;
struct LHMatrix;
struct LHOSFile;
struct MapCoords;
struct MultiMapFixed;
struct PhysOb;
struct PhysicsObject;
struct PlannedMultiMapFixed;
struct RPHolder;
struct TempleLeash;
struct WorshipSite;

struct LeashObj
{
  struct Object super;  /* 0x0 */
  int field_0x54;
  struct TempleLeash* temple_leash;
  struct LH3DObject* object;
  float field_0x60;
  float field_0x64;
  float field_0x68;
  uint32_t field_0x6c;
  struct LH3DSprite* sprite;  /* 0x70 */
  float field_0x74;
};
static_assert(sizeof(struct LeashObj) == 0x78, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce9b8 mac inlined LeashObj::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8LeashObj asm("??_R0?AVLeashObj@@@8");
// win1.41 009a8ea8 mac inlined LeashObj::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8LeashObj asm("??_R1A@?0A@A@LeashObj@@8");
// win1.41 009a8ec0 mac inlined LeashObj::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8LeashObj asm("??_R2LeashObj@@8");
// win1.41 009a8ed8 mac inlined LeashObj::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8LeashObj asm("??_R3LeashObj@@8");

// Override methods

// win1.41 00464890 mac 101c0f00 LeashObj::_dt(void)
void __fastcall __dt__8LeashObjFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GLeashObj@@UAEPAXI@Z");
// win1.41 00464580 mac 101c1870 LeashObj::GetOverwriteInteractableToolTip(void)
uint32_t __fastcall GetOverwriteInteractableToolTip__8LeashObjFv(struct GameThingWithPos* this) asm("?GetOverwriteInteractableToolTip@LeashObj@@UAEIXZ");
// win1.41 00464860 mac 101c25e0 LeashObj::GetText(void)
const char* __fastcall GetText__8LeashObjFv(struct GameThingWithPos* this) asm("?GetText@LeashObj@@UAEPBDXZ");
// win1.41 00464870 mac 101c2620 LeashObj::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__8LeashObjFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@LeashObj@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00464880 mac 101c2690 LeashObj::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__8LeashObjFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@LeashObj@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00464850 mac 101c2590 LeashObj::ValidAsInterfaceLeashTarget(void)
uint32_t __fastcall ValidAsInterfaceLeashTarget__8LeashObjFv(struct Object* this) asm("?ValidAsInterfaceLeashTarget@LeashObj@@UAEIXZ");
// win1.41 00464450 mac 101c1a60 LeashObj::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__8LeashObjFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@LeashObj@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00464490 mac 101c18f0 LeashObj::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__8LeashObjFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@LeashObj@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00464840 mac 101c2540 LeashObj::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__8LeashObjFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@LeashObj@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

struct TempleLeash
{
  int field_0x0;
  struct LeashObj* leashes[LEASH_TYPE_LAST];
};
static_assert(sizeof(struct TempleLeash) == 0x10, "Data type is of wrong size");

// Constructors

// win1.41 00464650 mac 101c1350 TempleLeash::TempleLeash(LH3DObject *, unsigned long)
struct TempleLeash* __fastcall __ct__11TempleLeashFP10LH3DObjectUl(struct TempleLeash* this, const void* edx, struct LH3DObject* param_1, uint32_t param_2) asm("??0TempleLeash@@QAE@PAULH3DObject@@K@Z");

struct CitadelHeart
{
  struct CitadelPart super;  /* 0x0 */
  uint32_t field_0x8c;
  uint32_t field_0x90;
  struct GameThing* field_0x94;
  struct GameThing* field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  int field_0xa4;
  uint32_t field_0xa8;
  struct GameThing* field_0xac;
  struct GameThing* field_0xb0;
  uint32_t field_0xb4;
  uint8_t field_0xb8;
  float field_0xbc;
  struct GameThing* field_0xc0;
  uint32_t field_0xc4;
  uint32_t field_0xc8;
  struct GameThing* field_0xcc;
  float field_0xd0;
  uint32_t field_0xd4;
  uint32_t field_0xd8;
  struct GameThing* field_0xdc;
  uint32_t field_0xe0;
  struct TempleLeash* leashes;
};
static_assert(sizeof(struct CitadelHeart) == 0xe8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce8a8 mac inlined CitadelHeart::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12CitadelHeart asm("??_R0?AVCitadelHeart@@@8");
// win1.41 009a8f18 mac inlined CitadelHeart::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12CitadelHeart asm("??_R1A@?0A@A@CitadelHeart@@8");
// win1.41 009a8f30 mac inlined CitadelHeart::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12CitadelHeart asm("??_R2CitadelHeart@@8");
// win1.41 009a8f58 mac inlined CitadelHeart::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12CitadelHeart asm("??_R3CitadelHeart@@8");
// win1.41 008c8cfc mac 1077b83c CitadelHeart::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12CitadelHeart asm("??_R4CitadelHeart@@6B@");
// win1.41 008c8d00 mac 1077b844 CitadelHeart::`vftable'
extern const struct MultiMapFixedVftable __vt__12CitadelHeart asm("??_7CitadelHeart@@6B@");

// Static methods

// win1.41 00464e20 mac 101c0960 CitadelHeart::Create(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
struct CitadelHeart* __cdecl Create__12CitadelHeartFRC9MapCoordsPC17GCitadelHeartInfoP7Citadelfffi(struct MapCoords* coords, struct GCitadelHeartInfo* info, struct Citadel* citadel, float param_4, float param_5, float param_6, int param_7) asm("?Create@CitadelHeart@@SAPAV1@ABUMapCoords@@PBVGCitadelHeartInfo@@PAVCitadel@@MMMH@Z");

// Constructors

// win1.41 inlined mac inlined CitadelHeart::CitadelHeart(void)
struct CitadelHeart* __fastcall __ct__12CitadelHeartFv(struct CitadelHeart* this) asm("??0CitadelHeart@@QAE@XZ");
// win1.41 004649b0 mac 101c0f90 CitadelHeart::__ct(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
struct CitadelHeart* __fastcall __ct__12CitadelHeartFRC9MapCoordsPC17GCitadelHeartInfoP7Citadelfffi(struct CitadelHeart* this, const void* edx, struct MapCoords* coords, struct GCitadelHeartInfo* info, struct Citadel* citadel, float param_4, float param_5, float param_6, int param_7) asm("??0CitadelHeart@@QAE@ABUMapCoords@@PBVGCitadelHeartInfo@@PAVCitadel@@MMMH@Z");

// Non-virtual methods

// win1.41 00464950 mac 101c1180 CitadelHeart::CreateLeashes(void)
void __fastcall CreateLeashes__12CitadelHeartFv(struct CitadelHeart* this) asm("?CreateLeashes@CitadelHeart@@QAEXXZ");
// win1.41 00464da0 mac 101c0af0 CitadelHeart::SetToZero(void)
void __fastcall SetToZero__12CitadelHeartFv(struct CitadelHeart* this) asm("?SetToZero@CitadelHeart@@QAEXXZ");
// win1.41 00465110 mac 101c03b0 CitadelHeart::CreateBuiltWorshipSite(MapCoords const &, GWorshipSiteInfo const *, Citadel *, GTribeInfo const *)
struct WorshipSite* __fastcall CreateBuiltWorshipSite__12CitadelHeartFRC9MapCoordsPC16GWorshipSiteInfoP7CitadelPC10GTribeInfo(struct CitadelHeart* this, const void* edx, const struct MapCoords* coords, const struct GWorshipSiteInfo* info, const struct Citadel* citadel, const struct GTribeInfo* tribe_info) asm("?CreateBuiltWorshipSite@CitadelHeart@@QAEPAVWorshipSite@@ABUMapCoords@@PBVGWorshipSiteInfo@@PAVCitadel@@PBVGTribeInfo@@@Z");

// Override methods

// win1.41 00464bc0 mac 101c0df0 CitadelHeart::_dt(void)
void __fastcall __dt__12CitadelHeartFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCitadelHeart@@UAEPAXI@Z");
// win1.41 00464c50 mac 101c0b90 CitadelHeart::ToBeDeleted(int)
void __fastcall ToBeDeleted__12CitadelHeartFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@CitadelHeart@@UAEXH@Z");
// win1.41 00468020 mac 10075fd0 CitadelHeart::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__12CitadelHeartFv(struct GameThing* this) asm("?GetPlayer@CitadelHeart@@UAEPAVGPlayer@@XZ");
// win1.41 00464bb0 mac 101c23c0 CitadelHeart::GetDebugText(void)
char* __fastcall GetDebugText__12CitadelHeartFv(struct GameThing* this) asm("?GetDebugText@CitadelHeart@@UAEPADXZ");
// win1.41 004657f0 mac 101bf6e0 CitadelHeart::Load(GameOSFile &)
uint32_t __fastcall Load__12CitadelHeartFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@CitadelHeart@@UAEIAAVGameOSFile@@@Z");
// win1.41 004655c0 mac 101bf9c0 CitadelHeart::Save(GameOSFile &)
uint32_t __fastcall Save__12CitadelHeartFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@CitadelHeart@@UAEIAAVGameOSFile@@@Z");
// win1.41 00464ba0 mac 101c2380 CitadelHeart::GetSaveType(void)
uint32_t __fastcall GetSaveType__12CitadelHeartFv(struct GameThing* this) asm("?GetSaveType@CitadelHeart@@UAEIXZ");
// win1.41 00465a10 mac 101bf690 CitadelHeart::ResolveLoad(void)
void __fastcall ResolveLoad__12CitadelHeartFv(struct GameThing* this) asm("?ResolveLoad@CitadelHeart@@UAEXXZ");
// win1.41 00464b80 mac 101c2250 CitadelHeart::IsCitadelHeart(void)
uint32_t __fastcall IsCitadelHeart__12CitadelHeartFv(struct GameThingWithPos* this) asm("?IsCitadelHeart@CitadelHeart@@UAEIXZ");
// win1.41 00468dc0 mac 101bbf10 CitadelHeart::CreateBuildingSite(void)
uint32_t __fastcall CreateBuildingSite__12CitadelHeartFv(struct GameThingWithPos* this) asm("?CreateBuildingSite@CitadelHeart@@UAEIXZ");
// win1.41 004680b0 mac 101bd410 CitadelHeart::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__12CitadelHeartFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@CitadelHeart@@UAEIXZ");
// win1.41 00464b20 mac inlined CitadelHeart::SetSpecularColor(LH3DColor)
void __fastcall SetSpecularColor__12CitadelHeartF9LH3DColor(struct Object* this, const void* edx, struct LH3DColor param_1) asm("?SetSpecularColor@CitadelHeart@@UAEXULH3DColor@@@Z");
// win1.41 00464b30 mac 100173c0 CitadelHeart::GetSpecularColor(void)
struct LH3DColor __fastcall GetSpecularColor__12CitadelHeartFv(struct Object* this) asm("?GetSpecularColor@CitadelHeart@@UAE?AULH3DColor@@XZ");
// win1.41 00468c30 mac 101bc080 CitadelHeart::GetActualObjectToEffect(GPlayer *, bool)
void* __fastcall GetActualObjectToEffect__12CitadelHeartFP7GPlayerb(struct Object* this, const void* edx, struct GPlayer* param_1, bool param_2) asm("?GetActualObjectToEffect@CitadelHeart@@UAEPAXPAVGPlayer@@_N@Z");
// win1.41 00468da0 mac 101bc010 CitadelHeart::DestroyedByEffect(GPlayer *, float)
uint32_t __fastcall DestroyedByEffect__12CitadelHeartFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* param_1, float param_2) asm("?DestroyedByEffect@CitadelHeart@@UAEIPAVGPlayer@@M@Z");
// win1.41 004665a0 mac 1008a6f0 CitadelHeart::Process(void)
uint32_t __fastcall Process__12CitadelHeartFv(struct Object* this) asm("?Process@CitadelHeart@@UAEIXZ");
// win1.41 00464b90 mac 10011680 CitadelHeart::Draw(void)
void __fastcall Draw__12CitadelHeartFv(struct Object* this) asm("?Draw@CitadelHeart@@UAEXXZ");
// win1.41 00467870 mac 101be3b0 CitadelHeart::GetWorldMatrix(LHMatrix *)
void __fastcall GetWorldMatrix__12CitadelHeartFP8LHMatrix(struct Object* this, const void* edx, struct LHMatrix* param_1) asm("?GetWorldMatrix@CitadelHeart@@UAEXPAULHMatrix@@@Z");
// win1.41 004675a0 mac 101be430 CitadelHeart::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__12CitadelHeartFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@CitadelHeart@@UAEXABUMapCoords@@@Z");
// win1.41 00464b40 mac 101be8a0 CitadelHeart::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__12CitadelHeartFv(struct Object* this) asm("?Get3DType@CitadelHeart@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 00467b60 mac 101bdef0 CitadelHeart::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__12CitadelHeartFv(struct Object* this) asm("?GetPhysicsConstantsType@CitadelHeart@@UAEIXZ");
// win1.41 00467b70 mac 101bde40 CitadelHeart::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__12CitadelHeartFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@CitadelHeart@@UAEXPAUPhysOb@@@Z");
// win1.41 00467b40 mac 101bdf40 CitadelHeart::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__12CitadelHeartFv(struct Object* this) asm("?InteractsWithPhysicsObjects@CitadelHeart@@UAE_NXZ");
// win1.41 00467b30 mac 101bdfc0 CitadelHeart::ChecksVerticesVObjects(void)
uint32_t __fastcall ChecksVerticesVObjects__12CitadelHeartFv(struct Object* this) asm("?ChecksVerticesVObjects@CitadelHeart@@UAEIXZ");
// win1.41 00467bb0 mac 101bdc10 CitadelHeart::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__12CitadelHeartFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@CitadelHeart@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 004680d0 mac 101bceb0 CitadelHeart::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void __fastcall AddToRoutePlan__12CitadelHeartFP8RPHolderP8CreatureiPFi7Point2Dfi_v(struct Object* this, const void* edx, struct RPHolder* param_1, struct Creature* param_2, int param_3, void (__cdecl* param_4)(int param_1, struct Point2D param_2, float param_3, int param_4)) asm("?AddToRoutePlan@CitadelHeart@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z");
// win1.41 004680c0 mac 101bd390 CitadelHeart::GetRoutePlanRadius(Creature *)
float __fastcall GetRoutePlanRadius__12CitadelHeartFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?GetRoutePlanRadius@CitadelHeart@@UAEMPAVCreature@@@Z");
// win1.41 00464b50 mac 101c2180 CitadelHeart::GetObjectCollide(void)
uint32_t __fastcall GetObjectCollide__12CitadelHeartFv(struct Object* this) asm("?GetObjectCollide@CitadelHeart@@UAEIXZ");
// win1.41 004673a0 mac 101be8e0 CitadelHeart::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__12CitadelHeartFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@CitadelHeart@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 00464b70 mac 101c2200 CitadelHeart::ShouldFootpathsGoRound(void)
bool __fastcall ShouldFootpathsGoRound__12CitadelHeartFv(struct Object* this) asm("?ShouldFootpathsGoRound@CitadelHeart@@UAE_NXZ");
// win1.41 00467d10 mac inlined CitadelHeart::GetDoorPos(MapCoords *)
struct MapCoords* __fastcall GetDoorPos__12CitadelHeartFP9MapCoords(struct MultiMapFixed* this, const void* edx, struct MapCoords* param_1) asm("?GetDoorPos@CitadelHeart@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 00465000 mac 101c0570 CitadelHeart::Built(void)
bool __fastcall Built__12CitadelHeartFv(struct MultiMapFixed* this) asm("?Built@CitadelHeart@@UAE_NXZ");
// win1.41 00464b60 mac 101c21c0 CitadelHeart::GetAbodeType(void)
enum ABODE_TYPE __fastcall GetAbodeType__12CitadelHeartFv(struct MultiMapFixed* this) asm("?GetAbodeType@CitadelHeart@@UAE?AW4ABODE_TYPE@@XZ");
// win1.41 00465430 mac 101bfcc0 CitadelHeart::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__12CitadelHeartFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@CitadelHeart@@UAEPAVPlannedMultiMapFixed@@XZ");
// win1.41 00468fb0 mac 101bb6e0 CitadelHeart::CreateCollideData(void)
void __fastcall CreateCollideData__12CitadelHeartFv(struct MultiMapFixed* this) asm("?CreateCollideData@CitadelHeart@@UAEXXZ");

#endif /* BW1_DECOMP_CITADEL_HEART_INCLUDED_H */
