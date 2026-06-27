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

    // BW1W120 0050ebd0 BW1M100 100f7ab0 DanceKeyFrame::_dt(void)
    virtual ~DanceKeyFrame();
    // BW1W120 0050ebf0 BW1M100 102ae1e0 DanceKeyFrame::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0050ebc0 BW1M100 102ace60 DanceKeyFrame::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0050f2f0 BW1M100 102acea0 DanceKeyFrame::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 0050f1c0 BW1M100 102ad2b0 DanceKeyFrame::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0050ebb0 BW1M100 102ace20 DanceKeyFrame::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Constructors

    // BW1W120 0050eb60 BW1M100 102ae450 DanceKeyFrame::DanceKeyFrame(long, LHDynamicStack<Ul> &, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
    DanceKeyFrame(int param_1, LHDynamicStack__Ul* stack, DANCE_GROUP_ACTION_TYPE action_type, const DanceGroupActionArgument* arguments);
};

#endif /* BW1_DECOMP_DANCE_KEY_INCLUDED_H */
