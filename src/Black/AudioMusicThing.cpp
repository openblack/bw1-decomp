#include <Lionhead/LHAudio/ver7.0/LH_AudioBank.h> /* For class LH_AudioBank */

#include <Lionhead/LH3DLib/development/LH3DTech.h>  /* For LH3DTech::g_camera */
#include <Lionhead/LHAudio/ver7.0/LH_AudioSystem.h> /* For class LH_AudioSystem */

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
	return "ThingMusicInfo:";
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

void GAudio::RemoveThingMusic(GameThingWithPos* thing)
{
	ThingMusicInfo* info = GetThingMusicInfo(thing);
	if (info)
	{
		ThingMusicList.Remove(info);
		info->ToBeDeleted(0);
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
			info->ToBeDeleted(0);
		}
		node = next;
	}
}

bool32_t GAudio::ProcessThingMusic()
{
	int                            result = 0;
	LHLinkedNode<ThingMusicInfo*>* node = ThingMusicList.GetStart();
	while (node)
	{
		ThingMusicInfo*                info = node->payload;
		GameThingWithPos*              thing = info->Thing;
		LHLinkedNode<ThingMusicInfo*>* next = node->next.Get();
		if (thing->IsAvailable())
		{
			if (info->Enabled && !info->Suppressed)
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
			info->ToBeDeleted(0);
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
		info->Suppressed = false;
		info->Playing = false;
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
		return info->Suppressed;
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
		WRITE_IT(file, Suppressed);
		WRITE_IT(file, Playing);
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
		file.ReadIt(Suppressed);
		file.ReadIt(Playing);
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
