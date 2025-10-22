#ifndef BW1_DECOMP_LIVING_ACTION_INCLUDED_H
#define BW1_DECOMP_LIVING_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */

// Forward Declares

struct Living;

enum LIVING_ACTION_INDEX
{
  LIVING_ACTION_INDEX_TOP = 0x0,
  LIVING_ACTION_INDEX_FINAL = 0x1,
  LIVING_ACTION_INDEX_PREVIOUS = 0x2,
  _LIVING_ACTION_INDEX_COUNT = 0x3
};
static_assert(sizeof(enum LIVING_ACTION_INDEX) == 0x4, "Data type is of wrong size");

static const char* LIVING_ACTION_INDEX_strs[_LIVING_ACTION_INDEX_COUNT] = {
  "LIVING_ACTION_INDEX_TOP",
  "LIVING_ACTION_INDEX_FINAL",
  "LIVING_ACTION_INDEX_PREVIOUS",
};

struct LivingAction
{
  uint8_t states[_LIVING_ACTION_INDEX_COUNT];  /* 0x0 */
  uint8_t field_0x3;
  uint16_t turns_since_state_change;
};
static_assert(sizeof(struct LivingAction) == 0x6, "Data type is of wrong size");

// Constructors

// win1.41 005ecc70 mac 10381350 LivingAction::LivingAction(void)
struct LivingAction* __fastcall __ct__12LivingActionFv(struct LivingAction* this) asm("??0LivingAction@@QAE@XZ");

// Non-virtual methods

// win1.41 005ecc90 mac 10072200 LivingAction::SetState(unsigned long, unsigned char)
void __fastcall SetState__12LivingActionFUlUc(struct LivingAction* this, const void* edx, enum LIVING_ACTION_INDEX index, enum VILLAGER_STATES state) asm("?SetState@LivingAction@@QAEXKE@Z");
// win1.41 inlined mac 1004c420 LivingAction::GetState(unsigned long) const
enum VILLAGER_STATES __fastcall GetState__12LivingActionCFUl(const struct LivingAction* this, const void* edx, enum LIVING_ACTION_INDEX index) asm("?GetState@LivingAction@@QBE?AW4VILLAGER_STATES@@K@Z");

struct Living__StateTableSubEntry
{
  bool (__fastcall* function)(struct Living* this);  /* 0x0 */
  uint32_t field_0x4;
  uint32_t field_0x8;
  int32_t field_0xc;
};
static_assert(sizeof(struct Living__StateTableSubEntry) == 0x10, "Data type is of wrong size");

struct Living__StateTableSubEntryState
{
  uint32_t (__fastcall* function)(struct Living* this);  /* 0x0 */
  uint32_t field_0x4;
  uint32_t field_0x8;
  int32_t field_0xc;
};
static_assert(sizeof(struct Living__StateTableSubEntryState) == 0x10, "Data type is of wrong size");

struct Living__StateTableSubEntryEntryState
{
  bool (__fastcall* function)(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2);  /* 0x0 */
  uint32_t field_0x4;
  uint32_t field_0x8;
  int32_t field_0xc;
};
static_assert(sizeof(struct Living__StateTableSubEntryEntryState) == 0x10, "Data type is of wrong size");

struct Living__StateTableEntry
{
  struct Living__StateTableSubEntryState state;  /* 0x0 */
  struct Living__StateTableSubEntryEntryState entry_state;  /* 0x10 */
  struct Living__StateTableSubEntry exit_state;  /* 0x20 */
  struct Living__StateTableSubEntry save_state;  /* 0x30 */
  struct Living__StateTableSubEntry load_state;  /* 0x40 */
  struct Living__StateTableSubEntry field_0x50;
  struct Living__StateTableSubEntry field_0x60;
  struct Living__StateTableSubEntry transition_animation;  /* 0x70 */
  struct Living__StateTableSubEntry validate;  /* 0x80 */
};
static_assert(sizeof(struct Living__StateTableEntry) == 0x90, "Data type is of wrong size");

#endif /* BW1_DECOMP_LIVING_ACTION_INCLUDED_H */
