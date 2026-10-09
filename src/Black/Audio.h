#ifndef BW1_DECOMP_AUDIO_INCLUDED_H
#define BW1_DECOMP_AUDIO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/AudioMusic.h>                            /* For enum MUSIC_TYPE */
#include <chlasm/AudioSFX.h>                              /* For enum AUDIO_SFX_BANK_TYPE */
#include <chlasm/Enum.h>                                  /* For enum DISCRETE_ALIGNMENT_VALUES, enum TRIBE_TYPE */
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h> /* For struct LH_SamplePlayOptions */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>           /* For class LHLinkedList */
#include <re_common.h>                                    /* For bool32_t */

#include "GameThing.h" /* For struct GameThing */

enum IMPACT_SOUND_LEVEL
{
	IMPACT_SOUND_LEVEL_HEAVY = 1,
	IMPACT_SOUND_LEVEL_MEDIUM = 2,
	IMPACT_SOUND_LEVEL_LIGHT = 3,
};

enum IMPACT_SOUND_HITTER
{
	IMPACT_SOUND_HITTER_ABODE = 19,
	IMPACT_SOUND_HITTER_STONE = 22,
};

enum IMPACT_SOUND_TARGET
{
	IMPACT_SOUND_TARGET_BUILDING = 9,
	IMPACT_SOUND_TARGET_GROUND = 16,
};

enum IMPACT_SOUND_EVENT
{
	IMPACT_SOUND_EVENT_ABODE_NIGHT = 71,
	IMPACT_SOUND_EVENT_ABODE_AFTERNOON = 72,
	IMPACT_SOUND_EVENT_ABODE_MORNING = 73,
	IMPACT_SOUND_EVENT_ABODE_EVENING = 74,
	IMPACT_SOUND_EVENT_COLLISION = 75,
	IMPACT_SOUND_EVENT_KICK = 150,
};

enum ANIM_SOUND_VOICE
{
	ANIM_SOUND_VOICE_MALE = 1,
	ANIM_SOUND_VOICE_FEMALE = 2,
	ANIM_SOUND_VOICE_CHILD = 3,
};

enum ANIM_SOUND_TYPE
{
	ANIM_SOUND_TYPE_VOICE = 1,
};

enum ANIM_SOUND_SOURCE
{
	ANIM_SOUND_ACTION = 2,
};

enum ANIM_SOUND_EVENT
{
	ANIM_SOUND_EVENT_SPEECH = 4,
	ANIM_SOUND_EVENT_BANTER_AT_HOME = 0x92,
	ANIM_SOUND_EVENT_BANTER_1 = 0x93,
	ANIM_SOUND_EVENT_BANTER_2 = 0x94,
};

// Number of values in the key passed to GAudio::SamplePlayAnimEffect.
#define SOUND_KEY_LENGTH 5

#define NUM_ATMOS_TYPES 14

// Forward Declares

class Base;
class GameOSFile;
class LH_AudioBank;
class LH_AudioSystem;
class LH_MusicPlayOptions;
class ThingMusicInfo;
class Town;
struct LH_MusicInfo;
struct LH_SampleInfo;
struct LHPoint;
struct MapCoords;

class GAudio : public GameThing
{
public:
	LH_AudioSystem*               AudioSystem;
	unsigned long*                MusicStyleChunks;
	MUSIC_TYPE                    CurrentMusicType;
	unsigned long                 AlignMusicRepeatCount;
	MUSIC_TYPE                    LastAlignMusicType;
	MUSIC_TYPE                    ScriptMusicType;
	LH_AudioBank*                 MusicBanks[MUSIC_TYPE_LAST];
	bool32_t                      ScriptMusicPlaying;
	LHLinkedList<ThingMusicInfo*> ThingMusicList;
	Town*                         CurrentTown;
	float                         Alignment;
	LH_AudioBank*                 AtmosBanks[NUM_ATMOS_TYPES];
	float                         AtmosTargetVolumes[NUM_ATMOS_TYPES];
	float                         AtmosVolumes[NUM_ATMOS_TYPES];
	bool32_t                      AtmosBanksLoaded;
	LH_SamplePlayOptions          SamplePlayOptions;
	LH_AudioBank*                 AudioBanks[AUDIO_SFX_BANK_TYPE_LAST];

