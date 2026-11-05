#include "PlayerProfile.h"

#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"
#include "CellSize.h" /* For CellSize */

#include <io.h>       /* For _chmod, _unlink */
#include <stdio.h>    /* For sprintf */
#include <sys/stat.h> /* For _S_IREAD, _S_IWRITE */
#include <windows.h>  /* For MAX_PATH */

#include <Lionhead/LHLog/ver4.0/LHVersion.h>          /* For LHVersion */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h> /* For LHNetGetProfileList */

#include "CameraModeNew3.h" /* For CameraModeNew3 */
#include "ControlHand.h"    /* For CHand */
#include "ControlMap.h"     /* For ControlMap */
#include "Creature.h"       /* For Creature */
#include "Game.h"           /* For GGame */
#include "HelpProfile.h"    /* For HelpProfile */
#include "HelpSystem.h"     /* For HelpSystem */
#include "Interface.h"      /* For GInterface */
#include "Player.h"         /* For GPlayer */

#define PACKET_TYPE_HAND_ORIENTATION ((PACKET_TYPE)0x64)

PlayerProfile PlayerProfile::Profile;

void PlayerProfile::SetCurrentProfile(wchar_t* name)
{
	wchar_t current[0x100];

	LHNetUseProfile(name);
	LHNetSaveDefaultProfileNameInRegistry(name);
	GetCurrentProfile(current);
	GetProfileByName(current, Profile);
	GGame::g_game->path_creator.UpdateCurrentProfile();
	if (GGame::g_game->control_map != NULL)
	{
		GGame::g_game->control_map->LoadCurrentProfileKeys();
	}
	CameraModeNew3::TiltKeepsFocusHeight = Profile.pitchaboutcentre == false;
	CameraModeNew3::EdgeScrollEnabled = Profile.pushscroll;
	if (GGame::g_game->help_system != NULL)
	{
		GGame::g_game->help_system->SetImmersionLevel((IMMERSION_LEVEL)Profile.IMMERSION_KEY);
	}
	if (GGame::g_game->Initialised)
	{
		if (GGame::g_game->MyInterface() != NULL && GGame::g_game->MyInterface()->GetRenderHand() != NULL)
		{
			CHand* hand = GGame::g_game->MyInterface()->GetRenderHand();
			if (hand != NULL && hand->HandOrientation == Profile.HAND_ORIENTATION)
			{
				GGame::g_game->SetPacket(PACKET_TYPE_HAND_ORIENTATION, 0UL, Profile.HAND_ORIENTATION == 0);
			}
		}
	}
	if (GGame::g_game->Initialised && !GGame::g_game->IsMultiplayerGame())
	{
		Creature* creature = GGame::g_game->MyPlayer()->creature.Get();
		if (creature != NULL)
		{
			wcscpy(creature->name, Profile.CreatureName);
		}
	}
}

void PlayerProfile::GetCurrentProfile(wchar_t* name)
{
	wcscpy(name, LHNetGetCurrentUsedProfile());
}

int PlayerProfile::GetProfileIdx(wchar_t* name)
{
	LHLinkedList<wchar_t*> list;
	LHNetGetProfileList(&list);
	wchar_t* profile = list.count != 0 ? list.GetHead() : NULL;
	int      index = 0;
	for (; profile != NULL && index < list.count; index++)
	{
		if (wcscmp(profile, name) == 0)
		{
			break;
		}
		profile = list.FindNext(profile);
	}
	if (index == list.count)
	{
		index = -1;
	}
	LHNetFreeProfileList(&list);
	return index;
}

int PlayerProfile::GetNumberOfProfiles()
{
	LHLinkedList<wchar_t*> list;
	LHNetGetProfileList(&list);
	int count = list.count;
	LHNetFreeProfileList(&list);
	return count;
}

void PlayerProfile::GetProfileNameByIndex(int index, wchar_t* name)
{
	LHLinkedList<wchar_t*> list;
	LHNetGetProfileList(&list);
	wcscpy(name, list.GetAtPosition(index));
	LHNetFreeProfileList(&list);
}

