#ifndef BW1_DECOMP_TOWN_DESIRE_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For TOWN_DESIRE_INFO_LAST, enum TOWN_DESIRE_INFO */

#include "Base.h" /* For struct Base */

// Forward Declares

class GTownDesireInfo;
class Town;
class Villager;

class TownDesire: public Base
{
public:
    TownDesire__field_0x8 field_0x8[TOWN_DESIRE_INFO_LAST];
    float field_0x90[TOWN_DESIRE_INFO_LAST];
    float field_0xd4[TOWN_DESIRE_INFO_LAST];
    float field_0x118[TOWN_DESIRE_INFO_LAST];
    uint32_t field_0x15fc; /* 0x15c */
    Town* town; /* 0x160 */
    float field_0x164;
    float field_0x168[TOWN_DESIRE_INFO_LAST];
    uint32_t field_0x1ac[TOWN_DESIRE_INFO_LAST];
    uint32_t field_0x1f0[TOWN_DESIRE_INFO_LAST];
    uint32_t field_0x234[TOWN_DESIRE_INFO_LAST];
    DesireSort sorts[TOWN_DESIRE_INFO_LAST]; /* 0x278 */
    DesireSort sorts2[TOWN_DESIRE_INFO_LAST]; /* 0x344 */
    uint32_t field_0x410[TOWN_DESIRE_INFO_LAST];
    float field_0x454[TOWN_DESIRE_INFO_LAST];
    uint32_t field_0x498[TOWN_DESIRE_INFO_LAST];
    float field_0x4dc[TOWN_DESIRE_INFO_LAST];
    uint32_t field_0x520[TOWN_DESIRE_INFO_LAST];

    // Override methods

    // win1.41 00745730 mac 1055ea40 TownDesire::_dt(void)
    virtual ~TownDesire();

    // Constructors

    // win1.41 00745710 mac 1055ead0 TownDesire::TownDesire(void)
    TownDesire();

    // Non-virtual methods

    // win1.41 00745ae0 mac 1005c8d0 TownDesire::Process(void)
    void Process();
    // win1.41 00745f80 mac 1005d280 TownDesire::GetInfo(unsigned long) const
    GTownDesireInfo* GetInfo(unsigned long param_1);
};

#endif /* BW1_DECOMP_TOWN_DESIRE_INCLUDED_H */
