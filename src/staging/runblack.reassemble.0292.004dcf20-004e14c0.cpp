#include "CreatureInitialSourceInfo.h"
#include "CreatureSourceBoundsInfo.h"
#include "CreatureExplorationMap.h"
#include "CreatureLearning.h"
#include "CreaturePreviousLesson.h"

// win1.41 004dd260 mac 1025eee0 CreatureInitialSourceInfo::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureInitialSourceInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 004dd2c0 mac 1025d520 CreatureInitialSourceInfo::_dt(void)
CreatureInitialSourceInfo::~CreatureInitialSourceInfo()
{
}

// win1.41 004dd3a0 mac 1025ee20 CreatureSourceBoundsInfo::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureSourceBoundsInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 004dd400 mac 1025eab0 CreatureSourceBoundsInfo::_dt(void)
CreatureSourceBoundsInfo::~CreatureSourceBoundsInfo()
{
}

// win1.41 004df5c0 mac 10246800 CreatureExplorationMap::_dt(void)
CreatureExplorationMap::~CreatureExplorationMap()
{
}

// win1.41 004e0290 mac 10265060 CreatureLearning::CreatureLearning(Creature *)
// CreatureLearning::CreatureLearning(Creature* creature)
// {
// }

// win1.41 004e03a0 mac 10245f80 CreaturePreviousLesson::_dt(void)
CreaturePreviousLesson::~CreaturePreviousLesson()
{
}

// win1.41 004e03d0 mac 10246a10 CreatureLearning::_dt(void)
CreatureLearning::~CreatureLearning()
{
}
