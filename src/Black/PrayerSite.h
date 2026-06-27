#ifndef BW1_DECOMP_PRAYER_SITE_INCLUDED_H
#define BW1_DECOMP_PRAYER_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameThing;
class Object;
class Town;

class PrayerSite: public MultiMapFixed
{
public:

    // Override methods

    // BW1W120 00670800 BW1M100 inlined PrayerSite::_dt(void)
    virtual ~PrayerSite();
    // BW1W120 00670830 BW1M100 inlined PrayerSite::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 006708c0 BW1M100 inlined PrayerSite::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 006708e0 BW1M100 inlined PrayerSite::GetTown(void)
    virtual Town* GetTown();
    // BW1W120 006708b0 BW1M100 inlined PrayerSite::Process(void)
    virtual uint32_t Process();
    // BW1W120 006707f0 BW1M100 inlined PrayerSite::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00670a10 BW1M100 inlined PrayerSite::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
};

#endif /* BW1_DECOMP_PRAYER_SITE_INCLUDED_H */
