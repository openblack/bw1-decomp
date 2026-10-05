#ifndef BW1_DECOMP_PLAYER_INCLUDED_H
#define BW1_DECOMP_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/CreatureEnum.h>                     /* For enum DETECTED_PLAYER_ACTION */
#include <chlasm/Enum.h>                             /* For enum MAGIC_TYPE */
#include <Lionhead/LH3DLib/development/LH3DColor.h>  /* For struct LH3DColor */
#include <Lionhead/LHLib/ver5.0/LHListHead.h>        /* For struct LHListHead */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h> /* For struct LH_USER_ID */
#include <re_common.h>                               /* For bool32_t */

#include "GameThing.h"  /* For struct GameThing */
#include "LHPTR.h"      /* For class LHPTR */
#include "MapCoords.h"  /* For struct MapCoords */
#include "PlayerInfo.h" /* For enum PLAYER_TYPE */
#include "PlayerName.h" /* For enum PLAYER_NAME */
#include "Town.h"       /* For struct Town */
#include "WinCondition.h"
#include "MultiplayerConstants.h" /* For MAX_MULTIPLAYER_PLAYERS */
#include <map>

#define MAX_PLAYER_INTERFACES 18

// Forward Declares

class Base;
class CHand;
class Citadel;
class Creature;
class EditorIconPDM;
class GAlignment;
class GComputerPlayer;
class GInterface;
class GInterfaceStatus;
class GameOSFile;
class GameThingWithPos;
class GameStats;
class LHOSFile;
class LHPlayer;
class MagicTeleport;
struct PSysProcessInfo;
class Spell;
class WorshipSpellIcon;
struct MPFEStartGameData;

struct GPlayerAlly
{
	float Value;

	GPlayerAlly() : Value(0.0f) {}
};

struct GPlayerStartPos
{
	MapCoords Pos;
	uint32_t  field_0xc;
	int       field_0x10;

	// BW1W120 inlined BW1M119 inlined
	GPlayerStartPos()
	{
		Pos.Clear();
		field_0xc = 0;
		field_0x10 = -1;
	}
};

class GPlayer : public GameThing
{
public:
	GInterface*         interfaces[MAX_PLAYER_INTERFACES];
	EditorIconPDM*      EditorIcon;
	GAlignment*         alignment;
	const GPlayerInfo*  info;
	float               TribalPower[TRIBE_TYPE_LAST];
	float               InfluencePower;
	float               AverageInfluencePower;
	float               DamageFromPlayer[_PLAYER_NAME_COUNT];
	uint8_t             field_0xb4;
	uint8_t             player_number;
	float               MaxTribalPower[TRIBE_TYPE_LAST];
	GPlayerStartPos     StartPos;
	LHListNode<GPlayer> next;
	MPFEStartGameData*  StartGameData;
#ifdef VERSION_BW1W120
	std::map<int, WinCondition> Conditions;
	float                       ScoreHistory[500];
	int                         ScoreHistoryIndex;
	float                       Score;
#endif
	PLAYER_TYPE   type;
	char16_t      name[0x20];
	unsigned long UserId;
	bool32_t      CheatOn;
	bool32_t      AllMagicEnabled;
	// No reader found in either the BW1W120 or the BW1M119 GPlayer code.
	uint32_t                  CheatField930;
	int                       InfiniteInfluence;
	bool32_t                  HasLost;
	int                       field_0x93c;
	uint32_t                  WindResistance;
	GComputerPlayer*          ComputerPlayer;
	uint32_t                  TotalPopulation;
	uint32_t                  AlignmentSaveTurn;
	GPlayerAlly               Allies[_PLAYER_NAME_COUNT];
	int                       MagicTypeEnabled[MAGIC_TYPE_LAST];
	bool                      MagicTypeEverBeenEnabled[MAGIC_TYPE_LAST];
	GameStats*                game_stats;
	LHPTR<Citadel>            citadel;
	LHPTR<Creature>           creature;
	LHListHead<Town>          towns;
	LHListHead<MagicTeleport> teleports;

	// BW1W120 00648da0 BW1M119 0149ed20
	GPlayer();

	// Override methods

