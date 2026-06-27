#ifndef BW1_DECOMP_CREATURE_SELECT_INCLUDED_H
#define BW1_DECOMP_CREATURE_SELECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/Prss.h> /* For struct Prss */

class CreatureSelect: public Prss
{
public:

    // Override methods

    // BW1W120 004f7210 BW1M100 inlined CreatureSelect::ProcessTurn(void)
    virtual int ProcessTurn();
    // BW1W120 004f7250 BW1M100 inlined CreatureSelect::Display(void)
    virtual void Display();
    // BW1W120 004f74d0 BW1M100 inlined CreatureSelect::ClickFunction(int, int, int)
    virtual void ClickFunction(int param_1, int param_2, int param_3);
};

#endif /* BW1_DECOMP_CREATURE_SELECT_INCLUDED_H */
