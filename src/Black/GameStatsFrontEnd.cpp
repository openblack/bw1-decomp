#include <stdio.h>  /* For swprintf */
#include <string.h> /* For wcscpy */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For NEW */

#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "EndGameBox.h"
#include "FrontEnd.h" /* For FRONT_END_TAB_FIRST_ID */
#include "Game.h"     /* For GGame::g_game */
#include "GameStats.h"
#include "GameStatsList.h" /* For NewGameStatsList */
#include "HelpText.h"      /* For HelpTextDataBase::HelpTextDatabase */
#include "MultiplayerConditionBox.h"
#include "Player.h" /* For GPlayer::GetPlayer3DColor */
#include "StatsBox.h"
#include "alexmfc.h"

#define STAT_DETAILS_MAX_VALUES 4
#define STAT_DETAILS_MAX_VALUE  1e20f

const float StatDetailsMinValue = -1e20f;

struct StatDetails
{
	int              NumValues;
	float            Values[STAT_DETAILS_MAX_VALUES];
	LH3DColor        Colors[STAT_DETAILS_MAX_VALUES]; /* 0x14 */
	float            Max;                             /* 0x24 */
	int              DecimalPlaces;
	SHOWMAXTYPE      ShowMax;
	GRAPHDISPLAYTYPE Display; /* 0x30 */
	wchar_t          Format[16];

	// BW1W120 inlined BW1M119 013282c0
	StatDetails() {}

	// BW1W120 inlined BW1M119 01328550
	void MakeFormat()
	{
		switch (ShowMax)
		{
		case SHOWMAXTYPE_FRACTION:
			swprintf(Format, L"%%0.%df/%%0.%df", DecimalPlaces, DecimalPlaces);
			break;
		case SHOWMAXTYPE_PERCENT:
			swprintf(Format, L"%%0.%df%%%%", DecimalPlaces);
			break;
		default:
			swprintf(Format, L"%%0.%df", DecimalPlaces);
			break;
		}
	}

	// BW1W120 0056a960 BW1M119 01329010
	uint32_t Draw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max, int clip_min, int clip_max,
	              int style);
};

StatsBox*                StatsBox::Instance;
EndGameBox*              EndGameBox::Instance;
MultiplayerConditionBox* MultiplayerConditionBox::Instance;

static bool32_t TotalTitleDrawn;

uint32_t StatDetails::Draw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max, int clip_min,
                           int clip_max, int style)
{
	if (clip_min >= y_max - 1 || clip_max <= y_min + 1)
		return false;

	if (StatsBox::Instance != NULL)
	{
		if ((style != BBSTYLE_CHECK_BOX_OFF || Display == GRAPHDISPLAYTYPE_BAR) && Display != GRAPHDISPLAYTYPE_TEXT)
		{
			clip_min = clip_min > y_min ? clip_min < y_max ? clip_min : y_max : y_min;
			clip_max = clip_max > y_min ? clip_max < y_max ? clip_max : y_max : y_min;
			if (clip_min < clip_max - 10 && NumValues >= 1 && NumValues <= STATS_BOX_NUM_SCORE_GRAPHS)
			{
				SetupHSBarGraph* graph = StatsBox::Instance->ScoreGraphs[NumValues - 1];
				graph->rect.end.y = clip_max - 2;
				graph->rect.start.y = clip_min + 2;
				graph->rect.end.x = x_max - 4;
				graph->rect.start.x = x_max - 300;
				for (int i = 0; i < NumValues; i++)
					graph->SetBar(i, VBarData(Colors[i], Values[i]));
				if (NumValues == 1)
					graph->SetScale(Max);
				else
					graph->SetScale(0.0f);
				graph->Draw(false, false);
			}
		}
		else
		{
			int      x = x_max - 300;
			int      spacing = 300 / (NumValues + 1);
			float    total = 0.0f;
			bool32_t single = false;
			wchar_t  text[256];
			for (int i = 0; i < NumValues; i++)
			{
				total += Values[i];
				if (ShowMax == SHOWMAXTYPE_PERCENT && Max != 0.0f)
					swprintf(text, Format, Values[i] / Max * 100.0f, Max);
				else
					swprintf(text, Format, Values[i], Max);
				if (NumValues > 1)
					SetupThing::DrawTextWrap(x - spacing * 2, y_min, x + spacing * 3, y_max, clip_min + 2, true, text,
					                         GetSmallTextSize(), &Colors[i], false, false);
				else
					single = true;
				x += spacing;
			}
			if (ShowMax != SHOWMAXTYPE_PERCENT)
			{
				swprintf(text, Format, total, Max);
				SetupThing::DrawTextWrap(x - spacing * 2, y_min, x + spacing * 3, y_max, clip_min + 2, true, text,
				                         GetSmallTextSize(), &SetupThing::NormalColour, false, false);
			}
			if (!TotalTitleDrawn && single)
			{
				TotalTitleDrawn = true;
				int      title_y = y_min - GetSmallTextSize();
				wchar_t* title = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_03);
				SetupThing::DrawTextWrap(x - spacing * 2, title_y, x + spacing * 3, y_max, title_y, true, title,
				                         GetSmallTextSize(), &SetupThing::NormalColour, false, false);
			}
		}
	}
	return true;
}

