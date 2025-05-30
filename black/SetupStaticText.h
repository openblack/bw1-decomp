#ifndef BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H
#define BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include "GatheringText.h" /* For enum TEXTJUSTIFY */
#include "SetupControl.h" /* For struct SetupControl */

struct SetupStaticText
{
  struct SetupControl super;  /* 0x0 */
  enum TEXTJUSTIFY text_justify;  /* 0x23c */
  int display_text_size;  /* 0x240 */
};
static_assert(sizeof(struct SetupStaticText) == 0x244, "Data type is of wrong size");

static struct SetupControlVftable* const __vt__15SetupStaticText = (struct SetupControlVftable* const)0x008ab5c0;

// Constructors

// win1.41 inlined mac 10327f40 SetupStaticText::SetupStaticText(int, int, int, int, int, wchar_t *, TEXTJUSTIFY)
struct SetupStaticText* __fastcall __ct__15SetupStaticTextFiiiiiPw11TEXTJUSTIFY(struct SetupStaticText* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, enum TEXTJUSTIFY text_justify);

// Override methods

// win1.41 00409430 mac 105436e0 SetupStaticText::Draw(bool, bool)
void __fastcall Draw__15SetupStaticTextFbb(struct SetupStaticText* this, const void* edx, bool hovered, bool selected);
// win1.41 00411670 mac 100cb300 SetupStaticText::~SetupStaticText(void)
void __fastcall __dt__15SetupStaticTextFb(struct SetupStaticText* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H */
