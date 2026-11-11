#include "Settings.h"

#include <stdio.h>
#include <string.h>

#ifdef VERSION_BW1WCI
#include "GameOSFile.h"
#endif

#ifdef VERSION_BW1WCI
#define SETTINGS_DEFAULT_QUEST_PATH ".\\Scripts\\CreatureIsles\\"
#define SETTINGS_DEFAULT_MAP_PATH   ".\\Scripts\\CreatureIsles\\IsleMap.txt"
#else
#define SETTINGS_DEFAULT_QUEST_PATH ".\\Scripts\\Quests\\"
#endif

char Settings::ConfigFile[_MAX_PATH];

void Settings::ParseConfigFile(char* path)
{
	char  line[0x1000];
	FILE* file = NULL;

	if (path != NULL)
	{
		file = fopen(path, "r");
	}
	else if (ConfigFile[0] != '\0')
	{
		file = fopen(ConfigFile, "r");
	}

	if (file != NULL)
	{
		while (fgets(line, sizeof(line), file) != NULL)
		{
			char  delimiters[] = " ,\t\n";
			char* token = strtok(line, delimiters);
			if (token != NULL && token[0] != '/' && token[1] != '/')
			{
				if (strcmp(token, "QUESTDIR") == 0)
				{
					token = strtok(NULL, delimiters);
					if (token != NULL)
					{
						SetQuestPath(token);
					}
				}
#ifdef VERSION_BW1WCI
				if (strcmp(token, "MAPFILE") == 0)
				{
					token = strtok(NULL, delimiters);
					if (token != NULL)
					{
						SetMapPath(token);
					}
				}
#endif
			}
		}
		fclose(file);
	}
	else
	{
		InitialiseToDefaults();
	}
}

void Settings::InitialiseToDefaults()
{
	SetQuestPath(SETTINGS_DEFAULT_QUEST_PATH);
#ifdef VERSION_BW1WCI
	SetMapPath(SETTINGS_DEFAULT_MAP_PATH);
#endif
}

void Settings::SetQuestPath(char* path)
{
	strcpy(QuestPath, path);
}

#ifdef VERSION_BW1WCI
void Settings::SetMapPath(char* path)
{
	strcpy(MapPath, path);
}

void Settings::Load(GameOSFile& file)
{
	file.ReadIt(QuestPath);
	file.ReadIt(MapPath);
	file.ReadIt(ConfigFile);
}

void Settings::Save(GameOSFile& file)
{
	file.WriteIt(QuestPath);
	file.WriteIt(MapPath);
	file.WriteIt(ConfigFile);
}
#endif
