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

    // win1.41 004c3960 mac 10230320 CreatureActionContext::CreatureActionContext(CreatureContext &, float)
    CreatureActionContext(CreatureContext* context, float param_2);
};

struct CreatureActionOpinions
{
    uint32_t entries[NUM_CREATURE_ACTIONS]; /* 0x0 */

    // Constructors

    // win1.41 004c3930 mac 102303a0 CreatureActionOpinions::CreatureActionOpinions(CreatureInfo const *)
    CreatureActionOpinions();
};

class CreaturePreviousActions: public Base
{
public:
    float field_0x8[NUM_CREATURE_ACTIONS];

    // Override methods

    // win1.41 004f2040 mac 10246760 CreaturePreviousActions::_dt(void)
    virtual ~CreaturePreviousActions();
};

class CreatureActionKnownAbout: public Base
{
public:

    // Override methods

    // win1.41 004e29b0 mac 10266bf0 CreatureActionKnownAbout::_dt(void)
    virtual ~CreatureActionKnownAbout();
};

class CreatureActionKnownAboutEntry: public GBaseInfo
{
public:

    // Override methods

    // win1.41 004e2db0 mac 102676b0 CreatureActionKnownAboutEntry::_dt(void)
    virtual ~CreatureActionKnownAboutEntry();
    // win1.41 004e2d50 mac 10267920 CreatureActionKnownAboutEntry::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class CreatureFalling: public LH3DCreature
{
public:

    // Override methods

    // win1.41 004803d0 mac inlined CreatureFalling::SetAnimTime(long, long)
    virtual void SetAnimTime(int param_1, int param_2);
};

class CreatureMagicActionKnownAboutEntry: public CreatureActionKnownAboutEntry
{
public:

    // Override methods

    // win1.41 004e2e50 mac 10267580 CreatureMagicActionKnownAboutEntry::_dt(void)
    virtual ~CreatureMagicActionKnownAboutEntry();
};

#endif /* BW1_DECOMP_CREATURE_ACTION_INCLUDED_H */
