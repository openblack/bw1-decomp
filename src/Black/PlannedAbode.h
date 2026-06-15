#ifndef BW1_DECOMP_PLANNED_ABODE_INCLUDED_H
#define BW1_DECOMP_PLANNED_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Abode;
class Base;
class GMultiMapFixedInfo;
struct GPlannedAbodeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Town;

class PlannedAbode: public PlannedMultiMapFixed
{
public:
    Town* town; /* 0x48 */

    // Override methods

    // win1.41 00405110 mac 1017d1f0 PlannedAbode::_dt(unsigned int)
    virtual ~PlannedAbode();
    // win1.41 004056b0 mac 100c5460 PlannedAbode::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 004050e0 mac 10352440 PlannedAbode::GetTown(void)
    virtual Town* GetTown();
    // win1.41 00405100 mac 10179a00 PlannedAbode::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00405860 mac 10260310 PlannedAbode::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 00405830 mac 10350950 PlannedAbode::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* file);
    // win1.41 004050f0 mac 10531c20 PlannedAbode::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 004061a0 mac 104333f0 PlannedAbode::IsWonder(void)
    virtual bool32_t IsWonder();
    // win1.41 00405710 mac 10570d80 PlannedAbode::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
    // win1.41 00405770 mac 10282ed0 PlannedAbode::CreatePlannedNoFixedCheck(float)
    virtual MultiMapFixed* CreatePlannedNoFixedCheck(float param_1);
    // win1.41 004060c0 mac 101a36e0 PlannedAbode::IsCivic(void)
    virtual bool IsCivic();
    // win1.41 004061e0 mac 10007c40 PlannedAbode::GetAbodeType(void)
    virtual ABODE_TYPE GetAbodeType();

    // Static methods

    // win1.41 004055c0 mac 103e4530 PlannedAbode::CreateNoInit(MapCoords const &, GAbodeInfo const *, Town *, float, float)
    static PlannedAbode* CreateNoInit(MapCoords* coords, GMultiMapFixedInfo* info, Town* town, float param_4, float param_5);
    // win1.41 00405600 mac 10479fb0 PlannedAbode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float)
    static PlannedAbode* Create(MapCoords* coords, GMultiMapFixedInfo* info, Town* town, float param_4, float param_5);
    // win1.41 00405660 mac 1043fad0 PlannedAbode::Create(Abode*)
    static PlannedAbode* Create(Abode* abode);
    // win1.41 004056d0 mac 10007bf0 PlannedAbode::GetInfo(void)
    static GPlannedAbodeInfo* GetInfo();

    // Constructors

    // win1.41 00405080 mac 103e51a0 PlannedAbode::PlannedAbode(MapCoords const &, GAbodeInfo const *, Town *, float, float)
    PlannedAbode(const MapCoords* coords, const GMultiMapFixedInfo* info, Town* town, float param_4, float param_5);
    // win1.41 00405580 mac 103e4ca0 PlannedAbode::PlannedAbode(Abode*)
    PlannedAbode(Abode* abode);

    // Non-virtual methods

    // win1.41 004055a0 mac 103e5560 PlannedAbode::Init(Town *)
    void Init(Town* town);
    // win1.41 004056f0 mac inlined PlannedAbode::FUN_004056f0(int)
    bool32_t FUN_004056f0(int param_1);
    // win1.41 004057f0 mac inlined PlannedAbode::IsOkToBuild(void)
    bool32_t IsOkToBuild();
};

#endif /* BW1_DECOMP_PLANNED_ABODE_INCLUDED_H */