	// Static methods

	// BW1W120 00426c40 BW1M119 01184b70
	static bool32_t IsUsingBouncingBall();

	// Constructors

	// BW1W120 00426d40 BW1M119 011845a0
	GAudio();

	// Override methods

	// BW1W120 00426f80 BW1M119 01182290
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GMAGIC_HAND_2; }
	// BW1W120 00426f90 BW1M119 011822d0
	virtual char* GetDebugText() { return "GAudio:"; }
	// BW1W120 00426fe0 BW1M119 01184460
	virtual void ToBeDeleted(int delete_now);
	// BW1W120 00428480 BW1M119 011828a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00428310 BW1M119 01182e00
	virtual uint32_t Save(GameOSFile& file);

	// Non-virtual methods

	// BW1W120 00426c80 BW1M119 inlined
	MUSIC_ALIGNMENT GetMusicAlignment(DISCRETE_ALIGNMENT_VALUES alignment);
	// BW1W120 00426ca0 BW1M119 01184a10
	void Reset();
	// BW1W120 00426d30 BW1M119 011849b0
	bool32_t IsInstalled();
	// BW1W120 00427080 BW1M119 0107f9b0
	void ProcessAudioGameTurn();
	// BW1W120 004270d0 BW1M119 01029fc0
	void Update3DAudioPositions();
	// BW1W120 00427410 BW1M119 inlined
	MUSIC_TYPE GetTownMusicType(MUSIC_ALIGNMENT alignment, TRIBE_TYPE tribe);
	// BW1W120 00427430 BW1M119 inlined
	MUSIC_TYPE GetChantMusicType(TRIBE_TYPE tribe, unsigned long num_dancers);
	// BW1W120 00427460 BW1M119 0107cae0
	MUSIC_TYPE GetMusicType(const MapCoords& coords);
	// BW1W120 00427590 BW1M119 01183cd0
	void PlayFightMusic();
	// BW1W120 00427660 BW1M119 0107e290
	bool32_t ProcessFightMusic();
	// BW1W120 00427790 BW1M119 01023a40
	bool32_t ProcessChantMusic();
	// BW1W120 004279a0 BW1M119 inlined
	void AlignmentMusicFinished();
	// BW1W120 004279c0 BW1M119 01026f80
	bool32_t ProcessAlignMusic();
	// BW1W120 00427b60 BW1M119 0108d9d0
	bool32_t ProcessCitadelMusic();
	// BW1W120 00427c90 BW1M119 inlined
	MUSIC_TYPE GetScriptMusicType(MUSIC_ALIGNMENT alignment);
	// BW1W120 00427ca0 BW1M119 0108b2c0
	bool32_t ProcessScriptMusic();
	// BW1W120 00427df0 BW1M119 01080310
	void ProcessMusic();
	// BW1W120 00427ec0 BW1M119 01089440
	bool32_t ProcessCreatureDanceMusic();
	// BW1W120 00428190 BW1M119 inlined
	void ResetMusicStyleChunks();
	// BW1W120 004281c0 BW1M119 01183330
	void StoreMusicStyleChunks();
	// BW1W120 00428230 BW1M119 011832d0
	void StartScriptMusic(MUSIC_TYPE type);
	// BW1W120 00428250 BW1M119 01183210
	void RegistrySetup();
	// BW1W120 004282b0 BW1M119 01183160
	void RegistryShutdown();
	// BW1W120 004282f0 BW1M119 0108d980
	bool32_t IsInsideCitadel() const;
	// BW1W120 00428600 BW1M119 01182840
	void SampleSetMasterVolume(unsigned long volume);
	// BW1W120 00428620 BW1M119 011827e0
	LH_AudioBank* BankRegister(char* filename, unsigned char mode);
	// BW1W120 00428640 BW1M119 01182780
	void BankRelease(LH_AudioBank* bank);
	// BW1W120 00428660 BW1M119 01182720
	void MusicSetMasterVolume(unsigned long volume);
	// BW1W120 00428680 BW1M119 011826c0
	unsigned long SampleGetMasterVolume();
	// BW1W120 00428690 BW1M119 01182660
	long MusicGetMasterVolume();
	// BW1W120 004286a0 BW1M119 011825f0
	LH_MusicInfo* MusicPlay(LH_MusicPlayOptions* options);
	// BW1W120 004286c0 BW1M119 01182590
	void AtmosProcess(bool32_t active);
	// BW1W120 004286e0 BW1M119 null
	bool32_t MusicIsActive();
	// BW1W120 004286f0 BW1M119 null
	void MusicSwitch(unsigned long on);
	// BW1W120 00428710 BW1M119 null
	void Shutdown();
	// BW1W120 00428720 BW1M119 01182530
	void GlobalSwitch(unsigned long on);
	// BW1W120 00428740 BW1M119 0108c9c0
	LH_SampleInfo* SampleSetPitch(LH_AudioBank* bank, unsigned long object, unsigned long sample, unsigned long pitch);
	// BW1W120 00428760 BW1M119 null
	LH_SampleInfo* SampleSet3DPosition(LH_AudioBank* bank, unsigned long object, unsigned long sample, float x, float y,
	                                   float z, bool32_t relative);
	// BW1W120 00428790 BW1M119 011823d0
	LH_SampleInfo* SampleSet3DPosition(LH_SampleInfo* info, float x, float y, float z, bool32_t relative);
	// BW1W120 004287c0 BW1M119 01182370
	unsigned int RedbookGetHandle();
	// BW1W120 004287d0 BW1M119 01182310
	void StopAllSamples();

	// BW1W120 00428ef0 BW1M119 01185ba0
	void InitAtmos();
	// BW1W120 00428f90 BW1M119 01185ae0
	void ReleaseAtmosSoundBanks();
	// BW1W120 00428fe0 BW1M119 0102f440
	void ProcessAtmosBanks();
	// BW1W120 00429100 BW1M119 0108dc20
	void CalculateAtmosTargetVolumes();

	// BW1W120 004291b0 BW1M119 01187100
	void ReleaseAllThingMusicInfo();
	// BW1W120 00429700 BW1M119 0108ead0
	void ValidateThingMusic();
	// BW1W120 00429790 BW1M119 0108ec10
	bool32_t ProcessThingMusic();
	// BW1W120 00429cb0 BW1M119 01188200
	void InitSFX();
	// BW1W120 0042a370 BW1M119 011876f0
	void ReleaseSFXBanks();
	// BW1W120 00429d60 BW1M119 010001c0
	void PlaySoundEffect(Base* param_1, uint32_t param_2, uint32_t param_3, uint32_t param_4, int param_5, int param_6,
	                     AUDIO_SFX_BANK_TYPE param_7);
	// BW1W120 00429da0 BW1M119 01000240
	void PlaySoundEffect(Base* param_1, unsigned long param_2, unsigned long param_3, unsigned long param_4,
	                     int param_5, int param_6, LH_AudioBank* bank);
	// BW1W120 00429e30 BW1M119 010230f0
	void PlaySoundEffect(LH_SamplePlayOptions* options);
	// BW1W120 0042a000 BW1M119 01187f00
	void PlaySoundEffect(Base* param_1, const LHPoint& pos, uint32_t param_3, uint32_t param_4, uint32_t param_5,
	                     int param_6, int param_7, AUDIO_SFX_BANK_TYPE param_8);
	// BW1W120 0042a4b0 BW1M119 01062bd0
	uint32_t SamplePlayAnimEffect(void* object, float distance, long* sound, int param_4, LH_AudioBank* bank,
	                              int param_6, float param_7, float param_8);
	// BW1W120 0042a210 BW1M119 01187ba0
	void StopPlayingSoundEffect(uint32_t param_1, uint32_t param_2, AUDIO_SFX_BANK_TYPE type) const;
	// BW1W120 0042a330 BW1M119 011877f0
	void ReleaseLoopOnSoundEffect(Base* param_1, uint32_t param_2, AUDIO_SFX_BANK_TYPE type) const;
	// BW1W120 inlined BW1M119 011878b0
	LH_AudioBank* GetBank(AUDIO_SFX_BANK_TYPE type) const { return AudioBanks[type]; }
};
static_assert(sizeof(GAudio) == 0x3d4, "Data type is of wrong size");

#endif /* BW1_DECOMP_AUDIO_INCLUDED_H */
