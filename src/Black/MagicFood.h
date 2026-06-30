#ifndef BW1_DECOMP_MAGIC_FOOD_INCLUDED_H
#define BW1_DECOMP_MAGIC_FOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE */

#include "PileFood.h" /* For struct PileFood */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class MagicFood: public PileFood
{
public:

    // Override methods

    // BW1W120 005fa9c0 BW1M100 103ac0d0 MagicFood::_dt(void)
    virtual ~MagicFood();
    // BW1W120 005fa980 BW1M100 103abe00 MagicFood::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 005fa970 BW1M100 103abdc0 MagicFood::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // BW1W120 005fa9b0 BW1M100 103abec0 MagicFood::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 005fab40 BW1M100 103abf00 MagicFood::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 005fab00 BW1M100 103abf90 MagicFood::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 005fa9a0 BW1M100 103abe80 MagicFood::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 005fa990 BW1M100 103abe40 MagicFood::GetImpressiveType(void)
    virtual IMPRESSIVE_TYPE GetImpressiveType();
    // BW1W120 004e4a20 BW1M100 105e43b0 MagicFood::IsAFoodPileOutsideStoragePit(Creature *)
    virtual uint32_t IsAFoodPileOutsideStoragePit(Creature* param_1);
    // BW1W120 005faab0 BW1M100 103ac020 MagicFood::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
};

#endif /* BW1_DECOMP_MAGIC_FOOD_INCLUDED_H */
