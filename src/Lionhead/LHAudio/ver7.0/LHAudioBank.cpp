#include <stdio.h> /* For sprintf */

#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For LHReleasedFile */

#include "LHAudioLog.h"
#include "LH_AudioBank.h"
#include "LH_BankSample.h"
#include "MPGAudioDecoder.h"

#define FILEPATH LH_AUDIO_SOURCE_DIRECTORY "LHAudioBank.cpp"

LH_AudioBank::LH_AudioBank()
{
	UsingHeap = false;
	NumberOfSamples = 0;
	MusicBank = false;
	NumberOfAtmosSamples = 0;
	DataStart = NULL;
	Samples = NULL;
	File = new LHReleasedFile;
	AnimArrayWaveNumbers = NULL;
	AnimArray = NULL;
	Decoder = NULL;
	AtmosGroup = 0;
}

LH_AudioBank::~LH_AudioBank()
{
	if (UsingHeap && File->opened)
	{
		File->Close();
	}
	else if (DataStart != NULL && !UsingHeap)
	{
		free(DataStart);
	}
	if (Samples != NULL)
	{
		delete[] Samples;
	}
	delete File;
	if (AnimArray != NULL)
	{
		free(AnimArray);
	}
	if (AnimArrayWaveNumbers != NULL)
	{
		free(AnimArrayWaveNumbers);
	}
	AnimArray = NULL;
	MPGAudioDecoder* decoder = Decoder;
	if (decoder != NULL)
	{
		decoder->close();
		delete decoder;
	}
}

LH_AudioBank* LH_AudioSystem::LHBankRegister(char* filename, unsigned char mode)
{
	if (!WaveInstalled || !SystemInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_BANK_REGISTER_NOT_INSTALLED, 63);
		return NULL;
	}
	if (filename == NULL)
	{
		return NULL;
	}

	LH_AudioBank* bank = new LH_AudioBank;
	if (bank == NULL)
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_BANK_ALLOCATION, 77, filename);
		return NULL;
	}

	bank->File->SetName(filename);
	if (bank->File->Open(LH_FILE_MODE_READ_ONLY))
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_OPEN_BANK, 85, filename);
		delete bank;
		return NULL;
	}

	if (bank->File->OpenSegment(LHFileSegmentBankInfo))
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_OPEN_SEGMENT, 92, filename);
		delete bank;
		return NULL;
	}
	bank->File->ReadLong();
	bank->File->ReadLong();
	bank->MusicBank = bank->File->ReadLong();

	if (bank->File->OpenSegment(LHFileSegmentWaveData))
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_OPEN_SEGMENT, 117, filename);
		delete bank;
		return NULL;
	}
	if (mode == LH_BANK_MODE_PRELOAD)
	{
		uint32_t size = bank->File->GetSegmentSize();
		void*    data = malloc(size);
		if (data == NULL)
		{
			LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_PRELOAD_ALLOCATION, 129, filename);
			bank->File->CloseSegment();
			bank->File->Close();
			delete bank;
			return NULL;
		}
		if (bank->File->GetSegmentData(data, size, -1))
		{
			LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_GET_SEGMENT_DATA, 138, filename);
			bank->File->CloseSegment();
			bank->File->Close();
			delete bank;
			return NULL;
		}
		bank->UsingHeap = false;
		bank->DataStart = data;
		bank->AtmosVolume = 0;
		sprintf(bank->FileName, filename);
	}
	else if (HeapInstalled)
	{
		bank->UsingHeap = true;
		bank->AtmosVolume = 0;
		sprintf(bank->FileName, filename);
	}
	else
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_BANK_REGISTER_HEAP_NOT_INSTALLED, 161);
		bank->File->CloseSegment();
		bank->File->Close();
		delete bank;
		return NULL;
	}
	bank->File->CloseSegment();

	if (bank->File->OpenSegment(LHFileSegmentBankSampleTable))
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_OPEN_SEGMENT, 174, filename);
		bank->File->Close();
		delete bank;
		return NULL;
	}
	unsigned long counts = bank->File->ReadLong();
	unsigned long atmosSamples = LH_AUDIO_HIGH_WORD(counts);
	unsigned long samples = LH_AUDIO_LOW_WORD(counts);
	bank->Samples = new LH_BankSample[samples];
	if (bank->Samples == NULL)
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_SAMPLE_TABLE_ALLOCATION, 188, filename);
		bank->File->CloseSegment();
		bank->File->Close();
		delete bank;
		return NULL;
	}
	if (bank->File->GetSegmentData(bank->Samples, samples * sizeof(LH_BankSample), -1))
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_GET_SEGMENT_DATA, 197, filename);
		bank->File->CloseSegment();
		bank->File->Close();
		delete bank;
		return NULL;
	}
	bank->NumberOfSamples = samples;
	bank->NumberOfAtmosSamples = atmosSamples;
	if (atmosSamples > 0)
	{
		LHAtmosAddBank(bank);
	}
	bank->File->CloseSegment();

	if (bank->File->OpenSegment(LHFileSegmentAnimArray))
	{
		bank->File->CloseSegment();
		if (mode == LH_BANK_MODE_PRELOAD)
		{
			bank->File->Close();
			bank->File = NULL;
		}
		if (bank->MusicBank)
		{
			unsigned long group = LH_AUDIO_LOW_WORD(bank->Samples->Group);
			if (MusicTotalGroups < group)
			{
				MusicTotalGroups = group;
			}
		}
		return bank;
	}
	bank->AnimArrayTableHeight = bank->File->ReadLong();
	bank->AnimArrayTableWidth = bank->File->ReadLong();
	unsigned long tableSize = bank->AnimArrayTableHeight * bank->AnimArrayTableWidth * sizeof(long);
	bank->AnimArray = (long*)malloc(tableSize);
	if (bank->File->GetSegmentData(bank->AnimArray, tableSize, -1))
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_GET_SEGMENT_DATA, 238, filename);
		free(bank->AnimArray);
		bank->AnimArray = NULL;
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_BANK_RELEASE_INVALID_BANK, 241);
		return NULL;
	}
	bank->File->CloseSegment();

	if (bank->File->OpenSegment(LHFileSegmentAnimArrayWaveNumbers))
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_OPEN_SEGMENT, 248, filename);
		free(bank->AnimArray);
		bank->AnimArray = NULL;
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_BANK_RELEASE_INVALID_BANK, 251);
		return NULL;
	}
	uint32_t waveNumbersSize = bank->File->GetSegmentSize();
	bank->AnimArrayWaveNumbers = (long*)malloc(waveNumbersSize);
	if (bank->File->GetSegmentData(bank->AnimArrayWaveNumbers, waveNumbersSize, -1))
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_BANK_REGISTER_GET_SEGMENT_DATA, 260, filename);
		free(bank->AnimArrayWaveNumbers);
		bank->AnimArrayWaveNumbers = NULL;
		free(bank->AnimArray);
		bank->AnimArray = NULL;
		return NULL;
	}
	for (unsigned long row = 0; row < bank->AnimArrayTableHeight; row++)
	{
		bank->AnimArray[(row + 1) * bank->AnimArrayTableWidth - 1] =
			(long)&bank->AnimArrayWaveNumbers[bank->AnimArray[(row + 1) * bank->AnimArrayTableWidth - 1]];
	}
	if (mode == LH_BANK_MODE_PRELOAD)
	{
		bank->File->Close();
		bank->File = NULL;
	}
	return bank;
}