void StatsBox::CopyDetailsToDynamic(int index, SetupVBarGraph* graph)
{
	if (graph == NULL)
		graph = BarGraphs[2];
	SelectedDetail = index;
	graph->Reset();
	graph->label[0] = L'\0';
	DetailsList->SetSelected(index);
	if (index >= 0 && Package != NULL && StatsBuffer != NULL)
	{
		StatDetails* details = &StatsBuffer[index];
		for (int i = 0; i < details->NumValues; i++)
		{
			graph->AddBar(VBarData(details->Colors[i], details->Values[i]));
		}
		graph->SetScale(details->NumValues > 1 ? 0.0f : details->Max);
		wcscpy(graph->label, DetailsList->item_labels[index]);
	}
}

void StatsBox::ADDFLOATPLAYER(wchar_t* name, float* value, int decimal_places, float max, SHOWMAXTYPE show_max,
                              GRAPHDISPLAYTYPE display)
{
	int index = DetailsList->NumItems;
	DetailsList->AddString(name, 0, 0, 0);
	DetailsList->SetItemData(index, (uint32_t)&StatsBuffer[index]);
	DetailsList->SetListBoxDraw(index, DetailsDraw);

	GameStatsPackage::GameStatsPerPlayer* players = Package->PerPlayer;
	int                                   num_players = Package->NumPlayers;
	StatDetails*                          details = &StatsBuffer[index];
	details->Display = display;
	details->DecimalPlaces = decimal_places;
	details->NumValues = num_players;
	details->Max = 0.0f;
	for (int i = 0; i < num_players;
	     i++, value = (float*)((uint8_t*)value + sizeof(GameStatsPackage::GameStatsPerPlayer)))
	{
		details->Values[i] = *value;
		details->Values[i] =
			details->Values[i] > StatDetailsMinValue
				? details->Values[i] < STAT_DETAILS_MAX_VALUE ? details->Values[i] : STAT_DETAILS_MAX_VALUE
				: StatDetailsMinValue;
		if (details->Values[i] > details->Max)
			details->Max = details->Values[i];
	}
	for (int j = 0; j < num_players; j++)
		details->Colors[j] = players[j].Colour;
	details->ShowMax = show_max;
	if (details->ShowMax != SHOWMAXTYPE_LARGEST)
		details->Max = max;
	details->MakeFormat();
}

uint32_t __stdcall StatsBox::DetailsDraw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max,
                                         int clip_min, int clip_max)
{
	uint32_t result = 1;
	if (Instance != NULL && Instance->DetailsList == list && Instance->StatsBuffer != NULL)
	{
		int style = Instance->CheckBoxes[0]->style;
		if (index >= 0 && index < Instance->DetailsList->NumItems)
		{
			StatDetails* details = (StatDetails*)list->GetItemData(index);
			result = details->Draw(list, index, x_min, y_min, x_max, y_max, clip_min, clip_max, style);
		}
	}
	return result;
}

