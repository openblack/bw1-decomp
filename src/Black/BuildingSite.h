#ifndef BW1_DECOMP_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "GameThing.h" /* For struct GameThing, struct GameThingVftable */
#include "Villager.h" /* For struct Villager */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
struct MapCoords;
class MultiMapFixed;
class Object;
class PlannedMultiMapFixed;
class Pot;
class PotStructure;
class Town;

class BuildingSite: public GameThing
{
public:
    MultiMapFixed* root_building; /* 0x14 */
    LHLinkedList__Villager building_worker_list;
    uint8_t field_0x20[0x14];
    LHPoint building_positions[0x7f]; /* 0x34 */
    uint8_t field_0x628[0x14];
    uint8_t field_0x63c[0x4];
    float life; /* 0x640 */

    // Override methods

    // win1.41 0043b7b0 mac 100bcd40 BuildingSite::_dt(void)
    virtual ~BuildingSite();
    // win1.41 0043b960 mac 100bc6d0 BuildingSite::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0043c0b0 mac 100bb940 BuildingSite::GetTown(void)
    virtual Town* GetTown();
    // win1.41 0043d050 mac 100b96d0 BuildingSite::GetRadius(void)
    virtual float GetRadius();
    // win1.41 0043c5b0 mac 100bae60 BuildingSite::GetResource(RESOURCE_TYPE)
    virtual uint32_t GetResource(RESOURCE_TYPE param_1);
    // win1.41 0043c490 mac 100bb090 BuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // win1.41 0043c530 mac 100baf20 BuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 0043cad0 mac 100b9cf0 BuildingSite::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0043c830 mac 100ba480 BuildingSite::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0043b7a0 mac 100be420 BuildingSite::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0043b950 mac 100bcd10 BuildingSite::Init(void)
    virtual void Init();

    // Constructors

    // win1.41 0043b700 mac 100bd350 BuildingSite::BuildingSite(PlannedMultiMapFixed *)
    BuildingSite(PlannedMultiMapFixed* param_1);
    // win1.41 0043b7e0 mac 100bcec0 BuildingSite::BuildingSite(MultiMapFixed *)
    BuildingSite(MultiMapFixed* param_1);

    // Non-virtual methods

    // win1.41 0043bc70 mac 1005fd40 BuildingSite::GetBuilding(void)
    MultiMapFixed* GetBuilding();
    // win1.41 0043bca0 mac 1006caf0 BuildingSite::GetRootBuilding(void)
    MultiMapFixed* GetRootBuilding();
    // win1.41 0043bde0 mac 100bbf60 BuildingSite::GetClearAreaRadius(void)
    float GetClearAreaRadius();
    // win1.41 0043be00 mac 100bbeb0 BuildingSite::GetDesireToBeRepaired(void)
    float GetDesireToBeRepaired();
    // win1.41 0043c0c0 mac 100bb810 BuildingSite::GetWoodValue(void)
    float GetWoodValue();
    // win1.41 0043c5f0 mac 0043c5f0 BuildingSite::GetWoodNeededToBuild(void)
    float GetWoodNeededToBuild();
    // win1.41 0043c680 mac 100ba9d0 BuildingSite::ShouldIGetWood(Villager *)
    bool32_t ShouldIGetWood(Villager* param_1);
    // win1.41 0043d080 mac 100b9660 BuildingSite::BuildBy(float)
    void BuildBy(float param_1);
};

#endif /* BW1_DECOMP_BUILDING_SITE_INCLUDED_H */
