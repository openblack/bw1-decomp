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

	// BW1W120 0055e070 BW1M119 0156abe0
	virtual ~TownSpellIcon();
	// BW1W120 00748ae0 BW1M119 0156ab30
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00748b90 BW1M119 0156aa90
	virtual GPlayer* GetPlayer();
	// BW1W120 0055e040 BW1M119 01569ae0
	virtual Town* GetTown();
	// BW1W120 0055e060 BW1M119 0156ada0
	virtual char* GetDebugText();
	// BW1W120 00748fb0 BW1M119 0156a030
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00748f70 BW1M119 0156a0c0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e050 BW1M119 0156ad60
	virtual uint32_t GetSaveType();
	// BW1W120 00748f00 BW1M119 0156a200
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 00748be0 BW1M119 0156aa40
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

class TownCentreSpellIcon : public TownSpellIcon
{
public:
	uint32_t field_0x118;
	uint32_t PowerUpEnabled[POWER_UP_TYPE_LAST];

	// Override methods

	// BW1W120 0055e0c0 BW1M119 0156a870
	virtual ~TownCentreSpellIcon();
	// BW1W120 00748c80 BW1M119 0156a780
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055e0b0 BW1M119 01569aa0
	virtual char* GetDebugText();
	// BW1W120 007490e0 BW1M119 01569b20
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00748ff0 BW1M119 01569dd0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e0a0 BW1M119 01569a60
	virtual uint32_t GetSaveType();
	// BW1W120 00519640 BW1M119 010cafd0
	virtual void Draw();
	// BW1W120 00748d20 BW1M119 0156a460
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);

	// Non-virtual methods

	// BW1W120 00748eb0 BW1M119 0156a350
	void SetPULevel(POWER_UP_TYPE power_up_type, bool enabled);
	// BW1W120 00748ed0 BW1M119 0156a2a0
	void UpdateGraphicWithPULevels();
};

#endif /* BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H */