void StatsBox::ADDULONGPLAYER(wchar_t* name, unsigned long* value, float max, SHOWMAXTYPE show_max,
                              GRAPHDISPLAYTYPE display)
{
	int index = DetailsList->NumItems;
	DetailsList->AddString(name, 0, 0, 0);
	DetailsList->SetItemData(index, (uint32_t)&StatsBuffer[index]);
	DetailsList->SetListBoxDraw(index, DetailsDraw);

	GameStatsPackage::GameStatsPerPlayer* players = Package->PerPlayer;
	int                                   num_players = Package->NumPlayers;
	StatDetails*                          details = &StatsBuffer[index];
	details->Display = display;
	details->DecimalPlaces = 0;
	details->NumValues = num_players;
	details->Max = 0.0f;
	for (int i = 0; i < num_players;
	     i++, value = (unsigned long*)((uint8_t*)value + sizeof(GameStatsPackage::GameStatsPerPlayer)))
	{
		details->Values[i] = *value;
		if (details->Values[i] > details->Max)
			details->Max = details->Values[i];
	}
	for (int j = 0; j < num_players; j++)
		details->Colors[j] = players[j].Colour;
	details->ShowMax = show_max;
	if (details->ShowMax != SHOWMAXTYPE_LARGEST)
		details->Max = max;
	details->MakeFormat();
}

void StatsBox::ADDFLOATSINGLE(wchar_t* name, float* value, int decimal_places, float max, SHOWMAXTYPE show_max,
                              GRAPHDISPLAYTYPE display)
{
	int index = DetailsList->NumItems;
	DetailsList->AddString(name, 0, 0, 0);
	DetailsList->SetItemData(index, (uint32_t)&StatsBuffer[index]);
	DetailsList->SetListBoxDraw(index, DetailsDraw);

	LH3DColor    colour = GGame::g_game->MyPlayer()->GetPlayer3DColor();
	StatDetails* details = &StatsBuffer[index];
	details->Display = display;
	details->DecimalPlaces = decimal_places;
	details->NumValues = 1;
	details->Max = 0.0f;
	for (int i = 0; i < 1; i++)
	{
		details->Values[i] = *value;
		details->Values[i] =
			details->Values[i] > StatDetailsMinValue
				? details->Values[i] < STAT_DETAILS_MAX_VALUE ? details->Values[i] : STAT_DETAILS_MAX_VALUE
				: StatDetailsMinValue;
		if (details->Values[i] > details->Max)
			details->Max = details->Values[i];
	}
	for (int j = 0; j < 1; j++)
		details->Colors[j] = colour;
	details->ShowMax = show_max;
	if (details->ShowMax != SHOWMAXTYPE_LARGEST)
		details->Max = max;
	details->MakeFormat();
}

void StatsBox::ADDULONGSINGLE(wchar_t* name, unsigned long* value, float max, SHOWMAXTYPE show_max,
                              GRAPHDISPLAYTYPE display)
{
	int index = DetailsList->NumItems;
	DetailsList->AddString(name, 0, 0, 0);
	DetailsList->SetItemData(index, (uint32_t)&StatsBuffer[index]);
	DetailsList->SetListBoxDraw(index, DetailsDraw);

	LH3DColor    colour = GGame::g_game->MyPlayer()->GetPlayer3DColor();
	StatDetails* details = &StatsBuffer[index];
	details->Display = display;
	details->DecimalPlaces = 0;
	details->NumValues = 1;
	details->Max = 0.0f;
	for (int i = 0; i < 1; i++)
	{
		details->Values[i] = *value;
		if (details->Values[i] > details->Max)
			details->Max = details->Values[i];
	}
	for (int j = 0; j < 1; j++)
		details->Colors[j] = colour;
	details->ShowMax = show_max;
	if (details->ShowMax != SHOWMAXTYPE_LARGEST)
		details->Max = max;
	details->MakeFormat();
}

