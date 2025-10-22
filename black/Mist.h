#ifndef BW1_DECOMP_MIST_INCLUDED_H
#define BW1_DECOMP_MIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct MapCoords;
struct MistListNode;

struct Mist
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
  float field_0x2c;
  uint32_t field_0x30;
  float field_0x34;
  uint8_t field_0x38[0x14];
  uint32_t field_0x4c;
  struct Mist* next;  /* 0x50 */
};
static_assert(sizeof(struct Mist) == 0x54, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becc88 mac inlined Mist::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Mist asm("??_R0?AVMist@@@8");
// win1.41 009adea0 mac inlined Mist::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Mist asm("??_R1A@?0A@A@Mist@@8");
// win1.41 009adeb8 mac inlined Mist::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Mist asm("??_R2Mist@@8");
// win1.41 009aded0 mac inlined Mist::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Mist asm("??_R3Mist@@8");
// win1.41 008eb63c mac 10745708 Mist::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__4Mist asm("??_R4Mist@@6B@");
// win1.41 008eb640 mac 10745710 Mist::`vftable'
extern const struct GameThingWithPosVftable __vt__4Mist asm("??_7Mist@@6B@");

// Constructors

// win1.41 00606270 mac 101056c0 Mist::Mist(MapCoords const &, float, unsigned long, float)
struct MistListNode* __fastcall __ct__4MistFRC9MapCoordsfUlf(struct Mist* this, const void* edx, struct MapCoords* coords, float param_3, uint32_t param_4, float param_5) asm("??0Mist@@QAE@ABUMapCoords@@MKM@Z");

// Override methods

// win1.41 0055ebd0 mac 101045f0 Mist::_dt(void)
void __fastcall __dt__4MistFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMist@@UAEPAXI@Z");
// win1.41 00606300 mac 10105480 Mist::ToBeDeleted(int)
void __fastcall ToBeDeleted__4MistFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Mist@@UAEXH@Z");
// win1.41 0055eb70 mac 10104680 Mist::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__4MistFv(struct GameThing* this) asm("?GetPlayer@Mist@@UAEPAVGPlayer@@XZ");
// win1.41 0055ebc0 mac 10104780 Mist::GetDebugText(void)
char* __fastcall GetDebugText__4MistFv(struct GameThing* this) asm("?GetDebugText@Mist@@UAEPADXZ");
// win1.41 00606a10 mac 10104820 Mist::Load(GameOSFile &)
uint32_t __fastcall Load__4MistFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Mist@@UAEIAAVGameOSFile@@@Z");
// win1.41 00606920 mac 10104980 Mist::Save(GameOSFile &)
uint32_t __fastcall Save__4MistFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Mist@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055ebb0 mac 10104750 Mist::GetSaveType(void)
uint32_t __fastcall GetSaveType__4MistFv(struct GameThing* this) asm("?GetSaveType@Mist@@UAEIXZ");
// win1.41 00606af0 mac 101047c0 Mist::ResolveLoad(void)
void __fastcall ResolveLoad__4MistFv(struct GameThing* this) asm("?ResolveLoad@Mist@@UAEXXZ");
// win1.41 0055eba0 mac 10104710 Mist::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__4MistFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Mist@@UAEIXZ");
// win1.41 006067d0 mac 10104c90 Mist::GetDistanceFromObject(MapCoords const &)
float __fastcall GetDistanceFromObject__4MistFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* param_1) asm("?GetDistanceFromObject@Mist@@UAEMPBUMapCoords@@@Z");
// win1.41 0055eb90 mac 101046e0 Mist::IsMist(void)
uint32_t __fastcall IsMist__4MistFv(struct GameThingWithPos* this) asm("?IsMist@Mist@@UAEIXZ");
// win1.41 0055eb80 mac 101046b0 Mist::GetText(void)
const char* __fastcall GetText__4MistFv(struct GameThingWithPos* this) asm("?GetText@Mist@@UAEPBDXZ");
// win1.41 00606910 mac 10104af0 Mist::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__4MistFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Mist@@UAEIXZ");

DECLARE_LH_LIST_HEAD(Mist);

#endif /* BW1_DECOMP_MIST_INCLUDED_H */
