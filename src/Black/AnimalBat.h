#ifndef BW1_DECOMP_ANIMAL_BAT_INCLUDED_H
#define BW1_DECOMP_ANIMAL_BAT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove, struct SpellDove */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;
class Object;

class Bat: public Dove
{
public:

    // Override methods

    // win1.41 0041ef30 mac 10171c00 Bat::_dt(void)
    virtual ~Bat();
    // win1.41 0041ef10 mac 10171cc0 Bat::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041ef00 mac 10171c90 Bat::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041ef20 mac 10171d00 Bat::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // win1.41 0041be40 mac 101708a0 Bat::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

class SpellBat: public SpellDove
{
public:

    // Override methods

    // win1.41 0041f010 mac 101719e0 SpellBat::_dt(void)
    virtual ~SpellBat();
    // win1.41 0041eff0 mac 10171b30 SpellBat::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041efe0 mac 10171af0 SpellBat::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041f000 mac 10171b70 SpellBat::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // win1.41 0041bea0 mac 10170720 SpellBat::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_BAT_INCLUDED_H */