void StatsBox::UpdateDetails()
{
	ClearDetails();
	if (Package != NULL)
	{
		uint32_t num_towns = GGame::g_game->GameLists.TownList.count;
		delete[] StatsBuffer;
		StatsBuffer = NewGameStatsList<StatDetails>(STATS_BOX_MAX_DETAILS);
		switch (CurrentTab)
		{
		case 2:
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_48),
			               &Package->PerPlayer[0].CreatureDamage, 2, 100.0f, SHOWMAXTYPE_PERCENT,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_68),
			               &Package->PerPlayer[0].CreatureHunger, 2, 100.0f, SHOWMAXTYPE_PERCENT,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_137),
			               &Package->PerPlayer[0].CreatureTiredness, 2, 100.0f, SHOWMAXTYPE_PERCENT,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_158),
			               &Package->PerPlayer[0].CreatureAge, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_159),
			               &Package->PerPlayer[0].CreatureAlignment, 2, 1.0f, SHOWMAXTYPE_NONE,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_161),
			               &Package->PerPlayer[0].CreatureNumAnimalsKilled, 1.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_163),
			               &Package->PerPlayer[0].CreatureNumBattlesFought, 1.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[1]);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_164),
			               &Package->PerPlayer[0].CreatureNumBattlesWon, 1.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[0]);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_165),
			               &Package->PerPlayer[0].CreatureNumPoos, 1.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_166),
			               &Package->PerPlayer[0].CreatureNumMushroomsEaten, 1.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			break;
		case 5:
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_09),
			               &Package->TotalLinesOfCodeExecuted, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[2]);
			ADDFLOATSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_10),
			               &Package->MaxFrameRate, 1, 50.0f, SHOWMAXTYPE_NONE, GRAPHDISPLAYTYPE_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[1]);
			ADDFLOATSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_11),
			               &Package->MinFrameRate, 1, 50.0f, SHOWMAXTYPE_NONE, GRAPHDISPLAYTYPE_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[0]);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_13),
			               &Package->NumBaseAllocations, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_14),
			               &Package->TimePlayed, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_15),
			               &Package->InstructionCount, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_16),
			               &Package->StatsVersion, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_17),
			               &Package->DistanceDragged, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_18),
			               &Package->TimeLookingAtSky, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_19),
			               &Package->TimeLookingAtGround, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_20),
			               &Package->GesturesDone, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_21),
			               &Package->ZoomCount, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_22),
			               &Package->RotateCount, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_23),
			               &Package->PitchCount, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_24),
			               &Package->TotalInterfaceActions, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_25),
			               &Package->TotalObjectsThrown, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_26),
			               &Package->TotalThingsPickedUp, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_27),
			               &Package->NumFightAttacks, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_28),
			               &Package->NumFightBlocks, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGSINGLE(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_29),
			               &Package->NumFightSteps, 1.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_TEXT);
			break;
		case 3:
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_30),
			               &Package->PerPlayer[0].TotalBirths, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_31),
			               &Package->PerPlayer[0].TotalDeaths, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_32),
			               &Package->PerPlayer[0].FinalTotalPopulation, 1000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[2]);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_33),
			               &Package->PerPlayer[0].FinalMalePopulation,
			               (float)Package->PerPlayer[0].FinalTotalPopulation, SHOWMAXTYPE_FRACTION,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_34),
			               &Package->PerPlayer[0].FinalFemalePopulation,
			               (float)Package->PerPlayer[0].FinalTotalPopulation, SHOWMAXTYPE_FRACTION,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_35),
			               &Package->PerPlayer[0].FinalTotalPopulationCapacity, 1000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_36),
			               &Package->PerPlayer[0].MaxTotalPopulation, 1000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_37),
			               &Package->PerPlayer[0].MaxMalePopulation, (float)Package->PerPlayer[0].MaxTotalPopulation,
			               SHOWMAXTYPE_FRACTION, GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_38),
			               &Package->PerPlayer[0].MaxFemalePopulation, (float)Package->PerPlayer[0].MaxTotalPopulation,
			               SHOWMAXTYPE_FRACTION, GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_39),
			               &Package->PerPlayer[0].MinTotalPopulation, 1000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_40),
			               &Package->PerPlayer[0].MinMalePopulation, (float)Package->PerPlayer[0].MinTotalPopulation,
			               SHOWMAXTYPE_FRACTION, GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_41),
			               &Package->PerPlayer[0].MinFemalePopulation, (float)Package->PerPlayer[0].MinTotalPopulation,
			               SHOWMAXTYPE_FRACTION, GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_42),
			               &Package->PerPlayer[0].TotalPeopleConverted, 1000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_43),
			               &Package->PerPlayer[0].AverageSatisfactionOfVillagers, 2, 1.0f, SHOWMAXTYPE_NONE,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[0]);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_44),
			               &Package->PerPlayer[0].TownsOwned, 25.0f, SHOWMAXTYPE_LARGEST, GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_45),
			               &Package->PerPlayer[0].TotalBuildings, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_46),
			               &Package->PerPlayer[0].TotalAbodes, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_47),
			               &Package->PerPlayer[0].TotalCivicBuildings, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_48),
			               &Package->PerPlayer[0].TotalWonders, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_49),
			               &Package->PerPlayer[0].TotalBuildingsBuilt, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[1]);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_50),
			               &Package->PerPlayer[0].TotalAbodesBuilt, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_51),
			               &Package->PerPlayer[0].TotalCivicBuildingsBuilt, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_52),
			               &Package->PerPlayer[0].TotalWondersBuilt, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_53),
			               &Package->PerPlayer[0].NumDiscipleFarmers, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_54),
			               &Package->PerPlayer[0].NumDiscipleForesters, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_55),
			               &Package->PerPlayer[0].NumDiscipleFishermen, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_56),
			               &Package->PerPlayer[0].NumDiscipleBuilders, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_57),
			               &Package->PerPlayer[0].NumDiscipleBreeders, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_58),
			               &Package->PerPlayer[0].NumDiscipleTraders, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_59),
			               &Package->PerPlayer[0].NumDiscipleMissionaries, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_60),
			               &Package->PerPlayer[0].NumDiscipleCraftsmen, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_61),
			               &Package->PerPlayer[0].TotalFoodEaten, 1000000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_62),
			               &Package->PerPlayer[0].WoodUsed, 1000000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			break;
		case 4:
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_63),
			               &Package->PerPlayer[0].TotalAgressiveSpellsCast, 1000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[0]);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_64),
			               &Package->PerPlayer[0].TotalNiceSpellsCast, 1000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[1]);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_65),
			               &Package->PerPlayer[0].TotalCreatureSpellsCast, 1000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, BarGraphs[2]);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_66),
			               &Package->PerPlayer[0].NumFireballCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_67),
			               &Package->PerPlayer[0].NumFireballPU1Cast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_68),
			               &Package->PerPlayer[0].NumFireballPU2Cast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_69),
			               &Package->PerPlayer[0].NumLightningCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_70),
			               &Package->PerPlayer[0].NumLightningPU1Cast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_71),
			               &Package->PerPlayer[0].NumLightningPU2Cast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_72),
			               &Package->PerPlayer[0].NumExplosionCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_73),
			               &Package->PerPlayer[0].NumExplosionPU1Cast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_74),
			               &Package->PerPlayer[0].NumExplosionPU2Cast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_75),
			               &Package->PerPlayer[0].NumHealCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_76),
			               &Package->PerPlayer[0].NumHealPU1Cast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_77),
			               &Package->PerPlayer[0].NumTeleportCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_78),
			               &Package->PerPlayer[0].NumMagicForestCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_79),
			               &Package->PerPlayer[0].NumMagicFoodCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_80),
			               &Package->PerPlayer[0].NumMagicFoodPU1Cast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_81),
			               &Package->PerPlayer[0].NumStormWindRainCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_82),
			               &Package->PerPlayer[0].NumStormWindRainLightningCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_83),
			               &Package->PerPlayer[0].NumTornadoCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_84),
			               &Package->PerPlayer[0].NumMagicShieldCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_85),
			               &Package->PerPlayer[0].NumPhysicalShieldCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_86),
			               &Package->PerPlayer[0].NumMagicWoodCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_87),
			               &Package->PerPlayer[0].NumMagicWaterCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_88),
			               &Package->PerPlayer[0].NumMagicWaterPU1Cast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_89),
			               &Package->PerPlayer[0].NumFlockFlyingCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_90),
			               &Package->PerPlayer[0].NumFlockGroundCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_91),
			               &Package->PerPlayer[0].NumCreatureFreezeCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_92),
			               &Package->PerPlayer[0].NumCreatureSmallCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_93),
			               &Package->PerPlayer[0].NumCreatureBigCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_94),
			               &Package->PerPlayer[0].NumCreatureWeakCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_95),
			               &Package->PerPlayer[0].NumCreatureStrongCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_96),
			               &Package->PerPlayer[0].NumCreatureFatCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_97),
			               &Package->PerPlayer[0].NumCreatureThinCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_98),
			               &Package->PerPlayer[0].NumCreatureInvisibleCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_99),
			               &Package->PerPlayer[0].NumCreatureCompassionCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_100),
			               &Package->PerPlayer[0].NumCreatureAngryCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_106),
			               &Package->PerPlayer[0].NumCreatureItchyCast, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_107),
			               &Package->PerPlayer[0].TotalChantsUsed, 1, 1000000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_108),
			               &Package->PerPlayer[0].TotalNumSacrifices, 100.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			break;
		case 1:
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_110),
			               &Package->PerPlayer[0].FinalAreaOfInfluence, 0, 1000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			CopyDetailsToDynamic(DetailsList->NumItems - 1, NULL);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_111),
			               &Package->PerPlayer[0].NumGodsDefeated, (float)(GameStats::GetNumPlayersInGame() - 1),
			               SHOWMAXTYPE_FRACTION, GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_112),
			               &Package->PerPlayer[0].AligmentChange, 2, 1.0f, SHOWMAXTYPE_NONE, GRAPHDISPLAYTYPE_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_113),
			               &Package->PerPlayer[0].TotalPeopleKilled, (float)(num_towns * 20), SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_114),
			               &Package->PerPlayer[0].FinalTotalBelief, 0, 100000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_115),
			               &Package->PerPlayer[0].MaxTotalBelief, 0, 100000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_116),
			               &Package->PerPlayer[0].MinTotalBelief, 0, 100000.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_117),
			               &Package->PerPlayer[0].NumOfArtifacts, (float)(num_towns * 10), SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_118),
			               &Package->PerPlayer[0].CreatureGrowth, 2, 1.0f, SHOWMAXTYPE_PERCENT,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);
			ADDFLOATPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_119),
			               &Package->PerPlayer[0].CreatureAlignmentChange, 2, 1.0f, SHOWMAXTYPE_NONE,
			               GRAPHDISPLAYTYPE_TEXT);
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_120),
			               &Package->PerPlayer[0].BuildingsDestroyed, (float)(num_towns * 10), SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_BAR_OR_TEXT);

			{
				LineGraphs[1]->Reset();
				LineGraphs[0]->Reset();
				HLineData population;
				HLineData influence;
				for (int i = 0; i < Package->NumPlayers; i++)
				{
					population.SetNum(Package->PerPlayer[i].PopulationGraph.Index);
					population.color = Package->PerPlayer[i].Colour;
					for (int j = 0; j < population.PointCount; j++)
						population.SetPoint(j, Package->PerPlayer[i].PopulationGraph.Data[j]);
					LineGraphs[1]->AddLine(population);
					influence.SetNum(Package->PerPlayer[i].InfluenceGraph.Index);
					influence.color = Package->PerPlayer[i].Colour;
					for (int k = 0; k < influence.PointCount; k++)
						influence.SetPoint(k, Package->PerPlayer[i].InfluenceGraph.Data[k]);
					LineGraphs[0]->AddLine(influence);
				}
				LineGraphs[1]->SetScale(0.0f, 0.0f, false);
				LineGraphs[0]->SetScale(0.0f, 0.0f, false);
			}
			break;
		}
	}
}

