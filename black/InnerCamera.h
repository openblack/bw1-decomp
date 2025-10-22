#ifndef BW1_DECOMP_INNER_CAMERA_INCLUDED_H
#define BW1_DECOMP_INNER_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint, struct Point2D */
#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer3d */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

// Forward Declares

struct InnerCamera;
struct InnerRoom;
struct LH3DCamera;
struct LH3DMesh;

struct InnerCameraVftable
{
  void (__fastcall* ReloadCamera)(struct InnerCamera* this, const void* edx, char* param_1);  /* 0x0 */
  void (__fastcall* PreDraw)(struct InnerCamera* this);
  void (__fastcall* Init)(struct InnerCamera* this, const void* edx, char* param_1);
  void (__fastcall* Reinit)(struct InnerCamera* this);
  void (__fastcall* Close)(struct InnerCamera* this);  /* 0x10 */
  uint32_t (__fastcall* CalcDoorHit)(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, struct LHCoord param_2, float param_3, bool param_4);
  void (__fastcall* Update)(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, float param_2, int param_3, int param_4, const struct LHCoord* param_5, bool param_6);
  void (__fastcall* UpdateMain)(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, float param_2, int param_3, int param_4, const struct LHCoord* param_5, bool param_6);
  void (__fastcall* UpdateState)(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, float param_2, int param_3, int param_4, const struct LHCoord* param_5, bool param_6);  /* 0x20 */
  void (__fastcall* FocusOnSubMesh)(struct InnerCamera* this, const void* edx, struct LH3DMesh* param_1, int param_2, float param_3, float param_4, float param_5);
  void (__fastcall* TriggerIntro)(struct InnerCamera* this, const void* edx, bool param_1, struct Zoomer3d* param_2, struct Zoomer3d* param_3);
  struct InnerCamera* (__fastcall* __dt)(struct InnerCamera* this);
};
static_assert(sizeof(struct InnerCameraVftable) == 0x30, "Data type is of wrong size");

