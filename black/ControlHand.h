#ifndef BW1_DECOMP_CONTROL_HAND_INCLUDED_H
#define BW1_DECOMP_CONTROL_HAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Morphable.h" /* For struct Morphable */

// Forward Declares

struct GInterfaceStatus;
struct HandFX;
struct HandState;
struct HandStateCamera;
struct HandStateCitadel;
struct HandStateCreature;
struct HandStateGrain;
struct HandStateHolding;
struct HandStateInvisible;
struct HandStateMultiPickUp;
struct HandStateNormal;
struct HandStatePlayAnim;
struct HandStateTotem;
struct HandStateTug;
struct LHMatrix;

struct ControlHandUpdateInfo
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct ControlHandUpdateInfo) == 0x1, "Data type is of wrong size");

struct CHand__State__Named
{
  struct HandStateInvisible* invisible;  /* 0x0 */
  struct HandStateNormal* normal;
  struct HandStateCamera* camera;
  struct HandStateTug* tug;
  struct HandStateHolding* holding;  /* 0x10 */
  struct HandStateTotem* totem;
  struct HandStateMultiPickUp* multi_pick_up;
  struct HandStateCreature* creature;
  struct HandStateGrain* grain;  /* 0x20 */
  struct HandStatePlayAnim* play_anim;
  struct HandStateCitadel* citadel;
};
static_assert(sizeof(struct CHand__State__Named) == 0x2c, "Data type is of wrong size");

union CHand__State
{
  struct CHand__State__Named named;
  struct HandState* raw[0xb];
};
static_assert(sizeof(union CHand__State) == 0x2c, "Data type is of wrong size");

