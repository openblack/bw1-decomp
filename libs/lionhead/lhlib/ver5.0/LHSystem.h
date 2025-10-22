#ifndef BW1_DECOMP_LH_SYSTEM_INCLUDED_H
#define BW1_DECOMP_LH_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LHText.h> /* For struct LHText */
#include <reversing_utils/re_common.h> /* For HINSTANCE, HWND, bool32_t */

#include "LHJoypad.h" /* For struct LHJoypads */
#include "LHMouse.h" /* For struct LHMouse */
#include "LHScreen.h" /* For struct LHScreen */
#include "LHScript.h" /* For struct LHScriptX_c_ */

struct Q24slim5TbIME_field_0x0_t
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  char16_t field_0x8[0x100];
  uint8_t field_0x208[0x618];
  HWND field_0x820;
  uint8_t field_0x824;
  HIMC field_0x828;
  uint32_t field_0x82c;
  uint32_t field_0x830;
  uint8_t field_0x834[0x100];
  uint32_t field_0x934;
  uint32_t field_0x938;
  uint32_t field_0x93c;
  uint32_t select_idx;  /* 0x940 */
  uint8_t field_0x944;
  uint32_t field_0x948;
  uint32_t field_0x94c;
  uint32_t field_0x950;
  uint32_t field_0x954;
  bool field_0x958;
  uint32_t field_0x95c;
};
static_assert(sizeof(struct Q24slim5TbIME_field_0x0_t) == 0x960, "Data type is of wrong size");

struct Q24slim5TbIME
{
  struct Q24slim5TbIME_field_0x0_t* field_0x0;
};
static_assert(sizeof(struct Q24slim5TbIME) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 007f3d00 mac 101704a0 slim::TbIME::Activate(void* )
void __fastcall Activate__Q24slim5TbIMEFPv(struct Q24slim5TbIME* this, const void* edx, HWND param_1);
// win1.41 007f3d10 mac 10170460 slim::TbIME::UnActivate(void)
void __fastcall UnActivate__Q24slim5TbIMEFv(struct Q24slim5TbIME* this);
// win1.41 007f3d50 mac 1061ec14 slim::TbIME::Composition_Get( (void))
wchar_t* __fastcall Composition_Get__Q24slim5TbIMEFv(struct Q24slim5TbIME* this);
// win1.41 007f3dc0 mac 1061e884 slim::TbIME::CandidateList_GetSelectIdx( (void)
uint32_t __fastcall CandidateList_GetSelectIdx__Q24slim5TbIMEFv(struct Q24slim5TbIME* this);
// win1.41 007f3de0 mac 1061e89c slim::TbIME::CandidateList_SetViewWindow( (unsigned int, unsigned int, unsigned int))
void __fastcall CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi(struct Q24slim5TbIME* this, const void* edx, uint32_t param_1, uint32_t param_2, uint32_t idx);

struct LHSystem
{
  HINSTANCE instance;  /* 0x0 */
  uint32_t field_0x4;
  uint32_t field_0x8;
  bool32_t terminating;
};
static_assert(sizeof(struct LHSystem) == 0x10, "Data type is of wrong size");

struct FrameInfoLinkedList
{
  uint32_t field_0x0;
  uint32_t field_0x4;
};
static_assert(sizeof(struct FrameInfoLinkedList) == 0x8, "Data type is of wrong size");

struct LHConvert
{
  uint8_t field_0x0[0x84];
  struct FrameInfoLinkedList frame_info;  /* 0x84 */
  uint32_t color;
};
static_assert(sizeof(struct LHConvert) == 0x90, "Data type is of wrong size");

struct LHSys
{
  struct LHSystem system;  /* 0x0 */
  struct LHScreen screen;  /* 0x10 */
  struct LHMouse mouse;  /* 0x1c4 */
  uint8_t field_0x32c[0x108];
  uint32_t field_0x434;
  uint8_t field_0x438[0x128];
  uint32_t field_0x560[0x10];
  uint32_t field_0x5a0;
  uint32_t field_0x5a4;
  struct LHJoypads joypads;
  uint8_t field_0x82c[0x8];
  struct LHConvert convert;  /* 0x834 */
  struct LHScriptX_c_ script;  /* 0x8c4 */
  uint8_t field_0x8f4[0x6750];
  struct LHText text;  /* 0x7044 */
  uint8_t field_0x7068[0x4c];
  HWND window;  /* 0x70b4 */
  uint8_t field_0x70b8;
  uint8_t field_0x70b9;
  bool field_0x70ba;
  uint8_t field_0x70bb;
  uint32_t field_0x70bc;
  uint32_t field_0x70c0;
  struct Q24slim5TbIME* field_0x70c4;
  uint8_t field_0x70c8[0x10];
};
static_assert(sizeof(struct LHSys) == 0x70d8, "Data type is of wrong size");

// Constructors

// win1.41 007db800 mac inlined LHSys::LHSys(void)
struct LHSys* __fastcall __ct__5LHSysFv(struct LHSys* this) asm("??0LHSys@@QAE@XZ");

// win1.41 inlined mac 1015cd20 __sinit_LHSystem_cpp
void __cdecl __sinit_LHSystem_cpp(void);

#endif /* BW1_DECOMP_LH_SYSTEM_INCLUDED_H */
