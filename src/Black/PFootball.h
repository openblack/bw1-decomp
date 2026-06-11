#ifndef BW1_DECOMP_P_FOOTBALL_INCLUDED_H
#define BW1_DECOMP_P_FOOTBALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
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

    // win1.41 00643990 mac inlined PFootball::_dt(void)
    virtual ~PFootball();
    // win1.41 006438e0 mac inlined PFootball::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00643940 mac inlined PFootball::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00643fd0 mac inlined PFootball::Draw(void)
    virtual void Draw();
    // win1.41 00644030 mac inlined PFootball::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00643980 mac inlined PFootball::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00643950 mac inlined PFootball::IsPlaytimeStructure(void)
    virtual bool IsPlaytimeStructure();
    // win1.41 00643960 mac inlined PFootball::IsPlaytimeStarted(void)
    virtual bool IsPlaytimeStarted();
    // win1.41 00644200 mac inlined PFootball::AddPlaytimeVillager(Villager *)
    virtual bool AddPlaytimeVillager(Villager* param_1);
    // win1.41 006438f0 mac inlined PFootball::IsRepaired(void)
    virtual bool IsRepaired();
    // win1.41 00643910 mac inlined PFootball::IsBuilt(void)
    virtual bool IsBuilt();
};

class PPlannedFootball: public PlannedMultiMapFixed
{
public:

    // Override methods

    // win1.41 00643760 mac inlined PPlannedFootball::_dt(void)
    virtual ~PPlannedFootball();
    // win1.41 00643780 mac inlined PPlannedFootball::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 006437b0 mac inlined PPlannedFootball::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
};

#endif /* BW1_DECOMP_P_FOOTBALL_INCLUDED_H */
