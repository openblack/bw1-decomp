#ifndef BW1_DECOMP_END_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_END_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <string.h> /* For memset */

#include "DialogBoxBase.h"        /* For struct DialogBoxBase */
#include "MultiplayerConstants.h" /* For MAX_MULTIPLAYER_PLAYERS */

enum END_GAME_RESULT
{
	END_GAME_RESULT_ELIMINATED = 1,
	END_GAME_RESULT_WON = 2,
	END_GAME_RESULT_LOST = 3,
};

struct GameStatsPackage;

class EndGameBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x4];
	bool    Showing;
	uint8_t field_0x15[0x3f];
#ifdef VERSION_BW1W120
	uint8_t field_0x54[4];
#endif
	int               PlayerIndex;
	bool              TeamGame;
	bool              InternetLobby;
	bool              field_0x5e;
	bool              CreatureUploadStarted; /* 0x5f */
	bool              StatsUploadStarted;    /* 0x60 */
	bool              UploadErrorShown;      /* 0x61 */
	END_GAME_RESULT   Result;
	GameStatsPackage* Package;
#ifdef VERSION_BW1W120
	float PlayerScores[MAX_MULTIPLAYER_PLAYERS][4]; /* [player][?] */
	float PlayerTotals[MAX_MULTIPLAYER_PLAYERS];    /* [player]; sum of that player's PlayerScores row */
#endif

	void ShowResult(END_GAME_RESULT result, int player_index, bool team_game, bool internet_lobby,
	                GameStatsPackage* package)
	{
		DialogBoxBase::Hide();
#ifdef VERSION_BW1W120
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
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0056e730 BW1M119 01324cb0
	virtual void Destroy();
	// BW1W120 0053be30 BW1M119 01324100
	virtual bool CanESCOut();
	// BW1W120 0056e740 BW1M119 013247b0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_END_GAME_BOX_INCLUDED_H */
