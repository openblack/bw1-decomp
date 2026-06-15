#ifndef BW1_DECOMP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum SPELL_SEED_TYPE */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <reversing_utils/re_common.h> /* For bool32_t */

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

    // win1.41 00726690 mac 10524570 SpellIcon::TChargingData::TChargingData(void)
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

    // win1.41 0055d480 mac 10525750 SpellIcon::_dt(void)
    virtual ~SpellIcon();
    // win1.41 007260a0 mac 10525680 SpellIcon::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00726540 mac 10524800 SpellIcon::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00726570 mac 10524770 SpellIcon::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // win1.41 0055d370 mac 10525d20 SpellIcon::CastSpellIcon(void)
    virtual SpellIcon* CastSpellIcon();
    // win1.41 0055d470 mac 10526050 SpellIcon::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00727a00 mac 10521bb0 SpellIcon::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00727940 mac 10521ce0 SpellIcon::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055d460 mac 10526010 SpellIcon::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0055d420 mac 10525ee0 SpellIcon::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00726420 mac 10524aa0 SpellIcon::GetOverwriteTapToolTip(void)
    virtual uint32_t GetOverwriteTapToolTip();
    // win1.41 0055d430 mac 10525f20 SpellIcon::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // win1.41 0055d3a0 mac 1049e650 SpellIcon::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // win1.41 0055d450 mac 10525fd0 SpellIcon::IsSpellIcon(void)
    virtual uint32_t IsSpellIcon();
    // win1.41 007261a0 mac 105252a0 SpellIcon::Create3DObject(void)
    virtual void Create3DObject();
    // win1.41 007265d0 mac 10524600 SpellIcon::MoveMapObject(MapCoords const &)
    virtual int MoveMapObject(const MapCoords* param_1);
    // win1.41 0055d380 mac inlined SpellIcon::SetSpecularColor(LH3DColor)
    virtual void SetSpecularColor(LH3DColor param_1);
    // win1.41 0055d390 mac 10525da0 SpellIcon::GetSpecularColor(void)
    virtual LH3DColor GetSpecularColor();
    // win1.41 007265c0 mac 10524740 SpellIcon::Process(void)
    virtual uint32_t Process();
    // win1.41 0055d440 mac 10525f70 SpellIcon::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00519650 mac 100c77b0 SpellIcon::Draw(void)
    virtual void Draw();
    // win1.41 00726160 mac 105253c0 SpellIcon::CallVirtualFunctionsForCreation(const MapCoords &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 0055d400 mac 10525e50 SpellIcon::IsSpellSeedReturnPoint( const(void))
    virtual bool IsSpellSeedReturnPoint();
    // win1.41 0055d410 mac 10525e90 SpellIcon::ValidAsInterfaceLeashTarget(void)
    virtual uint32_t ValidAsInterfaceLeashTarget();
    // win1.41 007263c0 mac 10524b00 SpellIcon::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 00726430 mac 105249c0 SpellIcon::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // win1.41 007260e0 mac 10525630 SpellIcon::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0055d3b0 mac 10525de0 SpellIcon::IsRepaired(void)
    virtual bool IsRepaired();
    // win1.41 0055d3d0 mac 100c7990 SpellIcon::IsBuilt(void)
    virtual bool IsBuilt();

    // Constructors

    // win1.41 00725ff0 mac 105257f0 SpellIcon::SpellIcon(const MapCoords &, const GSpellIconInfo *, const GSpellSeedInfo *, float, float, float, int)
    SpellIcon(const MapCoords* coords, const GSpellIconInfo* icon_info, const GSpellSeedInfo* seed_info, float y_angle, float scale, float param_6, int param_7);

    // Non-virtual methods

    // win1.41 007260f0 mac 10525590 SpellIcon::SetToZero(void)
    void SetToZero();
    // win1.41 00726310 mac 10524d40 SpellIcon::IsSpellSeed(SPELL_SEED_TYPE)
    bool32_t IsSpellSeed(SPELL_SEED_TYPE type);
    // win1.41 00726350 mac 10524e60 SpellIcon::GetSpellSeedInfo(void) const
    GSpellSeedInfo* GetSpellSeedInfo();
    // win1.41 00726360 mac 10524cb0 SpellIcon::GetSpellSeedType(void)
    SPELL_SEED_TYPE GetSpellSeedType();
};

#endif /* BW1_DECOMP_SPELL_ICON_INCLUDED_H */
