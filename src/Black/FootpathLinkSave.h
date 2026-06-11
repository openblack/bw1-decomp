#ifndef BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
class GFootpathLink;
class GameOSFile;

class GFootpathLinkSave: public GameThing
{
public:
    GFootpathLink* link; /* 0x14 */
    MapCoords coords;

    // Override methods

    // win1.41 005371f0 mac 100eb6b0 GFootpathLinkSave::_dt(void)
    virtual ~GFootpathLinkSave();
    // win1.41 005371e0 mac 100ef0b0 GFootpathLinkSave::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005370a0 mac 100eb5c0 GFootpathLinkSave::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);

    // Constructors

    // win1.41 inlined mac inlined GFootpathLinkSave::GFootpathLinkSave(void)
    GFootpathLinkSave();

    // Non-virtual methods

    // win1.41 00536fa0 mac inlined GFootpathLinkSave::FUN_00536fa0(void)
    void FUN_00536fa0();
};

#endif /* BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H */
