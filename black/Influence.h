#ifndef BW1_DECOMP_INFLUENCE_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct BaseInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct MapCoords;

struct InfluenceRing
{
  struct GameThingWithPos super;  /* 0x0 */
  struct BaseInfo info;  /* 0x28 */
  struct GPlayer* player;  /* 0x34 */
  float field_0x38;
  int field_0x3c;
  uint32_t field_0x40;
};
static_assert(sizeof(struct InfluenceRing) == 0x44, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becc30 mac inlined InfluenceRing::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13InfluenceRing asm("??_R0?AVInfluenceRing@@@8");
// win1.41 009add78 mac inlined InfluenceRing::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13InfluenceRing asm("??_R1A@?0A@A@InfluenceRing@@8");
// win1.41 009add90 mac inlined InfluenceRing::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13InfluenceRing asm("??_R2InfluenceRing@@8");
// win1.41 009adda8 mac inlined InfluenceRing::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13InfluenceRing asm("??_R3InfluenceRing@@8");
// win1.41 008ea3c8 mac 10744e50 InfluenceRing::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13InfluenceRing asm("??_R4InfluenceRing@@6B@");
// win1.41 008ea3cc mac 10744e58 InfluenceRing::`vftable'
extern const struct GameThingWithPosVftable __vt__13InfluenceRing asm("??_7InfluenceRing@@6B@");

// Constructors

// win1.41 005cd760 mac 100fd0a4 InfluenceRing::InfluenceRing(MapCoords const &, GPlayer *, float, int)
struct InfluenceRing* __fastcall __ct__13InfluenceRingFRC9MapCoordsP7GPlayerfi(struct InfluenceRing* this, const void* edx, const struct MapCoords* coords, struct GPlayer* player, float param_4, int param_5) asm("??0InfluenceRing@@QAE@ABUMapCoords@@PAVGPlayer@@MH@Z");
// win1.41 005cd800 mac 100fce54 InfluenceRing::InfluenceRing(GameThingWithPos *, GPlayer *, float, int)
struct InfluenceRing* __fastcall __ct__13InfluenceRingFP16GameThingWithPosP7GPlayerfi(struct InfluenceRing* this, const void* edx, struct GameThingWithPos* thing, struct GPlayer* player, float param_4, int param_5) asm("??0InfluenceRing@@QAE@PAVGameThingWithPos@@PAVGPlayer@@MH@Z");

// Override methods

// win1.41 0055ec70 mac 100fbc20 InfluenceRing::_dt(void)
void __fastcall __dt__13InfluenceRingFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GInfluenceRing@@UAEPAXI@Z");
// win1.41 005cd8a0 mac 100fcac0 InfluenceRing::ToBeDeleted(int)
void __fastcall ToBeDeleted__13InfluenceRingFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@InfluenceRing@@UAEXH@Z");
// win1.41 0055ec40 mac 10043da0 InfluenceRing::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__13InfluenceRingFv(struct GameThing* this) asm("?GetPlayer@InfluenceRing@@UAEPAVGPlayer@@XZ");
// win1.41 0055ec10 mac 100fbd20 InfluenceRing::SetPlayer(GPlayer *)
void __fastcall SetPlayer__13InfluenceRingFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@InfluenceRing@@UAEXPAVGPlayer@@@Z");
// win1.41 0055ec60 mac 100fbe70 InfluenceRing::GetDebugText(void)
char* __fastcall GetDebugText__13InfluenceRingFv(struct GameThing* this) asm("?GetDebugText@InfluenceRing@@UAEPADXZ");
// win1.41 005cdd40 mac 100fbeb0 InfluenceRing::Load(GameOSFile &)
uint32_t __fastcall Load__13InfluenceRingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@InfluenceRing@@UAEIAAVGameOSFile@@@Z");
// win1.41 005cdc60 mac 100fc000 InfluenceRing::Save(GameOSFile &)
uint32_t __fastcall Save__13InfluenceRingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@InfluenceRing@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055ec50 mac 100fbe30 InfluenceRing::GetSaveType(void)
uint32_t __fastcall GetSaveType__13InfluenceRingFv(struct GameThing* this) asm("?GetSaveType@InfluenceRing@@UAEIXZ");
// win1.41 0055ebf0 mac 100fbcc0 InfluenceRing::SetPos(MapCoords const &)
void __fastcall SetPos__13InfluenceRingFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* param_1) asm("?SetPos@InfluenceRing@@UAEXPBUMapCoords@@@Z");
// win1.41 0055ec30 mac 100fbda0 InfluenceRing::GetText(void)
const char* __fastcall GetText__13InfluenceRingFv(struct GameThingWithPos* this) asm("?GetText@InfluenceRing@@UAEPBDXZ");
// win1.41 0055ec20 mac 100fbd60 InfluenceRing::IsInfluenceRing(void)
uint32_t __fastcall IsInfluenceRing__13InfluenceRingFv(struct GameThingWithPos* this) asm("?IsInfluenceRing@InfluenceRing@@UAEIXZ");
// win1.41 005cdc50 mac 100fc170 InfluenceRing::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__13InfluenceRingFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@InfluenceRing@@UAEIXZ");

DECLARE_LH_LIST_HEAD(InfluenceRing);

#endif /* BW1_DECOMP_INFLUENCE_INCLUDED_H */
