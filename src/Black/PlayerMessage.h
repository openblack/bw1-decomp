#ifndef BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H
#define BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */

class PlayerMessage: public Prss
{
public:

    // Override methods

    // win1.41 0066b5e0 mac inlined PlayerMessage::ProcessTurn(void)
    virtual int ProcessTurn();
    // win1.41 0066b610 mac inlined PlayerMessage::Display(void)
    virtual void Display();
};

#endif /* BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H */
