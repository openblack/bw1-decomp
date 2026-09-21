#ifndef BW1_DECOMP_CITADEL_INCLUDED_H
#define BW1_DECOMP_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHListHead.h> /* For struct LHListHead */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "Container.h"   /* For struct Container */

// Forward Declares

class Base;
class CitadelHeart;
class Creature;
class GCitadelHeartInfo;
class GTribeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct LH3DMesh;
class Living;
struct MapCoords;
class Town;
class WorshipSite;

class Citadel : public Container
{
public:
	// BW1W120 00463a30 BW1M119 011c1380
	MapCoords               GetCreatureHomePos();
	CitadelHeart*           heart; /* 0x30 */
	WorshipSite*            WorshipSites[0x6];
	LHListHead<CitadelPart> PartList; /* 0x4c */
	uint32_t                field_0x54;
	uint32_t                field_0x58;
	uint32_t                field_0x5c;
	uint32_t                field_0x60;
	uint32_t                field_0x64;
	uint32_t                field_0x68;
	float                   influence;
	uint32_t                field_0x70;
	uint32_t                field_0x74;
	float                   field_0x78;
	Living*                 living;

	// Override methods

	// BW1W120 00462ae0 BW1M119 011bfb50
	virtual ~Citadel();
	// BW1W120 00462b90 BW1M119 011c2960
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00462ad0 BW1M119 011bfe10
	virtual char* GetDebugText();
	// BW1W120 00463dc0 BW1M119 011bff50
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00463b00 BW1M119 011c0bf0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00462ac0 BW1M119 011bfdd0
	virtual uint32_t GetSaveType();
	// BW1W120 00462a60 BW1M119 011bfc70
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00462a70 BW1M119 011bfcb0
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 00462a80 BW1M119 011bfcf0
	virtual uint32_t GetOrigin();
	// BW1W120 004e40e0 BW1M119 015edc60
	virtual bool32_t IsActivityObjectWhichAngerAppliesTo(Creature* param_1);
	// BW1W120 00462a90 BW1M119 011bfd20
	virtual uint32_t IsSuitableForCreatureActivity();
	// BW1W120 004d1b50 BW1M119 012478c0
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 00462aa0 BW1M119 011bfd70
	virtual const char* GetText();
	// BW1W120 00462ab0 BW1M119 011bfda0
	virtual uint32_t IsCitadel();

	// Static methods

	// BW1W120 00463240 BW1M119 011c2110
	static Citadel* CreateCitadel(const MapCoords& coords, const GCitadelHeartInfo* info, uint8_t param_3,
	                              float param_4, float param_5);

	// Non-virtual methods

	// BW1W120 00464090 BW1M119 01030680
	float GetInfluence();

	// BW1W120 00463130 BW1M119 011c2570
	void* AddTown(Town* town);
	// BW1W120 00463190 BW1M119 011c2460
	WorshipSite* FindTribeWorshipSite(const GTribeInfo* tribe_info);
	// BW1W120 004631d0 BW1M119 011c2390
	WorshipSite* FindOrCreateWorshipSite(Town* town);
	// BW1W120 00463220 BW1M119 011c2300
	WorshipSite* FindOrCreateWorshipSite(const GTribeInfo* tribe_info);
	// BW1W120 004633f0 BW1M119 011c1f50
	WorshipSite* RequestANewWorshipSite(const GTribeInfo* tribe_info);
};

#endif /* BW1_DECOMP_CITADEL_INCLUDED_H */
