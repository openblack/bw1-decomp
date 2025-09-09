#ifndef BW1_DECOMP_CREATURE_AGENDA_INCLUDED_H
#define BW1_DECOMP_CREATURE_AGENDA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include "Base.h" /* For struct Base */
#include "CreatureCommandState.h" /* For struct CreatureCommandState */
#include "CreatureMimic.h" /* For struct CreatureMimicState */
#include "CreaturePlan.h" /* For struct CreaturePlan, struct CreaturePlanState */
#include "CreatureSubAction.h" /* For struct CreatureSubActionAgenda */

// Forward Declares

struct Creature;
struct CreatureBelief;
struct CreatureInfo;

struct CreatureAgenda
{
  struct Base super;  /* 0x0 */
  struct CreaturePlanState plan_state;
  struct CreaturePlan plans[0x2];  /* 0x838 */
  struct CreatureSubActionAgenda sub_action_agenda;  /* 0x898 */
  struct CreatureCommandState command_state;  /* 0x14e8 */
  struct Creature* creature;  /* 0x1514 */
  uint32_t field_0x1518;
  uint32_t field_0x151c;
  struct CreatureMimicState mimic_state;  /* 0x1520 */
  uint32_t field_0x155c;
  struct CreatureBelief* belief;  /* 0x1560 */
  uint32_t field_0x1564;
  uint32_t field_0x1568;
  uint32_t field_0x156c;
  uint32_t field_0x1570;
  uint32_t field_0x1574;
  uint32_t field_0x1578;
  uint32_t field_0x157c;
  uint32_t field_0x1580;
  uint32_t field_0x1584;
  uint32_t field_0x1588;
  uint8_t field_0x158c[0x520];
  uint32_t field_0x1aac;
  uint32_t field_0x1ab0;
  uint8_t field_0x1ab4[0xc];
  uint32_t field_0x1ac0;
  uint32_t field_0x1ac4;
  uint32_t field_0x1ac8;
  int32_t field_0x1acc;
  uint32_t field_0x1ad0;
  uint32_t field_0x1ad4;
  uint32_t field_0x1ad8;
  uint32_t field_0x1adc;
  uint32_t field_0x1ae0;
  uint32_t field_0x1ae4;
  uint32_t field_0x1ae8;
  uint32_t field_0x1aec;
  uint32_t field_0x1af0;
  uint32_t field_0x1af4;
};
static_assert(sizeof(struct CreatureAgenda) == 0x1af8, "Data type is of wrong size");

// win1.41 008cf94c mac 1078758c CreatureAgenda::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14CreatureAgenda asm("??_R4CreatureAgenda@@6B@");

// win1.41 008cf950 mac 10787594 CreatureAgenda::`vftable'
extern const struct BaseVftable __vt__14CreatureAgenda asm("??_7CreatureAgenda@@6B@");

// Constructors

// win1.41 004d34b0 mac 102471c0 CreatureAgenda::CreatureAgenda(Creature *, CreatureInfo const *)
struct CreatureAgenda* __fastcall __ct__14CreatureAgendaFP8CreaturePC12CreatureInfo(struct CreatureAgenda* this, const void* edx, struct CreatureInfo* info);

// Override methods

// win1.41 004d3600 mac 10246c50 CreatureAgenda::_dt(void)
void __fastcall __dt__14CreatureAgendaFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureAgenda@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_AGENDA_INCLUDED_H */
