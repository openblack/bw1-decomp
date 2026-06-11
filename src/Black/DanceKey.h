#ifndef BW1_DECOMP_DANCE_KEY_INCLUDED_H
#define BW1_DECOMP_DANCE_KEY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DanceGroup.h" /* For enum DANCE_GROUP_ACTION_TYPE */
#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
struct DanceGroupActionArgument;
class GameOSFile;

class DanceKeyFrame: public GameThing
{
public:
    uint8_t field_0x14[0x10];

    // Override methods

    // win1.41 0050ebd0 mac 100f7ab0 DanceKeyFrame::_dt(void)
    virtual ~DanceKeyFrame();
    // win1.41 0050ebf0 mac 102ae1e0 DanceKeyFrame::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0050ebc0 mac 102ace60 DanceKeyFrame::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0050f2f0 mac 102acea0 DanceKeyFrame::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0050f1c0 mac 102ad2b0 DanceKeyFrame::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0050ebb0 mac 102ace20 DanceKeyFrame::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Constructors

    // win1.41 0050eb60 mac 102ae450 DanceKeyFrame::DanceKeyFrame(long, LHDynamicStack<Ul> &, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
    DanceKeyFrame(int param_1, LHDynamicStack__Ul* stack, DANCE_GROUP_ACTION_TYPE action_type, const DanceGroupActionArgument* arguments);
};

#endif /* BW1_DECOMP_DANCE_KEY_INCLUDED_H */
