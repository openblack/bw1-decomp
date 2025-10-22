#ifndef BW1_DECOMP_FIRE_FLY_INCLUDED_H
#define BW1_DECOMP_FIRE_FLY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MapCoords.h" /* For struct MapCoords */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LH3DSprite;
struct LHOSFile;
struct PhysicsObject;

struct FireFly
{
  struct Object super;  /* 0x0 */
  uint32_t field_0x54;
  struct LH3DSprite* sprite;
  uint32_t field_0x5c;
  struct MapCoords field_0x60;
  struct MapCoords field_0x6c;
  struct MapCoords field_0x78;
  uint8_t field_0x84[0xc];
  uint32_t field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  float field_0x9c;
  float field_0xa0;
  float field_0xa4;
  float field_0xa8;
  float field_0xac;
  float field_0xb0;
  float field_0xb4;
  float field_0xb8;
  float field_0xbc;
  uint8_t field_0xc0;
};
static_assert(sizeof(struct FireFly) == 0xc4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9dc0 mac inlined FireFly::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7FireFly asm("??_R0?AVFireFly@@@8");
// win1.41 009ac290 mac inlined FireFly::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7FireFly asm("??_R1A@?0A@A@FireFly@@8");
// win1.41 009ac2a8 mac inlined FireFly::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7FireFly asm("??_R2FireFly@@8");
// win1.41 009ac2c0 mac inlined FireFly::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7FireFly asm("??_R3FireFly@@8");
// win1.41 008da4f4 mac 1073f830 FireFly::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__7FireFly asm("??_R4FireFly@@6B@");
// win1.41 008da4f8 mac 106f5e14 FireFly::`vftable'
extern const struct ObjectVftable __vt__7FireFly asm("??_7FireFly@@6B@");

// Static methods

// win1.41 0052a200 mac 100d9f20 FireFly::Create(MapCoords const &)
struct FireFly* __cdecl Create__7FireFlyFRC9MapCoords(struct MapCoords* coord) asm("?Create@FireFly@@SAPAV1@ABUMapCoords@@@Z");

// Constructors

// win1.41 0052a280 mac 100d9e20 FireFly::FireFly(const MapCoords&)
struct FireFly* __fastcall __ct__7FireFlyFRC9MapCoords(struct FireFly* this, const void* edx, struct MapCoords* coords) asm("??0FireFly@@QAE@ABUMapCoords@@@Z");
// win1.41 0052a340 mac 100d9e04 FireFly::FireFly(void)
struct FireFly* __fastcall __ct__7FireFlyFv(struct FireFly* this) asm("??0FireFly@@QAE@XZ");

// Override methods

// win1.41 0052a310 mac 100d9be0 FireFly::_dt(void)
void __fastcall __dt__7FireFlyFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFireFly@@UAEPAXI@Z");
// win1.41 0052a4c0 mac 100d9ab0 FireFly::ToBeDeleted(int)
void __fastcall ToBeDeleted__7FireFlyFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@FireFly@@UAEXH@Z");
// win1.41 0052a300 mac 100d66d0 FireFly::GetDebugText(void)
char* __fastcall GetDebugText__7FireFlyFv(struct GameThing* this) asm("?GetDebugText@FireFly@@UAEPADXZ");
// win1.41 0052bbc0 mac 100d6850 FireFly::Load(GameOSFile &)
uint32_t __fastcall Load__7FireFlyFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@FireFly@@UAEIAAVGameOSFile@@@Z");
// win1.41 0052b870 mac 100d7020 FireFly::Save(GameOSFile &)
uint32_t __fastcall Save__7FireFlyFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@FireFly@@UAEIAAVGameOSFile@@@Z");
// win1.41 0052a2f0 mac 100d6690 FireFly::GetSaveType(void)
uint32_t __fastcall GetSaveType__7FireFlyFv(struct GameThing* this) asm("?GetSaveType@FireFly@@UAEIXZ");
// win1.41 0052a1d0 mac 100da180 FireFly::IsMoving( const(void))
bool __fastcall IsMoving__7FireFlyCFv(const struct GameThingWithPos* this) asm("?IsMoving@FireFly@@UBE_NXZ");
// win1.41 0052aa90 mac 100d9130 FireFly::Draw(void)
void __fastcall Draw__7FireFlyFv(struct Object* this) asm("?Draw@FireFly@@UAEXXZ");
// win1.41 0052a510 mac 100d9950 FireFly::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__7FireFlyFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@FireFly@@UAEXABUMapCoords@@@Z");
// win1.41 0052a1a0 mac 100da240 FireFly::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__7FireFlyFv(struct Object* this) asm("?InteractsWithPhysicsObjects@FireFly@@UAE_NXZ");
// win1.41 0052a1b0 mac 100da1f0 FireFly::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__7FireFlyFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@FireFly@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0052a1c0 mac 100da1b0 FireFly::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__7FireFlyFv(struct Object* this) asm("?CanBecomeAPhysicsObject@FireFly@@UAE_NXZ");
// win1.41 0052bf10 mac 100d6710 FireFly::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__7FireFlyFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@FireFly@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LIST_HEAD(FireFly);

#endif /* BW1_DECOMP_FIRE_FLY_INCLUDED_H */
