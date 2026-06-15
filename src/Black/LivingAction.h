#ifndef BW1_DECOMP_LIVING_ACTION_INCLUDED_H
#define BW1_DECOMP_LIVING_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */

enum LIVING_ACTION_INDEX
{
  LIVING_ACTION_INDEX_TOP = 0x0,
  LIVING_ACTION_INDEX_FINAL = 0x1,
  LIVING_ACTION_INDEX_PREVIOUS = 0x2,
  _LIVING_ACTION_INDEX_COUNT = 0x3
};

// Forward Declares

class Living;

struct LivingAction
{
    uint8_t states[_LIVING_ACTION_INDEX_COUNT]; /* 0x0 */
    uint8_t field_0x3;
    uint16_t turns_since_state_change;

    // Constructors

    // win1.41 005ecc70 mac 10381350 LivingAction::LivingAction(void)
    LivingAction();

    // Non-virtual methods

    // win1.41 005ecc90 mac 10072200 LivingAction::SetState(unsigned long, unsigned char)
    void SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state);
    // win1.41 inlined mac 1004c420 LivingAction::GetState(unsigned long) const
    VILLAGER_STATES GetState(LIVING_ACTION_INDEX index);
};

#endif /* BW1_DECOMP_LIVING_ACTION_INCLUDED_H */
