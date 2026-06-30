#ifndef BW1_DECOMP_DANCE_INCLUDED_H
#define BW1_DECOMP_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GroupBehaviour.h" /* For struct GroupBehaviour */

// Forward Declares

class Base;
class GDanceInfo;
class GFootpath;
class GFootpathLink;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct LHPoint;
struct MapCoords;
class Town;

class Dance: public GroupBehaviour
{
public:
    uint8_t field_0xe8[0x44];

    // Override methods

    // BW1W120 0050b770 BW1M100 102aa200 Dance::_dt(void)
    virtual ~Dance();
    // BW1W120 0050b970 BW1M100 102a9e90 Dance::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0050c250 BW1M100 102a9370 Dance::Get3DSoundPos(LHPoint *)
    virtual int Get3DSoundPos(LHPoint* param_1);
    // BW1W120 0050b720 BW1M100 102a8120 Dance::GetFootpathLink(void)
    virtual GFootpathLink* GetFootpathLink();
    // BW1W120 0050ca60 BW1M100 102a83d0 Dance::AddFootpath(GFootpath *)
    virtual uint32_t AddFootpath(GFootpath* param_1);
    // BW1W120 0050cb10 BW1M100 102a8330 Dance::RemoveFootpath(GFootpath *)
    virtual uint32_t RemoveFootpath(GFootpath* param_1);
    // BW1W120 0050b760 BW1M100 102a81f0 Dance::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0050c760 BW1M100 102a85a0 Dance::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0050c480 BW1M100 102a8960 Dance::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0050b750 BW1M100 102a81c0 Dance::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0050cb40 BW1M100 inlined Dance::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // BW1W120 0050b730 BW1M100 102a8160 Dance::IsDance( const(void))
    virtual uint32_t IsDance();
    // BW1W120 0050b710 BW1M100 102a80e0 Dance::IsScriptContainer( const(void))
    virtual uint32_t IsScriptContainer();
    // BW1W120 0050b740 BW1M100 102a8190 Dance::GetText(void)
    virtual const char* GetText();
    // BW1W120 0050c3c0 BW1M100 102a9110 Dance::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // BW1W120 0050bb30 BW1M100 102a9db0 Dance::CleanUpBeforeReset(void)
    virtual void CleanUpBeforeReset();
    // BW1W120 0050bb90 BW1M100 102a9810 Dance::Process(void)
    virtual void Process();
    // BW1W120 0050c310 BW1M100 102a9230 Dance::GetAngle(void)
    virtual float GetAngle();

    // Constructors

    // BW1W120 0050b6a0 BW1M100 102aa620 Dance::Dance(MapCoords const &, GDanceInfo const *, GameThingWithPos *, unsigned long, int, Town *)
    Dance(const MapCoords* param_1, GDanceInfo* info, const GameThingWithPos* param_3, uint32_t param_4, int param_5, Town* town);

    // Non-virtual methods

    // BW1W120 0050bb40 BW1M100 102a9d60 Dance::StartDance(void)
    void StartDance();
};

#endif /* BW1_DECOMP_DANCE_INCLUDED_H */