// BW1W120 0066ba70 BW1M119 inlined
void EncryptPassword(wchar_t* password, wchar_t* encrypted)
{
	wcscpy(encrypted, password);
	LHVersion::EncryptBlock((uint8_t*)encrypted, wcslen(encrypted) * sizeof(wchar_t) + sizeof(wchar_t));
}

// BW1W120 0066baa0 BW1M119 inlined
void DecryptPassword(wchar_t* encrypted, wchar_t* password)
{
	wcscpy(password, encrypted);
	LHVersion::DecryptBlock((uint8_t*)password, wcslen(password) * sizeof(wchar_t) + sizeof(wchar_t));
}

void PlayerProfile::GetProfileByName(wchar_t* name, PlayerProfile& profile)
{
	unsigned long size;
	wchar_t       password[0x80];
	wchar_t       current[0x100];

	GetCurrentProfile(current);
	LHNetUseProfile(name);
	wcscpy(profile.CurrentProfile, name);
	size = PLAYER_PROFILE_REGISTRY_VALUE_SIZE;
	wcscpy(profile.CreatureName, L"?");
	LHNetGetCurrentProfileWString("creature name", profile.CreatureName, &size);
	size = PLAYER_PROFILE_REGISTRY_VALUE_SIZE;
	wcscpy(profile.LoginName, L"");
	LHNetGetCurrentProfileWString((char*)LH_NET_PROFILE_LOGIN_NAME, profile.LoginName, &size);
	memset(profile.LoginPassword, 0, sizeof(profile.LoginPassword));
	size = PLAYER_PROFILE_REGISTRY_VALUE_SIZE;
	if (LHNetGetCurrentProfileData("login password", (unsigned char*)password, &size) == LH_OK)
	{
		DecryptPassword(password, profile.LoginPassword);
	}
	profile.PlayerSymbol = 0;
	LHNetGetCurrentProfileUlong("player symbol", (unsigned long*)&profile.PlayerSymbol);
	profile.stuff = 0;
	LHNetGetCurrentProfileUlong("stuff", (unsigned long*)&profile.stuff);
	if (LHNetGetCurrentProfileUlong("timestarted", (unsigned long*)&profile.timestarted) != LH_OK)
	{
		profile.timestarted = 0;
	}
#ifdef VERSION_BW1WCI
	if (LHNetGetCurrentProfileUlong("timestarted_creatureisle", (unsigned long*)&profile.timestarted_creatureisle) !=
	    LH_OK)
	{
		profile.timestarted_creatureisle = 0;
	}
#endif
	if (LHNetGetCurrentProfileUlong("numberofsaves", (unsigned long*)&profile.numberofsaves) != LH_OK)
	{
		profile.numberofsaves = 0;
	}
	if (LHNetGetCurrentProfileUlong("numberofloads", (unsigned long*)&profile.numberofloads) != LH_OK)
	{
		profile.numberofloads = 0;
	}
	if (LHNetGetCurrentProfileUlong("pitchaboutcentre", (unsigned long*)&profile.pitchaboutcentre) != LH_OK)
	{
		profile.pitchaboutcentre = 0;
	}
	if (LHNetGetCurrentProfileUlong("pushscroll", (unsigned long*)&profile.pushscroll) != LH_OK)
	{
		profile.pushscroll = 0;
	}
	if (LHNetGetCurrentProfileUlong((char*)HandOrientationKey, (unsigned long*)&profile.HAND_ORIENTATION) != LH_OK)
	{
		profile.HAND_ORIENTATION = 0;
	}
	if (LHNetGetCurrentProfileUlong("IMMERSION_KEY", (unsigned long*)&profile.IMMERSION_KEY) != LH_OK)
	{
		profile.IMMERSION_KEY = PLAYER_PROFILE_DEFAULT_IMMERSION_LEVEL;
	}
	if (GGame::g_game->help_profile != NULL)
	{
		GGame::g_game->help_profile->LoadFromProfile();
	}
	LHNetUseProfile(current);
	GGame::g_game->path_creator.UpdateCurrentProfile();
}

