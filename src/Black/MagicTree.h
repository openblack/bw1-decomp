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

    // win1.41 005fcf30 mac 103b22a0 MagicTree::_dt(void)
    virtual ~MagicTree();
    // win1.41 005fd070 mac 103b2760 MagicTree::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 005fd060 mac 103b2840 MagicTree::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 005fcf20 mac 103b23b0 MagicTree::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005fd1c0 mac 103b23f0 MagicTree::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005fd110 mac 103b2510 MagicTree::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005fcf10 mac 103b2370 MagicTree::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005fcf00 mac 103b2330 MagicTree::GetImpressiveType(void)
    virtual IMPRESSIVE_TYPE GetImpressiveType();
    // win1.41 005fd0d0 mac 103b26d0 MagicTree::StartOnFire(void)
    virtual void StartOnFire();
    // win1.41 005fd0e0 mac 103b2640 MagicTree::EndOnFire(void)
    virtual void EndOnFire();
};

#endif /* BW1_DECOMP_MAGIC_TREE_INCLUDED_H */
