#ifndef BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H
#define BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class MPFEFindGame: public DialogBoxBase
{
public:

    // Override methods

    // BW1W120 0062f650 BW1M100 103a5d40 MPFEFindGame::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // BW1W120 0062f8c0 BW1M100 103a5d10 MPFEFindGame::Destroy(void)
    virtual void Destroy();
};

#endif /* BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H */