void StatsBox::ClearDetails()
{
	delete[] StatsBuffer;
	StatsBuffer = NULL;
	if (DetailsList != NULL)
		DetailsList->DeleteAll();
	CopyDetailsToDynamic(-1, NULL);
}

void StatsBox::SetTab(int tab)
{
	for (int i = 0; i < STATS_BOX_NUM_TABS; i++)
		Tabs[i]->selected = i == tab;

	BarGraphs[0]->Hide(false);
	BarGraphs[1]->Hide(false);
	BarGraphs[2]->Hide(false);
	LineGraphs[0]->Hide(true);
	LineGraphs[1]->Hide(true);
	if (tab != CurrentTab)
	{
		BarGraphs[0]->Reset();
		BarGraphs[1]->Reset();
		BarGraphs[2]->Reset();
		BarGraphs[0]->SetScale(0.0f);
		BarGraphs[1]->SetScale(0.0f);
		BarGraphs[2]->SetScale(0.0f);
	}
	switch (tab)
	{
	case 1:
		BarGraphs[0]->Hide(true);
		BarGraphs[1]->Hide(true);
		LineGraphs[0]->Hide(false);
		LineGraphs[1]->Hide(false);
		break;
	case 2:
		BarGraphs[0]->Hide(true);
		BarGraphs[1]->Hide(true);
		break;
	}
	CurrentTab = tab;
	UpdateDetails();
}

