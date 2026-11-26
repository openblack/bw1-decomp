#ifndef BW1_DECOMP_CITADEL_INCLUDED_H
#define BW1_DECOMP_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHFastPointer.h> /* For class LHFastPointer */
#include <Lionhead/LHLib/ver5.0/LHListHead.h>    /* For struct LHListHead */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "Container.h"   /* For struct Container */

// Forward Declares

class Base;
class CitadelHeart;
class CPController;
class CreaturePen;
class Creature;
class GCitadelHeartInfo;
class GCitadelInfo;
class GPlayer;
class GTribeInfo;
class GWorshipSiteInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct LH3DMesh;
class Living;
struct MapCoords;
class PlannedMultiMapFixed;
class PrayerSite;
class SpellIcon;
class Town;
class WorshipSite;

#define MAX_WORSHIP_SITES 6

class Citadel : public Container
{
public:
	LHFastPointer<CitadelHeart>      heart;
	WorshipSite*                     WorshipSites[MAX_WORSHIP_SITES];
	LHListHead<CitadelPart>          PartList;
	LHListHead<CreaturePen>          CreaturePenList;
	LHListHead<PlannedMultiMapFixed> PlannedPartList;
	LHListHead<PrayerSite>           PrayerSiteList;
	float                            influence;
	float                            WorshipStrainSoundFrac;
	bool32_t                         CannotBuildWorshipSite;
	float                            LastAddedInfluence;
	CPController*                    People;

	// Override methods

	// BW1W120 00462a60 BW1M119 011bfc70
	virtual uint32_t GetCreatureBeliefType() { return CREATURE_BELIEF_TYPE_CITADEL; }
	// BW1W120 00462a70 BW1M119 011bfcb0
	virtual uint32_t GetCreatureBeliefListType() { return 0; }
	// BW1W120 00462a80 BW1M119 011bfcf0
	virtual uint32_t GetOrigin() { return OBJECT_ORIGIN_MAGIC; }
	// BW1W120 00462a90 BW1M119 011bfd20
	virtual bool32_t IsSuitableForCreatureActivity() { return true; }
	// BW1W120 00462aa0 BW1M119 011bfd70
	virtual const char* GetText() { return "Citadel"; }
	// BW1W120 00462ab0 BW1M119 011bfda0
	virtual bool32_t IsCitadel() { return true; }
	// BW1W120 00462ac0 BW1M119 011bfdd0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_CITADEL; }
	// BW1W120 00462ad0 BW1M119 011bfe10
	virtual char* GetDebugText() { return "Citadel:"; }
	// BW1W120 00462b90 BW1M119 011c2960
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00463dc0 BW1M119 011bff50
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00463b00 BW1M119 011c0bf0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 004e40e0 BW1M119 015edc60
	virtual bool32_t IsActivityObjectWhichAngerAppliesTo(Creature* creature);
	// BW1W120 004d1b50 BW1M119 012478c0
	virtual float GetHowMuchCreatureWantsToLookAtMe();

	// BW1W120 004629f0 BW1M119 011c3350
	Citadel();
	// BW1W120 00462b10 BW1M119 011c2ec0
	Citadel(const MapCoords& coords, const GCitadelInfo* info, GPlayer* player);

	// Static methods

	// BW1W120 00463330 BW1M119 null
	static bool32_t IsCitadelAtPos(const MapCoords* coords);
#ifdef VERSION_BW1WCI
	// BW1WCI 0046ce40 BW1MCI119 011d7150
	static Citadel* CreateCitadel(const MapCoords& coords, const GCitadelHeartInfo* info, uint8_t player_number,
	                              float y_angle, float scale);
#else
	// BW1W120 00463240 BW1M119 011c2110
	static bool32_t CreateCitadel(const MapCoords& coords, const GCitadelHeartInfo* info, uint8_t player_number,
	                              float y_angle, float scale);
#endif

	// Non-virtual methods

