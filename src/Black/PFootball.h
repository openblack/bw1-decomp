#ifndef BW1_DECOMP_P_FOOTBALL_INCLUDED_H
#define BW1_DECOMP_P_FOOTBALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Base;
class GPlayer;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;
class Villager;

class PFootball: public MultiMapFixed
{
public:

    // Override methods

    // BW1W120 00643990 BW1M100 inlined PFootball::_dt(void)
    virtual ~PFootball();
    // BW1W120 006438e0 BW1M100 inlined PFootball::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 00643940 BW1M100 inlined PFootball::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00643fd0 BW1M100 inlined PFootball::Draw(void)
    virtual void Draw();
    // BW1W120 00644030 BW1M100 inlined PFootball::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 00643980 BW1M100 inlined PFootball::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // BW1W120 00643950 BW1M100 inlined PFootball::IsPlaytimeStructure(void)
    virtual bool IsPlaytimeStructure();
    // BW1W120 00643960 BW1M100 inlined PFootball::IsPlaytimeStarted(void)
    virtual bool IsPlaytimeStarted();
    // BW1W120 00644200 BW1M100 inlined PFootball::AddPlaytimeVillager(Villager *)
    virtual bool AddPlaytimeVillager(Villager* param_1);
    // BW1W120 006438f0 BW1M100 inlined PFootball::IsRepaired(void)
    virtual bool32_t IsRepaired();
    // BW1W120 00643910 BW1M100 inlined PFootball::IsBuilt(void)
    virtual bool32_t IsBuilt();
};

class PPlannedFootball: public PlannedMultiMapFixed
{
public:

    // Override methods

    // BW1W120 00643760 BW1M100 inlined PPlannedFootball::_dt(void)
    virtual ~PPlannedFootball();
    // BW1W120 00643780 BW1M100 inlined PPlannedFootball::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 006437b0 BW1M100 inlined PPlannedFootball::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
};

#endif /* BW1_DECOMP_P_FOOTBALL_INCLUDED_H */
