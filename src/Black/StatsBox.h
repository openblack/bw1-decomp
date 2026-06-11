#ifndef BW1_DECOMP_STATS_BOX_INCLUDED_H
#define BW1_DECOMP_STATS_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class StatsBox: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x64];

    // Override methods

    // win1.41 0056d370 mac 1031d8a0 StatsBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 0056d980 mac 1031d840 StatsBox::Destroy(void)
    virtual void Destroy();
    // win1.41 0056d990 mac 1031d780 StatsBox::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_STATS_BOX_INCLUDED_H */
