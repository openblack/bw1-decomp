#ifndef BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "BuildingSite.h" /* For struct BuildingSite */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
struct MapCoords;
class Pot;
class PotStructure;

class CitadelBuildingSite: public BuildingSite
{
public:

    // Override methods

    // win1.41 0043d1b0 mac 100be2b0 CitadelBuildingSite::_dt(void)
    virtual ~CitadelBuildingSite();
    // win1.41 0043d220 mac 100b9060 CitadelBuildingSite::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0043d320 mac 100b8e30 CitadelBuildingSite::GetResource(RESOURCE_TYPE)
    virtual uint32_t GetResource(RESOURCE_TYPE param_1);
    // win1.41 0043d360 mac 100b8cc0 CitadelBuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // win1.41 0043d3f0 mac 100b8ba0 CitadelBuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 0043d1a0 mac 100be380 CitadelBuildingSite::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0043d620 mac 100b8580 CitadelBuildingSite::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0043d5e0 mac 100b8620 CitadelBuildingSite::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0043d190 mac 100be340 CitadelBuildingSite::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0043d660 mac 100b84d0 CitadelBuildingSite::Process(void)
    virtual void Process();
    // win1.41 0043d500 mac 100b8830 CitadelBuildingSite::GetPileWood(MapCoords const &)
    virtual Pot* GetPileWood(const MapCoords* param_1);
    // win1.41 0043d180 mac 100b9190 CitadelBuildingSite::SetPileWood(Pot *)
    virtual void SetPileWood(Pot* param_1);
    // win1.41 0043d460 mac 100b8b60 CitadelBuildingSite::CreatePileWood(void)
    virtual void CreatePileWood();
    // win1.41 0043d470 mac inlined CitadelBuildingSite::GetResourcePosAndYAngle(unsigned int, unsigned int, float *)
    virtual void GetResourcePosAndYAngle(uint32_t param_1, uint32_t param_2, float* param_3);
    // win1.41 0043d5b0 mac 100b86c0 CitadelBuildingSite::RemovePotFromStructure(PotStructure *)
    virtual void RemovePotFromStructure(PotStructure* param_1);
    // win1.41 0043d580 mac 100b8750 CitadelBuildingSite::IsLinkedToThisBuildingSite(Pot *)
    virtual bool IsLinkedToThisBuildingSite(Pot* param_1);
};

#endif /* BW1_DECOMP_CITADEL_BUILDING_SITE_INCLUDED_H */