	// BW1W120 00463a30 BW1M119 011c1380
	MapCoords GetCreatureHomePos();
	// BW1W120 00463ad0 BW1M119 011c1160
	SpellIcon* FindSpellIcon(MAGIC_TYPE magic);
	// BW1W120 00464090 BW1M119 01030680
	float GetInfluence();
	// BW1W120 004630e0 BW1M119 01091bc0
	CitadelHeart* GetCitadelHeart() { return heart.Get(); }

	// BW1W120 00463130 BW1M119 011c2570
	WorshipSite* AddTown(Town* town);
	// BW1W120 00463190 BW1M119 011c2460
	WorshipSite* FindTribeWorshipSite(const GTribeInfo* tribe_info);
	// BW1W120 004639a0 BW1M119 01005d60
	WorshipSite* GetNearestActiveWorshipSite(const MapCoords& coords, float t_max) const;
	// BW1W120 004631d0 BW1M119 011c2390
	WorshipSite* FindOrCreateWorshipSite(Town* town);
	// BW1W120 00463220 BW1M119 011c2300
	WorshipSite* FindOrCreateWorshipSite(const GTribeInfo* tribe_info);
	// BW1W120 004631c0 BW1M119 null
	WorshipSite* FindTownWorshipSite(Town* town);
	// BW1W120 004633f0 BW1M119 011c1f50
	WorshipSite* RequestANewWorshipSite(const GTribeInfo* tribe_info);
	// BW1W120 00463350 BW1M119 null
	void CreatePlannedParts();
	// BW1W120 00463370 BW1M119 null
	void ConvertUnderConstructionPartsToPlanned();
	// BW1W120 004634b0 BW1M119 null
	bool32_t HasPlannedCreaturePen();
	// BW1W120 00463670 BW1M119 null
	MapCoords FindFreePrayerSitePos();
	// BW1W120 00462d20 BW1M119 null
	int CreatePart(int, int);
	// BW1W120 00462d30 BW1M119 null
	void Init(const MapCoords& coords);
	// BW1W120 00462d40 BW1M119 011c2810
	void SetToZero();
	// BW1W120 00462d70 BW1M119 0106ba90
	void Process();
	// BW1W120 004630f0 BW1M119 010306d0
	float CalculateInfluence(const MapCoords& coords, int unused);
	// BW1W120 00463a20 BW1M119 011c13f0
	void UpdateInfluence(float new_influence);
	// BW1W120 00463850 BW1M119 0108cb80
	void SetWorshipStrainSoundFrac(float frac);
	// BW1W120 00463a50 BW1M119 011c12b0
	void CreateInsideVillagers();
	// BW1W120 00463aa0 BW1M119 011c1220
	void DeleteInsideVillagers();
	// BW1W120 00463510 BW1M119 011c1ec0
	void Cheat(int cheat);
	// BW1W120 00463540 BW1M119 011c1d50
	bool32_t FindNearestWorshipSitePosAngleAndSlotToPos(const GWorshipSiteInfo* info, float scale, MapCoords& pos,
	                                                    float& y_angle, unsigned long& slot);
	// BW1W120 00463610 BW1M119 011c1c60
	float GetWorshipSiteAngle(unsigned long slot);
	// BW1W120 00463770 BW1M119 011c1ba0
	void AddWorshipSite(WorshipSite* site);
	// BW1W120 004637c0 BW1M119 011c1b40
	void RemoveWorshipSite(WorshipSite* site);
	// BW1W120 004637e0 BW1M119 011c18a0
	bool32_t IsObjectPartOfCitadel(GameThingWithPos* object);
	// BW1W120 00463920 BW1M119 0108cce0
	void ProcessSpellIcons();
	// BW1W120 00463980 BW1M119 0108fe80
	void DrawSpellIcons();
};

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static_assert(sizeof(Citadel) == 0x80, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_CITADEL_INCLUDED_H */
