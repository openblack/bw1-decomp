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

class GAudio: public GameThing
{
public:
    uint8_t field_0x14[0x394];
    LH_AudioBank* audio_banks[0x2]; /* 0x3a8 */
    uint8_t field_0x3b0[0x24];

    // Override methods

    // win1.41 00426fa0 mac 10179100 GAudio::_dt(void)
    virtual ~GAudio();
    // win1.41 00426fe0 mac 1017ae30 GAudio::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00426f90 mac 101791e0 GAudio::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00428480 mac 10179710 GAudio::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00428310 mac 10179bd0 GAudio::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00426f80 mac 101791a0 GAudio::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Non-virtual methods

    // win1.41 00428ef0 mac 1017c7c0 GAudio::InitAtmos(void)
    void InitAtmos();
    // win1.41 00428f90 mac 1017c710 GAudio::ReleaseAtmosSoundBanks(void)
    void ReleaseAtmosSoundBanks();
    // win1.41 00429d60 mac 100001c0 GAudio::PlaySoundEffect(Base *, unsigned long, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE)
    void PlaySoundEffect(Base* param_1, uint32_t param_2, uint32_t param_3, uint32_t param_4, int param_5, int param_6, AUDIO_SFX_BANK_TYPE param_7);
    // win1.41 00429e30 mac 10020580 GAudio::PlaySoundEffect(LH_SamplePlayOptions *)
    uint32_t PlaySoundEffect(LH_SamplePlayOptions* options);
    // win1.41 0042a210 mac 1017e7d0 GAudio::StopPlayingSoundEffect(unsigned long, unsigned long, AUDIO_SFX_BANK_TYPE) const
    void StopPlayingSoundEffect(uint32_t param_1, uint32_t param_2, AUDIO_SFX_BANK_TYPE type);
    // win1.41 0042a330 mac 1017e410 GAudio::ReleaseLoopOnSoundEffect(Base *, unsigned long, AUDIO_SFX_BANK_TYPE) const
    void ReleaseLoopOnSoundEffect(Base* param_1, uint32_t param_2, AUDIO_SFX_BANK_TYPE type);
};

#endif /* BW1_DECOMP_AUDIO_INCLUDED_H */
