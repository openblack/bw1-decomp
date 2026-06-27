#ifndef BW1_DECOMP_PLANNED_ABODE_INCLUDED_H
#define BW1_DECOMP_PLANNED_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */
#include <re_common.h> /* For bool32_t */

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

    // BW1W120 00405110 BW1M100 1017d1f0 PlannedAbode::_dt(unsigned int)
    virtual ~PlannedAbode();
    // BW1W120 004056b0 BW1M100 100c5460 PlannedAbode::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 004050e0 BW1M100 10352440 PlannedAbode::GetTown(void)
    virtual Town* GetTown();
    // BW1W120 00405100 BW1M100 10179a00 PlannedAbode::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00405860 BW1M100 10260310 PlannedAbode::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // BW1W120 00405830 BW1M100 10350950 PlannedAbode::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* file);
    // BW1W120 004050f0 BW1M100 10531c20 PlannedAbode::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 004061a0 BW1M100 104333f0 PlannedAbode::IsWonder(void)
    virtual bool32_t IsWonder();
    // BW1W120 00405710 BW1M100 10570d80 PlannedAbode::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
    // BW1W120 00405770 BW1M100 10282ed0 PlannedAbode::CreatePlannedNoFixedCheck(float)
    virtual MultiMapFixed* CreatePlannedNoFixedCheck(float param_1);
    // BW1W120 004060c0 BW1M100 101a36e0 PlannedAbode::IsCivic(void)
    virtual bool IsCivic();
    // BW1W120 004061e0 BW1M100 10007c40 PlannedAbode::GetAbodeType(void)
    virtual ABODE_TYPE GetAbodeType();

    // Static methods

    // BW1W120 004055c0 BW1M100 103e4530 PlannedAbode::CreateNoInit(MapCoords const &, GAbodeInfo const *, Town *, float, float)
    static PlannedAbode* CreateNoInit(MapCoords* coords, GMultiMapFixedInfo* info, Town* town, float param_4, float param_5);
    // BW1W120 00405600 BW1M100 10479fb0 PlannedAbode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float)
    static PlannedAbode* Create(MapCoords* coords, GMultiMapFixedInfo* info, Town* town, float param_4, float param_5);
    // BW1W120 00405660 BW1M100 1043fad0 PlannedAbode::Create(Abode*)
    static PlannedAbode* Create(Abode* abode);
    // BW1W120 004056d0 BW1M100 10007bf0 PlannedAbode::GetInfo(void)
    static GPlannedAbodeInfo* GetInfo();

    // Constructors

    // BW1W120 00405080 BW1M100 103e51a0 PlannedAbode::PlannedAbode(MapCoords const &, GAbodeInfo const *, Town *, float, float)
    PlannedAbode(const MapCoords* coords, const GMultiMapFixedInfo* info, Town* town, float param_4, float param_5);
    // BW1W120 00405580 BW1M100 103e4ca0 PlannedAbode::PlannedAbode(Abode*)
    PlannedAbode(Abode* abode);

    // Non-virtual methods

    // BW1W120 004055a0 BW1M100 103e5560 PlannedAbode::Init(Town *)
    void Init(Town* town);
    // BW1W120 004056f0 BW1M100 inlined PlannedAbode::FUN_004056f0(int)
    bool32_t FUN_004056f0(int param_1);
    // BW1W120 004057f0 BW1M100 inlined PlannedAbode::IsOkToBuild(void)
    bool32_t IsOkToBuild();
};

#endif /* BW1_DECOMP_PLANNED_ABODE_INCLUDED_H */
