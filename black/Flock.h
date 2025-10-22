#ifndef BW1_DECOMP_FLOCK_INCLUDED_H
#define BW1_DECOMP_FLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Container.h" /* For struct Container */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Base;
struct CitadelHeart;
struct Creature;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct Living;
struct LivingDLList;
struct Town;

struct GFlockInfo
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct GFlockInfo) == 0x1, "Data type is of wrong size");

struct Flock
{
  struct Container super;  /* 0x0 */
  uint32_t field_0x30;
  uint32_t field_0x34;
  struct CitadelHeart* citadel_heart;
  struct LivingDLList* members;
  struct LivingDLList* leader;  /* 0x40 */
  struct LivingDLList* field_0x44;
  int field_0x48;
  uint32_t field_0x4c;
  uint16_t domain_radius;  /* 0x50 */
  uint16_t field_0x52;
  uint32_t field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
  struct MapCoords field_0x60;
  struct MapCoords field_0x6c;
  uint32_t field_0x78;
  uint32_t field_0x7c;
  uint32_t field_0x80;
  uint32_t field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
};
static_assert(sizeof(struct Flock) == 0x90, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9ee8 mac inlined Flock::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Flock asm("??_R0?AVFlock@@@8");
// win1.41 009ac4e0 mac inlined Flock::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Flock asm("??_R1A@?0A@A@Flock@@8");
// win1.41 009ac4f8 mac inlined Flock::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Flock asm("??_R2Flock@@8");
// win1.41 009ac510 mac inlined Flock::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Flock asm("??_R3Flock@@8");
// win1.41 008dd104 mac 10742990 Flock::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5Flock asm("??_R4Flock@@6B@");
// win1.41 008dd108 mac 10742998 Flock::`vftable'
extern const struct GameThingWithPosVftable __vt__5Flock asm("??_7Flock@@6B@");

// Constructors

// win1.41 0052f780 mac 100e6ec0 Flock::Flock(MapCoords const &, GFlockInfo const *, GPlayer *, unsigned long)
struct Flock* __fastcall __ct__5FlockFRC9MapCoordsPC10GFlockInfoP7GPlayerUl(struct Flock* this, const void* edx, struct MapCoords* coords, struct GFlockInfo* info, struct GPlayer* player, uint32_t param_4) asm("??0Flock@@QAE@ABUMapCoords@@PBUGFlockInfo@@PAVGPlayer@@K@Z");
// win1.41 100e6be0 mac 0052f950 Flock::Flock(Living*)
struct Flock* __fastcall __ct__5FlockFP6Living(struct Flock* this, const void* edx, struct Living* param_1) asm("??0Flock@@QAE@PAVLiving@@@Z");

// Non-virtual methods

// win1.41 0052fc20 mac 100e6220 Flock::SetDomainCentrePos(MapCoords const &)
void __fastcall SetDomainCentrePos__5FlockFRC9MapCoords(struct Flock* this, const void* edx, const struct MapCoords* param_1) asm("?SetDomainCentrePos@Flock@@QAEXABUMapCoords@@@Z");
// win1.41 00530570 mac 100684b0 Flock::GetFlockPos(void)
struct MapCoords* __fastcall GetFlockPos__5FlockFv(struct Flock* this) asm("?GetFlockPos@Flock@@QAEPAUMapCoords@@XZ");

// Override methods

// win1.41 0052f920 mac 100e3420 Flock::_dt(void)
void __fastcall __dt__5FlockFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFlock@@UAEPAXI@Z");
// win1.41 0052ffb0 mac 100e5630 Flock::ToBeDeleted(int)
void __fastcall ToBeDeleted__5FlockFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Flock@@UAEXH@Z");
// win1.41 0052f870 mac 100e34e0 Flock::GetTown(void)
struct Town* __fastcall GetTown__5FlockFv(struct GameThing* this) asm("?GetTown@Flock@@UAEPAVTown@@XZ");
// win1.41 0052f910 mac 100e37a0 Flock::GetDebugText(void)
char* __fastcall GetDebugText__5FlockFv(struct GameThing* this) asm("?GetDebugText@Flock@@UAEPADXZ");
// win1.41 00530930 mac 100e3880 Flock::Load(GameOSFile &)
uint32_t __fastcall Load__5FlockFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Flock@@UAEIAAVGameOSFile@@@Z");
// win1.41 005305a0 mac 100e40b0 Flock::Save(GameOSFile &)
uint32_t __fastcall Save__5FlockFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Flock@@UAEIAAVGameOSFile@@@Z");
// win1.41 0052f900 mac 100e3770 Flock::GetSaveType(void)
uint32_t __fastcall GetSaveType__5FlockFv(struct GameThing* this) asm("?GetSaveType@Flock@@UAEIXZ");
// win1.41 0052f8a0 mac 100e3580 Flock::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__5FlockFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Flock@@UAEIXZ");
// win1.41 0052f8b0 mac 100e35c0 Flock::GetCreatureBeliefListType(void)
uint32_t __fastcall GetCreatureBeliefListType__5FlockFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefListType@Flock@@UAEIXZ");
// win1.41 0052f8d0 mac 100e3650 Flock::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichAngerAppliesTo__5FlockFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichAngerAppliesTo@Flock@@UAE_NPAVCreature@@@Z");
// win1.41 0052f8e0 mac 100e36b0 Flock::IsActivityObjectWhichCompassionAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichCompassionAppliesTo__5FlockFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichCompassionAppliesTo@Flock@@UAE_NPAVCreature@@@Z");
// win1.41 0052f8f0 mac 100e3710 Flock::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
bool __fastcall IsActivityObjectWhichPlayfulnessAppliesTo__5FlockFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsActivityObjectWhichPlayfulnessAppliesTo@Flock@@UAE_NPAVCreature@@@Z");
// win1.41 0052f8c0 mac 100e3600 Flock::IsSuitableForCreatureActivity(void)
uint32_t __fastcall IsSuitableForCreatureActivity__5FlockFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureActivity@Flock@@UAEIXZ");
// win1.41 0052f860 mac 100e34b0 Flock::IsFlock( const(void))
uint32_t __fastcall IsFlock__5FlockCFv(const struct GameThingWithPos* this) asm("?IsFlock@Flock@@UBEIXZ");
// win1.41 0052f880 mac 100e3510 Flock::IsScriptContainer( const(void))
uint32_t __fastcall IsScriptContainer__5FlockCFv(const struct GameThingWithPos* this) asm("?IsScriptContainer@Flock@@UBEIXZ");
// win1.41 0052f890 mac 100e3550 Flock::GetText(void)
const char* __fastcall GetText__5FlockFv(struct GameThingWithPos* this) asm("?GetText@Flock@@UAEPBDXZ");
// win1.41 00530490 mac 100e4a70 Flock::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__5FlockFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Flock@@UAEIXZ");

DECLARE_LH_LINKED_LIST(Flock);

#endif /* BW1_DECOMP_FLOCK_INCLUDED_H */
