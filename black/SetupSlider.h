#ifndef BW1_DECOMP_SETUP_SLIDER_INCLUDED_H
#define BW1_DECOMP_SETUP_SLIDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */

#include "SetupControl.h" /* For struct SetupControl */

struct SetupSlider
{
  struct SetupControl super;  /* 0x0 */
  float value;  /* 0x23c */
  float drag_start_value;  /* 0x240 */
  struct LHCoord drag_start;
  int height;
};
static_assert(sizeof(struct SetupSlider) == 0x250, "Data type is of wrong size");

static struct SetupControlVftable* __vt__11SetupSlider = (struct SetupControlVftable*)0x008ab2ec;

// Constructors

// win1.41 00409bf0 mac 1043fbc0 SetupSlider::SetupSlider(int, int, int, int, int, float, wchar_t *)
struct SetupSlider* __fastcall __ct__11SetupSliderFiiiiifPw(struct SetupSlider* this, const void* edx, int id, int x, int y, int width, int height, float value, char16_t* label);

// Override methods

// win1.41 00409a40 mac 10440200 SetupSlider::Draw(bool, bool)
void __fastcall Draw__11SetupSliderFbb(struct SetupSlider* this, const void* edx, bool hovered, bool selected);
// win1.41 00409c70 mac 1043ff90 SetupSlider::Drag(int, int)
void __fastcall Drag__11SetupSliderFii(struct SetupSlider* this, const void* edx, int x, int y);
// win1.41 00409d60 mac 1043c240 SetupSlider::MouseDown(int, int, bool)
void __fastcall MouseDown__11SetupSliderFiib(struct SetupSlider* this, const void* edx, int x, int y, bool param_3);
// win1.41 00409d90 mac 100b4690 SetupSlider::MouseUp(int, int, bool)
void __fastcall MouseUp__11SetupSliderFiib(struct SetupSlider* this, const void* edx, int x, int y, bool param_3);
// win1.41 00409960 mac 10103d10 SetupSlider::KeyDown(int, int)
void __fastcall KeyDown__11SetupSliderFii(struct SetupSlider* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
// win1.41 00409c50 mac 101c8450 SetupSlider::~SetupSlider(void)
struct SetupSlider* __fastcall __dt__11SetupSliderFb(struct SetupSlider* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_SLIDER_INCLUDED_H */
