#ifndef BW1_DECOMP_POT_STRUCTURE_INCLUDED_H
#define BW1_DECOMP_POT_STRUCTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "Pot.h" /* For struct Pot */

// Forward Declares

class Base;
class GInterfaceStatus;
class GPlayer;
class GPotInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class Town;

class PotStructure: public Pot
{
public:
    MultiMapFixed* field_0x78;
    uint32_t field_0x7c;
    bool field_0x80;

    // Override methods

    // BW1W120 0055d650 BW1M100 101160f0 PotStructure::_dt(void)
    virtual ~PotStructure();
    // BW1W120 0066d960 BW1M100 1011b560 PotStructure::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0066f230 BW1M100 10116cf0 PotStructure::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 0055d620 BW1M100 10115fe0 PotStructure::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // BW1W120 0066ef60 BW1M100 10117830 PotStructure::GetTown(void)
    virtual Town* GetTown();
    // BW1W120 0066d9b0 BW1M100 1011b3d0 PotStructure::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
    virtual uint32_t JustRemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
    // BW1W120 0066ef00 BW1M100 10077c70 PotStructure::GetResource(RESOURCE_TYPE)
    virtual uint32_t GetResource(RESOURCE_TYPE param_1);
    // BW1W120 0066ed70 BW1M100 10117b70 PotStructure::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // BW1W120 0066ee10 BW1M100 10117970 PotStructure::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // BW1W120 0066db10 BW1M100 1011b060 PotStructure::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0066da90 BW1M100 1011b150 PotStructure::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055d640 BW1M100 101160a0 PotStructure::CanBeThrownByPlayer(void)
    virtual uint32_t CanBeThrownByPlayer();
    // BW1W120 0066db90 BW1M100 1011afa0 PotStructure::CallVirtualFunctionsForCreation(const MapCoords&)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // BW1W120 0066da30 BW1M100 1011b250 PotStructure::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE param_1);
    // BW1W120 0066d480 BW1M100 inlined PotStructure::SetSize(void)
    virtual void SetSize();
    // BW1W120 0066da00 BW1M100 10077bc0 PotStructure::IsPartOfStructure(void)
    virtual bool IsPartOfStructure();
    // BW1W120 0055d530 BW1M100 inlined PotStructure::SetSpeedUp(int)
    virtual void SetSpeedUp(int param_1);
    // BW1W120 0055d630 BW1M100 10116020 PotStructure::SetMultiMapFixed(MultiMapFixed *)
    virtual void SetMultiMapFixed(MultiMapFixed* param_1);

    // Constructors

    // BW1W120 0066d910 BW1M100 1011b5e0 PotStructure::PotStructure(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
    PotStructure(MapCoords* coords, GPotInfo* param_2, uint32_t param_3, MultiMapFixed* param_4, Town* param_5, int param_6, float param_7, float param_8);
};

#endif /* BW1_DECOMP_POT_STRUCTURE_INCLUDED_H */
