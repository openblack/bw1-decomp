#ifndef BW1_DECOMP_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LobbyBox: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x7c];

    // Override methods

    // BW1W120 005f5250 BW1M100 105d7ac0 LobbyBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // BW1W120 005f5a40 BW1M100 105d7a60 LobbyBox::Destroy(void)
    virtual void Destroy();
    // BW1W120 005f5a50 BW1M100 105d78e0 LobbyBox::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_LOBBY_BOX_INCLUDED_H */
