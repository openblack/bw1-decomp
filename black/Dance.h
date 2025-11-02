#ifndef BW1_DECOMP_DANCE_INCLUDED_H
#define BW1_DECOMP_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GroupBehaviour.h" /* For struct GroupBehaviour */

// Forward Declares

struct Base;
struct GDanceInfo;
struct GFootpath;
struct GFootpathLink;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHPoint;
struct MapCoords;
struct Town;

struct Dance
{
  struct GroupBehaviour super;  /* 0x0 */
  uint8_t field_0xe8[0x44];
};
static_assert(sizeof(struct Dance) == 0x12c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be6740 mac inlined Dance::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Dance asm("??_R0?AVDance@@@8");
// win1.41 009ab5b0 mac inlined Dance::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Dance asm("??_R1A@?0A@A@Dance@@8");
// win1.41 009ab5c8 mac inlined Dance::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Dance asm("??_R2Dance@@8");
// win1.41 009ab5e0 mac inlined Dance::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Dance asm("??_R3Dance@@8");
// win1.41 008d3964 mac 1074465c Dance::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5Dance asm("??_R4Dance@@6B@");
// win1.41 008d3968 mac 106f5ec0 Dance::`vftable'
extern const struct GroupBehaviourVftable __vt__5Dance asm("??_7Dance@@6B@");

// Constructors

// win1.41 0050b6a0 mac 102aa620 Dance::Dance(MapCoords const &, GDanceInfo const *, GameThingWithPos *, unsigned long, int, Town *)
struct Dance* __fastcall __ct__5DanceFRC9MapCoordsPC10GDanceInfoP16GameThingWithPosUliP4Town(struct Dance* this, const void* edx, const struct MapCoords* param_1, struct GDanceInfo* info, const struct GameThingWithPos* param_3, uint32_t param_4, int param_5, struct Town* town) asm("??0Dance@@QAE@ABUMapCoords@@PBVGDanceInfo@@PAVGameThingWithPos@@KHPAVTown@@@Z");

// Non-virtual methods

// win1.41 0050bb40 mac 102a9d60 Dance::StartDance(void)
void __fastcall StartDance__5DanceFv(struct Dance* this) asm("?StartDance@Dance@@QAEXXZ");

// Override methods

// win1.41 0050b770 mac 102aa200 Dance::_dt(void)
void __fastcall __dt__5DanceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDance@@UAEPAXI@Z");
// win1.41 0050b970 mac 102a9e90 Dance::ToBeDeleted(int)
void __fastcall ToBeDeleted__5DanceFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Dance@@UAEXH@Z");
// win1.41 0050c250 mac 102a9370 Dance::Get3DSoundPos(LHPoint *)
int __fastcall Get3DSoundPos__5DanceFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1) asm("?Get3DSoundPos@Dance@@UAEHPAULHPoint@@@Z");
// win1.41 0050b720 mac 102a8120 Dance::GetFootpathLink(void)
struct GFootpathLink* __fastcall GetFootpathLink__5DanceFv(struct GameThing* this) asm("?GetFootpathLink@Dance@@UAEPAVGFootpathLink@@XZ");
// win1.41 0050ca60 mac 102a83d0 Dance::AddFootpath(GFootpath *)
uint32_t __fastcall AddFootpath__5DanceFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?AddFootpath@Dance@@UAEIPAVGFootpath@@@Z");
// win1.41 0050cb10 mac 102a8330 Dance::RemoveFootpath(GFootpath *)
uint32_t __fastcall RemoveFootpath__5DanceFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?RemoveFootpath@Dance@@UAEIPAVGFootpath@@@Z");
// win1.41 0050b760 mac 102a81f0 Dance::GetDebugText(void)
char* __fastcall GetDebugText__5DanceFv(struct GameThing* this) asm("?GetDebugText@Dance@@UAEPADXZ");
// win1.41 0050c760 mac 102a85a0 Dance::Load(GameOSFile &)
uint32_t __fastcall Load__5DanceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Dance@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050c480 mac 102a8960 Dance::Save(GameOSFile &)
uint32_t __fastcall Save__5DanceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Dance@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050b750 mac 102a81c0 Dance::GetSaveType(void)
uint32_t __fastcall GetSaveType__5DanceFv(struct GameThing* this) asm("?GetSaveType@Dance@@UAEIXZ");
// win1.41 0050cb40 mac inlined Dance::GetArrivePos(MapCoords *)
struct MapCoords* __fastcall GetArrivePos__5DanceFP9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetArrivePos@Dance@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0050b730 mac 102a8160 Dance::IsDance( const(void))
uint32_t __fastcall IsDance__5DanceCFv(const struct GameThingWithPos* this) asm("?IsDance@Dance@@UBEIXZ");
// win1.41 0050b710 mac 102a80e0 Dance::IsScriptContainer( const(void))
uint32_t __fastcall IsScriptContainer__5DanceCFv(const struct GameThingWithPos* this) asm("?IsScriptContainer@Dance@@UBEIXZ");
// win1.41 0050b740 mac 102a8190 Dance::GetText(void)
const char* __fastcall GetText__5DanceFv(struct GameThingWithPos* this) asm("?GetText@Dance@@UAEPBDXZ");
// win1.41 0050c3c0 mac 102a9110 Dance::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__5DanceFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Dance@@UAEIXZ");
// win1.41 0050bb30 mac 102a9db0 Dance::CleanUpBeforeReset(void)
void __fastcall CleanUpBeforeReset__5DanceFv(struct GameThingWithPos* this) asm("?CleanUpBeforeReset@Dance@@UAEXXZ");
// win1.41 0050bb90 mac 102a9810 Dance::Process(void)
void __fastcall Process__5DanceFv(struct GroupBehaviour* this) asm("?Process@Dance@@UAEXXZ");
// win1.41 0050c310 mac 102a9230 Dance::GetAngle(void)
float __fastcall GetAngle__5DanceFv(struct GroupBehaviour* this) asm("?GetAngle@Dance@@UAEMXZ");

DECLARE_LH_LIST_HEAD(Dance);

#endif /* BW1_DECOMP_DANCE_INCLUDED_H */
