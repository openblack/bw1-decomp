#ifndef BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lhall/released/headers/RPHolder.h> /* For struct RPHolder */
#include <lhall/released/headers/RPlan.h> /* For struct RPlan */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GFootpath;
class GFootpathNode;
class GameOSFile;
class GameThingWithPos;

class GFootpathFinder: public GameThing
{
public:
    RPHolder holder; /* 0x14 */
    RPlan plan; /* 0x64040 */
    GameThingWithPos* gamethingwithpos_start; /* 0x640b4 */
    GameThingWithPos* gamethingwithpos_dest;
    GFootpath* footpath_0x7c;
    GFootpathNode* start_node; /* 0x640c0 */
    GFootpathNode* dest_node;

    // Override methods

    // win1.41 00538ff0 mac 100e7f30 GFootpathFinder::_dt(void)
    virtual ~GFootpathFinder();
    // win1.41 005391c0 mac 100e78e0 GFootpathFinder::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00538fe0 mac 100e7110 GFootpathFinder::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005390e0 mac 100e7ce0 GFootpathFinder::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 00539150 mac 100e7c00 GFootpathFinder::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00538fd0 mac 100e70d0 GFootpathFinder::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Constructors

    // win1.41 inlined mac inlined GFootpathFinder::GFootpathFinder(void)
    GFootpathFinder();

    // Non-virtual methods

    // win1.41 00539040 mac 100e7dc0 GFootpathFinder::GameTurnProcess(void)
    void GameTurnProcess();
    // win1.41 00539240 mac 100e7760 GFootpathFinder::Done(void)
    void Done();
    // win1.41 005392f0 mac 100e7150 GFootpathFinder::Init(void)
    void Init();
};

#endif /* BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H */
