#ifndef BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct GFootpathLink;
struct GameOSFile;

struct GFootpathLinkSave
{
  struct GameThing super;  /* 0x0 */
  struct GFootpathLink* link;  /* 0x14 */
  struct MapCoords coords;
};
static_assert(sizeof(struct GFootpathLinkSave) == 0x24, "Data type is of wrong size");

// win1.41 008de1c0 mac 10743110 GFootpathLinkSave::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17GFootpathLinkSave asm("??_R4GFootpathLinkSave@@6B@");

// win1.41 008de1c4 mac 10743118 GFootpathLinkSave::`vftable'
extern const struct GameThingVftable __vt__17GFootpathLinkSave asm("??_7GFootpathLinkSave@@6B@");

// Constructors

// win1.41 inlined mac inlined GFootpathLinkSave::GFootpathLinkSave(void)
struct GFootpathLinkSave* __fastcall __ct__17GFootpathLinkSaveFv(struct GFootpathLinkSave* this);

// Non-virtual methods

// win1.41 00536fa0 mac inlined GFootpathLinkSave::FUN_00536fa0(void)
void __fastcall FUN_00536fa0__17GFootpathLinkSaveFv(struct GFootpathLinkSave* this);

// Override methods

// win1.41 005370a0 mac 100eb5c0 GFootpathLinkSave::Load(GameOSFile &)
uint32_t __fastcall Load__17GFootpathLinkSaveFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file);

#endif /* BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H */
