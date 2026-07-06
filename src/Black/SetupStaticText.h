#ifndef BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H
#define BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Lionhead/LH3DLib/development/LH3DText.h" /* For enum TEXTJUSTIFY */
#include "SetupControl.h" /* For struct SetupControl */

class SetupStaticText: public SetupControl
{
public:
    TEXTJUSTIFY text_justify; /* 0x23c */
    int display_text_size; /* 0x240 */

    // Override methods

    // BW1W120 00409430 BW1M100 105436e0 SetupStaticText::Draw(bool, bool)
    virtual void Draw(bool hovered, bool selected);
    // BW1W120 00411670 BW1M100 100cb300 SetupStaticText::~SetupStaticText(void)
    virtual ~SetupStaticText();
};

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H */
