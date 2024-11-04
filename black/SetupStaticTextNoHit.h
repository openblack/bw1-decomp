#ifndef BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H
#define BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include "GatheringText.h" /* For enum TEXTJUSTIFY */
#include "SetupStaticText.h" /* For struct SetupStaticText */

struct SetupStaticTextNoHit
{
  struct SetupStaticText super;  /* 0x0 */
};
static_assert(sizeof(struct SetupStaticTextNoHit) == 0x244, "Data type is of wrong size");

static struct SetupControlVftable* const __vt__20SetupStaticTextNoHit = (struct SetupControlVftable* const)0x00900098;

// Constructors

// win1.41 inlined mac 10327f40 SetupStaticTextNoHit::SetupStaticTextNoHit(int, int, int, int, int, wchar_t *, TEXTJUSTIFY)
struct SetupStaticTextNoHit* __fastcall __ct__20SetupStaticTextNoHitFiiiiiPw11TEXTJUSTIFY(struct SetupStaticTextNoHit* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, enum TEXTJUSTIFY text_justify);

// Override methods

// win1.41 00571f00 mac 10328c60 SetupStaticTextNoHit::HitTest(int, int)
bool __fastcall HitTest__20SetupStaticTextNoHitFii(struct SetupStaticTextNoHit* this, const void* edx, int x, int y);
// win1.41 00571f10 mac 10328bc0 SetupStaticTextNoHit::~SetupStaticTextNoHit(void)
struct SetupStaticTextNoHit* __fastcall __dt__20SetupStaticTextNoHitFb(struct SetupStaticTextNoHit* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H */
