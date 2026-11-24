#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "WinCondition.h"

#include <list>     /* For std::list */
#include <map>      /* For std::map */
#include <string.h> /* For memcpy */
#include <string>   /* For std::string */

#include "ChannelBox.h"           /* For ChannelBox */
#include "HelpText.h"             /* For HelpTextDataBase::MultiplayerTextDatabase */
#include "MPFEData.h"             /* For MPFEData::Data */
#include "WinConditionSettings.h" /* For WinConditionSettings */
#include "WinConditionSetup.h"    /* For SetupWinConditions */
#include "WinConditionTemplate.h" /* For WinConditionTemplate */
#include "alexmfc.h"              /* For SetupList */

int WinConditionSettings::DefaultTargets[WC_LAST];
int WinConditionSettings::MapMaxTargets[WC_LAST];
int WinConditionSettings::MapMinTargets[WC_LAST];
int WinConditionSettings::MaxTargets[WC_LAST];
int WinConditionSettings::MinTargets[WC_LAST];
int WinConditionSettings::SmallSteps[WC_LAST];
int WinConditionSettings::LargeSteps[WC_LAST];

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
			MPFEData::Data.ActiveDialog->ConditionCheckBoxes[i]->style = BBSTYLE_CHECK_BOX_OFF;
			MPFEData::Data.ActiveDialog->ConditionList->SelectedIndex = -1;
			MPFEData::Data.ActiveDialog->SelectedCondition = NULL;
			MPFEData::Data.ActiveDialog->ConditionIncreaseButton->Hide(true);
			MPFEData::Data.ActiveDialog->ConditionDecreaseButton->Hide(true);
			MPFEData::Data.ActiveDialog->ConditionValueText->Hide(true);
			if (MPFEData::Data.IsHost && WinConditionSettings::DefaultTargets[i] != WIN_CONDITION_TARGET_UNAVAILABLE)
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
#endif
