#include "LHAudioLog.h"

#define FILEPATH LH_AUDIO_SOURCE_DIRECTORY "LHAudioRedbook.cpp"

#define LH_REDBOOK_VOLUME_MAX       127
#define LH_REDBOOK_VOLUME_UNKNOWN   (-1)
#define LH_REDBOOK_VOLUME_SHIFT     9
#define LH_REDBOOK_MIXER_VOLUME_MAX 0xffff
#define LH_REDBOOK_VOLUME_SCALE     (LH_REDBOOK_MIXER_VOLUME_MAX / LH_REDBOOK_VOLUME_MAX)

static DWORD                        RedbookOriginalVolume;
static bool32_t                     RedbookPlaying;
static unsigned long                RedbookTracks;
static HMIXER                       RedbookMixer;
static MCIDEVICEID                  RedbookDevice;
static MMRESULT                     RedbookMixerResult;
static MIXERCONTROL                 RedbookVolumeControl;
static MIXERLINE                    RedbookMixerLine;
static MIXERLINECONTROLS            RedbookLineControls;
static MIXERCONTROLDETAILS          RedbookControlDetails;
static MIXERCONTROLDETAILS_UNSIGNED RedbookVolumeDetails;

static long RedbookVolume = LH_REDBOOK_VOLUME_UNKNOWN;

bool32_t LH_AudioSystem::LHRedbookOpen()
{
	MCI_OPEN_PARMS   openParms;
	MCI_SET_PARMS    setParms;
	MCI_STATUS_PARMS statusParms;

	if (RedbookInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_REDBOOK_OPEN_ALREADY_INSTALLED, 33);
		return false;
	}

	openParms.lpstrDeviceType = "cdaudio";
	if (mciSendCommand(0, MCI_OPEN, MCI_OPEN_TYPE, (DWORD)&openParms))
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_REDBOOK_OPEN_MCI_OPEN, 41);
		return false;
	}
	RedbookDevice = openParms.wDeviceID;

	setParms.dwTimeFormat = MCI_FORMAT_TMSF;
	if (mciSendCommand(RedbookDevice, MCI_SET, MCI_SET_TIME_FORMAT, (DWORD)&setParms))
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_REDBOOK_OPEN_MCI_SET_TIME_FORMAT, 51);
		mciSendCommand(RedbookDevice, MCI_CLOSE, 0, 0);
		return false;
	}

	statusParms.dwItem = MCI_STATUS_NUMBER_OF_TRACKS;
	mciSendCommand(RedbookDevice, MCI_STATUS, MCI_WAIT | MCI_STATUS_ITEM, (DWORD)&statusParms);
	RedbookTracks = statusParms.dwReturn;

	RedbookMixerResult = mixerOpen(&RedbookMixer, 0, 0, 0, 0);
	if (RedbookMixerResult == MMSYSERR_NOERROR)
	{
		memset(&RedbookMixerLine, 0, sizeof(RedbookMixerLine));
		RedbookMixerLine.cbStruct = sizeof(RedbookMixerLine);
		RedbookMixerLine.dwComponentType = MIXERLINE_COMPONENTTYPE_SRC_COMPACTDISC;
		RedbookMixerResult =
			mixerGetLineInfo((HMIXEROBJ)RedbookMixer, &RedbookMixerLine, MIXER_GETLINEINFOF_COMPONENTTYPE);
		if (RedbookMixerResult == MMSYSERR_NOERROR)
		{
			memset(&RedbookLineControls, 0, sizeof(RedbookLineControls));
			RedbookLineControls.dwLineID = RedbookMixerLine.dwLineID;
			RedbookLineControls.pamxctrl = &RedbookVolumeControl;
			RedbookLineControls.cbmxctrl = sizeof(RedbookVolumeControl);
			memset(&RedbookVolumeControl, 0, sizeof(RedbookVolumeControl));
			RedbookVolumeControl.cbStruct = sizeof(RedbookVolumeControl);
			RedbookLineControls.cbStruct = sizeof(RedbookLineControls);
			RedbookLineControls.dwControlType = MIXERCONTROL_CONTROLTYPE_VOLUME;
			RedbookLineControls.cControls = 1;
			RedbookMixerResult =
				mixerGetLineControls((HMIXEROBJ)RedbookMixer, &RedbookLineControls, MIXER_GETLINECONTROLSF_ONEBYTYPE);
			if (RedbookMixerResult == MMSYSERR_NOERROR)
			{
				memset(&RedbookControlDetails, 0, sizeof(RedbookControlDetails));
				RedbookControlDetails.cbStruct = sizeof(RedbookControlDetails);
				RedbookControlDetails.cbDetails = sizeof(RedbookVolumeDetails);
				RedbookControlDetails.dwControlID = RedbookVolumeControl.dwControlID;
				RedbookControlDetails.paDetails = &RedbookVolumeDetails;
				RedbookControlDetails.cChannels = 1;
				RedbookMixerResult = mixerGetControlDetails((HMIXEROBJ)RedbookMixer, &RedbookControlDetails,
				                                            MIXER_GETCONTROLDETAILSF_VALUE);
				if (RedbookMixerResult == MMSYSERR_NOERROR)
				{
					RedbookOriginalVolume = RedbookVolumeDetails.dwValue;
					RedbookVolume = RedbookVolumeDetails.dwValue >> LH_REDBOOK_VOLUME_SHIFT;
				}
				else
				{
					mixerClose(RedbookMixer);
					RedbookMixer = NULL;
				}
			}
			else
			{
				mixerClose(RedbookMixer);
				RedbookMixer = NULL;
			}
		}
		else
		{
			mixerClose(RedbookMixer);
			RedbookMixer = NULL;
		}
	}
	else
	{
		RedbookMixer = NULL;
	}
	RedbookInstalled = true;
	RedbookActive = true;
	return true;
}

