#ifndef BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H
#define BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h> /* For char16_t */

#include "Lionhead/LH3DLib/development/LH3DText.h" /* For enum TEXTJUSTIFY */
#include "SetupStaticText.h" /* For struct SetupStaticText */

// Forward Declares

class SetupControl;

class SetupStaticTextNoHit: public SetupStaticText
{
public:

    // Override methods

    // BW1W120 00571f00 BW1M100 10328c60 SetupStaticTextNoHit::HitTest(int, int)
    virtual bool HitTest(int x, int y);
    // BW1W120 00571f10 BW1M100 10328bc0 SetupStaticTextNoHit::~SetupStaticTextNoHit(void)
    virtual ~SetupStaticTextNoHit();

    // Constructors

    // BW1W120 inlined BW1M100 10327f40 SetupStaticTextNoHit::SetupStaticTextNoHit(int, int, int, int, int, wchar_t *, TEXTJUSTIFY)
    SetupStaticTextNoHit(int id, int x, int y, int width, int height, const char16_t* label, TEXTJUSTIFY text_justify);
};

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H */
