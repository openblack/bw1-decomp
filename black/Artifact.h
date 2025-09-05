#ifndef BW1_DECOMP_ARTIFACT_INCLUDED_H
#define BW1_DECOMP_ARTIFACT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "GameThing.h" /* For struct GameThing */

struct TownArtifact
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x2c];
};
static_assert(sizeof(struct TownArtifact) == 0x40, "Data type is of wrong size");

// win1.41 008c47cc mac 10736fe0 TownArtifact::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12TownArtifact asm("??_R4TownArtifact@@6B@");

// win1.41 008c47d0 mac 10736fe8 TownArtifact::`vftable'
extern const struct GameThingVftable __vt__12TownArtifact asm("??_7TownArtifact@@6B@");

DECLARE_LH_LINKED_LIST(TownArtifact);

#endif /* BW1_DECOMP_ARTIFACT_INCLUDED_H */
