#ifndef BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */
#include "Living.h" /* For struct Living */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
class GameOSFile;

class GFootpathNode: public GameThing
{
public:
    uint8_t field_0x14;
    MapCoords coords;
    GFootpathNode* next; /* 0x24 */
    LHLinkedList__Living followers;

    // Override methods

    // win1.41 00534d70 mac 100eef60 GFootpathNode::_dt(void)
    virtual ~GFootpathNode();
    // win1.41 00538970 mac 100e91f0 GFootpathNode::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00534d60 mac 100ef030 GFootpathNode::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00538c10 mac 100e86f0 GFootpathNode::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00538d70 mac 100e83f0 GFootpathNode::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00534d50 mac 100eeff0 GFootpathNode::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00538ea0 mac 100e83b0 GFootpathNode::ResolveLoad(void)
    virtual void ResolveLoad();

    // Constructors

    // win1.41 inlined mac inlined GFootpathNode::GFootpathNode(void)
    GFootpathNode();
    // win1.41 00534cf0 mac 100eed50 GFootpathNode::GFootpathNode(MapCoords const &, int, int)
    GFootpathNode(MapCoords* coords, int param_2, int param_3);

    // Non-virtual methods

    // win1.41 005389d0 mac 100e90a0 GFootpathNode::PurgeFollowerList(void)
    void PurgeFollowerList();
    // win1.41 00538b10 mac 100e8d10 GFootpathNode::ClearFromPreviousNode(void)
    void ClearFromPreviousNode();
};

#endif /* BW1_DECOMP_FOOTPATH_NODE_INCLUDED_H */
