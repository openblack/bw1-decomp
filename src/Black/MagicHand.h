#ifndef BW1_DECOMP_MAGIC_HAND_INCLUDED_H
#define BW1_DECOMP_MAGIC_HAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;
class Object;

class GMagicHand: public GameThing
{
public:
    bool has_object_in_hand; /* 0x14 */
    Object* object_in_hand;

    // Override methods

    // BW1W120 005faf40 BW1M100 103ad580 GMagicHand::_dt(void)
    virtual ~GMagicHand();
    // BW1W120 005fb2a0 BW1M100 103acf80 GMagicHand::CleanUpForSerialisation(void)
    virtual void CleanUpForSerialisation();
    // BW1W120 005faf30 BW1M100 103acd80 GMagicHand::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 005fb320 BW1M100 103acdc0 GMagicHand::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 005fb2c0 BW1M100 103ace90 GMagicHand::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 005faf20 BW1M100 103acd40 GMagicHand::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Non-virtual methods

    // BW1W120 005fb040 BW1M100 10075560 GMagicHand::GetObjectFromHand(void) const
    Object* GetObjectFromHand();
};

#endif /* BW1_DECOMP_MAGIC_HAND_INCLUDED_H */