void StatsBox::Init(uint32_t width, uint32_t height, void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	Package = NULL;
	StatsBuffer = NULL;
	DialogBoxBase::Init(width, height, callback);

	float tab_width = width * (1.0f / STATS_BOX_NUM_TABS);
	float x = (uint32_t)(400 - width / 2);
	Instance = this;
	CurrentTab = 1;
	for (int i = 0; i < STATS_BOX_NUM_TABS; i++)
	{
		wchar_t* label;
		switch (i)
		{
		case 0:
			label = ShowCurrentGame ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_GAME_OVER)
			                        : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_88);
			break;
		case 2:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_46);
			break;
		case 1:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_111);
			break;
		case 3:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_138);
			break;
		case 4:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_87);
			break;
		case 5:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_124);
			break;
		}
		Tabs[i] =
			NEW(234) SetupTabButton(FRONT_END_TAB_FIRST_ID + i, (int)x, 260 - height / 2, (int)(x + tab_width) - (int)x,
		                            40, label, i == CurrentTab, i == 0, i == STATS_BOX_NUM_TABS - 1);
		Tabs[i]->text_size = GetSmallTextSize();
		x += tab_width;
	}
	setup_box->DefaultTextSize = GetMidTextSize();

	TitleText = NEW(239) SetupStaticText(1, 40, 60, 720, 28,
	                                     HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_61),
	                                     TEXTJUSTIFY_CENTRE);
	BackButton = NEW(244) SetupBigButton(SETUP_CONTROL_ID_NONE, 20, 530,
	                                     HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOOBACK), 40,
	                                     SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	BackButton->text_size = GetMidTextSize();

	for (int j = 0; j < STATS_BOX_NUM_SCORE_GRAPHS; j++)
	{
		ScoreGraphs[j] = NEW(249) SetupHSBarGraph(0, 350, 100, 200, 50, L"");
		for (int k = 0; k <= j; k++)
		{
			ScoreGraphs[j]->AddBar(VBarData(LH3DColor(255, 0, 0, 255), 1.0f));
		}
		ScoreGraphs[j]->SetScale(0.0f);
		ScoreGraphs[j]->Hide(true);
	}

	for (int n = 0; n < STATS_BOX_NUM_BAR_GRAPHS; n++)
	{
		BarGraphs[n] = NEW(258) SetupVBarGraph(0, 40 + n * 250, 100, 220, 230, L"");
		BarGraphs[n]->SetScale(0.0f);
	}

	LineGraphs[0] = NEW(262) SetupHLineGraph(
		0, 40, 100, 470, 100, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_05), true);
	LineGraphs[1] = NEW(263) SetupHLineGraph(
		0, 40, 230, 470, 100, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_06), false);

	DetailsList = NEW(266) SetupList(SETUP_CONTROL_ID_NONE, 40, 365, 720, 150);
	DetailsList->ListBoxDrawAfterText = true;
	DetailsList->text_size = GetSmallTextSize();

	CheckBoxes[0] =
		NEW(269) SetupCheckBox(SETUP_CONTROL_ID_NONE, 290, 530, true, BBSTYLE_CHECK_BOX_ON,
	                           HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_07), 20);
	CheckBoxes[1] =
		NEW(270) SetupCheckBox(SETUP_CONTROL_ID_NONE, 490, 530, true, BBSTYLE_CHECK_BOX_OFF,
	                           HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_08), 20);
	CheckBoxes[1]->text_position = SETUP_TEXT_POSITION_LEFT;
	CheckBoxes[0]->text_position = SETUP_TEXT_POSITION_RIGHT;
}

void StatsBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void StatsBox::InitControls()
{
	Package = GameStats::GetPackage();
	CurrentTab = 1;
	SetTab(1);
	wcscpy(Tabs[0]->label, ShowCurrentGame
	                           ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_GAME_OVER)
	                           : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_88));
}

void EndGameBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void MultiplayerConditionBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}
