#ifndef BW1_DECOMP_EDITOR_HUG_INCLUDED_H
#define BW1_DECOMP_EDITOR_HUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/Prss.h> /* For struct Prss */

// Forward Declares

struct MouseInput;

class EditorHug: public Prss
{
public:

    // Override methods

    // win1.41 0051f180 mac inlined EditorHug::ProcessTurn(void)
    virtual int ProcessTurn();
    // win1.41 0051f200 mac inlined EditorHug::Display(void)
    virtual void Display();
    // win1.41 0060db30 mac inlined EditorHug::PrssKey(LH_KEY, unsigned short)
    virtual void PrssKey(LH_KEY param_1, uint16_t param_2);
    // win1.41 0051f3b0 mac inlined EditorHug::PrssMouse(MouseInput *)
    virtual void PrssMouse(MouseInput* param_1);
    // win1.41 0051f5b0 mac inlined EditorHug::ClickFunction(int, int, int)
    virtual void ClickFunction(int param_1, int param_2, int param_3);
};

#endif /* BW1_DECOMP_EDITOR_HUG_INCLUDED_H */