	// BW1W120 00648e70 BW1M119 01496ee0
	virtual GPlayer* GetPlayer() { return this; }
	// BW1W120 00648e80 BW1M119 01496f10
	virtual GPlayer* CastPlayer() { return this; }
	// BW1W120 00648e90 BW1M119 01496f40
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GPLAYER; }
	// BW1W120 00648ea0 BW1M119 01496f80
	virtual char* GetDebugText() { return "Player:"; }

	// BW1W120 00648ee0 BW1M119 0149e9f0
	virtual ~GPlayer();
	// BW1W120 006490b0 BW1M119 0149e980
	virtual void ToBeDeleted(int delete_now);
	// BW1W120 0064a6d0 BW1M119 0149dd10
	virtual void Dump();
	// BW1W120 0064b670 BW1M119 0102e450
	virtual float GetMaxAlignmentChangePerGameTurn();
	// BW1W120 0064c430 BW1M119 0149a5b0
	virtual float MaintainSpell(uint32_t spell, float amount);
	// BW1W120 0064c470 BW1M119 0149a4e0
	virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
	// BW1W120 0064c4c0 BW1M119 01499760
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0064c8c0 BW1M119 01498780
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0064cc90 BW1M119 014986b0
	virtual void SaveExtraData(GameOSFile& file);
	// BW1W120 0064ccf0 BW1M119 01498680
	virtual void ResolveLoad();

	// Static methods

	// BW1W120 00649a20 BW1M119 01064840
	static void ProcessPlayers();
	// BW1W120 0064ab90 BW1M119 0149d180
	static void PostLoadCleanup();
	// BW1W120 0064aee0 BW1M119 01064fe0
	static void ProcessSpellIcons();
	// BW1W120 0064af20 BW1M119 01065160
	static void DrawSpellIcons();
	// BW1W120 0064b5e0 BW1M119 0149c340
	static GPlayer* GetPlayerFromText(char* text);
	// BW1W120 0064c140 BW1M119 01067c40
	static void DrawPlayers();
	// BW1W120 0064c1a0 BW1M119 0106b7c0
	static void DrawComputerPlayers();
	// BW1W120 0064d0f0 BW1M119 01497f30
	static void UnsetupPlayers();
	// BW1W120 0064d820 BW1M119 null
	static unsigned long GetPlayerColour(unsigned long player_number);
	// BW1W120 0064db40 BW1M119 null
	static void HideGameOverDialogs();

	// Non-virtual methods

	// BW1W120 006490d0 BW1M119 null
	void InitReal(LHPlayer* player);
	// BW1W120 00649110 BW1M119 0149e850
	void InitReal(LHPlayer* player, unsigned char player_number);
	// BW1W120 00649190 BW1M119 0149e680
	void Init(PLAYER_TYPE type, unsigned char player_number, char16_t* player_name, unsigned char player_id);
	// BW1W120 006492b0 BW1M119 0149e570
	void Uninit();
	// BW1W120 00649340 BW1M119 0149e280
	void SetToZero();
	// BW1W120 006494e0 BW1M119 010389b0
	void Process();
	// BW1W120 005fcc70 BW1M119 0102e210
	void ProcessTeleports();
	// BW1W120 00649810 BW1M119 0149de60
	void ClaimTown(Town* town);
	// BW1W120 0064a6b0 BW1M119 0149dda0
	void Birthday();
	// BW1W120 0064a700 BW1M119 null
	Town* GetNearestTown(const MapCoords& coords);
	// BW1W120 0064a720 BW1M119 null
	Town* GetNearestTown(unsigned short cell_x, unsigned short cell_z);
	// BW1W120 0064a790 BW1M119 0105f090
	unsigned long GetPlayerNumber() const;
	// BW1W120 0064a7a0 BW1M119 0149da90
	bool32_t ZoomToCitadel(bool to_island_centre);
	// BW1W120 0064a8f0 BW1M119 0149d980
	void Cheat(unsigned long level);
	// BW1W120 0064a9c0 BW1M119 01021a20
	GInterfaceStatus* GetTempFirstInterfaceStatus();
	// BW1W120 0064a9f0 BW1M119 0149d870
	GInterfaceStatus* GetLeaderInterfaceStatus();
	// BW1W120 0064aa30 BW1M119 0149d760
	unsigned long GetHumanNumberInPlayer();
	// BW1W120 0064aa60 BW1M119 0149d670
	unsigned long GetNumberOfInterfaces();
	// BW1W120 0064aa80 BW1M119 0149d5e0
	GInterfaceStatus* GetFirstHumanInterfaceStatus();
	// BW1W120 0064aac0 BW1M119 010384e0
	GInterfaceStatus* GetNextInterfaceStatus(GInterfaceStatus* status);
	// BW1W120 0064ab20 BW1M119 0149d260
	CHand* GetRenderHand();
	// BW1W120 0064ab40 BW1M119 null
	int GetNumberOfTownsOfTribe(TRIBE_TYPE tribe);
	// BW1W120 0064ac00 BW1M119 01033050
	bool32_t IsNeutral();
	// BW1W120 0064ac30 BW1M119 010798a0
	void UpdateAlignmentVisuals();
	// BW1W120 0064acc0 BW1M119 0108e010
	float GetRelativeInfluencePower();
	// BW1W120 0064aea0 BW1M119 0149cd50
	float GetAllPlayersTotalInfluencePower();
	// BW1W120 inlined BW1M119 inlined
	float GetInfluencePower() { return InfluencePower; }
	// BW1W120 0064ad00 BW1M119 0104fab0
	float CalculateInfluencePower();
	// BW1W120 0064b430 BW1M119 null
	void AddEditorIcon(char* text);
	// BW1W120 0064b4f0 BW1M119 0149c530
	void SetCreature(Creature* creature);
	// BW1W120 0064b510 BW1M119 0149c4a0
	void ReflectCreatureInTowns();
	// BW1W120 0064b540 BW1M119 null
	void CreateEditorIcon(EditorIconPDM* parent);
	// BW1W120 0064b570 BW1M119 null
	void DeleteAllTowns();
	// BW1W120 0064b590 BW1M119 0149c420
	LH3DColor GetPlayer3DColor();
	// BW1W120 0064b5b0 BW1M119 null
	void MakeCreatureEmpathiseWithPlayer(CREATURE_DESIRES desire, const MapCoords& pos);
	// BW1W120 0064b650 BW1M119 0149c2c0
	unsigned long GetPlayerTotemForTown();
	// BW1W120 0064b680 BW1M119 0101c970
	float GetProportionOfWorldPopulationWhoBelieveInMe();
	// BW1W120 0064b700 BW1M119 01097bc0
	float GetProportionOfAllPlayersInfluence();
	// BW1W120 0064b760 BW1M119 01022190
	unsigned long GetTotalDeathsInWholeWorld();
	// BW1W120 0064b780 BW1M119 01022210
	unsigned long GetTotalBirthsInWholeWorld();
	// BW1W120 0064b7a0 BW1M119 01022110
	unsigned long GetTotalAbodesBuiltInWholeWorld();
	// BW1W120 0064b7c0 BW1M119 0149be60
	float GetPercentageOfMalesInTheWorld();
	// BW1W120 0064b870 BW1M119 01022090
	unsigned long GetTotalWondersBuiltInWholeWorld();
	// BW1W120 0064b890 BW1M119 0149bc90
	unsigned long GetTotalNumberOfDisciples();
	// BW1W120 0064b900 BW1M119 null
	unsigned long GetNumberOfDisciplesBuilder();
	// BW1W120 0064b930 BW1M119 null
	unsigned long GetNumberOfDisciplesBreeder();
	// BW1W120 0064b960 BW1M119 null
	unsigned long GetNumberOfDisciplesFisherman();
	// BW1W120 0064b990 BW1M119 null
	unsigned long GetNumberOfDisciplesFarmer();
	// BW1W120 0064b9c0 BW1M119 null
	unsigned long GetNumberOfDisciplesForester();
	// BW1W120 0064b9f0 BW1M119 null
	unsigned long GetNumberOfDisciplesProtection();
	// BW1W120 0064ba20 BW1M119 0149bb20
	unsigned long GetTotalNumberOfMisionaries();
	// BW1W120 0064ba70 BW1M119 0149ba80
	unsigned long GetNumberOfDisciples(VILLAGER_DISCIPLE disciple);
	// BW1W120 0064bab0 BW1M119 01026cc0
	bool GetHasSpellCharging(GInterfaceStatus* status);
	// BW1W120 0064bb10 BW1M119 0149b8b0
	float GetSpellChargingFraction(GInterfaceStatus* status);
	// BW1W120 0064bb90 BW1M119 0149b770
	bool32_t IsAtLeastOneSpellBeginToBeCharged();
	// BW1W120 0064bbf0 BW1M119 0149b660
	bool32_t IsSpellBeginToBeCharged(MAGIC_TYPE type);
	// BW1W120 0064bc60 BW1M119 0149b560
	bool32_t CancelAllSpellsCharging(GInterfaceStatus* status);
	// BW1W120 0064bcc0 BW1M119 0149b450
	bool32_t CancelSpellCharging(GInterfaceStatus* status);
	// BW1W120 0064bd50 BW1M119 0149b360
	bool32_t RequestSpellPrevious(GInterfaceStatus* status);
	// BW1W120 0064bd90 BW1M119 0108df20
	bool32_t ValidForRequestSpellPrevious(GInterfaceStatus* status);
	// BW1W120 0064bdb0 BW1M119 0149b250
	bool32_t RequestSpell(GInterfaceStatus* status, SPELL_SEED_TYPE type);
	// BW1W120 0064bde0 BW1M119 null
	bool32_t ValidForRequestSpell(GInterfaceStatus* status);
	// BW1W120 0064be40 BW1M119 0107a7b0
	bool32_t ValidForRequestSpell(GInterfaceStatus* status, GESTURE_TYPE gesture);
	// BW1W120 0064bec0 BW1M119 0108de00
	bool32_t ValidForRequestSpell(GInterfaceStatus* status, SPELL_SEED_TYPE type);
	// BW1W120 0064bf40 BW1M119 0149afe0
	WorshipSpellIcon* FindBestSpellIconForSpellSeed(GInterfaceStatus* status, SPELL_SEED_TYPE type);
	// BW1W120 0064bff0 BW1M119 null
	MapCoords GetCreatureHomePos();
	// BW1W120 0064c090 BW1M119 0149af00
	void AddTown(Town* town);
	// BW1W120 0064c0e0 BW1M119 0149ad50
	void RemoveTown(Town* town);
	// BW1W120 0064c170 BW1M119 01032f90
	void Draw();
	// BW1W120 0064c1d0 BW1M119 0106fad0
	void DrawComuterPlayer();
	// BW1W120 0064c200 BW1M119 null
	void ClearMagicTypesEnabled();
	// BW1W120 0064c220 BW1M119 0149aa30
	bool32_t IsMagicTypeEnabled(MAGIC_TYPE type);
	// BW1W120 0064c250 BW1M119 0149a9d0
	void SetMagicTypeEverBeenEnabled(MAGIC_TYPE type);
	// BW1W120 0064c260 BW1M119 0149a970
	bool32_t HasMagicTypeEverBeenEnabled(MAGIC_TYPE type);
	// BW1W120 0064c270 BW1M119 0149a830
	MAGIC_TYPE GetNextMagicTypeToEnable();
	// BW1W120 0064c300 BW1M119 0149a740
	void SetMagicTypeEnabled(MAGIC_TYPE type, int enable);
	// BW1W120 0064c360 BW1M119 null
	void SetSpellSeedTypeEnabled(SPELL_SEED_TYPE type, int enable);
	// BW1W120 0064c3a0 BW1M119 null
	void SetType(PLAYER_TYPE type);
	// BW1W120 0064c3b0 BW1M119 0149a680
	void SetVirtualInfluence(int enable);
	// BW1W120 0064c400 BW1M119 0149a620
	void ToggleComputerPlayer(int enable);
	// BW1W120 0064cd00 BW1M119 01498500
	void OnEndOfClearMap();
	// BW1W120 0064cd40 BW1M119 014983e0
	MapCoords GetFixedPos();
	// BW1W120 0064cdb0 BW1M119 01498060
	float CalculateDesireToAttack(GPlayer* other);
	// BW1W120 0064d0a0 BW1M119 01497fb0
	unsigned long GetTotalWorshipers();
	// BW1W120 0064d0e0 BW1M119 01497f70
	unsigned long GetTotalPopulation();
	// BW1W120 0064d100 BW1M119 null
	void fn_0064D100(int param_1);
	// BW1W120 0064d110 BW1M119 null
	void fn_0064D110(int param_1);
	// BW1W120 0064d120 BW1M119 01053eb0
	GInterface* GetRealInterface(unsigned long interface_index);
	// BW1W120 0064d130 BW1M119 null
	unsigned long GetTotalNumberOfAbodes();
	// BW1W120 0064d160 BW1M119 null
	Town* GetRandomTown();
	// BW1W120 0064d260 BW1M119 01497cf0
	Town* GetNextTown(Town* town);
	// BW1W120 0064d280 BW1M119 01086560
	void SavePlayerAlignment(unsigned long game_turn);
	// BW1W120 0064d2d0 BW1M119 01497bc0
	void LoadPlayerAlignment();
	// BW1W120 0064d360 BW1M119 01497900
	bool FindNearestPosInsideInfluence(const MapCoords& pos, MapCoords& nearest);
	// BW1W120 0064d530 BW1M119 0105efd0
	GPlayer* GetNextAllyPlayer(GPlayer* player);
	// BW1W120 0064d580 BW1M119 null
	GPlayer* GetNextPlayer(GPlayer* player, bool (GPlayer::*predicate)(GPlayer*));
	// BW1W120 0064d5d0 BW1M119 0105f0d0
	bool IsAllied(GPlayer* other);
	// BW1W120 0064d610 BW1M119 014977c0
	bool32_t CanAllyUseInfluence(GPlayer* other);
	// BW1W120 0064d640 BW1M119 01497720
	void SetAllyValue(GPlayer* other, float value);
	// BW1W120 0064d680 BW1M119 014976b0
	float GetAllyValue(GPlayer* other);
	// BW1W120 0064d6a0 BW1M119 0106ba30
	float GetAlignmentValue();
	// BW1W120 0064d6b0 BW1M119 01497480
	MagicTeleport* FindTeleportBetween(MapCoords& from, MapCoords& to, float max_distance);
	// BW1W120 0064d750 BW1M119 01035c90
	bool32_t IsMemberOfThisPlayer(GInterfaceStatus* status);
	// Packed ARGB scalar, not LH3DColor
	// BW1W120 0064d800 BW1M119 010244e0
	unsigned long GetPlayerColour() const;
	// BW1W120 0064d840 BW1M119 01496fc0
	bool32_t SaveObject(LHOSFile& file, const MapCoords& coords);
	// BW1W120 0064d950 BW1M119 null
	unsigned long GetTotalWoodInStoragePits();
	// BW1W120 0064d9b0 BW1M119 null
	unsigned long GetTotalFoodInStoragePits();
	// BW1W120 0064da10 BW1M119 null
	void SetCondition(int type, int value);
	// BW1W120 0064da80 BW1M119 null
	void AddToCondition(int type, int value);
	// BW1W120 0064daf0 BW1M119 null
	void AddScoreHistory(float score);
	// BW1W120 0055da60 BW1M119 010345c0
	GameStats* GetStats() { return game_stats; }
	// BW1W120 inlined BW1M119 01086250
	Citadel* GetCitadel() { return citadel.Get(); }
	// BW1W120 inlined BW1M119 010d3fd0
	Creature* GetCreature() { return creature.Get(); }
	// BW1W120 004ea900 BW1M119 012724c0
	void ConsiderMakingCreatureMimicPlayer(GInterfaceStatus* status, DETECTED_PLAYER_ACTION action,
	                                       GameThingWithPos* thing, MAGIC_TYPE magic);
	// BW1W120 004c80f0 BW1M119 0123a2b0
	void MakeCreatureEmpathiseWithPlayerTownDesire(TOWN_DESIRE_INFO param_1, float param_2, const MapCoords& param_3);

	// Static data

	// BW1W120 00d47a28
	static char* CreatureMindData;
	// BW1W120 00d47980
	static unsigned long CreatureMindDataLength;
	// BW1W120 00bff094
	static char* PlayerNameText[_PLAYER_NAME_COUNT + 1];
	// BW1W120 00bff0b8
	static unsigned long PlayerColours[_PLAYER_NAME_COUNT];
};

// BW1W120 0064af60 BW1M119 0149cc30
void ProcessTaunt(unsigned char* data, LHPlayer* player);
// BW1W120 0064af80 BW1M119 0149cbb0
void PlayTauntSample(int taunt);
// BW1W120 0064afb0 BW1M119 0149c820
void ProcessSpeech(unsigned char* data, LHPlayer* player, bool taunt);
// BW1W120 0064b290 BW1M119 0149c640
void ProcessExternalSpeech(char16_t* text, LH_USER_ID id, char16_t* name, unsigned long flags);

// BW1W120 0064d790 BW1M119 01024410
long GetRemapedPlayer(unsigned long player);

#endif /* BW1_DECOMP_PLAYER_INCLUDED_H */
