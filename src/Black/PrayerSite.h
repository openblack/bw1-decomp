#ifndef BW1_DECOMP_PRAYER_SITE_INCLUDED_H
#define BW1_DECOMP_PRAYER_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameThing;
class Object;
class Town;

class PrayerSite : public MultiMapFixed
{
public:
	uint8_t                field_0x7c[8];
	LHListNode<PrayerSite> next;
	uint8_t                field_0x88[8];

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

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static_assert(sizeof(PrayerSite) == 0x90, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_PRAYER_SITE_INCLUDED_H */
