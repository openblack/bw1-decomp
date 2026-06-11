#ifndef BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H
#define BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;

class MagicFireBall: public Object
{
public:
    uint32_t field_0x54;
    bool field_0x58;
    uint32_t field_0x5c;

    // Override methods

    // win1.41 00682b50 mac 103fca00 MagicFireBall::_dt(void)
    virtual ~MagicFireBall();
    // win1.41 00682c30 mac 103fc750 MagicFireBall::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00682bf0 mac 103fc970 MagicFireBall::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00682d20 mac 103fc6b0 MagicFireBall::Get2DRadius(void)
    virtual float Get2DRadius();
    // win1.41 00682b40 mac 103fd410 MagicFireBall::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00683320 mac 103fb710 MagicFireBall::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006832b0 mac 103fb800 MagicFireBall::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00682b30 mac 103fd3d0 MagicFireBall::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00682a50 mac 103fcf70 MagicFireBall::IsMagicFireBall(void)
    virtual uint32_t IsMagicFireBall();
    // win1.41 00682a80 mac 103fd050 MagicFireBall::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 00682a90 mac 103fd0a0 MagicFireBall::CanBeSetOnFire(Creature *)
    virtual uint32_t CanBeSetOnFire(Creature* param_1);
    // win1.41 00682aa0 mac 103fd0f0 MagicFireBall::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 00682ab0 mac 103fd140 MagicFireBall::CanBeThrownByCreature(Creature *)
    virtual uint32_t CanBeThrownByCreature(Creature* param_1);
    // win1.41 00682ac0 mac 103fd190 MagicFireBall::CanBePutInAStoragePit(Creature *)
    virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
    // win1.41 00682ad0 mac 103fd1e0 MagicFireBall::CanBeDestroyedByStoning(Creature *)
    virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
    // win1.41 00682ae0 mac 103fd230 MagicFireBall::CanBeStonedAndEatenByCreature(Creature *)
    virtual uint32_t CanBeStonedAndEatenByCreature(Creature* param_1);
    // win1.41 00682af0 mac 103fd290 MagicFireBall::CanBeExaminedByCreature(Creature *)
    virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
    // win1.41 00682b00 mac 103fd2e0 MagicFireBall::CanBeFoughtByCreature(Creature *)
    virtual uint32_t CanBeFoughtByCreature(Creature* param_1);
    // win1.41 00682b10 mac 103fd330 MagicFireBall::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // win1.41 00682d30 mac 103fc650 MagicFireBall::GetHeight(void)
    virtual float GetHeight();
    // win1.41 00682d10 mac 103fc710 MagicFireBall::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 00682d40 mac 103fc580 MagicFireBall::GetHeatCapacity(void)
    virtual float GetHeatCapacity();
    // win1.41 00682d90 mac 103fc520 MagicFireBall::GetFireGPHXDrawn(bool *, bool *, bool *, bool *)
    virtual void GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4);
    // win1.41 00682db0 mac 103fc4a0 MagicFireBall::GetRainCoolingMultiplier(void)
    virtual float GetRainCoolingMultiplier();
    // win1.41 00682f20 mac 103fc010 MagicFireBall::Draw(void)
    virtual void Draw();
    // win1.41 00682dd0 mac 103fc3d0 MagicFireBall::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 00682e80 mac 103fc040 MagicFireBall::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 00682a40 mac 103fcf30 MagicFireBall::IsTuggable(void)
    virtual uint32_t IsTuggable();
    // win1.41 00682e40 mac 103fc2d0 MagicFireBall::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 00682e50 mac 103fc190 MagicFireBall::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // win1.41 00682a60 mac 103fcfb0 MagicFireBall::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00682a70 mac 103fd000 MagicFireBall::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00682b20 mac 103fd380 MagicFireBall::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

    // Constructors

    // win1.41 00682a20 mac 103fca90 MagicFireBall::MagicFireBall(void)
    MagicFireBall();
};

#endif /* BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H */