void LH_AudioSystem::LHRedbookClose()
{
	if (!RedbookInstalled)
	{
		return;
	}

	mciSendCommand(RedbookDevice, MCI_STOP, 0, 0);
	if (RedbookMixer)
	{
		RedbookVolumeDetails.dwValue = RedbookOriginalVolume;
		memset(&RedbookControlDetails, 0, sizeof(RedbookControlDetails));
		RedbookControlDetails.cbStruct = sizeof(RedbookControlDetails);
		RedbookControlDetails.cbDetails = sizeof(RedbookVolumeDetails);
		RedbookControlDetails.dwControlID = RedbookVolumeControl.dwControlID;
		RedbookControlDetails.paDetails = &RedbookVolumeDetails;
		RedbookControlDetails.cChannels = 1;
		RedbookMixerResult =
			mixerSetControlDetails((HMIXEROBJ)RedbookMixer, &RedbookControlDetails, MIXER_SETCONTROLDETAILSF_VALUE);
		mixerClose(RedbookMixer);
	}
	mciSendCommand(RedbookDevice, MCI_CLOSE, 0, 0);
	RedbookInstalled = false;
	RedbookActive = false;
}

unsigned long LH_AudioSystem::LHRedbookPlay(unsigned long from_track, unsigned long to_track, unsigned long flags)
{
	MCI_STATUS_PARMS statusParms;
	MCI_PLAY_PARMS   playParms;

	if (!RedbookInstalled || !SystemInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_REDBOOK_PLAY_NOT_INSTALLED, 184);
		return false;
	}
	if (!RedbookActive)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_REDBOOK_PLAY_SWITCHED_OFF, 190);
		return false;
	}
	if (RedbookPlaying)
	{
		LHRedbookStop();
	}

	statusParms.dwItem = MCI_STATUS_NUMBER_OF_TRACKS;
	mciSendCommand(RedbookDevice, MCI_STATUS, MCI_WAIT | MCI_STATUS_ITEM, (DWORD)&statusParms);
	RedbookTracks = statusParms.dwReturn;
	if (from_track > to_track || from_track > RedbookTracks || to_track > RedbookTracks || from_track == 0 ||
	    to_track == 0 || RedbookTracks == 0)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_REDBOOK_PLAY_INVALID_TRACK, 208);
		return false;
	}

	statusParms.dwItem = MCI_STATUS_LENGTH;
	statusParms.dwTrack = to_track;
	if (mciSendCommand(RedbookDevice, MCI_STATUS, MCI_STATUS_ITEM | MCI_TRACK, (DWORD)&statusParms))
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_REDBOOK_PLAY_TIME_SETTING, 217);
		return false;
	}

	memset(&playParms, 0, sizeof(playParms));
	playParms.dwFrom = MCI_MAKE_TMSF(from_track, 0, 0, 0);
	playParms.dwTo = MCI_MAKE_TMSF(to_track, MCI_MSF_MINUTE(statusParms.dwReturn), MCI_MSF_SECOND(statusParms.dwReturn),
	                               MCI_MSF_FRAME(statusParms.dwReturn));
	if (mciSendCommand(RedbookDevice, MCI_PLAY, MCI_FROM | MCI_TO, (DWORD)&playParms))
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_REDBOOK_PLAY_MCI_PLAY, 233);
		return false;
	}

	RedbookPlaying = true;
	return true;
}

