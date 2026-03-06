#include "Audio.h"
#include "ThingMusicInfo.h"

// win1.41 00426f80 mac 101791a0 GAudio::GetSaveType(void)
uint32_t GAudio::GetSaveType()
{
    return 0;
}

// win1.41 00426f90 mac 101791e0 GAudio::GetDebugText(void)
char* GAudio::GetDebugText()
{
    return 0;
}

// win1.41 00426fa0 mac 10179100 GAudio::_dt(void)
GAudio::~GAudio()
{
}

// win1.41 00426fe0 mac 1017ae30 GAudio::ToBeDeleted(int)
void GAudio::ToBeDeleted(int param_1)
{
}

// win1.41 00428310 mac 10179bd0 GAudio::Save(GameOSFile &)
bool GAudio::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00428480 mac 10179710 GAudio::Load(GameOSFile &)
bool GAudio::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00428ef0 mac 1017c7c0 GAudio::InitAtmos(void)
void GAudio::InitAtmos()
{
}

// win1.41 00428f90 mac 1017c710 GAudio::ReleaseAtmosSoundBanks(void)
void GAudio::ReleaseAtmosSoundBanks()
{
}

// win1.41 00429300 mac 1017c940 ThingMusicInfo::GetSaveType(void)
uint32_t ThingMusicInfo::GetSaveType()
{
    return 0;
}

// win1.41 00429310 mac 1017c980 ThingMusicInfo::GetDebugText(void)
char* ThingMusicInfo::GetDebugText()
{
    return 0;
}

// win1.41 00429320 mac 1017c8b0 ThingMusicInfo::_dt(void)
ThingMusicInfo::~ThingMusicInfo()
{
}

// win1.41 00429950 mac 1017cc10 ThingMusicInfo::Save(GameOSFile &)
bool ThingMusicInfo::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00429ae0 mac 1017c9c0 ThingMusicInfo::Load(GameOSFile &)
bool ThingMusicInfo::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00429d60 mac 100001c0 GAudio::PlaySoundEffect(Base *, unsigned long, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE)
void GAudio::PlaySoundEffect(Base* param_1, uint32_t param_2, uint32_t param_3, uint32_t param_4, int param_5, int param_6, AUDIO_SFX_BANK_TYPE param_7)
{
}

// win1.41 00429e30 mac 10020580 GAudio::PlaySoundEffect(LH_SamplePlayOptions *)
uint32_t GAudio::PlaySoundEffect(LH_SamplePlayOptions* options)
{
    return 0;
}

// win1.41 0042a210 mac 1017e7d0 GAudio::StopPlayingSoundEffect(unsigned long, unsigned long, AUDIO_SFX_BANK_TYPE) const
void GAudio::StopPlayingSoundEffect(uint32_t param_1, uint32_t param_2, AUDIO_SFX_BANK_TYPE type)
{
}

// win1.41 0042a330 mac 1017e410 GAudio::ReleaseLoopOnSoundEffect(Base *, unsigned long, AUDIO_SFX_BANK_TYPE) const
void GAudio::ReleaseLoopOnSoundEffect(Base* param_1, uint32_t param_2, AUDIO_SFX_BANK_TYPE type)
{
}
