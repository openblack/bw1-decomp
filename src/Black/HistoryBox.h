#ifndef BW1_DECOMP_HISTORY_BOX_INCLUDED_H
#define BW1_DECOMP_HISTORY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class HistoryBox: public DialogBoxBase
{
public:
    uint8_t field_0x10[0xc];

    // Override methods

    // BW1W120 00545230 BW1M100 105b9ac0 HistoryBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // BW1W120 005453b0 BW1M100 105b9a60 HistoryBox::Destroy(void)
    virtual void Destroy();
    // BW1W120 00545460 BW1M100 105b98b0 HistoryBox::WantsKeyControl(void)
    virtual bool WantsKeyControl();
    // BW1W120 00545470 BW1M100 105b97c0 HistoryBox::WantsMouseControl(void)
    virtual bool WantsMouseControl();
    // BW1W120 005454f0 BW1M100 105b9780 HistoryBox::CanESCOut(void)
    virtual bool CanESCOut();
    // BW1W120 005453c0 BW1M100 105b9a20 HistoryBox::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_HISTORY_BOX_INCLUDED_H */
