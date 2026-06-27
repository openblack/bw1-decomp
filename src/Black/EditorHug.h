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

    // BW1W120 0051f180 BW1M100 inlined EditorHug::ProcessTurn(void)
    virtual int ProcessTurn();
    // BW1W120 0051f200 BW1M100 inlined EditorHug::Display(void)
    virtual void Display();
    // BW1W120 0060db30 BW1M100 inlined EditorHug::PrssKey(LH_KEY, unsigned short)
    virtual void PrssKey(LH_KEY param_1, uint16_t param_2);
    // BW1W120 0051f3b0 BW1M100 inlined EditorHug::PrssMouse(MouseInput *)
    virtual void PrssMouse(MouseInput* param_1);
    // BW1W120 0051f5b0 BW1M100 inlined EditorHug::ClickFunction(int, int, int)
    virtual void ClickFunction(int param_1, int param_2, int param_3);
};

#endif /* BW1_DECOMP_EDITOR_HUG_INCLUDED_H */
