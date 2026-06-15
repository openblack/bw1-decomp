#ifndef BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H
#define BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "PictureRoom.h" /* For struct PictureRoomBase */

// Forward Declares

class GameOSFile;

struct TempleChallenge
{
    uint8_t field_0x0[0xd8];

    // Constructors

    // win1.41 00781210 mac 101b5750 TempleChallenge::TempleChallenge(GameOSFile &)
    TempleChallenge(GameOSFile* param_1);

    // Non-virtual methods

    // win1.41 00781460 mac 101b51f0 TempleChallenge::StartScript(int)
    void StartScript(int param_1);
    // win1.41 007817a0 mac 101b4310 TempleChallenge::LoadChallenge(GameOSFile &)
    void LoadChallenge(GameOSFile* param_1);
};

class ChallengeRoom: public PictureRoomBase
{
public:

    // Static methods

    // win1.41 00784b30 mac 101abfe0 ChallengeRoom::CreateChallengeFiles(char*)
    static bool CreateChallengeFiles();

    // Constructors

    // win1.41 00781a60 mac 101b4180 ChallengeRoom::ChallengeRoom(void)
    ChallengeRoom();

    // Non-virtual methods

    // win1.41 00784c10 mac 101abd90 ChallengeRoom::StartScript(unsigned long)
    bool StartScript(unsigned long param_1);
    // win1.41 00784d10 mac 101aba10 ChallengeRoom::ChallengeLoad(GameOSFile &)
    void ChallengeLoad(GameOSFile* param_1);
};

#endif /* BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H */
