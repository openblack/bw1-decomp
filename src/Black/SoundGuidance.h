#ifndef BW1_DECOMP_SOUND_GUIDANCE_INCLUDED_H
#define BW1_DECOMP_SOUND_GUIDANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

// Forward Declares

class GInterfaceStatus;
class GameThingWithPos;
struct LH_SamplePlayOptions;
class Town;

struct Q29GGuidance10LastThings
{
    GameThingWithPos* thing; /* 0x0 */
    uint32_t turn;

    // Constructors

    // win1.41 0071aec0 mac 10511e30 GGuidance::LastThings::LastThings(GameThingWithPos *)
    Q29GGuidance10LastThings(GameThingWithPos* thing);
};

class GGuidance: public Base
{
public:
    LH_SamplePlayOptions* play_options; /* 0x8 */
    int field_0xc[0x21];
    LHLinkedList__Q29GGuidance10LastThings lastThings; /* 0x90 */
    uint32_t field_0x98;
    uint32_t field_0x9c;
    uint32_t field_0xa0;
    uint32_t field_0xa4;
    float field_0xa8;
    uint32_t field_0xac;
    uint32_t field_0xb0;
    uint32_t field_0xb4;
    uint32_t field_0xb8;
    uint32_t field_0xbc;
    uint32_t field_0xc0;
    uint32_t field_0xc4;
    uint32_t field_0xc8;
    GInterfaceStatus* interface_status;
    uint32_t field_0xd0[0x7];

    // Override methods

    // win1.41 0071ab30 mac 10512620 GGuidance::_dt(void)
    virtual ~GGuidance();

    // Static methods

    // win1.41 0071b020 mac 10082330 GGuidance::ProcessTownDesireSFX(GInterfaceStatus &)
    static void ProcessTownDesireSFX(GInterfaceStatus* status);

    // Constructors

    // win1.41 0071ab10 mac 105126b0 GGuidance::GGuidance(void)
    GGuidance();

    // Non-virtual methods

    // win1.41 0071ac70 mac 105122a0 GGuidance::Init(GInterfaceStatus&)
    void Init(GInterfaceStatus* status);
    // win1.41 0071cbe0 mac 1050e610 GGuidance::HelpSpritesLowOnPeople(Town &)
    void HelpSpritesLowOnPeople(Town* param_1);
};

#endif /* BW1_DECOMP_SOUND_GUIDANCE_INCLUDED_H */