struct CHand
{
  struct Morphable super;  /* 0x0 */
  float field_0x4834;
  float max_distance_from_user;
  int field_0x483c;
  uint32_t field_0x4840;
  uint32_t field_0x4844;
  uint32_t field_0x4848;
  int field_0x484c;
  struct GInterfaceStatus* interface_status;  /* 0x4850 */
  float field_0x4854;
  uint8_t field_0x4858;
  uint8_t field_0x4859;
  uint8_t field_0x485a;
  uint8_t field_0x485b;
  uint32_t field_0x485c;
  uint32_t field_0x4860;
  uint32_t field_0x4864;
  uint8_t field_0x4868;
  uint8_t field_0x4869;
  uint8_t field_0x486a;
  uint8_t field_0x486b;
  uint32_t field_0x486c;
  uint32_t field_0x4870;
  uint8_t field_0x4874;
  uint8_t field_0x4875;
  uint8_t field_0x4876;
  uint8_t field_0x4877;
  uint32_t current_state;
  union CHand__State hand_states;
  uint8_t field_0x48a8;
  uint8_t field_0x48a9;
  uint8_t field_0x48aa;
  uint8_t field_0x48ab;
  uint8_t field_0x48ac;
  uint8_t field_0x48ad;
  uint8_t field_0x48ae;
  uint8_t field_0x48af;
  uint8_t field_0x48b0;
  uint8_t field_0x48b1;
  uint8_t field_0x48b2;
  uint8_t field_0x48b3;
  uint32_t field_0x48b4;
  float field_0x48b8;
  float field_0x48bc;
  uint8_t field_0x48c0;
  uint8_t field_0x48c1;
  uint8_t field_0x48c2;
  uint8_t field_0x48c3;
  uint8_t field_0x48c4;
  uint8_t field_0x48c5;
  uint8_t field_0x48c6;
  uint8_t field_0x48c7;
  uint8_t field_0x48c8;
  uint8_t field_0x48c9;
  uint8_t field_0x48ca;
  uint8_t field_0x48cb;
  uint8_t field_0x48cc;
  uint8_t field_0x48cd;
  uint8_t field_0x48ce;
  uint8_t field_0x48cf;
  uint8_t field_0x48d0;
  uint8_t field_0x48d1;
  uint8_t field_0x48d2;
  uint8_t field_0x48d3;
  struct LHPoint point_0x48d4;
  struct LHPoint point_0x48e0;
  struct LHPoint point_0x48ec;
  uint32_t field_0x48f8;
  uint32_t field_0x48fc;
  uint32_t field_0x4900;
  uint32_t field_0x4904;
  uint32_t field_0x4908;
  uint32_t field_0x490c;
  uint8_t field_0x4910;
  uint8_t field_0x4911;
  uint8_t field_0x4912;
  uint8_t field_0x4913;
  uint8_t field_0x4914;
  uint8_t field_0x4915;
  uint8_t field_0x4916;
  uint8_t field_0x4917;
  uint32_t field_0x4918;
  uint8_t field_0x491c;
  uint8_t field_0x491d;
  uint8_t field_0x491e;
  uint8_t field_0x491f;
  uint8_t field_0x4920;
  uint8_t field_0x4921;
  uint8_t field_0x4922;
  uint8_t field_0x4923;
  uint8_t field_0x4924;
  uint8_t field_0x4925;
  uint8_t field_0x4926;
  uint8_t field_0x4927;
  uint8_t field_0x4928;
  uint8_t field_0x4929;
  uint8_t field_0x492a;
  uint8_t field_0x492b;
  uint8_t field_0x492c;
  uint8_t field_0x492d;
  uint8_t field_0x492e;
  uint8_t field_0x492f;
  uint8_t field_0x4930;
  uint8_t field_0x4931;
  uint8_t field_0x4932;
  uint8_t field_0x4933;
  uint8_t field_0x4934;
  uint8_t field_0x4935;
  uint8_t field_0x4936;
  uint8_t field_0x4937;
  uint8_t field_0x4938;
  uint8_t field_0x4939;
  uint8_t field_0x493a;
  uint8_t field_0x493b;
  uint8_t field_0x493c;
  uint8_t field_0x493d;
  uint8_t field_0x493e;
  uint8_t field_0x493f;
  uint8_t field_0x4940;
  uint8_t field_0x4941;
  uint8_t field_0x4942;
  uint8_t field_0x4943;
  uint8_t field_0x4944;
  uint8_t field_0x4945;
  uint8_t field_0x4946;
  uint8_t field_0x4947;
  struct HandFX* hand_fx;
  int* field_0x494c;
  int field_0x4950;
  uint8_t field_0x4954;
  uint8_t field_0x4955;
  uint8_t field_0x4956;
  uint8_t field_0x4957;
  uint32_t field_0x4958;
  uint32_t field_0x495c;
  uint32_t field_0x4960;
  struct LHPoint point_0x4964;
  uint32_t field_0x4970;
  uint32_t field_0x4974;
  uint32_t field_0x4978;
  uint32_t field_0x497c;
  uint32_t field_0x4980;
  uint32_t field_0x4984;
  float field_0x4988;
  uint32_t field_0x498c;
  uint8_t field_0x4990;
  uint8_t field_0x4991;
  uint8_t field_0x4992;
  uint8_t field_0x4993;
  uint32_t field_0x4994;
  uint32_t field_0x4998;
  uint32_t field_0x499c;
  uint32_t field_0x49a0;
  uint32_t field_0x49a4;
  uint32_t field_0x49a8;
  struct LHMatrix* matrix_0x49ac;
  float field_0x49b0;
  uint32_t field_0x49b4;
  uint32_t field_0x49b8;
  uint32_t field_0x49bc;
  uint32_t field_0x49c0;
};
static_assert(sizeof(struct CHand) == 0x49c4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cecc8 mac inlined CHand::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5CHand asm("??_R0?AVCHand@@@8");
// win1.41 009a92a0 mac inlined CHand::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5CHand asm("??_R1A@?0A@A@CHand@@8");
// win1.41 009a92b8 mac inlined CHand::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5CHand asm("??_R2CHand@@8");
// win1.41 009a92c8 mac inlined CHand::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5CHand asm("??_R3CHand@@8");
// win1.41 008cbec8 mac 1077dbd8 CHand::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5CHand asm("??_R4CHand@@6B@");
// win1.41 008cbecc mac 1077dbe0 CHand::`vftable'
extern const struct MorphableVftable __vt__5CHand asm("??_7CHand@@6B@");

// Constructors

// win1.41 0046ba80 mac 101c8e00 CHand::CHand(LHPoint, GInterfaceStatus *)
struct CHand* __fastcall __ct__5CHandF7LHPointP16GInterfaceStatus(struct CHand* this, const void* edx, struct LHPoint point, struct GInterfaceStatus* status) asm("??0CHand@@QAE@ULHPoint@@PAVGInterfaceStatus@@@Z");

// Non-virtual methods

// win1.41 0046c260 mac 101c86d0 CHand::ToggleLeftRight(void)
void __fastcall ToggleLeftRight__5CHandFv(struct CHand* this) asm("?ToggleLeftRight@CHand@@QAEXXZ");
// win1.41 0046d2c0 mac 101c76b0 CHand::LoadBinary(char *, int)
uint32_t __fastcall LoadBinary_5CHandFPci(struct CHand* this, const void* edx, char* filename, int param_1);
// win1.41 0046ddd0 mac 101c6b10 CHand::ThrowObject(void)
void __fastcall ThrowObject__5CHandFv(struct CHand* this) asm("?ThrowObject@CHand@@QAEXXZ");
// win1.41 0046e4e0 mac 10081dd0 CHand::GameTurnUpdate()
void __fastcall GameTurnUpdate__5CHandFv(struct CHand* this) asm("?GameTurnUpdate@CHand@@QAEXXZ");

// Override methods

// win1.41 0046c4a0 mac 101c85f0 CHand::SetSize(float)
void __fastcall SetSize__5CHandFf(struct Morphable* this, const void* edx, float size) asm("?SetSize@CHand@@UAEXM@Z");
// win1.41 0046bf80 mac 101c8cf0 CHand::MorphTexture(void)
void __fastcall MorphTexture__5CHandFv(struct Morphable* this) asm("?MorphTexture@CHand@@UAEXXZ");
// win1.41 0046c350 mac 101c8670 CHand::UpdateTime(long)
void __fastcall UpdateTime__5CHandFl(struct Morphable* this, const void* edx, int param_1) asm("?UpdateTime@CHand@@UAEXH@Z");
// win1.41 0046c550 mac 10029b00 CHand::PrepareForDrawing(void)
void __fastcall PrepareForDrawing__5CHandFv(struct Morphable* this) asm("?PrepareForDrawing@CHand@@UAEXXZ");
// win1.41 0046d0f0 mac 101c7f70 CHand::AddForDrawing(void)
bool __fastcall AddForDrawing__5CHandFv(struct Morphable* this) asm("?AddForDrawing@CHand@@UAE_NXZ");

#endif /* BW1_DECOMP_CONTROL_HAND_INCLUDED_H */
