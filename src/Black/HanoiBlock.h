#ifndef BW1_DECOMP_HANOI_BLOCK_INCLUDED_H
#define BW1_DECOMP_HANOI_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;

class HanoiBlock: public MobileObject
{
public:

    // Override methods

    // win1.41 00561850 mac 1011ebc0 HanoiBlock::_dt(void)
    virtual ~HanoiBlock();
    // win1.41 00561840 mac 1011edc0 HanoiBlock::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006db960 mac 10123fa0 HanoiBlock::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006db9f0 mac 10123e90 HanoiBlock::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561830 mac 1011ed80 HanoiBlock::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 006de440 mac 1011ee00 HanoiBlock::IsCannotBePickedUp( const(void))
    virtual bool IsCannotBePickedUp();
    // win1.41 006de3f0 mac 1011eed0 HanoiBlock::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 00561800 mac 1011eca0 HanoiBlock::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 005617f0 mac 1011ec50 HanoiBlock::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00561820 mac 1011ed30 HanoiBlock::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_HANOI_BLOCK_INCLUDED_H */
