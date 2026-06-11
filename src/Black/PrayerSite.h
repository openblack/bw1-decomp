#ifndef BW1_DECOMP_PRAYER_SITE_INCLUDED_H
#define BW1_DECOMP_PRAYER_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
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

    // win1.41 00670800 mac inlined PrayerSite::_dt(void)
    virtual ~PrayerSite();
    // win1.41 00670830 mac inlined PrayerSite::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 006708c0 mac inlined PrayerSite::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 006708e0 mac inlined PrayerSite::GetTown(void)
    virtual Town* GetTown();
    // win1.41 006708b0 mac inlined PrayerSite::Process(void)
    virtual uint32_t Process();
    // win1.41 006707f0 mac inlined PrayerSite::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00670a10 mac inlined PrayerSite::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
};

#endif /* BW1_DECOMP_PRAYER_SITE_INCLUDED_H */
