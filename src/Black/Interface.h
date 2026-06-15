#ifndef BW1_DECOMP_INTERFACE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */

#include "BaseInfo.h" /* For struct BaseInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "InterfaceCollide.h" /* For struct GInterfaceCollide */
#include "InterfaceFlags.h" /* For struct GInterfaceFlags */
#include "InterfaceHandState.h" /* For struct InterfaceHandState */
#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */
#include "InterfaceMessageBuffer.h" /* For struct GInterfaceMessageBuffer */

// Forward Declares

class Base;
class CHand;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
struct LHCoord;
class LHPlayer;
struct LHPoint;
struct Leash;
struct LiquidParticleGroup;

class GInterface: public GameThingWithPos
{
public:
    uint32_t field_0x28;
    LiquidParticleGroup* liquid_particle_group;
    GInterfaceFlags flags; /* 0x30 */
    int field_0x44;
    uint32_t field_0x48;
    uint32_t field_0x4c;
    LHReleasedOSFile file; /* 0x50 */
    uint8_t field_0x58[0x104];
    uint32_t is_specific_playback; /* 0x15c */
    uint32_t is_any_playback; /* 0x160 */
    uint8_t field_0x164[0x30];
    uint32_t field_0x194;
    Leash* leash_0x198;
    Leash* leash_0x19c;
    Leash* leash_0x1a0;
    uint32_t field_0x1a4;
    uint32_t field_0x1a8;
    uint32_t field_0x1ac;
    uint32_t field_0x1b0;
    uint32_t field_0x1b4;
    uint32_t field_0x1b8;
    LHPlayer* player;
    uint8_t field_0x1c0[0x1a0];
    uint32_t field_0x360;
    uint32_t field_0x364;
    uint32_t field_0x368;
    uint32_t field_0x36c;
    uint32_t field_0x370;
    uint32_t field_0x374;
    uint32_t field_0x378;
    uint32_t field_0x37c;
    uint32_t field_0x380;
    uint32_t field_0x384;
    uint32_t field_0x388;
    uint32_t field_0x38c;
    uint32_t field_0x390;
    uint32_t field_0x394;
    uint32_t field_0x398;
    GInterfaceStatus* status;
    CHand* hand; /* 0x3a0 */
    InterfaceHandState field_0x3a4;
    GInterfaceCollide interface_collide; /* 0x3b0 */
    GInterfaceCollide field_0x3e0;
    float field_0x410;
    float field_0x414;
    uint32_t field_0x418;
    uint32_t field_0x41c;
    uint32_t field_0x420;
    uint32_t field_0x424;
    uint32_t field_0x428;
    uint32_t field_0x42c;
    GInterfaceMessageBuffer message_buffers; /* 0x430 */
    int field_0x444;
    int field_0x448;
    uint32_t field_0x44c;
    uint32_t field_0x450;
    uint32_t field_0x454;
    uint32_t field_0x458;
    BaseInfo field_0x45c;
    uint32_t field_0x468;
    uint32_t field_0x46c;
    uint32_t field_0x470;
    uint32_t field_0x474;
    uint32_t field_0x478;

    // Override methods

    // win1.41 005ce310 mac 1035c380 GInterface::_dt(void)
    virtual ~GInterface();
    // win1.41 005ce480 mac 1035c0e0 GInterface::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 005cec50 mac 1035b240 GInterface::Get3DSoundPos(LHPoint *)
    virtual int Get3DSoundPos(LHPoint* param_1);
    // win1.41 005ce2c0 mac 10069130 GInterface::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 005ce300 mac 10357e40 GInterface::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005d04d0 mac 10358550 GInterface::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005d0490 mac 103585e0 GInterface::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005ce2f0 mac 10357e00 GInterface::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005d0590 mac 103581e0 GInterface::SaveExtraData(GameOSFile &)
    virtual void SaveExtraData(GameOSFile* param_1);
    // win1.41 005d0510 mac 10358340 GInterface::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 005ce2e0 mac 10074680 GInterface::IsActive( const(void))
    virtual uint32_t IsActive();
    // win1.41 005ce2d0 mac 10357dc0 GInterface::GetText(void)
    virtual const char* GetText();

    // Non-virtual methods

    // win1.41 005ce4d0 mac 1035be80 GInterface::SetToZero(void)
    void SetToZero();
    // win1.41 005ce670 mac 1035bd00 GInterface::Init(unsigned char)
    void Init(uint8_t player_number);
    // win1.41 005ce7f0 mac 1035ba90 GInterface::InitLeash(void)
    void InitLeash();
    // win1.41 005ce920 mac 1035b8b0 GInterface::SetupHand(void)
    void SetupHand();
    // win1.41 005ce9e0 mac 1007b8b0 GInterface::PreDrawProcess(void)
    void PreDrawProcess();
    // win1.41 005ceab0 mac 1007d9b0 GInterface::PostDrawProcess(void)
    void PostDrawProcess();
    // win1.41 005cec10 mac 100254c0 GInterface::Process(void)
    void Process();
    // win1.41 005d0610 mac 10084060 GInterface::UpdateHandRenderCollide(void)
    void UpdateHandRenderCollide();
    // win1.41 005d9130 mac 100315f0 GInterface::UpdateAllLeashes(void)
    void UpdateAllLeashes();
    // win1.41 005d9d80 mac 10004300 GInterface::SendMessageA(INTERFACE_MESSAGE_TYPES, LHCoord *)
    bool SendMessageA(INTERFACE_MESSAGE_TYPES param_1, LHCoord* param_2);
};

#endif /* BW1_DECOMP_INTERFACE_INCLUDED_H */
