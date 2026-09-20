#ifndef BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
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

class TownSpellIcon : public SpellIcon
{
public:
	TownSpellIcon* next; /* 0x110 */
	Town*          town;

	// Override methods

	// BW1W120 0055e070 BW1M100 10561b50 TownSpellIcon::_dt(void)
	virtual ~TownSpellIcon();
	// BW1W120 00748ae0 BW1M100 10561aa0 TownSpellIcon::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00748b90 BW1M100 10561a00 TownSpellIcon::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 0055e040 BW1M100 10560ac0 TownSpellIcon::GetTown(void)
	virtual Town* GetTown();
	// BW1W120 0055e060 BW1M100 10561d20 TownSpellIcon::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00748fb0 BW1M100 10560fa0 TownSpellIcon::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00748f70 BW1M100 10561030 TownSpellIcon::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e050 BW1M100 10561ce0 TownSpellIcon::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00748f00 BW1M100 10561170 TownSpellIcon::GetWorshipSite(void)
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 00748be0 BW1M100 105619b0 TownSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

class TownCentreSpellIcon : public TownSpellIcon
{
public:
	uint32_t field_0x118;
	uint32_t PowerUpEnabled[POWER_UP_TYPE_LAST];

	// Override methods

	// BW1W120 0055e0c0 BW1M100 105617e0 TownCentreSpellIcon::_dt(void)
	virtual ~TownCentreSpellIcon();
	// BW1W120 00748c80 BW1M100 105616f0 TownCentreSpellIcon::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055e0b0 BW1M100 10560a80 TownCentreSpellIcon::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 007490e0 BW1M100 10560b00 TownCentreSpellIcon::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00748ff0 BW1M100 10560d50 TownCentreSpellIcon::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e0a0 BW1M100 10560a40 TownCentreSpellIcon::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00519640 BW1M100 100c7a30 TownCentreSpellIcon::Draw(void)
	virtual void Draw();
	// BW1W120 00748d20 BW1M100 105613d0 TownCentreSpellIcon::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);

	// Non-virtual methods

	// BW1W120 00748eb0 BW1M100 105612c0 TownCentreSpellIcon::SetPULevel(POWER_UP_TYPE, bool)
	void SetPULevel(POWER_UP_TYPE power_up_type, bool enabled);
	// BW1W120 00748ed0 BW1M100 10561210 TownCentreSpellIcon::UpdateGraphicWithPULevels(void)
	void UpdateGraphicWithPULevels();
};

#endif /* BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H */
