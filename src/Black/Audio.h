#ifndef BW1_DECOMP_AUDIO_INCLUDED_H
#define BW1_DECOMP_AUDIO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/AudioSFX.h> /* For enum AUDIO_SFX_BANK_TYPE */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;
struct LH_AudioBank;
struct LH_SamplePlayOptions;

class GAudio : public GameThing
{
public:
	// BW1W120 004291b0 BW1M119 01187100
	void ReleaseAllThingMusicInfo();
	// BW1W120 00426ca0 BW1M119 01184a10
	void          Reset();
	uint8_t       field_0x14[0x394];
	LH_AudioBank* AudioBanks[0x2]; /* 0x3a8 */
	uint8_t       field_0x3b0[0x24];

	// Override methods

	// BW1W120 00426fa0 BW1M119 011821f0
	virtual ~GAudio();
	// BW1W120 00426fe0 BW1M119 01184460
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00426f90 BW1M119 011822d0
	virtual char* GetDebugText();
	// BW1W120 00428480 BW1M119 011828a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00428310 BW1M119 01182e00
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00426f80 BW1M119 01182290
	virtual uint32_t GetSaveType();

	// Non-virtual methods

	// BW1W120 00427080 BW1M119 0107f9b0
	void ProcessAudioGameTurn();
	// BW1W120 004286c0 BW1M119 01182590
	void AtmosProcess(int param_1);

	// BW1W120 00428ef0 BW1M119 01185ba0
	void InitAtmos();
	// BW1W120 00428f90 BW1M119 01185ae0
	void ReleaseAtmosSoundBanks();
	// BW1W120 00429d60 BW1M119 010001c0
	void PlaySoundEffect(Base* param_1, uint32_t param_2, uint32_t param_3, uint32_t param_4, int param_5, int param_6,
	                     AUDIO_SFX_BANK_TYPE param_7);
	// BW1W120 00429e30 BW1M119 010230f0
	void PlaySoundEffect(LH_SamplePlayOptions* options);
	// BW1W120 0042a210 BW1M119 01187ba0
	void StopPlayingSoundEffect(uint32_t param_1, uint32_t param_2, AUDIO_SFX_BANK_TYPE type) const;
	// BW1W120 0042a330 BW1M119 011877f0
	void ReleaseLoopOnSoundEffect(Base* param_1, uint32_t param_2, AUDIO_SFX_BANK_TYPE type) const;
};

#endif /* BW1_DECOMP_AUDIO_INCLUDED_H */
