#ifndef BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t */

#include <Lionhead/LHLib/ver5.0/LHListHead.h> /* For LHListHead */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For LHListNode */

#include "Fixed.h"     /* For struct SingleMapFixed */
#include "LHPTR.h"     /* For LHPTR */
#include "SpellIcon.h" /* For struct SpellIcon */

#define WORSHIP_SPELL_ICON_BAND_SCALE       0.5f
#define WORSHIP_SPELL_ICON_REMOVE_COUNTDOWN 1000
#define WORSHIP_SPELL_ICON_MIN_CHANTS       0.001f
#define WORSHIP_SPELL_ICON_NEVER_CREATED    -1.0f

// Forward Declares

class SpellSeed;
class Base;
class Citadel;
class EffectValues;
class GPlayer;
class GSpellIconInfo;
class GSpellSeedInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class GInterfaceStatus;
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
	LHListNode<WorshipSpellIcon> next; /* 0x110 */
	int16_t                      RemoveCountdown;
	LHPTR<WorshipSite>           Site; /* 0x118 */
	float                        ScaleBeforeRemove;
	bool                         Charging; /* 0x120 */
	POWER_UP_TYPE                PowerUpType;
	GInterfaceStatus*            ChargingStatus;
	LHListHead<SpellSeed>        CreatedSpells; /* 0x12c */
	float                        ChantStore;
	unsigned long                TurnChargingStarted;
	int16_t                      Slot; /* 0x13c */

	// Override methods

	// BW1W120 0077f110 BW1M119 015bdf30
	virtual ~WorshipSpellIcon();
	// BW1W120 0077f230 BW1M119 015bde50
	virtual void ToBeDeleted(int delete_now);
	// BW1W120 0077f6f0 BW1M119 015bd500
	virtual float MaintainSpell(uint32_t spell, float amount);
	// BW1W120 0077f750 BW1M119 015bd440
	virtual void UpdateSpellInfo(Spell* spell, PSysProcessInfo* info);
	// BW1W120 0077f100 BW1M119 015bb350
	virtual char* GetDebugText();
	// BW1W120 007801f0 BW1M119 015bb5a0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0077ff80 BW1M119 015bbb40
	virtual bool32_t Save(GameOSFile& file);
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
	virtual bool32_t IsEffectReceiver(EffectValues* values);
	// BW1W120 0077f0d0 BW1M119 015bb270
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords);
	// BW1W120 0077fee0 BW1M119 015bc000
	virtual bool32_t IsBuilt();
	// BW1W120 0077f0c0 BW1M119 015bb220
	virtual float GetPercentForDrawBuilding();
	// BW1W120 0077fca0 BW1M119 015bc540
	virtual void* GetBuildingObject();
	// BW1W120 0077fc90 BW1M119 015bc5f0
	virtual int GetSpellIconPlacementIndex();
	// BW1W120 0077f090 BW1M119 015bb190
	virtual WorshipSpellIcon* GetWorshipSpellIcon();

	// Static methods

	// BW1W120 0077f2b0 BW1M119 015bdc70
	static WorshipSpellIcon* Create(const MapCoords& coords, const GSpellIconInfo* icon_info,
	                                const GSpellSeedInfo* seed_info, WorshipSite* site, int16_t slot,
	                                float percent_built, int under_construction);

	// Constructors

	// BW1W120 0077f020 BW1M119 015be2c0
	WorshipSpellIcon();
	// BW1W120 0077f140 BW1M119 015bdff0
	WorshipSpellIcon(const MapCoords& coords, const GSpellIconInfo* icon_info, const GSpellSeedInfo* seed_info,
	                 WorshipSite* site, int16_t slot, float percent_built, int under_construction);

	// Non-virtual methods

	// BW1W120 0077f1f0 BW1M119 inlined
	void SetToZero();
	// BW1W120 0077f320 BW1M119 015bdb70
	void UpdateGraphicsWithPULevels();
	// BW1W120 0077f490 BW1M119 015bd910
	SpellSeed* GetHeldSpellSeed();
	// BW1W120 0077f4e0 BW1M119 015bd750
	void PlayFullyChargedSoundFX();
	// BW1W120 0077f670 BW1M119 015bd700
	unsigned long GetTurnChargingStarted();
	// BW1W120 0077f680 BW1M119 null
	void SetTurnChargingStarted(unsigned long turn);
	// BW1W120 0077f690 BW1M119 015bd650
	float GetSpellChargingFraction(GInterfaceStatus* status);
	// BW1W120 0077f6d0 BW1M119 015bd5e0
	bool IsCharging(GInterfaceStatus* status);
	// BW1W120 0077f780 BW1M119 015bd360
	void AddSpell(SpellSeed* seed);
	// BW1W120 0077f7d0 BW1M119 015bd110
	void RemoveSpell(SpellSeed* seed);
	// BW1W120 0077f840 BW1M119 015bd070
	float GetChantRequiredForSpellSeed();
	// BW1W120 0077f880 BW1M119 015bcf60
	bool32_t ActualInterfaceTap(GInterfaceStatus* status);
	// BW1W120 0077f8f0 BW1M119 015bce60
	bool32_t PutFullyChargedPowerUpSeedInHand(GInterfaceStatus* status);
	// BW1W120 0077f950 BW1M119 015bcd60
	bool32_t ValidForPutFullyChargedPowerUpSeedInHand(GInterfaceStatus* status);
	// BW1W120 0077f9a0 BW1M119 015bcca0
	bool32_t CancelCharge(GInterfaceStatus* status);
	// BW1W120 0077fa00 BW1M119 015bcb70
	bool32_t StartCharge(GInterfaceStatus* status, POWER_UP_TYPE power_up, bool require_chants);
	// BW1W120 0077fab0 BW1M119 015bca20
	bool32_t ValidForStartCharge(GInterfaceStatus* status, POWER_UP_TYPE power_up, bool require_chants);
	// BW1W120 0077fb40 BW1M119 015bc920
	bool32_t RequestSpell(GInterfaceStatus* status, POWER_UP_TYPE power_up, bool require_chants);
	// BW1W120 0077fba0 BW1M119 015bc820
	bool32_t ValidForRequestSpell(GInterfaceStatus* status, POWER_UP_TYPE power_up, bool require_chants);
	// BW1W120 0077fbf0 BW1M119 015bc720
	bool32_t ValidForRequestSpellPowerUp(GInterfaceStatus* status, POWER_UP_TYPE power_up);
	// BW1W120 0077fc30 BW1M119 015bc640
	bool32_t RequestSpellPowerUp(GInterfaceStatus* status, POWER_UP_TYPE power_up);
	// BW1W120 0077fcd0 BW1M119 015bc4d0
	float AddChantsToSeedOnSeedCreation(SpellSeed* seed);
	// BW1W120 0077fce0 BW1M119 015bc3f0
	float UseCreateChants(SpellSeed* seed);
	// BW1W120 0077fd60 BW1M119 015bc300
	void ReturnAllChantsToWorshipSite();
	// BW1W120 0077fda0 BW1M119 015bc250
	float AddToChantStore(float amount);
	// BW1W120 0077fe10 BW1M119 015bc1f0
	float RemoveFromChantStore(float amount);
	// BW1W120 0077fe40 BW1M119 015bc150
	float GetChantNeededForSpellSeed();
	// BW1W120 inlined BW1M119 015bc3b0
	float GetChantStore() const { return ChantStore; }
	// BW1W120 0077fe80 BW1M119 015bc0a0
	float GetPower();
	// BW1W120 0077ff10 BW1M119 null
	void StartRemoveFromPlayer();
	// BW1W120 0077ff40 BW1M119 015bbf70
	void StopRemoveFromPlayer();
	// BW1W120 00780480 BW1M119 015bb4a0
	float GetNumGameTurnsToCreate();
	// BW1W120 00780510 BW1M119 015bb390
	float GetChargeUpSpeedDesire();
	// BW1W120 inlined BW1M119 015b8fe0
	LHListHead<SpellSeed>& GetCreatedSpellList() { return CreatedSpells; }
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