void LH_AudioSystem::LHBankRelease(LH_AudioBank* bank)
{
	if (bank == NULL || !SystemInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_BANK_RELEASE_INVALID_BANK, 296);
		return;
	}

	if (MusicInstalled)
	{
		EnterCriticalSection(&LHMusicCriticalSection);
		for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
		{
			if (MusicInfos[i].Bank == bank)
			{
				MusicInfos[i].Bank = NULL;
				MusicInfos[i].Status = LH_MUSIC_STATUS_STOPPED;
				MusicInfos[i].Volume = 0;
				MusicInfos[i].CurrentVolume = 0;
				if (LH_MusicInfo::master == i)
				{
					LH_MusicInfo::master = LH_MUSIC_NO_INFO;
				}
				QSWaveMixSetVolume(QMixer, MusicInfos[i].Channel, QMIX_IMMEDIATE, 0);
				if (!QSWaveMixIsChannelDone(QMixer, MusicInfos[i].Channel))
				{
					QSWaveMixFlushChannel(QMixer, MusicInfos[i].Channel, 0);
				}
				break;
			}
		}
		LeaveCriticalSection(&LHMusicCriticalSection);
	}
	if (bank->NumberOfAtmosSamples > 0)
	{
		LHAtmosReleaseBank(bank);
	}
	for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
	{
		if (info->Bank == bank)
		{
			if (info->Playing == true)
			{
				QSWaveMixFlushChannel(QMixer, info->Channel, 0);
			}
			info->Bank = NULL;
			info->AttachedObject = NULL;
			info->SampleNumber = 0;
			info->PlayType = LH_SAMPLE_PLAY_TYPE_RESTART;
			info->Frequency = LH_AUDIO_HW_RATE_22K;
			info->Priority = 0;
			info->Wave = NULL;
		}
	}
	if (bank->UsingHeap)
	{
		LHHeapFreeAllWavsFromBank(bank);
	}
	delete bank;
}

bool32_t LH_AudioSystem::LHBankIsUsingHeap(LH_AudioBank* bank)
{
	if (bank != NULL && SystemInstalled)
	{
		return bank->UsingHeap;
	}
	return false;
}

char* LH_AudioSystem::LHBankGetFileName(LH_AudioBank* bank)
{
	if (bank != NULL && SystemInstalled)
	{
		return bank->FileName;
	}
	return NULL;
}

unsigned long LH_AudioSystem::LHBankGetNumberOfSamples(LH_AudioBank* bank)
{
	if (bank != NULL && SystemInstalled)
	{
		return bank->NumberOfSamples;
	}
	return 0;
}

LH_BankSample* LH_AudioBank::LHGetFirstBankSample()
{
	return Samples;
}

unsigned long LH_AudioBank::LHGetBankDataStart()
{
	return (unsigned long)DataStart;
}

LHReleasedFile* LH_AudioBank::LHGetBankFileHandle()
{
	return File;
}

bool32_t LH_AudioBank::LHIsMusicBank()
{
	return MusicBank;
}

float LH_AudioBank::LHBankGetMusicMaxDistance()
{
	if (Samples != NULL && MusicBank)
	{
		return Samples->MaxDistance;
	}
	return LH_BANK_MUSIC_DISTANCE_NONE;
}

float LH_AudioBank::LHBankGetMusicMinDistance()
{
	if (Samples != NULL && MusicBank)
	{
		return Samples->MinDistance;
	}
	return LH_BANK_MUSIC_DISTANCE_NONE;
}

long LH_AudioBank::LHBankGetMusicGroupId()
{
	if (Samples != NULL && MusicBank)
	{
		return LH_AUDIO_LOW_WORD(Samples->Group);
	}
	return LH_BANK_MUSIC_GROUP_NONE;
}
