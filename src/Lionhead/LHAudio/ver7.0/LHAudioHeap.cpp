#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For LHReleasedFile */

#include "LHAudioHeap.h"
#include "LHAudioLog.h"
#include "LH_AudioBank.h"
#include "LH_BankSample.h"
#include "LH_SamplePlayOptions.h"

#define FILEPATH LH_AUDIO_SOURCE_DIRECTORY "LHAudioHeap.cpp"

unsigned long heap_list::TotalAllowed = LH_HEAP_DEFAULT_TOTAL_ALLOWED;
unsigned long heap_list::TotalAllocated;

heap_list::heap_list()
{
	First = NULL;
	Last = NULL;
	Count = 0;
}

heap_list::~heap_list()
{
	if (Count)
	{
		while (First != Last)
		{
			list_entry entry = *First;
			if (First->Info)
			{
				delete First->Info;
			}
			if (First)
			{
				delete First;
			}
			First = entry.Next;
		}
		if (First->Info)
		{
			delete First->Info;
		}
		if (First)
		{
			delete First;
		}
	}
}

void heap_list::remove_first_entry()
{
	if (Count)
	{
		list_entry entry = *First;
		if (First)
		{
			delete First;
		}
		if (Count > 1)
		{
			First = entry.Next;
		}
		Count--;
	}
}

bool32_t heap_list::add_last_entry(list_entry_info* info)
{
	list_entry* entry = new list_entry;
	if (entry == NULL)
	{
		return false;
	}
	entry->Info = info;
	if (Count > 0)
	{
		Last->Next = entry;
		Last = entry;
	}
	else
	{
		First = entry;
		Last = entry;
	}
	Count++;
	return true;
}

static heap_list HeapList;

bool32_t LH_AudioSystem::LHHeapOpen()
{
	if (HeapInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_OPEN_ALREADY_INSTALLED, 121);
		return false;
	}
	heap_list::TotalAllowed = HeapSize;
	HeapInstalled = true;
	return true;
}

void LH_AudioSystem::LHHeapClose()
{
	if (!HeapInstalled)
	{
		return;
	}

	unsigned long count = HeapList.Count;
	for (unsigned long i = 1; i <= count; i++)
	{
		list_entry_info* info = HeapList.First->Info;
		free(info->Sample->Data);
		LH_BankSample* sample = info->Bank->Samples;
		for (unsigned long j = 1; j <= info->Bank->NumberOfSamples; j++, sample++)
		{
			if (sample->WaveNumber == info->Sample->WaveNumber)
			{
				sample->Loaded = false;
			}
			for (LH_SampleInfo* sampleInfo = FirstSampleInfo; sampleInfo <= LastSampleInfo; sampleInfo++)
			{
				if (sampleInfo->Bank == info->Bank && sampleInfo->WaveNumber == info->Sample->WaveNumber)
				{
					sampleInfo->SampleNumber = 0;
				}
			}
		}
		HeapList.remove_first_entry();
	}
	HeapInstalled = false;
}

bool32_t LH_AudioSystem::LHHeapLoadWavFile(LH_SamplePlayOptions* options, LH_BankSample* sample)
{
	if (!HeapInstalled || !SystemInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_LOAD_NOT_INSTALLED, 187);
		return false;
	}
	if (options->Bank == NULL)
	{
		return false;
	}

	if (options->Bank->File->opened)
	{
		if (sample->Size + heap_list::TotalAllocated <= heap_list::TotalAllowed)
		{
			sample->Data = malloc(sample->Size);
			heap_list::TotalAllocated += sample->Size;
		}
		else
		{
			if (HeapList.Count == 0)
			{
				LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_LOAD_WAV_TOO_LARGE, 204);
				return false;
			}

			unsigned long count = HeapList.Count;
			bool32_t      loaded = false;
			for (unsigned long i = 1; i <= count; i++)
			{
				list_entry_info* info = HeapList.First->Info;
				bool32_t         playing = false;
				for (LH_SampleInfo* sampleInfo = FirstSampleInfo; sampleInfo <= LastSampleInfo; sampleInfo++)
				{
					if (sampleInfo->Bank == info->Bank && sampleInfo->WaveNumber == info->WaveNumber &&
					    sampleInfo->Playing == true)
					{
						playing = true;
						break;
					}
				}

				if (playing == true)
				{
					if (!HeapList.add_last_entry(info))
					{
						LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_LOAD_ADD_LAST_ENTRY, 234);
						return false;
					}
					HeapList.remove_first_entry();
				}
				else
				{
					free(info->Sample->Data);
					heap_list::TotalAllocated -= info->Sample->Size;
					info->Sample->Loaded = false;
					LH_BankSample* bankSample = info->Bank->Samples;
					for (unsigned long j = 1; j <= info->Bank->NumberOfSamples; j++, bankSample++)
					{
						if (bankSample->WaveNumber == info->Sample->WaveNumber)
						{
							bankSample->Loaded = false;
						}
						for (LH_SampleInfo* sampleInfo = FirstSampleInfo; sampleInfo <= LastSampleInfo; sampleInfo++)
						{
							if (sampleInfo->Bank == info->Bank && sampleInfo->WaveNumber == info->Sample->WaveNumber)
							{
								sampleInfo->SampleNumber = 0;
							}
						}
					}
					HeapList.remove_first_entry();
					if (sample->Size + heap_list::TotalAllocated <= heap_list::TotalAllowed)
					{
						sample->Data = malloc(sample->Size);
						loaded = true;
						heap_list::TotalAllocated += sample->Size;
						break;
					}
				}
			}
			if (!loaded)
			{
				LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_LOAD_NO_FREE_MEMORY, 274);
				return false;
			}
		}

		if (!options->Bank->File->GetSegmentData(LHFileSegmentWaveData, sample->Data, sample->Size, sample->Offset))
		{
			list_entry_info* info = new list_entry_info;
			if (info == NULL)
			{
				LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_LOAD_SAMPLE_TABLE_ALLOCATION, 282);
				return false;
			}
			sample->Loaded = true;
			info->Bank = options->Bank;
			info->WaveNumber = sample->WaveNumber;
			info->Sample = sample;
			LH_BankSample* bankSample = info->Bank->Samples;
			for (unsigned long j = 1; j <= info->Bank->NumberOfSamples; j++, bankSample++)
			{
				if (bankSample->WaveNumber == info->Sample->WaveNumber)
				{
					bankSample->Loaded = true;
					bankSample->Data = sample->Data;
				}
			}
			if (!HeapList.add_last_entry(info))
			{
				LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_LOAD_ADD_LAST_ENTRY, 301);
				return false;
			}
			return true;
		}
		else
		{
			LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_LOAD_GET_SEGMENT_DATA, 307);
			free(sample->Data);
			heap_list::TotalAllocated -= sample->Size;
			return false;
		}
	}
	else
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_LOAD_INVALID_HEAP_HANDLE, 312);
		return false;
	}
}

void LH_AudioSystem::LHHeapFreeAllWavsFromBank(LH_AudioBank* bank)
{
	unsigned long count = HeapList.Count;
	if (count)
	{
		for (unsigned long i = 1; i <= count; i++)
		{
			list_entry_info* info = HeapList.First->Info;
			if (info->Bank == bank)
			{
				free(info->Sample->Data);
				heap_list::TotalAllocated -= info->Sample->Size;
				info->Sample->Loaded = false;
				HeapList.remove_first_entry();
			}
			else
			{
				HeapList.add_last_entry(info);
				HeapList.remove_first_entry();
			}
		}
	}
}
