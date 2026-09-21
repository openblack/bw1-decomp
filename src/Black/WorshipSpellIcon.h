#ifndef BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t */

#include "Fixed.h"     /* For struct SingleMapFixed */
#include "SpellIcon.h" /* For struct SpellIcon */

// Forward Declares

class Base;
class Citadel;
class EffectValues;
class GPlayer;
class GSpellIconInfo;
class GSpellSeedInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
struct PSysProcessInfo;
class Spell;
class Town;
class WorshipSite;

class WorshipSpellIcon : public SpellIcon
{
public:
	WorshipSpellIcon* next; /* 0x110 */
	int16_t           field_0x114;
	uint32_t          site;
	float             field_0x11c;
	uint32_t          field_0x120;
	int               field_0x124;
	uint32_t          field_0x128;
	uint32_t          field_0x12c;
	uint32_t          field_0x130;
	float             field_0x134;
	uint32_t          field_0x138;
	int16_t           slot;

	// Override methods

	// BW1W120 0077f110 BW1M119 015bdf30
	virtual ~WorshipSpellIcon();
	// BW1W120 0077f230 BW1M119 015bde50
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0077f6f0 BW1M119 inlined
	virtual float MaintainSpell(uint32_t param_1, float param_2);
	// BW1W120 0077f750 BW1M119 015bd440
	virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
	// BW1W120 0077f100 BW1M119 015bb350
	virtual char* GetDebugText();
	// BW1W120 007801f0 BW1M119 015bb5a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0077ff80 BW1M119 015bbb40
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0077f0f0 BW1M119 015bb310
	virtual uint32_t GetSaveType();
	// BW1W120 0077f0a0 BW1M119 01575730
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 0077f0e0 BW1M119 015bb2c0
	virtual float ApplyEffect(EffectValues& param_1, int param_2);
	// BW1W120 0077f390 BW1M119 015bd9f0
	virtual uint32_t Process();
	// BW1W120 0077f290 BW1M119 015bddc0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0077f0b0 BW1M119 015bb1d0
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 0077f0d0 BW1M119 015bb270
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Static methods

	// BW1W120 0077f2b0 BW1M119 015bdc70
	static WorshipSpellIcon* Create(const MapCoords& coords, const GSpellIconInfo* icon_info,
	                                const GSpellSeedInfo* seed_info, WorshipSite* site, int16_t slot, float param_6,
	                                int param_7);

	// Constructors

	// BW1W120 0077f140 BW1M119 015bdff0
	WorshipSpellIcon(const MapCoords& coords, const GSpellIconInfo* icon_info, const GSpellSeedInfo* seed_info,
	                 WorshipSite* site, int16_t slot, float param_6, int param_7);

	// Non-virtual methods

	// BW1W120 0077f1f0 BW1M119 inlined
	void SetToZero();
	// BW1W120 0077f320 BW1M119 015bdb70
	void UpdateGraphicsWithPULevels();
	// BW1W120 0077ff40 BW1M119 015bbf70
	void StopRemoveFromPlayer();
};

class PrayerIcon : public SingleMapFixed
{
public:
	// Override methods

	// BW1W120 00670960 BW1M119 inlined
	virtual ~PrayerIcon();
	// BW1W120 00670980 BW1M119 inlined
	virtual void ToBeDeleted(int param_1);
	// BW1W120 006709a0 BW1M119 inlined
	virtual GPlayer* GetPlayer();
	// BW1W120 006709b0 BW1M119 inlined
	virtual Town* GetTown();
	// BW1W120 00670940 BW1M119 inlined
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 006709e0 BW1M119 inlined
	virtual Citadel* GetCitadel();
	// BW1W120 006709d0 BW1M119 inlined
	virtual uint32_t Process();
	// BW1W120 00670950 BW1M119 inlined
	virtual MESH_LIST GetMesh() const;
	// BW1W120 006709f0 BW1M119 inlined
	virtual void Draw();
};

#endif /* BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H */
