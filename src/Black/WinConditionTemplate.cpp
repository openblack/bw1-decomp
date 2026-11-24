#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include "WinConditionTemplate.h"

#include <fstream>  /* For std::ifstream */
#include <list>     /* For std::list */
#include <sstream>  /* For std::stringstream */
#include <string.h> /* For memset */
#include <string>   /* For std::string */
#include <utility>  /* For std::pair */

#include "WinCondition.h"         /* For WIN_CONDITION_TYPE */
#include "WinConditionSettings.h" /* For WinConditionSettings */

std::pair<std::string, WIN_CONDITION_TYPE> WinConditionSettings::TypeNames[WC_LAST] = {
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_KILL_NUM_VILLAGERS", WC_KILL_NUM_VILLAGERS),                 //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_CREATURE_KILL_VILLAGERS", WC_CREATURE_KILL_VILLAGERS),       //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_VILLAGERS_BORN_IN_TOWN", WC_VILLAGERS_BORN_IN_TOWN),         //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_HOUSES_BUILT", WC_HOUSES_BUILT),                             //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_WONDERS_BUILT", WC_WONDERS_BUILT),                           //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_FOOD_IN_PITS", WC_FOOD_IN_PITS),                             //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_WOOD_IN_PITS", WC_WOOD_IN_PITS),                             //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_TAKEOVER_NUM_TOWNS", WC_TAKEOVER_NUM_TOWNS),                 //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_PRAYER_POWER_GENERATED", WC_PRAYER_POWER_GENERATED),         //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_BUILDINGS_PLAYER_SMASHED", WC_BUILDINGS_PLAYER_SMASHED),     //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_BUILDINGS_CREATURE_SMASHED", WC_BUILDINGS_CREATURE_SMASHED), //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_BELIEF_IN_WORLD", WC_BELIEF_IN_WORLD),                       //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_BUILD_COMPLETE_NEW_TOWN", WC_BUILD_COMPLETE_NEW_TOWN),       //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_VILLAGERS_CONVERTED", WC_VILLAGERS_CONVERTED),               //
	std::pair<std::string, WIN_CONDITION_TYPE>("WC_GROW_TREES", WC_GROW_TREES),                                 //
};

std::list<WinConditionTemplate*> WinConditionTemplate::Templates;

void WinConditionSettings::Parse(std::string text)
{
	size_t      colon = text.find(":");
	std::string name(text, 0, colon);
	int         type;
	for (type = 0; type < WC_LAST; type++)
	{
		if (name.compare(TypeNames[type].first) == 0)
		{
			break;
		}
	}
	Type = type;
	std::stringstream values(std::string(text, colon + 1, std::string::npos));
	SmallStep = -1;
	values >> Target;
	values >> Min;
	values >> Max;
	values >> LargeStep;
	values >> SmallStep;
}

void LoadConditionTemplate(const char* file_name)
{
	std::ifstream         file(file_name);
	WinConditionTemplate* current = NULL;
	for (std::list<WinConditionTemplate*>::iterator it = WinConditionTemplate::Templates.begin();
	     it != WinConditionTemplate::Templates.end(); it++)
	{
		delete *it;
	}
	WinConditionTemplate::Templates.clear();
	if (file.is_open())
	{
		while (!file.eof())
		{
			std::string line;
			std::getline(file, line);
			if (line.find("//") != std::string::npos)
			{
				continue;
			}
			size_t pos = line.find("FORMAP");
			if (pos != std::string::npos)
			{
				if (current != NULL)
				{
					WinConditionTemplate::Templates.push_back(current);
					current = NULL;
				}
				current = new WinConditionTemplate;
				current->MapName = line.substr(pos + sizeof("FORMAP"), std::string::npos);
			}
			pos = line.find("WC_");
			if (pos != std::string::npos)
			{
				WinConditionSettings settings;
				memset(&settings, 0, sizeof(settings));
				settings.Parse(line.substr(pos, std::string::npos));
				current->Conditions.insert(std::pair<const int, WinConditionSettings>(settings.Type, settings));
			}
		}
		if (current != NULL)
		{
			WinConditionTemplate::Templates.push_back(current);
			current = NULL;
		}
	}
}
#endif
