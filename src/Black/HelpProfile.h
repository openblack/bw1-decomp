#ifndef BW1_DECOMP_HELP_PROFILE_INCLUDED_H
#define BW1_DECOMP_HELP_PROFILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */
#include "HelpSystem.h" /* For enum HELP_EVENT_TYPE */

struct CameraHelpAccumulator
{
    uint8_t field_0x0[0x10c];

    // Non-virtual methods

    // win1.41 00448f20 mac 1019cd90 CameraHelpAccumulator::Reset(void)
    void Reset();
};

class HelpProfile: public Base
{
public:
    CameraHelpAccumulator accumulators[0x31]; /* 0x8 */
    uint32_t field_0x3354;

    // Override methods

    // win1.41 005c4560 mac 1034b480 HelpProfile::_dt(void)
    virtual ~HelpProfile();

    // Static methods

    // win1.41 005c4500 mac 1034b3b0 HelpProfile::Create(void)
    static HelpProfile* Create();

    // Non-virtual methods

    // win1.41 005c46e0 mac 100895a0 HelpProfile::Trigger(HELP_EVENT_TYPE)
    void Trigger(HELP_EVENT_TYPE param_1);
    // win1.41 005c4770 mac 1034b310 HelpProfile::SetToZero(void)
    void SetToZero();
};

#endif /* BW1_DECOMP_HELP_PROFILE_INCLUDED_H */