struct InnerCamera
{
  struct InnerCameraVftable* vftable;  /* 0x0 */
  struct Zoomer3d zoomer_pos;
  struct Zoomer3d zoomer_foc;  /* 0x94 */
  uint32_t field_0x124;
  uint32_t field_0x128;
  int32_t field_0x12c;
  uint8_t field_0x130[0x4];
  uint32_t field_0x134;
  struct LHCoord* field_0x138;
  uint32_t field_0x13c;
  uint32_t field_0x140;
  float field_0x144;
  uint32_t field_0x148;
  uint32_t field_0x14c;
  uint32_t field_0x150;
  uint32_t field_0x154;
  int field_0x158;
  int field_0x15c;
  char filename[0x100];  /* 0x160 */
  struct LHPoint field_0x260;
  struct LHPoint field_0x26c;
  struct Zoomer3d field_0x278;
  struct Zoomer3d field_0x308;
  uint8_t field_0x398;
  uint8_t field_0x399;
  uint8_t field_0x39a;
  uint8_t field_0x39b;
  struct LHPoint pos_0x39c;
  struct LHPoint foc_0x3a8;
  uint8_t field_0x3b4[0x18];
  float field_0x3cc;
  float field_0x3d0;
  struct LHPoint current_pos;
  struct LHPoint current_foc;  /* 0x3e0 */
  struct Point2D field_0x3ec;
  uint8_t field_0x3f4;
  uint8_t field_0x3f5[0x3];
  uint32_t field_0x3f8;
  float field_0x3fc;
  float field_0x400;
  uint8_t field_0x404[0x1c];
  float field_0x420;
  float field_0x424;
  uint32_t field_0x428;
  struct LHPoint field_0x42c;
  uint32_t field_0x438;
  struct LH3DCamera* lh3dcamera;
  uint8_t field_0x440[0xc];
  int32_t field_0x44c;
  uint32_t field_0x450;
  struct LHPoint field_0x454;
  struct LHPoint field_0x460;
};
static_assert(sizeof(struct InnerCamera) == 0x46c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c275a8 mac inlined InnerCamera::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11InnerCamera asm("??_R0?AUInnerCamera@@@8");
// win1.41 009ba6a0 mac inlined InnerCamera::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11InnerCamera asm("??_R1A@?0A@A@InnerCamera@@8");
// win1.41 009bab94 mac inlined InnerCamera::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11InnerCamera asm("??_R2InnerCamera@@8");
// win1.41 009baba0 mac inlined InnerCamera::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11InnerCamera asm("??_R3InnerCamera@@8");
// win1.41 0099ee6c mac 10777d9c InnerCamera::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11InnerCamera asm("??_R4InnerCamera@@6B@");
// win1.41 0099ee70 mac 10777da4 InnerCamera::`vftable'
extern const struct InnerCameraVftable __vt__11InnerCamera asm("??_7InnerCamera@@6B@");

// Constructors

// win1.41 007974f0 mac 10539250 InnerCamera::InnerCamera(void)
struct InnerCamera* __fastcall __ct__11InnerCameraFv(struct InnerCamera* this) asm("??0InnerCamera@@QAE@XZ");

// Override methods

// win1.41 00797420 mac 10539420 InnerCamera::ReloadCamera(char *)
void __fastcall ReloadCamera__11InnerCameraFPc(struct InnerCamera* this, const void* edx, char* param_1) asm("?ReloadCamera@InnerCamera@@UAEXPAD@Z");
// win1.41 00796920 mac 10539d10 InnerCamera::PreDraw(void)
void __fastcall PreDraw__11InnerCameraFv(struct InnerCamera* this) asm("?PreDraw@InnerCamera@@UAEXXZ");
// win1.41 00797140 mac 10539520 InnerCamera::Init(char *)
void __fastcall Init__11InnerCameraFPc(struct InnerCamera* this, const void* edx, char* param_1) asm("?Init@InnerCamera@@UAEXPAD@Z");
// win1.41 007885f0 mac 10287a60 InnerCamera::Reinit(void)
void __fastcall Reinit__11InnerCameraFv(struct InnerCamera* this) asm("?Reinit@InnerCamera@@UAEXXZ");
// win1.41 007974a0 mac 105393b0 InnerCamera::Close(void)
void __fastcall Close__11InnerCameraFv(struct InnerCamera* this) asm("?Close@InnerCamera@@UAEXXZ");
// win1.41 007969e0 mac 10539ae0 InnerCamera::CalcDoorHit(InnerRoom *, LHCoord, float, bool)
uint32_t __fastcall CalcDoorHit__11InnerCameraFP9InnerRoom7LHCoordfb(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, struct LHCoord param_2, float param_3, bool param_4) asm("?CalcDoorHit@InnerCamera@@UAEIPAUInnerRoom@@ULHCoord@@M_N@Z");
// win1.41 00796b60 mac 10539710 InnerCamera::Update(InnerRoom *, float, int, int, LHCoord const &, bool)
void __fastcall Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, float param_2, int param_3, int param_4, const struct LHCoord* param_5, bool param_6) asm("?Update@InnerCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z");
// win1.41 00795ce0 mac 10539fe0 InnerCamera::UpdateMain(InnerRoom *, float, int, int, LHCoord const &, bool)
void __fastcall UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, float param_2, int param_3, int param_4, const struct LHCoord* param_5, bool param_6) asm("?UpdateMain@InnerCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z");
// win1.41 007965f0 mac 10539e30 InnerCamera::UpdateState(InnerRoom *, float, int, int, LHCoord const &, bool)
void __fastcall UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb(struct InnerCamera* this, const void* edx, struct InnerRoom* param_1, float param_2, int param_3, int param_4, const struct LHCoord* param_5, bool param_6) asm("?UpdateState@InnerCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z");
// win1.41 00795570 mac 1053b120 InnerCamera::FocusOnSubMesh(LH3DMesh *, int, float, float, float)
void __fastcall FocusOnSubMesh__11InnerCameraFP8LH3DMeshifff(struct InnerCamera* this, const void* edx, struct LH3DMesh* param_1, int param_2, float param_3, float param_4, float param_5) asm("?FocusOnSubMesh@InnerCamera@@UAEXPAULH3DMesh@@HMMM@Z");
// win1.41 007957c0 mac 1053ada0 InnerCamera::TriggerIntro(bool, Zoomer3d *, Zoomer3d *)
void __fastcall TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d(struct InnerCamera* this, const void* edx, bool param_1, struct Zoomer3d* param_2, struct Zoomer3d* param_3) asm("?TriggerIntro@InnerCamera@@UAEX_NPAUZoomer3d@@1@Z");
// win1.41 007974d0 mac 10539320 InnerCamera::__dt(void)
void __fastcall __dt__11InnerCameraFv(struct InnerCamera* this) asm("??_DInnerCamera@@QAEXXZ");

#endif /* BW1_DECOMP_INNER_CAMERA_INCLUDED_H */
