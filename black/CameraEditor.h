#ifndef BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H
#define BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */

// Forward Declares

struct GCameraEditor__CameraBin;
struct LH3DWay;

struct GCameraEditor
{
  struct Prss super;  /* 0x0 */
  uint8_t field_0x10[0x18];
};
static_assert(sizeof(struct GCameraEditor) == 0x28, "Data type is of wrong size");

// win1.41 008c7638 mac inlined GCameraEditor::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13GCameraEditor asm("??_R4GCameraEditor@@6B@");

// win1.41 008c763c mac inlined GCameraEditor::`vftable'
extern const struct PrssVftable __vt__13GCameraEditor asm("??_7GCameraEditor@@6B@");

// Static methods

// win1.41 00445050 mac 1019bdb0 GCameraEditor::FinalDraw(void)
void __cdecl FinalDraw__13GCameraEditorFv(void);
// win1.41 00445530 mac 1019b6c0 GCameraEditor::CreateSegFile(void)
void __cdecl CreateSegFile__13GCameraEditorFv(void);
// win1.41 00446450 mac 1019b070 GCameraEditor::Draw3DPart(void)
void __cdecl Draw3DPart__13GCameraEditorFv(void);
// win1.41 00446fe0 mac 1019adf0 GCameraEditor::LoadCameraFromHD(long, GCameraEditor::CameraBin &)
void __cdecl LoadCameraFromHD__13GCameraEditorFlRQ213GCameraEditor9CameraBin(int param_1, struct GCameraEditor__CameraBin* param_2);

struct Q213GCameraEditor9InfoTrack
{
  int field_0x0;
  uint32_t field_0x4;
  int field_0x8;
  uint32_t field_0xc;
  struct Q213GCameraEditor9InfoTrack* next;  /* 0x10 */
  uint32_t field_0x14;
  struct LHPoint field_0x18;
  struct LHPoint field_0x24;
  int field_0x30;
  struct LH3DWay* field_0x34;
  int32_t* field_0x38;
};
static_assert(sizeof(struct Q213GCameraEditor9InfoTrack) == 0x3c, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00446450 mac 1019b070 GCameraEditor::InfoTrack::Draw(void)
void __fastcall Draw__Q213GCameraEditor9InfoTrackFv(struct Q213GCameraEditor9InfoTrack* this);

#endif /* BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H */
