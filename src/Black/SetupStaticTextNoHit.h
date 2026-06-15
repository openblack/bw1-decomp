#ifndef BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H
#define BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h> /* For char16_t */

#include "GatheringText.h" /* For enum TEXTJUSTIFY */
#include "SetupStaticText.h" /* For struct SetupStaticText */

// Forward Declares

class SetupControl;

class SetupStaticTextNoHit: public SetupStaticText
{
public:

    // Override methods

    // win1.41 00571f00 mac 10328c60 SetupStaticTextNoHit::HitTest(int, int)
    virtual bool HitTest(int x, int y);
    // win1.41 00571f10 mac 10328bc0 SetupStaticTextNoHit::~SetupStaticTextNoHit(void)
    virtual ~SetupStaticTextNoHit();

    // Constructors

    // win1.41 inlined mac 10327f40 SetupStaticTextNoHit::SetupStaticTextNoHit(int, int, int, int, int, wchar_t *, TEXTJUSTIFY)
    SetupStaticTextNoHit(int id, int x, int y, int width, int height, const char16_t* label, TEXTJUSTIFY text_justify);
};

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H */
