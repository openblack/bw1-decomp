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

    // BW1W120 00561580 BW1M100 10126730 Totem::_dt(void)
    virtual ~Totem();
    // BW1W120 00737410 BW1M100 10543540 Totem::Delete(void)
    virtual void Delete();
    // BW1W120 00737430 BW1M100 105434c0 Totem::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00561570 BW1M100 105427e0 Totem::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00737800 BW1M100 10542950 Totem::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 007378b0 BW1M100 10542820 Totem::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00561560 BW1M100 105427b0 Totem::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00561530 BW1M100 101337e0 Totem::IsCastShadowAtNight(void)
    virtual uint32_t IsCastShadowAtNight();
    // BW1W120 00561510 BW1M100 10133740 Totem::CanBePlayedWithByCreature(Creature *)
    virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
    // BW1W120 00561500 BW1M100 101336f0 Totem::CanBeImpressedByCreature(Creature *)
    virtual uint32_t CanBeImpressedByCreature(Creature* param_1);
    // BW1W120 004e3e60 BW1M100 105e6830 Totem::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
    virtual uint32_t DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* param_1);
    // BW1W120 0051aba0 BW1M100 100c5910 Totem::Draw(void)
    virtual void Draw();
    // BW1W120 00737490 BW1M100 10543360 Totem::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 00737520 BW1M100 10543140 Totem::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // BW1W120 00737570 BW1M100 10543060 Totem::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 007375c0 BW1M100 10542ff0 Totem::NetworkUnfriendlyStartLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyStartLockedSelect();
    // BW1W120 00737610 BW1M100 10542df0 Totem::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // BW1W120 007375e0 BW1M100 10542f60 Totem::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // BW1W120 00737600 BW1M100 10542f00 Totem::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 00561520 BW1M100 10133790 Totem::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);

    // Constructors

    // BW1W120 00737390 BW1M100 105435b0 Totem::Totem(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    Totem(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Static methods

    // BW1W120 007374c0 BW1M100 10543240 Totem::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    static Totem* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);
};

#endif /* BW1_DECOMP_TOTEM_INCLUDED_H */
