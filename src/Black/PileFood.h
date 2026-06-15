#ifndef BW1_DECOMP_PILE_FOOD_INCLUDED_H
#define BW1_DECOMP_PILE_FOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "PileResource.h" /* For struct PileResource */

// Forward Declares

class Base;
class Creature;
class GPotInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class Town;

class PileFood: public PileResource
{
public:
    PileFood* next; /* 0xb4 */
    uint32_t field_0xb8;

    // Override methods

    // win1.41 0066e040 mac 1011a220 PileFood::_dt(void)
    virtual ~PileFood();
    // win1.41 0066e100 mac 10119f30 PileFood::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0066f180 mac 10116f30 PileFood::Get2DRadius(void)
    virtual float Get2DRadius();
    // win1.41 0066e030 mac 1011d5f0 PileFood::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0066f5e0 mac 10116570 PileFood::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0066f5a0 mac 10116600 PileFood::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0066e020 mac 1011d5b0 PileFood::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0055d690 mac 1011d570 PileFood::IsPileFood(void)
    virtual uint32_t IsPileFood();
    // win1.41 0066e2a0 mac 10119c00 PileFood::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // win1.41 0066e2d0 mac 10119b60 PileFood::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // win1.41 0051bf80 mac 10030810 PileFood::Draw(void)
    virtual void Draw();
    // win1.41 0066e1a0 mac 10119ea0 PileFood::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0066e380 mac 10119a40 PileFood::Get3DType(void)
    virtual LH3DObject__ObjectType Get3DType();
    // win1.41 0066ec50 mac 10117fe0 PileFood::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 0066e1f0 mac 10119d80 PileFood::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);

    // Constructors

    // win1.41 0066dfe0 mac 1011a450 PileFood::PileFood(void)
    PileFood();
    // win1.41 0066e070 mac 1011a2b0 PileFood::PileFood(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
    PileFood(MapCoords* coords, GPotInfo* param_2, uint32_t param_3, MultiMapFixed* param_4, Town* param_5, int param_6, float param_7, float param_8);
};

#endif /* BW1_DECOMP_PILE_FOOD_INCLUDED_H */
