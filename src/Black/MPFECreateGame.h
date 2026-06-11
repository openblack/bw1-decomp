#ifndef BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H
#define BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class MPFECreateGame: public DialogBoxBase
{
public:

    // Override methods

    // win1.41 0062a630 mac 1039bd40 MPFECreateGame::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 0062ab00 mac 1039bd00 MPFECreateGame::Destroy(void)
    virtual void Destroy();
};

#endif /* BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H */
