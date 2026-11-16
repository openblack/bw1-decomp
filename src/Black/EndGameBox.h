#ifndef BW1_DECOMP_END_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_END_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <string.h> /* For memset */

#include "DialogBoxBase.h"        /* For struct DialogBoxBase */
#include "MultiplayerConstants.h" /* For MAX_MULTIPLAYER_PLAYERS */

enum END_GAME_RESULT
{
	END_GAME_RESULT_NONE = 0,
	END_GAME_RESULT_ELIMINATED = 1,
	END_GAME_RESULT_WON = 2,
	END_GAME_RESULT_LOST = 3,
};

#define END_GAME_BOX_NUM_TABS 7

struct GameStatsPackage;
struct SetupBigButton;
struct SetupStaticText;
struct SetupTabButton;
struct SetupVBarGraph;

class EndGameBox : public DialogBoxBase
{
public:
	int  CurrentTab; /* 0x10 */
	bool Showing;    /* 0x14 */
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	SetupTabButton*  Tabs[END_GAME_BOX_NUM_TABS]; /* 0x18 */
	SetupStaticText* ScoreText;                   /* 0x34 */
	SetupStaticText* ResultText;                  /* 0x38 */
	SetupStaticText* TeamText;                    /* 0x3c */
	SetupStaticText* WaitText;                    /* 0x40 */
	SetupStaticText* GraphTitleText;              /* 0x44 */
	SetupVBarGraph*  ScoreGraph;                  /* 0x48 */
	SetupBigButton*  ContinueButton;              /* 0x4c */
	SetupBigButton*  LeaveGameButton;             /* 0x50 */
	SetupBigButton*  WatchButton;                 /* 0x54 */
#else
	uint8_t field_0x18[0x3c];
#endif
	int               PlayerIndex;
	bool              TeamGame;
	bool              InternetLobby;
	bool              GameContinues;         /* 0x5e */
	bool              CreatureUploadStarted; /* 0x5f */
	bool              StatsUploadStarted;    /* 0x60 */
	bool              UploadErrorShown;      /* 0x61 */
	END_GAME_RESULT   Result;
	GameStatsPackage* Package;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	float PlayerScores[MAX_MULTIPLAYER_PLAYERS][4]; /* [player][?] */
	float PlayerTotals[MAX_MULTIPLAYER_PLAYERS];    /* [player]; sum of that player's PlayerScores row */
#endif

	void ShowResult(END_GAME_RESULT result, int player_index, bool team_game, bool internet_lobby,
	                GameStatsPackage* package)
	{
		DialogBoxBase::Hide();
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		for (int i = 0; i < MAX_MULTIPLAYER_PLAYERS; i++)
		{
			memset(PlayerScores[i], 0, sizeof(PlayerScores[i]));
			PlayerTotals[i] = 0.0f;
		}
#endif
		PlayerIndex = player_index;
		InternetLobby = internet_lobby;
		TeamGame = team_game;
		CreatureUploadStarted = false;
		StatsUploadStarted = false;
		UploadErrorShown = false;
		Result = result;
		Package = package;
		Showing = true;
		Show();
	}

	// Override methods

	// BW1W120 0056e160 BW1M119 01324d10
	virtual void Init(uint32_t width, uint32_t height,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0056e730 BW1M119 01324cb0
	virtual void Destroy();
	// BW1W120 0053be30 BW1M119 01324100
	virtual bool CanESCOut() { return false; }
	// BW1W120 0056e740 BW1M119 013247b0
	virtual void InitControls();

	// BW1W120 00d0606c
	static EndGameBox* Instance;

	// BW1W120 0056e130 BW1M119 inlined
	void SetTab(int tab);
	// BW1W120 0056ea90 BW1M119 013245c0
	void SetDisplayableButtons();
	// BW1W120 0056eaf0 BW1M119 inlined
	void SetDisplayableStats();
	// BW1W120 0056ebc0 BW1M119 01324520
	void DatabaseUploadError(SetupBox* box);
	// BW1W120 0056ec00 BW1M119 01324140
	void __stdcall Callback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 0053be40 BW1M119 015cc3c0
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
	{
		if (Instance != NULL)
		{
			Instance->Callback(message, box, control, x, y);
		}
	}
};

#endif /* BW1_DECOMP_END_GAME_BOX_INCLUDED_H */
