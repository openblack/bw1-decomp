#ifndef BW1_DECOMP_PLAYER_INCLUDED_H
#define BW1_DECOMP_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/Enum.h>                            /* For enum MAGIC_TYPE */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <re_common.h>                              /* For bool32_t */

#include "GameThing.h"  /* For struct GameThing */
#include "PlayerInfo.h" /* For enum PLAYER_TYPE */
#include "Town.h"       /* For struct Town */
#include "WinCondition.h"
#include <map>

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
class LHPlayer;
struct PSysProcessInfo;
class Spell;
struct MPFEStartGameData;

class GPlayer : public GameThing
{
public:
	static void        DrawPlayers();         // 0064c140
	static void        DrawComputerPlayers(); // 0064c1a0
	GInterface*        interfaces[18];        /* 0x14 */
	uint32_t           field_0x5c;
	GAlignment*        alignment; /* 0x60 */
	uint32_t           field_0x64;
	float              TribalPower[TRIBE_TYPE_LAST]; /* 0x68 */
	float              field_0x8c;
	float              field_0x90;
	uint8_t            field_0x94[0x20];
	uint8_t            field_0xb4;
	uint8_t            player_number;
	uint8_t            field_0xb6;
	uint8_t            field_0xb7;
	float              field_0xb8;
	float              field_0xbc;
	float              field_0xc0;
	float              field_0xc4;
	float              field_0xc8;
	float              field_0xcc;
	float              field_0xd0;
	float              field_0xd4;
	float              field_0xd8;
	uint32_t           field_0xdc;
	uint32_t           field_0xe0;
	uint32_t           field_0xe4;
	uint32_t           field_0xe8;
	uint32_t           field_0xec;
	uint32_t           field_0xf0;
	MPFEStartGameData* StartGameData; /* 0xf4 */
#ifdef VERSION_BW1W120
	std::map<int, WinCondition> Conditions; /* 0xf8; original key enum spelling is unrecovered. */
	uint8_t                     field_0x108[0x7d8];
#endif
	PLAYER_TYPE      type; /* 0x8e0 */
	char16_t         name[0x1e];
	uint32_t         field_0x920;
	uint32_t         field_0x924;
	uint32_t         field_0x928;
	int              field_0x92c;
	uint8_t          field_0x930[0x14];
	uintptr_t        field_0x944;
	uint8_t          field_0x948[0x28];
	int              MagicRemainder[0x2a]; /* 0x970 */
	bool             MagicEnabled[0x2a];   /* 0xa18 */
	GameStats*       game_stats;           /* 0xa44 */
	Citadel*         citadel;
	Creature*        creature;
	LHListHead<Town> towns; /* 0xa50 */
	uint32_t         field_0xa58;
	uint32_t         field_0xa5c;

	// BW1W120 00648da0 BW1M119 0149ed20
	GPlayer();

	// Override methods

	// BW1W120 00648eb0 BW1M119 0149e9f0
	virtual ~GPlayer();
	// BW1W120 006490b0 BW1M119 0149e980
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0064a6d0 BW1M119 0149dd10
	virtual void Dump();
	// BW1W120 00648e70 BW1M119 01496ee0
	virtual GPlayer* GetPlayer();
	// BW1W120 0064b670 BW1M119 0102e450
	virtual float GetMaxAlignmentChangePerGameTurn();
	// BW1W120 0064c430 BW1M119 inlined
	virtual float MaintainSpell(uint32_t param_1, float param_2);
	// BW1W120 0064c470 BW1M119 0149a4e0
	virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
	// BW1W120 00648e80 BW1M119 01496f10
	virtual GPlayer* CastPlayer();

	// Static methods

	// BW1W120 00649a20 BW1M119 01064840
	static void ProcessPlayers();
	// BW1W120 0064ab90 BW1M119 0149d180
	static void PostLoadCleanup();
	// BW1W120 0064b5e0 BW1M119 0149c340
	static GPlayer* GetPlayerFromText(const char* str);

	// Non-virtual methods
	// BW1W120 0064d5d0 BW1M119 0105f0d0
	bool IsAllied(GPlayer* other);
	// BW1W120 0064d280 BW1M119 01086560
	void SavePlayerAlignment(uint32_t game_turn);
	// BW1W120 0064d2d0 BW1M119 01497bc0
	void LoadPlayerAlignment();

	// BW1W120 00649190 BW1M119 0149e680
	void Init(PLAYER_TYPE type, uint8_t player_number, char16_t* param_3, unsigned char param_4);
	// BW1W120 00649110 BW1M119 0149e850
	void InitReal(LHPlayer* player, unsigned char player_number);
	// BW1W120 006492b0 BW1M119 0149e570
	void Uninit();
	// BW1W120 00649340 BW1M119 0149e280
	void SetToZero();
	// BW1W120 0064cd00 BW1M119 01498500
	void OnEndOfClearMap();
	// BW1W120 006494e0 BW1M119 010389b0
	void Process();
	// BW1W120 0064a6b0 BW1M119 0149dda0
	void Birthday();
	// BW1W120 0064a790 BW1M119 0105f090
	uint8_t GetPlayerNumber() const;
	// BW1W120 0055da60 BW1M119 010345c0
	GameStats* GetStats();
	// BW1W120 0064a9f0 BW1M119 0149d870
	GInterfaceStatus* GetLeaderInterfaceStatus();
	// BW1W120 0064aac0 BW1M119 010384e0
	GInterfaceStatus* GetNextInterfaceStatus(GInterfaceStatus* param_1);
	// BW1W120 0064ac00 BW1M119 01033050
	bool IsNeutral();
	// BW1W120 0064ad00 BW1M119 0104fab0
	float CalculateInfluencePower();
	// BW1W120 0064b590 BW1M119 0149c420
	LH3DColor* GetPlayer3DColor(LH3DColor* color);
	// BW1W120 0064c220 BW1M119 0149aa30
	bool32_t IsMagicTypeEnabled(MAGIC_TYPE type);
	// BW1W120 0064d120 BW1M119 01053eb0
	GInterface* GetRealInterface(unsigned long interface_index);
	// BW1W120 0064d750 BW1M119 01035c90
	bool IsMemberOfThisPlayer(GInterfaceStatus* param_1);
	// BW1W120 0064d800 BW1M119 010244e0
	LH3DColor GetPlayerColour() const;
	// BW1W120 004c80f0 BW1M119 0123a2b0
	// TODO: the binary mangles the first param as a CLASS (VTOWN_DESIRE_INFO@@) but our headers
	// define TOWN_DESIRE_INFO as an enum (W4...), so callers currently reloc a W4-mangled symbol
	// that the target lacks. Dispatcher: reconcile TOWN_DESIRE_INFO's kind (class vs enum) game-wide.
	void MakeCreatureEmpathiseWithPlayerTownDesire(TOWN_DESIRE_INFO param_1, float param_2, const MapCoords& param_3);
};

// BW1W120 0064d790 BW1M119 01024410
// TODO: Integer result is a remapped player ID; original return-type spelling is unrecovered.
long GetRemapedPlayer(unsigned long player);

#endif /* BW1_DECOMP_PLAYER_INCLUDED_H */
