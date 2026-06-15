#ifndef BW1_DECOMP_REWARD_INCLUDED_H
#define BW1_DECOMP_REWARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */
#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class Reward: public MobileObject
{
public:
    uint8_t field_0x68[0x40];

    // Override methods

    // win1.41 006e5690 mac 1013bef0 Reward::_dt(void)
    virtual ~Reward();
    // win1.41 006e5c10 mac 1013b3b0 Reward::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 006e5cb0 mac 1013b340 Reward::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 006e5680 mac 10138f70 Reward::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006e6c70 mac 10139000 Reward::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006e69c0 mac 10139380 Reward::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006e5670 mac 10138f30 Reward::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 006e6f00 mac 10138fb0 Reward::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 006e6990 mac 101397c0 Reward::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // win1.41 006e69b0 mac 10139730 Reward::GetOverwriteTapToolTip(void)
    virtual uint32_t GetOverwriteTapToolTip();
    // win1.41 006e5650 mac 10138ed0 Reward::IsReward( const(void))
    virtual uint32_t IsReward();
    // win1.41 006e5660 mac 10138f00 Reward::IsActive( const(void))
    virtual uint32_t IsActive();
    // win1.41 006e5ca0 mac 1013b370 Reward::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 006e68f0 mac 10139850 Reward::Process(void)
    virtual uint32_t Process();
    // win1.41 006e6380 mac 1013a430 Reward::Draw(void)
    virtual void Draw();
    // win1.41 006e6880 mac 10139bc0 Reward::GetWeight(void)
    virtual float GetWeight();
    // win1.41 006e59b0 mac 1013b570 Reward::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 006e69a0 mac 10139770 Reward::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 006e5cc0 mac 1013b270 Reward::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 006e5d00 mac 1013a480 Reward::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // win1.41 006e6980 mac 10139800 Reward::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
};

class GRewardProgress: public GBaseInfo
{
public:

    // Override methods

    // win1.41 006e5580 mac 1013afe0 GRewardProgress::_dt(void)
    virtual ~GRewardProgress();
    // win1.41 006e5520 mac 1013c310 GRewardProgress::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_REWARD_INCLUDED_H */
