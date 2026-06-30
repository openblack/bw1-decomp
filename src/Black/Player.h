#ifndef BW1_DECOMP_PLAYER_INCLUDED_H
#define BW1_DECOMP_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */
#include <uchar.h> /* For char16_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <re_common.h> /* For bool32_t */

#include "GameThing.h" /* For struct GameThing */
#include "PlayerInfo.h" /* For enum PLAYER_TYPE */
#include "Town.h" /* For struct Town */

enum PLAYER_NAME
{
  PLAYER_NAME_PLAYER_ONE = 0x0,
  PLAYER_NAME_PLAYER_TWO = 0x1,
  PLAYER_NAME_PLAYER_THREE = 0x2,
  PLAYER_NAME_PLAYER_FOUR = 0x3,
  PLAYER_NAME_PLAYER_FIVE = 0x4,
  PLAYER_NAME_PLAYER_SIX = 0x5,
  PLAYER_NAME_PLAYER_SEVEN = 0x6,
  PLAYER_NAME_NEUTRAL = 0x7,
  _PLAYER_NAME_COUNT = 0x8
};

// Forward Declares

class Base;
class Citadel;
class Creature;
class GAlignment;
class GInterface;
class GInterfaceStatus;
class GameStats;
struct PSysProcessInfo;
class Spell;

class GPlayer: public GameThing
{
public:
    GInterface* interfaces[0x1]; /* 0x14 */
    int field_0x18;
    uint8_t field_0x1c[0x44];
    GAlignment* alignment; /* 0x60 */
    uint32_t field_0x64;
    float field_0x68;
    float field_0x6c;
    float field_0x70;
    float field_0x74;
    float field_0x78;
    float field_0x7c;
    float field_0x80;
    float field_0x84;
    float field_0x88;
    float field_0x8c;
    float field_0x90;
    uint8_t field_0x94[0x20];
    uint8_t field_0xb4;
    uint8_t player_number;
    uint8_t field_0xb6;
    uint8_t field_0xb7;
    float field_0xb8;
    float field_0xbc;
    float field_0xc0;
    float field_0xc4;
    float field_0xc8;
    float field_0xcc;
    float field_0xd0;
    float field_0xd4;
    float field_0xd8;
    uint32_t field_0xdc;
    uint32_t field_0xe0;
    uint32_t field_0xe4;
    uint32_t field_0xe8;
    uint32_t field_0xec;
    uint8_t field_0xf0[0x7f0];
    PLAYER_TYPE type; /* 0x8e0 */
    char16_t name[0x1e];
    uint32_t field_0x920;
    uint32_t field_0x924;
    uint32_t field_0x928;
    int field_0x92c;
    uint8_t field_0x930[0x14];
    uintptr_t field_0x944;
    uint8_t field_0x948[0x28];
    int magic_remainder[0x2a]; /* 0x970 */
    bool magic_enabled[0x2a]; /* 0xa18 */
    GameStats* game_stats; /* 0xa44 */
    Citadel* citadel;
    Creature* creature;
    LHListHead<Town> towns; /* 0xa50 */
    uint32_t field_0xa58;
    uint32_t field_0xa5c;

    // Override methods

    // BW1W120 00648eb0 BW1M100 10497380 GPlayer::_dt(void)
    virtual ~GPlayer();
    // BW1W120 006490b0 BW1M100 10497310 GPlayer::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0064a6d0 BW1M100 10496550 GPlayer::Dump(void)
    virtual void Dump();
    // BW1W120 00648e70 BW1M100 1048ea90 GPlayer::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 0064b670 BW1M100 1002b8e0 GPlayer::GetMaxAlignmentChangePerGameTurn(void)
    virtual float GetMaxAlignmentChangePerGameTurn();
    // BW1W120 0064c430 BW1M100 inlined GPlayer::MaintainSpell(unsigned int, float)
    virtual void MaintainSpell(uint32_t param_1, float param_2);
    // BW1W120 0064c470 BW1M100 10491f30 GPlayer::UpdateSpellInfo(Spell *, PSysProcessInfo *)
    virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
    // BW1W120 00648e80 BW1M100 1048eac0 GPlayer::CastPlayer(void)
    virtual GPlayer* CastPlayer();

    // Static methods

    // BW1W120 00649a20 BW1M100 100620c0 GPlayer::ProcessPlayers(void)
    static void ProcessPlayers();
    // BW1W120 0064ab90 BW1M100 10495bf0 GPlayer::PostLoadCleanup(void)
    static void PostLoadCleanup();
    // BW1W120 0064b5e0 BW1M100 10494e00 GPlayer::GetPlayerFromText(char *)
    static GPlayer* GetPlayerFromText(const char* str);

    // Non-virtual methods

    // BW1W120 00649190 BW1M100 10497020 GPlayer::Init(PLAYER_TYPE, unsigned char, wchar_t *, unsigned char)
    void Init(PLAYER_TYPE type, uint8_t player_number, char16_t* param_3, unsigned char param_4);
    // BW1W120 006494e0 BW1M100 10036020 GPlayer::Process(void)
    void Process();
    // BW1W120 0064a6b0 BW1M100 104965e0 GPlayer::Birthday(void)
    void Birthday();
    // BW1W120 0064a790 BW1M100 1005c3d0 GPlayer::GetPlayerNumber(void) const
    uint8_t GetPlayerNumber();
    // BW1W120 0064aac0 BW1M100 10035b60 GPlayer::GetNextInterfaceStatus(GInterfaceStatus *)
    GInterfaceStatus* GetNextInterfaceStatus(GInterfaceStatus* param_1);
    // BW1W120 0064ac00 BW1M100 100306d0 GPlayer::IsNeutral(void)
    bool IsNeutral();
    // BW1W120 0064ad00 BW1M100 1004d120 GPlayer::CalculateInfluencePower(void)
    float CalculateInfluencePower();
    // BW1W120 0064b590 BW1M100 10494ee0 GPlayer::GetPlayer3DColor(void)
    LH3DColor* GetPlayer3DColor(LH3DColor* color);
    // BW1W120 0064c220 BW1M100 10492490 GPlayer::IsMagicTypeEnabled(MAGIC_TYPE)
    bool32_t IsMagicTypeEnabled(MAGIC_TYPE type);
    // BW1W120 0064d120 BW1M100 10051520 GPlayer::GetRealInterface(unsigned long)
    GInterface* GetRealInterface(int param_2);
    // BW1W120 0064d750 BW1M100 10033320 GPlayer::IsMemberOfThisPlayer(GInterfaceStatus *)
    bool IsMemberOfThisPlayer(GInterfaceStatus* param_1);
    // BW1W120 0064d800 BW1M100 10021970 GPlayer::GetPlayerColour(void) const
    LH3DColor GetPlayerColour();
};

#endif /* BW1_DECOMP_PLAYER_INCLUDED_H */
