#ifndef BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class GPlayer;
class GShowNeedsInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;

class ShowNeedsVisuals: public Object
{
public:
    int field_0x54;
    uint32_t field_0x58;
    uint32_t field_0x5c;
    GameThing* game_thing; /* 0x60 */
    uint32_t field_0x64;
    uint32_t field_0x68;
    uint32_t field_0x6c;
    uint32_t field_0x70;
    uint32_t field_0x74;
    uint32_t field_0x78;
    uint32_t field_0x7c;
    uint32_t field_0x80;
    uint32_t field_0x84;
    uint32_t field_0x88;
    uint32_t field_0x8c;
    uint32_t field_0x90;

    // Override methods

    // BW1W120 0055ddd0 BW1M100 10144860 ShowNeedsVisuals::_dt(void)
    virtual ~ShowNeedsVisuals();
    // BW1W120 00719dd0 BW1M100 10145660 ShowNeedsVisuals::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0071a1b0 BW1M100 10144f70 ShowNeedsVisuals::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 0055ddc0 BW1M100 10144af0 ShowNeedsVisuals::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0071a320 BW1M100 10144bb0 ShowNeedsVisuals::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0071a230 BW1M100 10144d30 ShowNeedsVisuals::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055ddb0 BW1M100 10144ab0 ShowNeedsVisuals::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0071a410 BW1M100 10144b40 ShowNeedsVisuals::ResolveLoad(void)
    virtual void ResolveLoad();
    // BW1W120 0055dd80 BW1M100 101449e0 ShowNeedsVisuals::GetScale(void)
    virtual float GetScale();
    // BW1W120 0055dd70 BW1M100 101449a0 ShowNeedsVisuals::SetScale(float)
    virtual void SetScale(float param_1);
    // BW1W120 0055dd90 BW1M100 10144a20 ShowNeedsVisuals::GetText(void)
    virtual const char* GetText();
    // BW1W120 0055dd60 BW1M100 101448f0 ShowNeedsVisuals::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00719e00 BW1M100 10145510 ShowNeedsVisuals::CallVirtualFunctionsForCreation(const MapCoords &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // BW1W120 0055dda0 BW1M100 10144a60 ShowNeedsVisuals::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

    // Constructors

    // BW1W120 00719d60 BW1M100 10145700 ShowNeedsVisuals::ShowNeedsVisuals(const MapCoords&, GameThing*, const GShowNeedsInfo *)
    ShowNeedsVisuals(MapCoords* coords, GameThing* game_thing, GShowNeedsInfo* info);
};

#endif /* BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H */
