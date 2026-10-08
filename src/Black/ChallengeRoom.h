#ifndef BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H
#define BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For uint8_t */
#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "chlasm/ScriptChallengeEnums.h" /* For enum ScriptChallengeEnums */
#include "PictureRoom.h"                 /* For struct PictureRoomBase */
#include "ScriptDLL.h"                   /* For enum VMType */

// Forward Declares

class GameOSFile;

struct SnapShotData
{
	ScriptChallengeEnums Challenge;
	char*                ScriptName;
	uint32_t             HelpText;
	float                Alignment;
	float                Success;
	LHPoint              Position;
	LHPoint              Focus;
	uint32_t             Type; // SNAPSHOT's quest/challenge keyword
};

struct TempleChallenge
{
	uint8_t field_0x0[0xd8];

	// Constructors

	// BW1W120 00781210 BW1M119 011be570
	TempleChallenge(GameOSFile& param_1);

	// Non-virtual methods

	// BW1W120 00781460 BW1M119 011be010
	void StartScript(int param_1);
	// BW1W120 007817a0 BW1M119 011bd0c0
	void LoadChallenge(GameOSFile& param_1);
	// BW1W120 007813b0 BW1M119 011be190
	LHPoint GetPosition() const;
	// BW1W120 007813f0 BW1M119 011be100
	float GetSuccess() const;
};

class ChallengeRoom : public PictureRoomBase
{
public:
	// BW1W120 00784de0 BW1M119 011b4630
	static void ChallengeClear();
	// BW1W120 00784f30 BW1M119 011b4150
	static unsigned long GetNumOfChallenges();
	// BW1W120 00784f40 BW1M119 011b3fd0
	static TempleChallenge* GetChallengeAtPosition(unsigned long position);
	// Static methods

	// BW1W120 00784b30 BW1M119 011b4de0
	static bool32_t CreateChallengeFiles(char* path);

	// Constructors

	// BW1W120 00781a60 BW1M119 011bcf60
	ChallengeRoom();

	// Non-virtual methods

	// BW1W120 00784c10 BW1M119 011b4b90
	bool StartScript(unsigned long param_1);
	// BW1W120 00784d10 BW1M119 011b4810
	void ChallengeLoad(GameOSFile& file);
	// BW1W120 00784780 BW1M119 011b5180
	void UpdateChallenge(SnapShotData& data, unsigned long count, void** values, VMType* types, int take_picture);
	// BW1W120 00784c70 BW1M119 011b4a70
	void ChallengeSave(GameOSFile& file);
};

#endif /* BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H */
