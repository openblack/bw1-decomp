#ifndef BW1_DECOMP_MAGIC_TREE_INCLUDED_H
#define BW1_DECOMP_MAGIC_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE */

#include "Tree.h" /* For struct Tree */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Object;

class MagicTree: public Tree
{
public:

    // Override methods

    // BW1W120 005fcf30 BW1M100 103b22a0 MagicTree::_dt(void)
    virtual ~MagicTree();
    // BW1W120 005fd070 BW1M100 103b2760 MagicTree::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 005fd060 BW1M100 103b2840 MagicTree::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 005fcf20 BW1M100 103b23b0 MagicTree::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 005fd1c0 BW1M100 103b23f0 MagicTree::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 005fd110 BW1M100 103b2510 MagicTree::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 005fcf10 BW1M100 103b2370 MagicTree::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 005fcf00 BW1M100 103b2330 MagicTree::GetImpressiveType(void)
    virtual IMPRESSIVE_TYPE GetImpressiveType();
    // BW1W120 005fd0d0 BW1M100 103b26d0 MagicTree::StartOnFire(void)
    virtual void StartOnFire();
    // BW1W120 005fd0e0 BW1M100 103b2640 MagicTree::EndOnFire(void)
    virtual void EndOnFire();
};

#endif /* BW1_DECOMP_MAGIC_TREE_INCLUDED_H */
