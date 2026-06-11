#ifndef BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class MultiMapFixed;

class PlannedTownCitadelHeart: public PlannedMultiMapFixed
{
public:

    // Override methods

    // win1.41 00467e60 mac 101c1e40 PlannedTownCitadelHeart::_dt(void)
    virtual ~PlannedTownCitadelHeart();
    // win1.41 00467e80 mac 101bd9b0 PlannedTownCitadelHeart::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00467e50 mac 101c2000 PlannedTownCitadelHeart::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00467ff0 mac 101bd570 PlannedTownCitadelHeart::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00467fc0 mac 101bd610 PlannedTownCitadelHeart::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00467e40 mac 101c1fb0 PlannedTownCitadelHeart::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00467e20 mac 101c1f20 PlannedTownCitadelHeart::IsWonder(void)
    virtual uint32_t IsWonder();
    // win1.41 00467ea0 mac 101bd8c0 PlannedTownCitadelHeart::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
    // win1.41 00467ef0 mac 101bd6b0 PlannedTownCitadelHeart::CreatePlannedNoFixedCheck(float)
    virtual MultiMapFixed* CreatePlannedNoFixedCheck(float param_1);
    // win1.41 00467e10 mac 101c1ee0 PlannedTownCitadelHeart::IsCivic(void)
    virtual bool IsCivic();
    // win1.41 00467e30 mac 101c1f60 PlannedTownCitadelHeart::GetAbodeType(void)
    virtual ABODE_TYPE GetAbodeType();
};

#endif /* BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H */