void PlayerProfile::WriteBackToRegistry(PlayerProfile& profile)
{
	wchar_t current[0x100];
	wchar_t encrypted[0x100];

	GetCurrentProfile(current);
	LHNetUseProfile(profile.CurrentProfile);
	LHNetSetCurrentProfileWString("creature name", profile.CreatureName);
	LHNetSetCurrentProfileWString((char*)LH_NET_PROFILE_LOGIN_NAME, profile.LoginName);
	memset(encrypted, 0, sizeof(encrypted));
	EncryptPassword(profile.LoginPassword, encrypted);
	LHNetSetCurrentProfileData("login password", (unsigned char*)encrypted,
	                           wcslen(profile.LoginPassword) * sizeof(wchar_t) + sizeof(wchar_t));
	LHNetSetCurrentProfileUlong("stuff", profile.stuff);
	LHNetSetCurrentProfileUlong("player symbol", profile.PlayerSymbol);
	LHNetSetCurrentProfileUlong("stuff", profile.stuff);
	LHNetSetCurrentProfileUlong("timestarted", profile.timestarted);
#ifdef VERSION_BW1WCI
	LHNetSetCurrentProfileUlong("timestarted_creatureisle", profile.timestarted_creatureisle);
#endif
	LHNetSetCurrentProfileUlong("numberofsaves", profile.numberofsaves);
	LHNetSetCurrentProfileUlong("numberofloads", profile.numberofloads);
	LHNetSetCurrentProfileUlong("pitchaboutcentre", profile.pitchaboutcentre);
	LHNetSetCurrentProfileUlong("pushscroll", profile.pushscroll);
	LHNetSetCurrentProfileUlong("IMMERSION_KEY", profile.IMMERSION_KEY);
	LHNetSetCurrentProfileUlong((char*)HandOrientationKey, profile.HAND_ORIENTATION);
	if (GGame::g_game->help_profile != NULL)
	{
		GGame::g_game->help_profile->SaveToProfile();
	}
	LHNetUseProfile(current);
	GGame::g_game->path_creator.UpdateCurrentProfile();
	CameraModeNew3::TiltKeepsFocusHeight = profile.pitchaboutcentre == false;
	CameraModeNew3::EdgeScrollEnabled = profile.pushscroll;
	if (GGame::g_game->help_system != NULL)
	{
		GGame::g_game->help_system->SetImmersionLevel((IMMERSION_LEVEL)profile.IMMERSION_KEY);
	}
	if (GGame::g_game->Initialised)
	{
		if (GGame::g_game->MyInterface() != NULL && GGame::g_game->MyInterface()->GetRenderHand() != NULL)
		{
			CHand* hand = GGame::g_game->MyInterface()->GetRenderHand();
			GGame::g_game->SetPacket(PACKET_TYPE_HAND_ORIENTATION, 0UL, profile.HAND_ORIENTATION == 0);
		}
	}
	if (GGame::g_game->Initialised && !GGame::g_game->IsMultiplayerGame())
	{
		Creature* creature = GGame::g_game->MyPlayer()->creature.Get();
		if (creature != NULL)
		{
			wcscpy(creature->name, profile.CreatureName);
		}
	}
}

void PlayerProfile::CreateProfile(wchar_t* name)
{
	LHNetCreateDefaultProfile(name);
}

void PlayerProfile::DeleteProfile(wchar_t* name)
{
	unsigned long size;
	char          path[MAX_PATH];
	char          file[MAX_PATH];

	wchar_t* current = LHNetGetCurrentUsedProfile();
	size = MAX_PATH;
	LHNetUseProfile(name);
	LHNetGetCurrentProfileString("file", file, &size);
	sprintf(path, ".\\Scripts\\CreatureMind\\%s", file);
	_chmod(path, _S_IREAD | _S_IWRITE);
	_unlink(path);
	LHNetUseProfile(current);
	LHNetDeleteProfile(name);
}

bool PlayerProfile::ProfileExists(wchar_t* name)
{
	return LHNetCheckProfileExists(name) != false;
}
