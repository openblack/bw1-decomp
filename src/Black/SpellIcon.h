#ifndef BW1_DECOMP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum SPELL_SEED_TYPE */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <re_common.h> /* For bool32_t */

#include "LightSheet.h" /* For struct LightSheet */
#include "MapCoords.h" /* For struct MapCoords */
#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GSpellIconInfo;
class GSpellSeedInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Object;
class SpellSeedGraphic;
class WorshipSite;

struct Q29SpellIcon13TChargingData
{
    uint8_t field_0x0;
    LightSheet light_sheet;
    uint32_t field_0x64;
    uint32_t field_0x68;
    uint32_t field_0x6c;
    int field_0x70;
    uint32_t field_0x74;

    // Constructors

    // BW1W120 00726690 BW1M100 10524570 SpellIcon::TChargingData::TChargingData(void)
    Q29SpellIcon13TChargingData();
};

class SpellIcon: public MultiMapFixed
{
public:
    SpellSeedGraphic* graphic; /* 0x7c */
    GSpellSeedInfo* seed_info; /* 0x80 */
    uint32_t field_0x84;
    Q29SpellIcon13TChargingData charging_data;
    MapCoords spell_coords; /* 0x100 */
    uint32_t field_0x10c;

    // Override methods

    // BW1W120 0055d480 BW1M100 10525750 SpellIcon::_dt(void)
    virtual ~SpellIcon();
    // BW1W120 007260a0 BW1M100 10525680 SpellIcon::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00726540 BW1M100 10524800 SpellIcon::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 00726570 BW1M100 10524770 SpellIcon::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // BW1W120 0055d370 BW1M100 10525d20 SpellIcon::CastSpellIcon(void)
    virtual SpellIcon* CastSpellIcon();
    // BW1W120 0055d470 BW1M100 10526050 SpellIcon::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00727a00 BW1M100 10521bb0 SpellIcon::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00727940 BW1M100 10521ce0 SpellIcon::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055d460 BW1M100 10526010 SpellIcon::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0055d420 BW1M100 10525ee0 SpellIcon::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // BW1W120 00726420 BW1M100 10524aa0 SpellIcon::GetOverwriteTapToolTip(void)
    virtual uint32_t GetOverwriteTapToolTip();
    // BW1W120 0055d430 BW1M100 10525f20 SpellIcon::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // BW1W120 0055d3a0 BW1M100 1049e650 SpellIcon::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // BW1W120 0055d450 BW1M100 10525fd0 SpellIcon::IsSpellIcon(void)
    virtual uint32_t IsSpellIcon();
    // BW1W120 007261a0 BW1M100 105252a0 SpellIcon::Create3DObject(void)
    virtual void Create3DObject();
    // BW1W120 007265d0 BW1M100 10524600 SpellIcon::MoveMapObject(MapCoords const &)
    virtual int MoveMapObject(const MapCoords* param_1);
    // BW1W120 0055d380 BW1M100 inlined SpellIcon::SetSpecularColor(LH3DColor)
    virtual void SetSpecularColor(LH3DColor param_1);
    // BW1W120 0055d390 BW1M100 10525da0 SpellIcon::GetSpecularColor(void)
    virtual LH3DColor GetSpecularColor();
    // BW1W120 007265c0 BW1M100 10524740 SpellIcon::Process(void)
    virtual uint32_t Process();
    // BW1W120 0055d440 BW1M100 10525f70 SpellIcon::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00519650 BW1M100 100c77b0 SpellIcon::Draw(void)
    virtual void Draw();
    // BW1W120 00726160 BW1M100 105253c0 SpellIcon::CallVirtualFunctionsForCreation(const MapCoords &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // BW1W120 0055d400 BW1M100 10525e50 SpellIcon::IsSpellSeedReturnPoint( const(void))
    virtual bool IsSpellSeedReturnPoint();
    // BW1W120 0055d410 BW1M100 10525e90 SpellIcon::ValidAsInterfaceLeashTarget(void)
    virtual uint32_t ValidAsInterfaceLeashTarget();
    // BW1W120 007263c0 BW1M100 10524b00 SpellIcon::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // BW1W120 00726430 BW1M100 105249c0 SpellIcon::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // BW1W120 007260e0 BW1M100 10525630 SpellIcon::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 0055d3b0 BW1M100 10525de0 SpellIcon::IsRepaired(void)
    virtual bool IsRepaired();
    // BW1W120 0055d3d0 BW1M100 100c7990 SpellIcon::IsBuilt(void)
    virtual bool IsBuilt();

    // Constructors

    // BW1W120 00725ff0 BW1M100 105257f0 SpellIcon::SpellIcon(const MapCoords &, const GSpellIconInfo *, const GSpellSeedInfo *, float, float, float, int)
    SpellIcon(const MapCoords* coords, const GSpellIconInfo* icon_info, const GSpellSeedInfo* seed_info, float y_angle, float scale, float param_6, int param_7);

    // Non-virtual methods

    // BW1W120 007260f0 BW1M100 10525590 SpellIcon::SetToZero(void)
    void SetToZero();
    // BW1W120 00726310 BW1M100 10524d40 SpellIcon::IsSpellSeed(SPELL_SEED_TYPE)
    bool32_t IsSpellSeed(SPELL_SEED_TYPE type);
    // BW1W120 00726350 BW1M100 10524e60 SpellIcon::GetSpellSeedInfo(void) const
    GSpellSeedInfo* GetSpellSeedInfo();
    // BW1W120 00726360 BW1M100 10524cb0 SpellIcon::GetSpellSeedType(void)
    SPELL_SEED_TYPE GetSpellSeedType();
};

#endif /* BW1_DECOMP_SPELL_ICON_INCLUDED_H */
