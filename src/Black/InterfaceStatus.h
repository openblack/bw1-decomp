#ifndef BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H
#define BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MagicHand.h" /* For struct GMagicHand */

// Forward Declares

class Base;
class GGuidance;
class GInterface;
class GLeashStatus;
class GPlayer;
class GVirtualInfluence;
class GameOSFile;
class GameThing;
class Object;
struct PSysProcessInfo;
class Spell;

class GInterfaceStatus: public GameThingWithPos
{
public:
    uint8_t player_number; /* 0x28 */
    GInterface* iface;
    GGuidance* guidance; /* 0x30 */
    uint32_t field_0x34;
    uint32_t field_0x38;
    uint32_t field_0x3c;
    uint32_t field_0x40;
    uint8_t field_0x44[0x14];
    GMagicHand magic_hand[0x2]; /* 0x58 */
    bool hand_holding_something; /* 0x90 */
    LHCoord field_0x94;
    uint32_t field_0x9c;
    uint32_t field_0xa0;
    LHPoint field_0xa4;
    LHPoint camera_pos; /* 0xb0 */
    LHPoint camera_foc;
    LHPoint field_0xc8;
    LHPoint field_0xd4;
    uint32_t field_0xe0;
    uint32_t field_0xe4;
    LHPoint field_0xe8;
    float field_0xf4;
    float field_0xf8;
    float field_0xfc;
    float field_0x100;
    float field_0x104;
    float field_0x108;
    LHPoint hand_velocity;
    float field_0x118;
    uint32_t field_0x11c;
    Object* last_dropped_object; /* 0x120 */
    uint32_t field_0x124;
    GLeashStatus* leash_status;
    GVirtualInfluence* influence;
    float field_0x130;

    // Override methods

    // BW1W120 005db990 BW1M100 1036f480 GInterfaceStatus::_dt(void)
    virtual ~GInterfaceStatus();
    // BW1W120 005dbb00 BW1M100 1036f260 GInterfaceStatus::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 005dbc20 BW1M100 10058730 GInterfaceStatus::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 005dc8f0 BW1M100 1036d0e0 GInterfaceStatus::UpdateSpellInfo(Spell *, PSysProcessInfo *)
    virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
    // BW1W120 005db980 BW1M100 1036be40 GInterfaceStatus::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 005dcdc0 BW1M100 1036c160 GInterfaceStatus::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 005dca50 BW1M100 1036c810 GInterfaceStatus::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 005db970 BW1M100 1036be00 GInterfaceStatus::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 005dd130 BW1M100 1036c080 GInterfaceStatus::SaveExtraData(GameOSFile &)
    virtual void SaveExtraData(GameOSFile* param_1);
    // BW1W120 005dd190 BW1M100 1036c020 GInterfaceStatus::ResolveLoad(void)
    virtual void ResolveLoad();
    // BW1W120 005db960 BW1M100 1036bdc0 GInterfaceStatus::GetText(void)
    virtual const char* GetText();

    // Static methods

    // BW1W120 005cedc0 BW1M100 1035acc0 GInterfaceStatus::SetActive(int)
    static void SetActive(GInterface* this, const void* edx, int param_1);
    // BW1W120 005d29c0 BW1M100 10026ad0 GInterfaceStatus::ResetActionState(void)
    static void ResetActionState(GInterface* this);

    // Constructors

    // BW1W120 005db860 BW1M100 1036f590 GInterfaceStatus::GInterfaceStatus(void)
    GInterfaceStatus();

    // Non-virtual methods

    // BW1W120 005dba00 BW1M100 1036f310 GInterfaceStatus::SetToZero(GInterface *)
    void SetToZero(GInterface* param_1);
    // BW1W120 005dc130 BW1M100 100755c0 GInterfaceStatus::GetFirstObjectInCurrentHand(void)
    Object* GetFirstObjectInCurrentHand();
    // BW1W120 005dc2f0 BW1M100 1007b2f0 GInterfaceStatus::IsSpaceInHands(void)
    bool IsSpaceInHands();
    // BW1W120 005dc8b0 BW1M100 10035b20 GInterfaceStatus::GetInterface(void)
    GInterface* GetInterface();
    // BW1W120 005dd1a0 BW1M100 1036bf20 GInterfaceStatus::Init(unsigned char, GInterface *)
    void Init(uint8_t player_number, GInterface* iface);
};

#endif /* BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H */
