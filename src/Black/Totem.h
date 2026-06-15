#ifndef BW1_DECOMP_TOTEM_INCLUDED_H
#define BW1_DECOMP_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "Abode.h" /* For struct Abode */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
class EffectValues;
class GAbodeInfo;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Object;
class Town;

class Totem: public Abode
{
public:
    MapCoords field_0xc4;
    MapCoords field_0xd0;
    uint32_t field_0xdc;
    uint32_t field_0xe0;

    // Override methods

    // win1.41 00561580 mac 10126730 Totem::_dt(void)
    virtual ~Totem();
    // win1.41 00737410 mac 10543540 Totem::Delete(void)
    virtual void Delete();
    // win1.41 00737430 mac 105434c0 Totem::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00561570 mac 105427e0 Totem::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00737800 mac 10542950 Totem::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 007378b0 mac 10542820 Totem::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561560 mac 105427b0 Totem::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00561530 mac 101337e0 Totem::IsCastShadowAtNight(void)
    virtual uint32_t IsCastShadowAtNight();
    // win1.41 00561510 mac 10133740 Totem::CanBePlayedWithByCreature(Creature *)
    virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
    // win1.41 00561500 mac 101336f0 Totem::CanBeImpressedByCreature(Creature *)
    virtual uint32_t CanBeImpressedByCreature(Creature* param_1);
    // win1.41 004e3e60 mac 105e6830 Totem::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
    virtual uint32_t DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* param_1);
    // win1.41 0051aba0 mac 100c5910 Totem::Draw(void)
    virtual void Draw();
    // win1.41 00737490 mac 10543360 Totem::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00737520 mac 10543140 Totem::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // win1.41 00737570 mac 10543060 Totem::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // win1.41 007375c0 mac 10542ff0 Totem::NetworkUnfriendlyStartLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyStartLockedSelect();
    // win1.41 00737610 mac 10542df0 Totem::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // win1.41 007375e0 mac 10542f60 Totem::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // win1.41 00737600 mac 10542f00 Totem::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // win1.41 00561520 mac 10133790 Totem::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);

    // Constructors

    // win1.41 00737390 mac 105435b0 Totem::Totem(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    Totem(const MapCoords* coords, const GAbodeInfo* info, Town* town, float param_4, float param_5, float param_6, int param_7);
};

#endif /* BW1_DECOMP_TOTEM_INCLUDED_H */
