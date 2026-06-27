#ifndef BW1_DECOMP_CREATURE_LEARNING_INCLUDED_H
#define BW1_DECOMP_CREATURE_LEARNING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_ACTIONS */

#include "Base.h" /* For struct Base */
#include "CreatureAction.h" /* For struct PreviousActionContextStack */
#include "CreatureContext.h" /* For struct PreviousContextStack */
#include "CreaturePreviousLesson.h" /* For struct CreaturePreviousLesson */

// Forward Declares

class Creature;

class CreatureLearning: public Base
{
public:
    PreviousContextStack previous_context_stack; /* 0x8 */
    PreviousActionContextStack previous_action_context_stack; /* 0x260 */
    CreaturePreviousLesson previous_lesson; /* 0x14020 */
    uint32_t field_0x1522c;
    uint32_t field_0x15230[0x6];
    uint32_t field_0x15248[0x6];
    uint32_t field_0x15260[0x2a];
    uint32_t field_0x15308[0x2a];
    uint32_t field_0x153b0[NUM_CREATURE_ACTIONS];
    uint32_t field_0x158d0[0x2d];
    uint32_t field_0x15984[0x2d];
    uint32_t field_0x15a38[0x2d];
    uint32_t field_0x15aec;
    uint32_t field_0x15af0;
    uint32_t field_0x15af4;
    uint32_t field_0x15af8[0x2][0x28];
    uint32_t field_0x15c38;
    uint32_t field_0x15c3c;
    uint32_t field_0x15c40[NUM_CREATURE_ACTIONS];
    Creature* field_0x16160;
    uint32_t field_0x16164;

    // Override methods

    // BW1W120 004e03d0 BW1M100 10246a10 CreatureLearning::_dt(void)
    virtual ~CreatureLearning();

    // Constructors

    // BW1W120 004e0290 BW1M100 10265060 CreatureLearning::CreatureLearning(Creature *)
    CreatureLearning(Creature* creature);
};

class CreatureLearningEpisode: public Base
{
public:
    uint8_t field_0x8[0xc];

    // Override methods

    // BW1W120 004cbc00 BW1M100 10250410 CreatureLearningEpisode::_dt(void)
    virtual ~CreatureLearningEpisode();
};

class CreatureLearningContext: public Base
{
public:

    // Override methods

    // BW1W120 004e1d30 BW1M100 10262750 CreatureLearningContext::_dt(void)
    virtual ~CreatureLearningContext();
};

#endif /* BW1_DECOMP_CREATURE_LEARNING_INCLUDED_H */
