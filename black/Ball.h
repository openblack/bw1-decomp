#ifndef BW1_DECOMP_BALL_INCLUDED_H
#define BW1_DECOMP_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct Creature;
struct GBallInfo;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;
struct Town;

struct Ball
{
  struct MobileObject super;  /* 0x0 */
  uint32_t field_0x68;
  struct LHPoint field_0x6c;
  struct LHPoint field_0x78;
  uint32_t field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
  bool32_t is_owned;  /* 0x90 */
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  struct Town* town;  /* 0xa0 */
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t field_0xac;
  uint32_t field_0xb0;
  uint32_t field_0xb4;
};
static_assert(sizeof(struct Ball) == 0xb8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd070 mac inlined Ball::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Ball asm("??_R0?AVBall@@@8");
// win1.41 009a8328 mac inlined Ball::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Ball asm("??_R1A@?0A@A@Ball@@8");
// win1.41 009a8340 mac inlined Ball::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Ball asm("??_R2Ball@@8");
// win1.41 009a8360 mac inlined Ball::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Ball asm("??_R3Ball@@8");
// win1.41 008c4f70 mac 107371dc Ball::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__4Ball asm("??_R4Ball@@6B@");
// win1.41 008c4f74 mac 107371e4 Ball::`vftable'
extern const struct MobileVftable __vt__4Ball asm("??_7Ball@@6B@");

// Static methods

// win1.41 00435b90 mac 100b09f0 Ball::Create(MapCoords const &, GBallInfo const *, unsigned short, float, float)
struct Ball* __stdcall Create__4BallFRC9MapCoordsPC9GBallInfoUsff(struct Ball* this, const struct MapCoords* param_1, const struct GBallInfo* param_2, unsigned short param_3, float param_4, float param_5) asm("?Create@Ball@@QAEPAV1@ABUMapCoords@@PBVGBallInfo@@GMM@Z");

// Constructors

// win1.41 004359b0 mac 100b0df0 Ball::Ball(MapCoords const &, GBallInfo const *)
struct Ball* __fastcall __ct__4BallFRC9MapCoordsPC9GBallInfo(struct Ball* this, const void* edx, const struct MapCoords* coords, const struct GBallInfo* info) asm("??0Ball@@QAE@ABUMapCoords@@PBVGBallInfo@@@Z");

// Non-virtual methods

// win1.41 004360e0 mac 100b04d0 Ball::IsBallFree(void)
bool __fastcall IsBallFree__4BallFv(struct Ball* this) asm("?IsBallFree@Ball@@QAE_NXZ");

// Override methods

// win1.41 00435ae0 mac 100b0b20 Ball::_dt(void)
void __fastcall __dt__4BallFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GBall@@UAEPAXI@Z");
// win1.41 00435f60 mac 100b0630 Ball::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__4BallFv(struct GameThing* this) asm("?GetPlayer@Ball@@UAEPAVGPlayer@@XZ");
// win1.41 00435ad0 mac 100affd0 Ball::GetDebugText(void)
char* __fastcall GetDebugText__4BallFv(struct GameThing* this) asm("?GetDebugText@Ball@@UAEPADXZ");
// win1.41 00436260 mac 100b0080 Ball::Load(GameOSFile &)
uint32_t __fastcall Load__4BallFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Ball@@UAEIAAVGameOSFile@@@Z");
// win1.41 00436110 mac 100b0260 Ball::Save(GameOSFile &)
uint32_t __fastcall Save__4BallFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Ball@@UAEIAAVGameOSFile@@@Z");
// win1.41 00435ac0 mac 100affa0 Ball::GetSaveType(void)
uint32_t __fastcall GetSaveType__4BallFv(struct GameThing* this) asm("?GetSaveType@Ball@@UAEIXZ");
// win1.41 00435ab0 mac 100aff50 Ball::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__4BallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@Ball@@UAEIPAVCreature@@@Z");
// win1.41 004363b0 mac 100b0040 Ball::IsToy(Creature *)
uint32_t __fastcall IsToy__4BallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsToy@Ball@@UAEIPAVCreature@@@Z");
// win1.41 004363c0 mac 100b0000 Ball::IsToyBall(Creature *)
uint32_t __fastcall IsToyBall__4BallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsToyBall@Ball@@UAEIPAVCreature@@@Z");
// win1.41 00436100 mac 100b0450 Ball::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__4BallFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Ball@@UAEIXZ");
// win1.41 00435c30 mac 100b0970 Ball::Process(void)
uint32_t __fastcall Process__4BallFv(struct Object* this) asm("?Process@Ball@@UAEIXZ");
// win1.41 00516870 mac 100cb190 Ball::Draw(void)
void __fastcall Draw__4BallFv(struct Object* this) asm("?Draw@Ball@@UAEXXZ");
// win1.41 004360f0 mac 100b0490 Ball::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__4BallFv(struct Object* this) asm("?GetPhysicsConstantsType@Ball@@UAEIXZ");

DECLARE_LH_LIST_HEAD(Ball);

#endif /* BW1_DECOMP_BALL_INCLUDED_H */
