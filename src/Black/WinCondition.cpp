#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "WinCondition.h"

#include <fstream>  /* For std::ifstream */
#include <list>     /* For std::list */
#include <map>      /* For std::map */
#include <sstream>  /* For std::stringstream */
#include <string.h> /* For memcpy */
#include <string>   /* For std::string */
#include <utility>  /* For std::pair */

#include "ChannelBox.h"           /* For ChannelBox */
#include "HelpText.h"             /* For HelpTextDataBase::MultiplayerTextDatabase */
#include "MPFEData.h"             /* For MPFEData::Data */
#include "WinConditionSettings.h" /* For WinConditionSettings */
#include "WinConditionSetup.h"    /* For SetupWinConditions */
#include "alexmfc.h"              /* For SetupList */

struct WinConditionTemplate
{
	std::map<int, WinConditionSettings> Conditions;
	std::string                         MapName;

	// BW1W120 00dcbc70
	static std::list<WinConditionTemplate*> Templates;
};

int WinConditionSettings::LargeSteps[WC_LAST];
int WinConditionSettings::SmallSteps[WC_LAST];
int WinConditionSettings::MinTargets[WC_LAST];
int WinConditionSettings::MaxTargets[WC_LAST];
int WinConditionSettings::MapMinTargets[WC_LAST];
int WinConditionSettings::MapMaxTargets[WC_LAST];
int WinConditionSettings::DefaultTargets[WC_LAST];

WinCondition::WinCondition()
{
	Init(WC_LAST);
}

WinCondition::~WinCondition() {}

void WinCondition::Init(int type)
{
	Type = type;
	Target = WinConditionSettings::DefaultTargets[type];
	Current = 0;
	Completed = false;
}

void WinCondition::AdjustTarget(int amount)
{
	if (Target + amount <= WinConditionSettings::MaxTargets[Type] &&
	    Target + amount >= WinConditionSettings::MinTargets[Type])
	{
		Target += amount;
	}
}

void WinCondition::SetTarget(int target)
{
	Target = target;
}

void WinConditionSettings::ResetLimits()
{
	memcpy(MaxTargets, MapMaxTargets, sizeof(MaxTargets));
	memcpy(MinTargets, MapMinTargets, sizeof(MinTargets));
	for (int i = 0; i < WC_LAST; i++)
	{
		MapMinTargets[i] = WIN_CONDITION_DEFAULT_MIN_TARGET;
	}
	for (int j = 0; j < WC_LAST; j++)
	{
		MinTargets[j] = WIN_CONDITION_DEFAULT_MIN_TARGET;
	}
	for (int k = 0; k < WC_LAST; k++)
	{
		MapMaxTargets[k] = WIN_CONDITION_DEFAULT_MAX_TARGET;
	}
	for (int l = 0; l < WC_LAST; l++)
	{
		MaxTargets[l] = WIN_CONDITION_DEFAULT_MAX_TARGET;
	}
}

void SetupWinConditions(std::string file_name)
{
	for (std::list<WinConditionTemplate*>::iterator it = WinConditionTemplate::Templates.begin();
	     it != WinConditionTemplate::Templates.end(); it++)
	{
		if ((*it)->MapName.find(file_name) == std::string::npos)
		{
			continue;
		}
		if (MPFEData::Data.IsHost)
		{
			MPFEData::Data.ActiveDialog->ConditionList->DeleteAll();
		}
		for (long i = 0; i < WC_LAST; i++)
		{
			std::map<int, WinConditionSettings>::iterator found = (*it)->Conditions.find(i);
			if (found != (*it)->Conditions.end())
			{
				WinConditionSettings::MaxTargets[found->second.Type] =
					WinConditionSettings::MapMaxTargets[found->second.Type] = found->second.Max;
				WinConditionSettings::MinTargets[found->second.Type] =
					WinConditionSettings::MapMinTargets[found->second.Type] = found->second.Min;
				WinConditionSettings::DefaultTargets[found->second.Type] = found->second.Target;
				WinConditionSettings::LargeSteps[found->second.Type] = found->second.LargeStep;
				WinConditionSettings::SmallSteps[found->second.Type] = found->second.SmallStep;
			}
			MPFEData::Data.Conditions[i].SetTarget(WinConditionSettings::DefaultTargets[i]);
			MPFEData::Data.ActiveDialog->ConditionEnabled[i] = false;
			MPFEData::Data.ActiveDialog->ConditionCheckBoxes[i]->style = 0;
			MPFEData::Data.ActiveDialog->ConditionList->SelectedIndex = -1;
			MPFEData::Data.ActiveDialog->SelectedCondition = NULL;
			MPFEData::Data.ActiveDialog->ConditionIncreaseButton->Hide(true);
			MPFEData::Data.ActiveDialog->ConditionDecreaseButton->Hide(true);
			MPFEData::Data.ActiveDialog->ConditionValueText->Hide(true);
			if (MPFEData::Data.IsHost && WinConditionSettings::DefaultTargets[i] != -1)
			{
				MPFEData::Data.ActiveDialog->ConditionList->AddString(
					HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(i + 1), 0, 0, 0);
				MPFEData::Data.ActiveDialog->ConditionList->SetItemData(
					MPFEData::Data.ActiveDialog->ConditionList->NumItems - 1, i);
			}
		}
	}
}

void WinCondition::Add(int amount)
{
	Current += amount;
	if (Current >= Target)
	{
		Completed = true;
	}
}

void WinCondition::Set(int value)
{
	Current = value;
	if (value >= Target)
	{
		Completed = true;
	}
}

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
