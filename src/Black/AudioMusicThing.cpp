#include <Lionhead/LHAudio/ver7.0/LH_AudioBank.h> /* For class LH_AudioBank */

#include <Lionhead/LH3DLib/development/LH3DTech.h>  /* For LH3DTech::g_camera */
#include <Lionhead/LHAudio/ver7.0/LH_AudioSystem.h> /* For class LH_AudioSystem */
#include <Lionhead/LHAudio/ver7.0/LH_MusicPlayOptions.h>

#include "Audio.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Game.h"
#include "GameThingWithPos.h" /* For class GameThingWithPos */
#include "Landscape.h"
#include "ThingMusicInfo.h"

uint32_t ThingMusicInfo::GetSaveType()
{
	return GAME_THING_TYPE_THING_MUSIC_INFO;
}

char* ThingMusicInfo::GetDebugText()
{
	return "AudioMusicThing:";
}

ThingMusicInfo* GAudio::GetThingMusicInfo(GameThingWithPos* thing)
{
	for (LHLinkedNode<ThingMusicInfo*>* node = ThingMusicList.GetStart(); node != NULL; node = node->next.Get())
	{
		ThingMusicInfo* info = node->payload;
		if (thing == info->Thing)
		{
			return info;
		}
	}
	return NULL;
}

void GAudio::ReleaseAllThingMusicInfo()
{
	ThingMusicList.ToBeDeletedAll();
}

void GAudio::AddThingMusic(MUSIC_TYPE type, GameThingWithPos* thing)
{
	if (thing->IsAvailable())
	{
		ThingMusicInfo* info = GetThingMusicInfo(thing);
		if (info != NULL)
		{
			info->MusicType = type;
		}
		else
		{
			info = NEW(51) ThingMusicInfo(type, thing);
			if (IsThingMusicPlaying(info))
				StopMusic(info, false);
			ThingMusicList.Add(info);
		}
	}
}

void GAudio::RemoveThingMusic(GameThingWithPos* thing)
{
	ThingMusicInfo* info = GetThingMusicInfo(thing);
	if (info)
	{
		ThingMusicList.Remove(info);
		info->ToBeDeleted(false);
	}
}

float GAudio::GetPlayDistance(MUSIC_TYPE type)
{
	float distance = MUSIC_DEFAULT_PLAY_DISTANCE;
	if (MusicBanks[type])
	{
		distance = MusicBanks[type]->LHBankGetMusicMaxDistance();
		if (distance < 0.0f)
		{
			distance = MUSIC_DEFAULT_PLAY_DISTANCE;
		}
	}
	return distance;
}

float GAudio::GetPlayDistance(GameThingWithPos* thing)
{
	ThingMusicInfo* info = GetThingMusicInfo(thing);
	if (info)
	{
		return GetPlayDistance(info->MusicType);
	}
	return 0.0f;
}

void GAudio::ValidateThingMusic()
{
	LHLinkedNode<ThingMusicInfo*>* node = ThingMusicList.GetStart();
	while (node)
	{
		ThingMusicInfo*                info = node->payload;
		LHLinkedNode<ThingMusicInfo*>* next = node->next.Get();
		if (!info->Thing->IsAvailable())
		{
			ThingMusicList.Remove(info);
			info->ToBeDeleted(false);
		}
		node = next;
	}
}

bool32_t GAudio::ProcessThingMusic()
{
	int                            result = THING_MUSIC_RESULT_NONE;
	LHLinkedNode<ThingMusicInfo*>* node = ThingMusicList.GetStart();
	while (node)
	{
		ThingMusicInfo*                info = node->payload;
		GameThingWithPos*              thing = info->Thing;
		LHLinkedNode<ThingMusicInfo*>* next = node->next.Get();
		if (thing->IsAvailable())
		{
			if (info->Enabled && !info->Finished)
			{
				if (ProcessThingMusic(info, thing))
				{
					return true;
				}
			}
			else if (ThingMusicInRange(info->MusicType, thing))
			{
				result |= THING_MUSIC_RESULT_IN_RANGE;
			}
		}
		else
		{
			ThingMusicList.Remove(info);
			info->ToBeDeleted(false);
		}
		node = next;
	}
	return result;
}

bool32_t GAudio::ThingMusicInRange(MUSIC_TYPE type, GameThingWithPos* thing)
{
	if (MusicBanks[type])
	{
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
		GGame::g_game->GetCamera();
		LHPoint cameraPos = LH3DTech::g_camera.pos;
		float   distance = pos.GetDistance(cameraPos);
		if (distance < GetPlayDistance(type))
		{
			return true;
		}
	}
	return false;
}

