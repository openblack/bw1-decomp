#ifndef BW1_DECOMP_PRAYER_SITE_INCLUDED_H
#define BW1_DECOMP_PRAYER_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHListNode.h>

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GPrayerSiteInfo;
class GameThing;
class Object;
class Town;

class PrayerSite : public MultiMapFixed
{
	uint32_t               field_0x7c;
	uint32_t               field_0x80;
	LHListNode<PrayerSite> next;
	uint32_t               field_0x88;
	uint8_t                field_0x8c[4];

public:
#ifndef VERSION_BW1W100
	PrayerSite(const MapCoords& coords, const GPrayerSiteInfo* info, float unused_1, float unused_2);

	using MultiMapFixed::GetPos;
	uint32_t  GetIndexedValue(uint32_t index) const;
	MapCoords GetPos(uint32_t unused) const;
#endif

	// Override methods
	// BW1W120 00670830 BW1M119 inlined
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 006708c0 BW1M119 inlined
	virtual GPlayer* GetPlayer();
	// BW1W120 006708e0 BW1M119 inlined
	virtual Town* GetTown();
	// BW1W120 006708b0 BW1M119 inlined
	virtual uint32_t Process();
	// BW1W120 006707f0 BW1M119 inlined
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00670a10 BW1M119 inlined
	virtual bool32_t CreatureMustAvoid(Creature* creature);
};

static_assert(sizeof(PrayerSite) == 0x90, "PrayerSite size is incorrect");

#endif /* BW1_DECOMP_PRAYER_SITE_INCLUDED_H */
