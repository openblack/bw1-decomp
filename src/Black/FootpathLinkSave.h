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

    // BW1W120 005371f0 BW1M100 100eb6b0 GFootpathLinkSave::_dt(void)
    virtual ~GFootpathLinkSave();
    // BW1W120 005371e0 BW1M100 100ef0b0 GFootpathLinkSave::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 005370a0 BW1M100 100eb5c0 GFootpathLinkSave::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);

    // Constructors

    // BW1W120 inlined BW1M100 inlined GFootpathLinkSave::GFootpathLinkSave(void)
    GFootpathLinkSave();

    // Non-virtual methods

    // BW1W120 00536fa0 BW1M100 inlined GFootpathLinkSave::FUN_00536fa0(void)
    void FUN_00536fa0();
};

#endif /* BW1_DECOMP_FOOTPATH_LINK_SAVE_INCLUDED_H */
