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

    // BW1W120 00781210 BW1M100 101b5750 TempleChallenge::TempleChallenge(GameOSFile &)
    TempleChallenge(GameOSFile* param_1);

    // Non-virtual methods

    // BW1W120 00781460 BW1M100 101b51f0 TempleChallenge::StartScript(int)
    void StartScript(int param_1);
    // BW1W120 007817a0 BW1M100 101b4310 TempleChallenge::LoadChallenge(GameOSFile &)
    void LoadChallenge(GameOSFile* param_1);
};

class ChallengeRoom: public PictureRoomBase
{
public:

    // Static methods

    // BW1W120 00784b30 BW1M100 101abfe0 ChallengeRoom::CreateChallengeFiles(char*)
    static bool CreateChallengeFiles();

    // Constructors

    // BW1W120 00781a60 BW1M100 101b4180 ChallengeRoom::ChallengeRoom(void)
    ChallengeRoom();

    // Non-virtual methods

    // BW1W120 00784c10 BW1M100 101abd90 ChallengeRoom::StartScript(unsigned long)
    bool StartScript(unsigned long param_1);
    // BW1W120 00784d10 BW1M100 101aba10 ChallengeRoom::ChallengeLoad(GameOSFile &)
    void ChallengeLoad(GameOSFile& file);
};

#endif /* BW1_DECOMP_CHALLENGE_ROOM_INCLUDED_H */
