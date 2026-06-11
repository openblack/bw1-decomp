#ifndef BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "BuildingSite.h" /* For struct BuildingSite */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
struct MapCoords;
class Object;
class Pot;
class PotStructure;

class StandardBuildingSite: public BuildingSite
{
public:
    Pot* wood_pile; /* 0x644 */

    // Override methods

    // win1.41 0043d720 mac 100b8360 StandardBuildingSite::_dt(void)
    virtual ~StandardBuildingSite();
    // win1.41 0043d710 mac 100be260 StandardBuildingSite::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0043d890 mac 100b7ec0 StandardBuildingSite::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0043d850 mac 100b7f60 StandardBuildingSite::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0043d700 mac 100be220 StandardBuildingSite::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0043d8d0 mac 10077e70 StandardBuildingSite::Process(void)
    virtual void Process();
    // win1.41 0043c5e0 mac inlined StandardBuildingSite::GetWoodForStats(void)
    virtual uint32_t GetWoodForStats();
    // win1.41 0043d6e0 mac 100b8180 StandardBuildingSite::GetPileWood(MapCoords const &)
    virtual Pot* GetPileWood(const MapCoords* param_1);
    // win1.41 0043d6f0 mac 100b8130 StandardBuildingSite::SetPileWood(Pot *)
    virtual void SetPileWood(Pot* param_1);
    // win1.41 0043d760 mac 100b81d0 StandardBuildingSite::CreatePileWood(void)
    virtual void CreatePileWood();
    // win1.41 0043c220 mac inlined StandardBuildingSite::GetResourcePosAndYAngle(unsigned int, unsigned int, float *)
    virtual void GetResourcePosAndYAngle(uint32_t param_1, uint32_t param_2, float* param_3);
    // win1.41 0043d800 mac 100b8060 StandardBuildingSite::RemovePotFromStructure(PotStructure *)
    virtual void RemovePotFromStructure(PotStructure* param_1);
    // win1.41 0043d830 mac 100b8000 StandardBuildingSite::IsLinkedToThisBuildingSite(Pot *)
    virtual bool IsLinkedToThisBuildingSite(Pot* param_1);
    // win1.41 0043ce40 mac inlined StandardBuildingSite::GetNearestEdge(float, float, int *)
    virtual float GetNearestEdge(float param_1, float param_2, int* param_3);
    // win1.41 0043cf40 mac inlined StandardBuildingSite::GetNextPosFromIndex(int *)
    virtual void GetNextPosFromIndex(int* param_1);
    // win1.41 0043cde0 mac inlined StandardBuildingSite::GetRandomBuildPos(Object *, int *)
    virtual void GetRandomBuildPos(Object* param_1, int* param_2);
};

#endif /* BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H */
