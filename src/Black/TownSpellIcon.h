#ifndef BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For POWER_UP_TYPE_LAST, enum POWER_UP_TYPE */

#include "SpellIcon.h" /* For struct SpellIcon */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
class Town;
class WorshipSite;

class TownSpellIcon: public SpellIcon
{
public:
    TownSpellIcon* next; /* 0x110 */
    Town* town;

    // Override methods

    // win1.41 0055e070 mac 10561b50 TownSpellIcon::_dt(void)
    virtual ~TownSpellIcon();
    // win1.41 00748ae0 mac 10561aa0 TownSpellIcon::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00748b90 mac 10561a00 TownSpellIcon::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 0055e040 mac 10560ac0 TownSpellIcon::GetTown(void)
    virtual Town* GetTown();
    // win1.41 0055e060 mac 10561d20 TownSpellIcon::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00748fb0 mac 10560fa0 TownSpellIcon::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00748f70 mac 10561030 TownSpellIcon::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055e050 mac 10561ce0 TownSpellIcon::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00748f00 mac 10561170 TownSpellIcon::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // win1.41 00748be0 mac 105619b0 TownSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

class TownCentreSpellIcon: public TownSpellIcon
{
public:
    uint32_t field_0x118;
    uint32_t power_up_enabled[POWER_UP_TYPE_LAST];

    // Override methods

    // win1.41 0055e0c0 mac 105617e0 TownCentreSpellIcon::_dt(void)
    virtual ~TownCentreSpellIcon();
    // win1.41 00748c80 mac 105616f0 TownCentreSpellIcon::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055e0b0 mac 10560a80 TownCentreSpellIcon::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007490e0 mac 10560b00 TownCentreSpellIcon::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00748ff0 mac 10560d50 TownCentreSpellIcon::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055e0a0 mac 10560a40 TownCentreSpellIcon::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00519640 mac 100c7a30 TownCentreSpellIcon::Draw(void)
    virtual void Draw();
    // win1.41 00748d20 mac 105613d0 TownCentreSpellIcon::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);

    // Non-virtual methods

    // win1.41 00748eb0 mac 105612c0 TownCentreSpellIcon::SetPULevel(POWER_UP_TYPE, bool)
    void SetPULevel(POWER_UP_TYPE power_up_type, bool enabled);
    // win1.41 00748ed0 mac 10561210 TownCentreSpellIcon::UpdateGraphicWithPULevels(void)
    void UpdateGraphicWithPULevels();
};

#endif /* BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H */
