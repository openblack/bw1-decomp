#ifndef BW1_DECOMP_MAGIC_WOOD_INCLUDED_H
#define BW1_DECOMP_MAGIC_WOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE */

#include "PileWood.h" /* For struct PileWood */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class MagicWood: public PileWood
{
public:

    // Override methods

    // BW1W120 00600df0 BW1M100 103ba240 MagicWood::_dt(void)
    virtual ~MagicWood();
    // BW1W120 00600da0 BW1M100 103b9ed0 MagicWood::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 00600de0 BW1M100 103b9fe0 MagicWood::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00600f60 BW1M100 103ba020 MagicWood::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00600f20 BW1M100 103ba0b0 MagicWood::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00600dd0 BW1M100 103b9fa0 MagicWood::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00600db0 BW1M100 103b9f10 MagicWood::GetImpressiveType(void)
    virtual IMPRESSIVE_TYPE GetImpressiveType();
    // BW1W120 00600dc0 BW1M100 103b9f50 MagicWood::IsAWoodPileOutsideStoragePit(Creature *)
    virtual uint32_t IsAWoodPileOutsideStoragePit(Creature* param_1);
    // BW1W120 00600f10 BW1M100 103ba140 MagicWood::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
};

#endif /* BW1_DECOMP_MAGIC_WOOD_INCLUDED_H */
