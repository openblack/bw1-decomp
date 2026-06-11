#ifndef BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H
#define BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include "GatheringText.h" /* For enum TEXTJUSTIFY */
#include "SetupControl.h" /* For struct SetupControl */

class SetupStaticText: public SetupControl
{
public:
    TEXTJUSTIFY text_justify; /* 0x23c */
    int display_text_size; /* 0x240 */

    // Override methods

    // win1.41 00409430 mac 105436e0 SetupStaticText::Draw(bool, bool)
    virtual void Draw(bool hovered, bool selected);
    // win1.41 00411670 mac 100cb300 SetupStaticText::~SetupStaticText(void)
    virtual ~SetupStaticText();
};

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H */
