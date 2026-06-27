#ifndef BW1_DECOMP_CREATURE_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_ACTIONS */

#include "Base.h" /* For struct Base */
#include "BaseInfo.h" /* For struct GBaseInfo */
#include "CreatureMorph.h" /* For struct LH3DCreature */

enum CREATURE_SUB_STATE_ACTIONS
{
  CREATURE_SUB_STATE_ACTIONS_0 = 0x0,
  _CREATURE_SUB_STATE_ACTIONS_COUNT = 0x1
};

// Forward Declares

class CreatureContext;
class Morphable;

struct CreatureActionContext
{
    CreatureActionContextStart start; /* 0x0 */
    float field_0x14;

    // Constructors

    // BW1W120 004c3960 BW1M100 10230320 CreatureActionContext::CreatureActionContext(CreatureContext &, float)
    CreatureActionContext(CreatureContext* context, float param_2);
};

struct CreatureActionOpinions
{
    uint32_t entries[NUM_CREATURE_ACTIONS]; /* 0x0 */

    // Constructors

    // BW1W120 004c3930 BW1M100 102303a0 CreatureActionOpinions::CreatureActionOpinions(CreatureInfo const *)
    CreatureActionOpinions();
};

class CreaturePreviousActions: public Base
{
public:
    float field_0x8[NUM_CREATURE_ACTIONS];

    // Override methods

    // BW1W120 004f2040 BW1M100 10246760 CreaturePreviousActions::_dt(void)
    virtual ~CreaturePreviousActions();
};

class CreatureActionKnownAbout: public Base
{
public:

    // Override methods

    // BW1W120 004e29b0 BW1M100 10266bf0 CreatureActionKnownAbout::_dt(void)
    virtual ~CreatureActionKnownAbout();
};

class CreatureActionKnownAboutEntry: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 004e2db0 BW1M100 102676b0 CreatureActionKnownAboutEntry::_dt(void)
    virtual ~CreatureActionKnownAboutEntry();
    // BW1W120 004e2d50 BW1M100 10267920 CreatureActionKnownAboutEntry::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class CreatureFalling: public LH3DCreature
{
public:

    // Override methods

    // BW1W120 004803d0 BW1M100 inlined CreatureFalling::SetAnimTime(long, long)
    virtual void SetAnimTime(int param_1, int param_2);
};

class CreatureMagicActionKnownAboutEntry: public CreatureActionKnownAboutEntry
{
public:

    // Override methods

    // BW1W120 004e2e50 BW1M100 10267580 CreatureMagicActionKnownAboutEntry::_dt(void)
    virtual ~CreatureMagicActionKnownAboutEntry();
};

#endif /* BW1_DECOMP_CREATURE_ACTION_INCLUDED_H */
