#ifndef BW1_DECOMP_CREATURE_SELECT_INCLUDED_H
#define BW1_DECOMP_CREATURE_SELECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */

class CreatureSelect: public Prss
{
public:

    // Override methods

    // win1.41 004f7210 mac inlined CreatureSelect::ProcessTurn(void)
    virtual int ProcessTurn();
    // win1.41 004f7250 mac inlined CreatureSelect::Display(void)
    virtual void Display();
    // win1.41 004f74d0 mac inlined CreatureSelect::ClickFunction(int, int, int)
    virtual void ClickFunction(int param_1, int param_2, int param_3);
};

#endif /* BW1_DECOMP_CREATURE_SELECT_INCLUDED_H */
