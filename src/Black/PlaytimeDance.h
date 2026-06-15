#ifndef BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class Town;

class PlaytimeElement: public GameThing
{
public:

    // Override methods

    // win1.41 0066c3f0 mac inlined PlaytimeElement::_dt(void)
    virtual ~PlaytimeElement();
    // win1.41 0066c6b0 mac inlined PlaytimeElement::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0066c3e0 mac inlined PlaytimeElement::GetTown(void)
    virtual Town* GetTown();
    // win1.41 0066c810 mac inlined PlaytimeElement::IsFunctional(void)
    virtual bool IsFunctional();
};

#endif /* BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H */
