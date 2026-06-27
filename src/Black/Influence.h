#ifndef BW1_DECOMP_INFLUENCE_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct BaseInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
struct MapCoords;

class InfluenceRing: public GameThingWithPos
{
public:
    BaseInfo info; /* 0x28 */
    GPlayer* player; /* 0x34 */
    float field_0x38;
    int field_0x3c;
    uint32_t field_0x40;

    // Override methods

    // BW1W120 0055ec70 BW1M100 100fbc20 InfluenceRing::_dt(void)
    virtual ~InfluenceRing();
    // BW1W120 005cd8a0 BW1M100 100fcac0 InfluenceRing::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0055ec40 BW1M100 10043da0 InfluenceRing::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 0055ec10 BW1M100 100fbd20 InfluenceRing::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // BW1W120 0055ec60 BW1M100 100fbe70 InfluenceRing::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 005cdd40 BW1M100 100fbeb0 InfluenceRing::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 005cdc60 BW1M100 100fc000 InfluenceRing::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055ec50 BW1M100 100fbe30 InfluenceRing::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0055ebf0 BW1M100 100fbcc0 InfluenceRing::SetPos(MapCoords const &)
    virtual void SetPos(const MapCoords* param_1);
    // BW1W120 0055ec30 BW1M100 100fbda0 InfluenceRing::GetText(void)
    virtual const char* GetText();
    // BW1W120 0055ec20 BW1M100 100fbd60 InfluenceRing::IsInfluenceRing(void)
    virtual uint32_t IsInfluenceRing();
    // BW1W120 005cdc50 BW1M100 100fc170 InfluenceRing::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();

    // Constructors

    // BW1W120 005cd760 BW1M100 100fd0a4 InfluenceRing::InfluenceRing(MapCoords const &, GPlayer *, float, int)
    InfluenceRing(const MapCoords* coords, GPlayer* player, float param_4, int param_5);
    // BW1W120 005cd800 BW1M100 100fce54 InfluenceRing::InfluenceRing(GameThingWithPos *, GPlayer *, float, int)
    InfluenceRing(GameThingWithPos* thing, GPlayer* player, float param_4, int param_5);
};

#endif /* BW1_DECOMP_INFLUENCE_INCLUDED_H */
