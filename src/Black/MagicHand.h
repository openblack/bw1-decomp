#ifndef BW1_DECOMP_MAGIC_HAND_INCLUDED_H
#define BW1_DECOMP_MAGIC_HAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
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

    // win1.41 005faf40 mac 103ad580 GMagicHand::_dt(void)
    virtual ~GMagicHand();
    // win1.41 005fb2a0 mac 103acf80 GMagicHand::CleanUpForSerialisation(void)
    virtual void CleanUpForSerialisation();
    // win1.41 005faf30 mac 103acd80 GMagicHand::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005fb320 mac 103acdc0 GMagicHand::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005fb2c0 mac 103ace90 GMagicHand::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005faf20 mac 103acd40 GMagicHand::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Non-virtual methods

    // win1.41 005fb040 mac 10075560 GMagicHand::GetObjectFromHand(void) const
    Object* GetObjectFromHand();
};

#endif /* BW1_DECOMP_MAGIC_HAND_INCLUDED_H */