bool32_t GAudio::ProcessThingMusic(ThingMusicInfo* info, GameThingWithPos* thing)
{
	LH_MusicPlayOptions options;
	MUSIC_TYPE          type = info->MusicType;
	if (MusicBanks[type] != NULL)
	{
		long group = MusicBanks[type]->LHBankGetMusicGroupId();
		if (ThingMusicInRange(type, thing))
		{
			LHPoint pos;
			if (info->UseFixedPos)
				GLandscape::ConvertMapCoordToLandscapePoint(info->FixedPos, pos);
			else
				GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
			if (group > 0)
			{
				options.Loop = true;
				options.FadeIn = true;
			}
			else
			{
				options.Loop = false;
				options.FadeIn = false;
			}
			options.Bank = MusicBanks[type];
			options.Volume = LH_MUSIC_VOLUME_MAX;
			options.StartChunk = MusicStyleChunks[group - 1];
			options.Positional = true;
			options.Pitch = LH_MUSIC_PITCH_NORMAL;
			options.X = pos.x;
			options.Y = pos.y;
			options.Z = pos.z;
			StoreMusicStyleChunks();
			if (AudioSystem->LHMusicGetInfo(options.Bank) == NULL && info->Started && info->Finished)
				return false;
			if (!info->Finished)
			{
				LH_MusicInfo* music = AudioSystem->LHMusicPlay(&options);
				info->Started = true;
				AudioSystem->LHMusicSet3DPosition(music, pos.x, pos.y, pos.z);
			}
			return true;
		}
	}
	return false;
}

bool32_t GAudio::IsThingMusicPlaying(ThingMusicInfo* info)
{
	LH_AudioBank* bank = MusicBanks[info->MusicType];
	if (bank)
	{
		LH_MusicInfo* music = AudioSystem->LHMusicGetInfo(bank);
		if (music)
		{
			return AudioSystem->LHMusicGetStatus(music) != 0;
		}
	}
	return false;
}

void GAudio::StopMusic(ThingMusicInfo* info, int fade)
{
	if (IsThingMusicPlaying(info))
	{
		LH_AudioBank* bank = MusicBanks[info->MusicType];
		if (bank)
		{
			LH_MusicInfo* music = AudioSystem->LHMusicGetInfo(bank);
			if (music)
			{
				AudioSystem->LHMusicStop(music, fade);
			}
		}
	}
}

void GAudio::SwapThingMusic(GameThingWithPos* thing, GameThingWithPos* other)
{
	ThingMusicInfo* info = GetThingMusicInfo(thing);
	if (info)
	{
		info->Thing = other;
	}
}

void GAudio::EnableMusicThing(GameThingWithPos* thing, int enable)
{
	ThingMusicInfo* info = GetThingMusicInfo(thing);
	if (info)
	{
		info->Enabled = enable;
		info->Finished = false;
		info->Started = false;
	}
}

void GAudio::SetPlayPosition(GameThingWithPos* thing, const MapCoords& coords)
{
	ThingMusicInfo* info = GetThingMusicInfo(thing);
	if (info)
	{
		info->UseFixedPos = true;
		info->FixedPos = coords;
	}
}

bool32_t GAudio::IsMusicThingFinished(GameThingWithPos* thing)
{
	ThingMusicInfo* info = GetThingMusicInfo(thing);
	if (info)
	{
		return info->Finished;
	}
	return true;
}

bool32_t ThingMusicInfo::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		WRITE_IT(file, MusicType);
		file.WritePtr(Thing);
		WRITE_IT(file, Enabled);
		WRITE_IT(file, Finished);
		WRITE_IT(file, Started);
		WRITE_IT(file, UseFixedPos);
		WRITE_IT(file, FixedPos);
		return true;
	}
	return false;
}

bool32_t ThingMusicInfo::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadIt(MusicType);
		file.ReadPtr((GameThing**)&Thing);
		file.ReadIt(Enabled);
		file.ReadIt(Finished);
		file.ReadIt(Started);
		file.ReadIt(UseFixedPos);
		file.ReadIt(FixedPos);
		return true;
	}
	return false;
}

void GAudio::PlaySoundEffect(Base* object, uint32_t sample, uint32_t priority, uint32_t volume, int distance,
                             int positional, AUDIO_SFX_BANK_TYPE bank_type)
{
	PlaySoundEffect(object, (unsigned long)sample, (unsigned long)priority, (unsigned long)volume, distance, positional,
	                GetBank(bank_type));
}

void GAudio::PlaySoundEffect(Base* object, const LHPoint& pos, uint32_t sample, uint32_t priority, uint32_t volume,
                             int distance, int positional, AUDIO_SFX_BANK_TYPE bank_type)
{
	PlaySoundEffect(object, pos, sample, priority, volume, distance, positional, GetBank(bank_type));
}

void GAudio::StopPlayingSoundEffect(uint32_t sample, uint32_t object, AUDIO_SFX_BANK_TYPE type) const
{
	AudioSystem->LHSampleStop(AudioBanks[type], object, sample);
}

float GAudio::GetGSFXSampleMaxDistance(uint32_t sample, LH_AudioBank* bank) const
{
	if (bank)
	{
		return AudioSystem->LHSampleGetMaxDistance(bank, sample);
	}
	return 0.0f;
}
