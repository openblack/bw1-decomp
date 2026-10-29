#include <math.h>   /* For fabs */
#include <stdlib.h> /* For rand, srand */
#include <time.h>   /* For time */

#include "LHAudioAtmos.h"
#include "LHAudioLogMacros.h"
#include "LH_AudioBank.h"
#include "LH_BankSample.h"
#include "LH_SamplePlayOptions.h"

#define FILEPATH LH_AUDIO_SOURCE_DIRECTORY "LHAudioAtmos.cpp"

atmos_list*  LH_atmos = new atmos_list;
static char* LHLogLibraryName;

atmos_list::atmos_list()
{
	First = NULL;
	Last = NULL;
	Count = 0;
	LoopCount = 0;
	Time = 0;
}

atmos_list::~atmos_list()
{
	if (LoopCount > 0)
	{
		while (LoopFirst != LoopLast)
		{
			atmos_loop_entry entry = *LoopFirst;
			delete LoopFirst;
			LoopFirst = entry.Next;
		}
		delete LoopFirst;
	}
	LoopCount = 0;
	if (Count)
	{
		while (First != Last)
		{
			atmos_list_entry entry = *First;
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
	Count = 0;
}

void atmos_list::remove_first_entry()
{
	if (Count)
	{
		atmos_list_entry entry = *First;
		if (First)
		{
			delete First;
		}
		if (Count >= 1)
		{
			First = entry.Next;
		}
		Count--;
	}
}

bool32_t atmos_list::insert_entry(atmos_list_entry_info* info, unsigned long mode)
{
	if (info->Sample->AtmosInterval == 0)
	{
		if (LoopCount == 0)
		{
			LoopFirst = new atmos_loop_entry;
			LoopFirst->Bank = info->Bank;
			LoopFirst->Sample = info->Sample;
			LoopFirst->Info = NULL;
			LoopFirst->Group = info->Group;
			LoopFirst->Playing = false;
			if (info->Sample->OverrideFlags & LH_SAMPLE_OVERRIDE_VOLUME)
			{
				LoopFirst->Volume = LH_AUDIO_LOW_WORD(info->Sample->Volume);
			}
			else
			{
				LoopFirst->Volume = LH_SAMPLE_VOLUME_MAX;
			}
			LoopFirst->FadeVolume = 0;
			LoopLast = LoopFirst;
		}
		else
		{
			atmos_loop_entry* entry = new atmos_loop_entry;
			entry->Bank = info->Bank;
			entry->Group = info->Group;
			entry->Sample = info->Sample;
			entry->Info = NULL;
			entry->Playing = false;
			if (info->Sample->OverrideFlags & LH_SAMPLE_OVERRIDE_VOLUME)
			{
				entry->Volume = LH_AUDIO_LOW_WORD(info->Sample->Volume);
			}
			else
			{
				entry->Volume = LH_SAMPLE_VOLUME_MAX;
			}
			entry->FadeVolume = 0;
			LoopLast->Next = entry;
			LoopLast = entry;
		}
		LoopCount++;
		return true;
	}

	atmos_list_entry* entry = new atmos_list_entry;
	if (entry == NULL)
	{
		return false;
	}
	entry->Info = info;
	if (Count == 0)
	{
		First = entry;
		Last = entry;
	}
	else
	{
		atmos_list_entry* current;
		atmos_list_entry* previous;
		if (mode == LH_ATMOS_INSERT_FROM_FIRST)
		{
			current = First;
			previous = NULL;
		}
		else if (mode == LH_ATMOS_INSERT_AFTER_FIRST)
		{
			previous = First;
			if (Count == 1)
			{
				Last = entry;
				First->Next = entry;
				Count++;
				return true;
			}
			current = previous->Next;
		}
		for (unsigned long i = 1; i <= Count; i++)
		{
			if (current->Info->Time >= info->Time)
			{
				if (current == First)
				{
					entry->Next = First;
					First = entry;
				}
				else if (current == Last)
				{
					previous->Next = entry;
					entry->Next = Last;
				}
				else
				{
					previous->Next = entry;
					entry->Next = current;
				}
				break;
			}
			else if (current == Last)
			{
				Last->Next = entry;
				Last = entry;
			}
			else
			{
				previous = current;
				current = current->Next;
			}
		}
	}
	Count++;
	return true;
}

void LH_AudioSystem::LHAtmosReleaseBank(LH_AudioBank* bank)
{
	if (!AtmosInstalled || bank == NULL || !SystemInstalled)
	{
		return;
	}

	unsigned long count = LH_atmos->LoopCount;
	if (count > 0)
	{
		atmos_loop_entry* current = LH_atmos->LoopFirst;
		atmos_loop_entry* next;
		atmos_loop_entry* previous;
		for (unsigned long i = 1; i <= count; i++)
		{
			if (current != LH_atmos->LoopLast)
			{
				next = current->Next;
			}
			if (current->Bank == bank)
			{
				LHSampleStop(bank, (unsigned long)LH_SAMPLE_OBJECT_GONE, current->Sample->SampleNumber);
				if (current == LH_atmos->LoopFirst)
				{
					if (LH_atmos->LoopFirst != LH_atmos->LoopLast)
					{
						LH_atmos->LoopFirst = LH_atmos->LoopFirst->Next;
					}
					delete current;
					LH_atmos->LoopCount--;
					if (LH_atmos->LoopCount == 1)
					{
						LH_atmos->LoopLast = LH_atmos->LoopFirst;
					}
				}
				else if (current == LH_atmos->LoopLast)
				{
					LH_atmos->LoopLast = previous;
					delete current;
					LH_atmos->LoopCount--;
					if (LH_atmos->LoopCount == 1)
					{
						LH_atmos->LoopFirst = LH_atmos->LoopLast;
					}
				}
				else
				{
					previous->Next = current->Next;
					delete current;
					LH_atmos->LoopCount--;
				}
			}
			else
			{
				previous = current;
			}
			current = next;
		}
	}

	count = LH_atmos->Count;
	if (count)
	{
		atmos_list_entry* current = LH_atmos->First;
		atmos_list_entry* previous = NULL;
		for (unsigned long i = 1; i <= count; i++)
		{
			if (current->Info->Bank == bank)
			{
				if (current == LH_atmos->Last)
				{
					if (current->Info)
					{
						delete current->Info;
					}
					if (current)
					{
						delete current;
					}
					if (LH_atmos->Count > 1)
					{
						previous->Next = NULL;
						LH_atmos->Last = previous;
					}
					LH_atmos->Count--;
					return;
				}
				else if (current == LH_atmos->First)
				{
					atmos_list_entry entry = *LH_atmos->First;
					if (current->Info)
					{
						delete current->Info;
					}
					if (current)
					{
						delete current;
					}
					if (LH_atmos->Count > 1)
					{
						LH_atmos->First = entry.Next;
						current = entry.Next;
						LH_atmos->Count--;
					}
					else
					{
						LH_atmos->Count--;
						return;
					}
				}
				else
				{
					previous->Next = current->Next;
					if (current->Info)
					{
						delete current->Info;
					}
					if (current)
					{
						delete current;
					}
					current = previous->Next;
					LH_atmos->Count--;
				}
			}
			else if (current != LH_atmos->Last)
			{
				previous = current;
				current = current->Next;
			}
			else
			{
				return;
			}
		}
	}
}

void LH_AudioSystem::LHAtmosAddBank(LH_AudioBank* bank)
{
	unsigned long earliest = LH_ATMOS_TIME_NONE;
	if (!AtmosInstalled || !SystemInstalled)
	{
		return;
	}
	srand(time(NULL));
	if (bank == NULL)
	{
		return;
	}

	LH_BankSample* sample = bank->Samples;
	for (unsigned long i = 1; i <= bank->NumberOfSamples; sample++, i++)
	{
		if (sample->AtmosInterval >= 0 && sample->SampleNumber > 0)
		{
			atmos_list_entry_info* info = new atmos_list_entry_info;
			info->Bank = bank;
			info->Sample = sample;
			info->Group = LH_AUDIO_HIGH_WORD(sample->Group);
			if (sample->OverrideFlags & LH_SAMPLE_OVERRIDE_VOLUME)
			{
				info->Volume = LH_AUDIO_LOW_WORD(sample->Volume);
			}
			else
			{
				info->Volume = LH_SAMPLE_VOLUME_MAX;
			}
			if (sample->AtmosInterval != 0)
			{
				unsigned long spread =
					sample->AtmosInterval * LH_ATMOS_TICKS_PER_SECOND * LH_ATMOS_SPREAD_PERCENT / LH_ATMOS_PERCENT;
				unsigned long shortest = sample->AtmosInterval * LH_ATMOS_TICKS_PER_SECOND - spread;
				unsigned long range = spread * 2;
				info->Time = rand() * range / RAND_MAX + LH_atmos->Time + shortest;
				if (info->Time < earliest)
				{
					earliest = info->Time;
				}
			}
			LH_atmos->insert_entry(info, LH_ATMOS_INSERT_FROM_FIRST);
		}
	}

	if (earliest != LH_ATMOS_TIME_NONE)
	{
		LH_atmos->Time = earliest - LH_ATMOS_START_DELAY;
		unsigned long count = LH_atmos->Count;
		if (count > 0)
		{
			for (unsigned long i = 1; i <= count; i++)
			{
				atmos_list_entry* entry = LH_atmos->First;
				if (entry->Info->Time >= LH_atmos->Time)
				{
					return;
				}
				unsigned long spread = entry->Info->Sample->AtmosInterval * LH_ATMOS_TICKS_PER_SECOND *
				                       LH_ATMOS_SPREAD_PERCENT / LH_ATMOS_PERCENT;
				unsigned long shortest = entry->Info->Sample->AtmosInterval * LH_ATMOS_TICKS_PER_SECOND - spread;
				unsigned long range = spread * 2;
				entry->Info->Time = rand() * range / RAND_MAX + LH_atmos->Time + shortest;
				LH_atmos->insert_entry(entry->Info, LH_ATMOS_INSERT_AFTER_FIRST);
				LH_atmos->remove_first_entry();
			}
		}
	}
}

void LH_AudioSystem::LHAtmosOpen()
{
	srand(time(NULL));
	AtmosInstalled = true;
}

void LH_AudioSystem::LHAtmosClose()
{
	if (!AtmosInstalled || !SystemInstalled)
	{
		return;
	}
	AtmosClosing = true;
	LHAtmosProcess(false);
	delete LH_atmos;
	AtmosInstalled = false;
}

void LH_AudioSystem::LHAtmosProcess(bool32_t active)
{
	static long     xSign = 1;
	static long     ySign = 1;
	static bool32_t closed = false;

	LH_SamplePlayOptions sample;
	LH_SamplePlayOptions loopSample;

	if (!AtmosInstalled || !SystemInstalled || closed == true)
	{
		return;
	}

	if (active)
	{
		LH_SampleInfo* first = LHSampleGetFirstInfoStruct();
		LH_SampleInfo* last = LHSampleGetLastInfoStruct();
		for (LH_SampleInfo* info = first; info <= last; info++)
		{
			if (info->Bank != NULL && info->AtmosInfo != NULL && info->AtmosInfo != LH_ATMOS_LOOP_INFO &&
			    info->AtmosInfo->Group != LH_ATMOS_GROUP_NONE && info->AtmosInfo->Group != info->Bank->AtmosGroup)
			{
				long volume = info->Volume - LH_ATMOS_FADE_STEP;
				if (volume >= 0)
				{
					LHSampleSetVolume(info, volume);
				}
			}
		}

		if (LH_atmos->LoopCount)
		{
			atmos_loop_entry* entry = LH_atmos->LoopFirst;
			unsigned long     i;
			for (i = 1; i <= LH_atmos->LoopCount; i++)
			{
				if (entry->Info != NULL && !LHSampleIsPlaying(entry->Info))
				{
					entry->Playing = false;
				}
				if (entry->Playing == true)
				{
					if (!LHAtmosGetBankVolume(entry->Bank))
					{
						LHSampleStop(entry->Info);
						entry->Playing = false;
					}
				}
				if (entry->Playing == true && !LHSampleIsPlaying(entry->Info))
				{
					entry->Playing = false;
				}
				if (entry->Playing == false && LHAtmosGetBankVolume(entry->Bank) &&
				    (entry->Group == LH_ATMOS_GROUP_NONE || entry->Group == entry->Bank->AtmosGroup))
				{
					loopSample.AtmosInfo = LH_ATMOS_LOOP_INFO;
					loopSample.Bank = entry->Bank;
					loopSample.AttachedObject = LH_SAMPLE_OBJECT_GONE;
					loopSample.PlayType = LH_SAMPLE_PLAY_TYPE_ONCE;
					loopSample.Follow = false;
					loopSample.LoopCount = LH_SAMPLE_LOOP_FOREVER;
					loopSample.OverrideFlags = LH_SAMPLE_OVERRIDE_VOLUME;
					loopSample.Volume = 0;
					loopSample.Positional = false;
					loopSample.SampleNumber = entry->Sample->SampleNumber;
					entry->Info = LHSamplePlay(&loopSample);
					if (entry->Info != NULL)
					{
						entry->Playing = true;
						entry->FadeVolume = 0;
					}
				}
				if (entry != LH_atmos->LoopLast)
				{
					entry = entry->Next;
				}
			}

			entry = LH_atmos->LoopFirst;
			for (i = 1; i <= LH_atmos->LoopCount; i++)
			{
				if (entry->Group != LH_ATMOS_GROUP_NONE && entry->Group != entry->Bank->AtmosGroup)
				{
					if (entry->Playing == true)
					{
						if (entry->FadeVolume <= 0)
						{
							LHSampleStop(entry->Info);
							entry->Playing = false;
							entry->FadeVolume = 0;
						}
						else
						{
							entry->FadeVolume -= LH_ATMOS_FADE_STEP;
							if (entry->FadeVolume < 0)
							{
								entry->FadeVolume = 0;
							}
							LHSampleSetVolume(entry->Info, LHAtmosGetBankVolume(entry->Bank) * entry->FadeVolume /
							                                   LH_SAMPLE_VOLUME_MAX);
						}
					}
				}
				else if (entry->Playing == true)
				{
					if (entry->FadeVolume < entry->Volume)
					{
						entry->FadeVolume += LH_ATMOS_FADE_STEP;
						LHSampleSetVolume(entry->Info,
						                  LHAtmosGetBankVolume(entry->Bank) * entry->FadeVolume / LH_SAMPLE_VOLUME_MAX);
					}
					else
					{
						entry->FadeVolume = entry->Volume;
						LHSampleSetVolume(entry->Info,
						                  LHAtmosGetBankVolume(entry->Bank) * entry->Volume / LH_SAMPLE_VOLUME_MAX);
					}
				}
				if (entry != LH_atmos->LoopLast)
				{
					entry = entry->Next;
				}
			}
		}

		if (LH_atmos->Count > 0)
		{
			LH_atmos->Time++;
			atmos_list_entry* entry = LH_atmos->First;
			if (entry->Info->Time <= LH_atmos->Time)
			{
				if (LHAtmosGetBankVolume(entry->Info->Bank) &&
				    (entry->Info->Group == LH_ATMOS_GROUP_NONE || entry->Info->Group == entry->Info->Bank->AtmosGroup))
				{
					sample.AttachedObject = LH_SAMPLE_OBJECT_GONE;
					sample.SampleNumber = entry->Info->Sample->SampleNumber;
					sample.Bank = entry->Info->Bank;
					sample.OverrideFlags = LH_SAMPLE_OVERRIDE_VOLUME;
					sample.Volume =
						LHAtmosGetBankVolume(entry->Info->Bank) * entry->Info->Volume / LH_SAMPLE_VOLUME_MAX;
					sample.XPos = LH_ATMOS_POSITION_RANGE - rand() * (LH_ATMOS_POSITION_RANGE * 2) / RAND_MAX;
					sample.YPos = LH_ATMOS_POSITION_RANGE - rand() * (LH_ATMOS_POSITION_RANGE * 2) / RAND_MAX;
					if (fabs(sample.XPos) + fabs(sample.YPos) <= LH_ATMOS_NEAR_DISTANCE)
					{
						sample.XPos *= LH_ATMOS_NEAR_POSITION_SCALE;
						sample.YPos *= LH_ATMOS_NEAR_POSITION_SCALE;
						if (sample.XPos == 0.0f && sample.YPos == 0.0f)
						{
							sample.XPos = xSign * LH_ATMOS_CENTRE_OFFSET;
							sample.YPos = ySign * LH_ATMOS_CENTRE_OFFSET;
							xSign = -xSign;
							ySign *= xSign;
						}
					}
					sample.ZPos = 0.0f;
					sample.Positional = true;
					sample.Polar = true;
					sample.AtmosInfo = entry->Info;
					LH_ASSERT(sample.AtmosInfo,
					          "RUSS: Whoa there, something has changed this to NULL outside the thread", 632);
					sample.Follow = false;
					LHSamplePlay(&sample);
				}
				unsigned long spread = entry->Info->Sample->AtmosInterval * LH_ATMOS_TICKS_PER_SECOND *
				                       LH_ATMOS_SPREAD_PERCENT / LH_ATMOS_PERCENT;
				unsigned long shortest = entry->Info->Sample->AtmosInterval * LH_ATMOS_TICKS_PER_SECOND - spread;
				unsigned long range = spread * 2;
				entry->Info->Time = rand() * range / RAND_MAX + LH_atmos->Time + shortest;
				LH_atmos->insert_entry(entry->Info, LH_ATMOS_INSERT_AFTER_FIRST);
				LH_atmos->remove_first_entry();
			}
		}
	}
	else
	{
		atmos_loop_entry* entry = LH_atmos->LoopFirst;
		for (unsigned long i = 1; i <= LH_atmos->LoopCount; i++)
		{
			if (entry->Info != NULL)
			{
				LHSampleStop(entry->Info);
				entry->Info->AtmosInfo = NULL;
			}
			entry->Playing = false;
			if (entry != LH_atmos->LoopLast)
			{
				entry = entry->Next;
			}
		}
		LH_SampleInfo* first = LHSampleGetFirstInfoStruct();
		LH_SampleInfo* last = LHSampleGetLastInfoStruct();
		for (LH_SampleInfo* info = first; info <= last; info++)
		{
			if (info->AtmosInfo != NULL)
			{
				LHSampleStop(info);
			}
		}
		if (AtmosClosing)
		{
			closed = true;
		}
	}
}

unsigned long LH_AudioSystem::LHAtmosGetBankVolume(LH_AudioBank* bank)
{
	if (!AtmosInstalled || bank == NULL || !SystemInstalled)
	{
		return 0;
	}
	return bank->AtmosVolume;
}

void LH_AudioSystem::LHAtmosSetBankVolume(LH_AudioBank* bank, long volume)
{
	if (!AtmosInstalled || bank == NULL || !SystemInstalled)
	{
		return;
	}
	if (volume > LH_SAMPLE_VOLUME_MAX)
	{
		volume = LH_SAMPLE_VOLUME_MAX;
	}
	else if (volume < 0)
	{
		volume = 0;
	}
	if (volume == bank->AtmosVolume)
	{
		return;
	}
	bank->AtmosVolume = volume;
	for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
	{
		if (info->AtmosInfo != NULL && info->AtmosInfo != LH_ATMOS_LOOP_INFO && info->Bank == bank &&
		    (info->AtmosInfo->Group == LH_ATMOS_GROUP_NONE || info->AtmosInfo->Group == info->Bank->AtmosGroup))
		{
			LHSampleSetVolume(info, info->AtmosInfo->Volume * volume / LH_SAMPLE_VOLUME_MAX);
		}
	}
}

void LH_AudioSystem::LHAtmosSetGroup(LH_AudioBank* bank, unsigned long group)
{
	if (!AtmosInstalled || bank == NULL || !SystemInstalled)
	{
		return;
	}
	bank->AtmosGroup = group;
}
