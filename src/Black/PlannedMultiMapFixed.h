#ifndef BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H
#define BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */
#include <re_common.h> /* For bool32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

class GFootpathLink;
class GMultiMapFixedInfo;
class GObjectInfo;
class GameOSFile;
class GameThing;
struct MapCoords;
class MultiMapFixed;

class PlannedMultiMapFixed: public GameThingWithPos
{
public:
    float field_0x28;
    float scale;
    uint32_t field_0x30;
    uint32_t field_0x34;
    GFootpathLink* footpath_link;
    int creation_turn;
    GObjectInfo* info; /* 0x40 */
    PlannedMultiMapFixed* next;

    // Override methods

    // win1.41 0055cbe0 mac 10111890 PlannedMultiMapFixed::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00648af0 mac 10114cd0 PlannedMultiMapFixed::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 00648990 mac 10114ef0 PlannedMultiMapFixed::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* file);
    // win1.41 0055cbd0 mac inlined PlannedMultiMapFixed::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 004050c0 mac 1017d1b0 PlannedMultiMapFixed::GetScale(void)
    virtual float GetScale();
    // win1.41 004050d0 mac 103509e0 PlannedMultiMapFixed::SetScale(float)
    virtual void SetScale(float scale);
    // win1.41 00648940 mac 10115200 PlannedMultiMapFixed::GetText(void)
    virtual const char* GetText();
    // win1.41 00465560 mac 100d17b0 PlannedMultiMapFixed::IsWonder(void)
    virtual bool IsWonder();
    // win1.41 00648950 mac inlined PlannedMultiMapFixed::CreateBuildingSite(void)
    virtual bool32_t CreateBuildingSite();
    // win1.41 00469660 mac 100bd510 PlannedMultiMapFixed::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
    // win1.41 00465540 mac 100d1720 PlannedMultiMapFixed::CreatePlannedNoFixedCheck(float)
    virtual MultiMapFixed* CreatePlannedNoFixedCheck(float param_1);
    // win1.41 00648c50 mac 10114bf0 PlannedMultiMapFixed::PostCreatePlanned(MultiMapFixed&)
    virtual void PostCreatePlanned(MultiMapFixed* param_1);
    // win1.41 00465550 mac 100d1770 PlannedMultiMapFixed::IsCivic(void)
    virtual bool IsCivic();
    // win1.41 00465570 mac 100d17f0 PlannedMultiMapFixed::GetAbodeType(void)
    virtual ABODE_TYPE GetAbodeType();
    // win1.41 00648910 mac 1006f570 PlannedMultiMapFixed::GetDesireToBeRepaired(void)
    virtual float GetDesireToBeRepaired();
    // win1.41 00648930 mac 10115260 PlannedMultiMapFixed::Draw(void)
    virtual void Draw();

    // Constructors

    // win1.41 00648780 mac 10115620 PlannedMultiMapFixed::PlannedMultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float)
    PlannedMultiMapFixed(const MapCoords* coords, const GMultiMapFixedInfo* info, float param_3, float param_4);

    // Non-virtual Destructors

    // win1.41 0055cbf0 mac 103e4400 PlannedMultiMapFixed::~PlannedMultiMapFixed(void)
    ~PlannedMultiMapFixed();
};

#endif /* BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H */
