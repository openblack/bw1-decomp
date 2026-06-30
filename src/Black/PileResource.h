#ifndef BW1_DECOMP_PILE_RESOURCE_INCLUDED_H
#define BW1_DECOMP_PILE_RESOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <re_common.h> /* For bool32_t */

#include "PotStructure.h" /* For struct PotStructure */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
class GInterfaceStatus;
class GPotInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class Town;

class PileResource: public PotStructure
{
public:
    float field_0x84;
    float field_0x88;
    uint32_t field_0x8c;
    uint32_t field_0x90;
    uint32_t field_0x94;
    uint32_t field_0x98;
    uint32_t field_0x9c;
    float field_0xa0;
    uint32_t field_0xa4;
    uint32_t field_0xa8;
    uint32_t field_0xac;
    uint32_t field_0xb0;

    // Override methods

    // BW1W120 0066ecb0 BW1M100 1011a3b0 PileResource::_dt(void)
    virtual ~PileResource();
    // BW1W120 0066d330 BW1M100 10003c80 PileResource::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
    virtual uint32_t JustAddResource(RESOURCE_TYPE param_1, uint32_t param_2, bool param_3);
    // BW1W120 0066f690 BW1M100 101163b0 PileResource::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0066f620 BW1M100 10116490 PileResource::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0066e3d0 BW1M100 10119880 PileResource::GetLife(void)
    virtual float GetLife();
    // BW1W120 0066e3c0 BW1M100 inlined PileResource::IsField_1(Creature *)
    virtual uint32_t IsField_1(Creature* param_1);
    // BW1W120 0066e390 BW1M100 101199a0 PileResource::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // BW1W120 0066ed60 BW1M100 10117ce0 PileResource::IsPileResource(void)
    virtual uint32_t IsPileResource();
    // BW1W120 0066e400 BW1M100 101196c0 PileResource::SetLife(float)
    virtual void SetLife(float param_1);
    // BW1W120 0066e300 BW1M100 10119a80 PileResource::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // BW1W120 0055d680 BW1M100 1011d530 PileResource::IsLockedInInteract(void)
    virtual bool IsLockedInInteract();
    // BW1W120 0066e4f0 BW1M100 10119600 PileResource::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // BW1W120 0066e710 BW1M100 10119060 PileResource::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 0066e830 BW1M100 10118ff0 PileResource::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // BW1W120 0066e840 BW1M100 10118fa0 PileResource::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // BW1W120 0066e850 BW1M100 10118e70 PileResource::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 0066ece0 BW1M100 10117d60 PileResource::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // BW1W120 0066ef80 BW1M100 10117380 PileResource::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // BW1W120 0066e3b0 BW1M100 10119960 PileResource::IsTuggable(void)
    virtual uint32_t IsTuggable();
    // BW1W120 0066e520 BW1M100 101192c0 PileResource::ProcessInInteract(GInterfaceStatus *)
    virtual uint32_t ProcessInInteract(GInterfaceStatus* param_1);

    // Constructors

    // BW1W120 0066ec70 BW1M100 10117e50 PileResource::PileResource(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
    PileResource(MapCoords* param_1, GPotInfo* info, uint32_t param_3, MultiMapFixed* param_4, Town* param_5, int param_6, float param_7, float param_8);
};

#endif /* BW1_DECOMP_PILE_RESOURCE_INCLUDED_H */
