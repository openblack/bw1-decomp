#ifndef BW1_DECOMP_SETUP_MP3_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_MP3_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */

#include "SetupButton.h" /* For struct SetupButton */

struct SetupMP3Button
{
  struct SetupButton super;  /* 0x0 */
  uint32_t field_0x244;
  uint32_t field_0x248;
  struct LH3DColor color;
};
static_assert(sizeof(struct SetupMP3Button) == 0x250, "Data type is of wrong size");

static struct SetupControlVftable* __vt__14SetupMP3Button = (struct SetupControlVftable*)0x00900060;

// Constructors

// win1.41 inlined mac inlined SetupMP3Button::SetupMP3Button(int, int, int, int, int, wchar_t *, int, unsigned int)
struct SetupMP3Button* __fastcall __ct__14SetupMP3ButtonFiiiiiPwiUi(struct SetupMP3Button* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, int param_8, uint32_t param_9);

// Override methods

// win1.41 0040cda0 mac 10426080 SetupMP3Button::Draw(bool, bool)
void __fastcall Draw__14SetupMP3ButtonFbb(struct SetupMP3Button* this, const void* edx, bool hovered, bool selected);
// win1.41 00571f30 mac 103547d0 SetupMP3Button::~SetupMP3Button(void)
struct SetupMP3Button* __fastcall __dt__14SetupMP3ButtonFb(struct SetupMP3Button* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_MP3_BUTTON_INCLUDED_H */