void LH_AudioSystem::LHRedbookStop()
{
	if (RedbookInstalled && RedbookActive && RedbookPlaying && SystemInstalled)
	{
		mciSendCommand(RedbookDevice, MCI_STOP, 0, 0);
		RedbookPlaying = false;
	}
}

bool32_t LH_AudioSystem::LHRedbookIsInstalled()
{
	return RedbookInstalled;
}

bool32_t LH_AudioSystem::LHRedbookIsActive()
{
	return RedbookActive;
}

void LH_AudioSystem::LHRedbookSwitch(unsigned long on)
{
	if (RedbookInstalled && SystemInstalled)
	{
		if (on == false)
		{
			LHRedbookStop();
			RedbookActive = false;
		}
		else if (on == true)
		{
			RedbookActive = on;
		}
	}
}

void LH_AudioSystem::LHRedbookSetVolume(long volume)
{
	if (!RedbookInstalled || !RedbookMixer || !SystemInstalled)
	{
		return;
	}
	if (volume > LH_REDBOOK_VOLUME_MAX)
	{
		volume = LH_REDBOOK_VOLUME_MAX;
	}
	else if (volume < 0)
	{
		volume = 0;
	}
	if (volume == RedbookVolume)
	{
		return;
	}

	RedbookVolumeDetails.dwValue = volume * LH_REDBOOK_VOLUME_SCALE;
	memset(&RedbookControlDetails, 0, sizeof(RedbookControlDetails));
	RedbookControlDetails.cbStruct = sizeof(RedbookControlDetails);
	RedbookControlDetails.cbDetails = sizeof(RedbookVolumeDetails);
	RedbookControlDetails.dwControlID = RedbookVolumeControl.dwControlID;
	RedbookControlDetails.paDetails = &RedbookVolumeDetails;
	RedbookControlDetails.cChannels = 1;
	RedbookMixerResult =
		mixerSetControlDetails((HMIXEROBJ)RedbookMixer, &RedbookControlDetails, MIXER_SETCONTROLDETAILSF_VALUE);
	if (RedbookMixerResult == MMSYSERR_NOERROR)
	{
		RedbookVolume = volume;
	}
}

unsigned long LH_AudioSystem::LHRedbookGetVolume()
{
	return RedbookVolume;
}

unsigned int LH_AudioSystem::LHRedbookGetHandle()
{
	return RedbookDevice;
}

unsigned long LH_AudioSystem::LHRedbookGetNumberOfTracks()
{
	if (RedbookInstalled && SystemInstalled)
	{
		MCI_STATUS_PARMS statusParms;
		statusParms.dwItem = MCI_STATUS_NUMBER_OF_TRACKS;
		mciSendCommand(RedbookDevice, MCI_STATUS, MCI_WAIT | MCI_STATUS_ITEM, (DWORD)&statusParms);
		return statusParms.dwReturn;
	}
	return 0;
}
