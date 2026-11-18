#include <math.h>   /* For cos, sin */
#include <stdio.h>  /* For swprintf */
#include <string.h> /* For wcscpy */

#include <Lionhead/LH3DLib/development/LH3DComplexObject.h> /* For LH3DComplexObject::SetNeedClipping */
#include <Lionhead/LH3DLib/development/LH3DMath.h>          /* For TWO_PI */
#include <Lionhead/LH3DLib/development/LH3DRender.h>        /* For LH3DRender::SetRenderState */
#include <Lionhead/LH3DLib/development/LH3DTech.h>          /* For LH3DTech::UpdateCamera */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>                 /* For LHSys::TheSystem */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                    /* For NEW */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>                /* For LHSPrintfW */
#include <Lionhead/LHMultiplayer/ver4.0/LHDatabase.h>       /* For DBSTATUS_PENDING */
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>         /* For LHPlayer */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>        /* For LHSession::StopSession */

#include "Creature.h"   /* For Creature::GetCreature3D */
#include "Creature3D.h" /* For LH3DCreature::DrawNow */

#include "GameStatsList.h" /* For NewGameStatsList */
#include "FrontEnd.h"      /* For FRONT_END_TAB_FIRST_ID */
#include "Game.h"          /* For GGame::g_game */
#include "EndGameBox.h"
#include "GameStats.h"
#include "HelpText.h"  /* For HelpTextDataBase::HelpTextDatabase */
#include "Interface.h" /* For GInterface::player */
#include "InterfaceStatus.h"
#include "MultiplayerConditionBox.h"
#include "Player.h" /* For GPlayer::GetPlayer3DColor */
#include "SoundGuidance.h"
#include "WinCondition.h"
#include "StatsBox.h"
static bool32_t TotalTitleDrawn;
#include "GameTimeConstants.h" /* For SecondsPerYear */
#include "ColourConstants.h"   /* For White */
#include "alexmfc.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 562 ? 1 : 27))
#elif defined(VERSION_BW1WCI)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + ((line) < 562 ? 66 : 85))
#endif

#if defined(VERSION_BW1WCI)
#define STAT_DETAILS_NUM_VALUES 8
#else
#define STAT_DETAILS_NUM_VALUES 4
#endif
#define STAT_DETAILS_MAX_VALUE 1e20f
#define STAT_DETAILS_MIN_VALUE -1e20f

struct StatDetails
{
	int              NumValues;
	float            Values[STAT_DETAILS_NUM_VALUES];
	LH3DColor        Colors[STAT_DETAILS_NUM_VALUES];
	float            Max;
	int              DecimalPlaces;
	SHOWMAXTYPE      ShowMax;
	GRAPHDISPLAYTYPE Display;
	wchar_t          Format[16];
#if defined(VERSION_BW1WCI)
	int field_0x74;
#endif

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

StatsBox*   StatsBox::Instance;
EndGameBox* EndGameBox::Instance;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
MultiplayerConditionBox* MultiplayerConditionBox::Instance;
#endif

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

	LH3DColor*   colour = &Package->PerPlayer[0].Colour;
	int          num_players = Package->NumPlayers;
	float*       stat_value = value;
	StatDetails* details = &StatsBuffer[index];
	details->Display = display;
	details->DecimalPlaces = decimal_places;
	details->NumValues = num_players;
	details->Max = 0.0f;
	for (int i = 0; i < num_players;
	     i++, stat_value = (float*)((uint8_t*)stat_value + sizeof(GameStatsPackage::GameStatsPerPlayer)))
	{
		details->Values[i] = *stat_value;
		details->Values[i] =
			details->Values[i] > STAT_DETAILS_MIN_VALUE
				? details->Values[i] < STAT_DETAILS_MAX_VALUE ? details->Values[i] : STAT_DETAILS_MAX_VALUE
				: STAT_DETAILS_MIN_VALUE;
		if (details->Values[i] > details->Max)
			details->Max = details->Values[i];
	}
	for (int j = 0; j < num_players;
	     j++, colour = (LH3DColor*)((uint8_t*)colour + sizeof(GameStatsPackage::GameStatsPerPlayer)))
		details->Colors[j] = *colour;
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

	LH3DColor*     colour = &Package->PerPlayer[0].Colour;
	int            num_players = Package->NumPlayers;
	unsigned long* stat_value = value;
	StatDetails*   details = &StatsBuffer[index];
	details->Display = display;
	details->DecimalPlaces = 0;
	details->NumValues = num_players;
	details->Max = 0.0f;
	for (int i = 0; i < num_players;
	     i++, stat_value = (unsigned long*)((uint8_t*)stat_value + sizeof(GameStatsPackage::GameStatsPerPlayer)))
	{
		details->Values[i] = *stat_value;
		if (details->Values[i] > details->Max)
			details->Max = details->Values[i];
	}
	for (int j = 0; j < num_players;
	     j++, colour = (LH3DColor*)((uint8_t*)colour + sizeof(GameStatsPackage::GameStatsPerPlayer)))
		details->Colors[j] = *colour;
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

	LH3DColor*   colour = &GGame::g_game->MyPlayer()->GetPlayer3DColor();
	float*       stat_value = value;
	StatDetails* details = &StatsBuffer[index];
	details->Display = display;
	details->DecimalPlaces = decimal_places;
	details->NumValues = 1;
	details->Max = 0.0f;
	for (int i = 0; i < 1; i++, stat_value++)
	{
		details->Values[i] = *stat_value;
		details->Values[i] =
			details->Values[i] > STAT_DETAILS_MIN_VALUE
				? details->Values[i] < STAT_DETAILS_MAX_VALUE ? details->Values[i] : STAT_DETAILS_MAX_VALUE
				: STAT_DETAILS_MIN_VALUE;
		if (details->Values[i] > details->Max)
			details->Max = details->Values[i];
	}
	for (int j = 0; j < 1; j++, colour++)
		details->Colors[j] = *colour;
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

	LH3DColor*     colour = &GGame::g_game->MyPlayer()->GetPlayer3DColor();
	unsigned long* stat_value = value;
	StatDetails*   details = &StatsBuffer[index];
	details->Display = display;
	details->DecimalPlaces = 0;
	details->NumValues = 1;
	details->Max = 0.0f;
	for (int i = 0; i < 1; i++, stat_value++)
	{
		details->Values[i] = *stat_value;
		if (details->Values[i] > details->Max)
			details->Max = details->Values[i];
	}
	for (int j = 0; j < 1; j++, colour++)
		details->Colors[j] = *colour;
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
		case STATS_BOX_TAB_CREATURE:
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
#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110)
			ADDULONGPLAYER(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_160),
			               &Package->PerPlayer[0].CreatureNumPeopleKilled, 1.0f, SHOWMAXTYPE_LARGEST,
			               GRAPHDISPLAYTYPE_TEXT);
#endif
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
		case STATS_BOX_TAB_GENERAL:
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
		case STATS_BOX_TAB_PEOPLE:
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
		case STATS_BOX_TAB_MIRACLES:
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
		case STATS_BOX_TAB_SUMMARY:
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
					population.SetColor(Package->PerPlayer[i].Colour);
					for (int j = 0; j < population.PointCount; j++)
						population.SetPoint(j, Package->PerPlayer[i].PopulationGraph.Data[j]);
					LineGraphs[1]->AddLine(population);
					influence.SetNum(Package->PerPlayer[i].InfluenceGraph.Index);
					influence.SetColor(Package->PerPlayer[i].Colour);
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
	case STATS_BOX_TAB_SUMMARY:
		BarGraphs[0]->Hide(true);
		BarGraphs[1]->Hide(true);
		LineGraphs[0]->Hide(false);
		LineGraphs[1]->Hide(false);
		break;
	case STATS_BOX_TAB_CREATURE:
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
	CurrentTab = STATS_BOX_TAB_SUMMARY;
	for (int i = 0; i < STATS_BOX_NUM_TABS; i++)
	{
		wchar_t* label;
		switch (i)
		{
		case STATS_BOX_TAB_GAME_OVER:
			label = ShowCurrentGame ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_GAME_OVER)
			                        : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_88);
			break;
		case STATS_BOX_TAB_CREATURE:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_46);
			break;
		case STATS_BOX_TAB_SUMMARY:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_111);
			break;
		case STATS_BOX_TAB_PEOPLE:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_138);
			break;
		case STATS_BOX_TAB_MIRACLES:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_87);
			break;
		case STATS_BOX_TAB_GENERAL:
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
	CurrentTab = STATS_BOX_TAB_SUMMARY;
	SetTab(STATS_BOX_TAB_SUMMARY);
	wcscpy(Tabs[0]->label, ShowCurrentGame
	                           ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_GAME_OVER)
	                           : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_88));
}

void __stdcall StatsBox::Callback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	switch (message)
	{
	case SETUP_MESSAGE_UPDATE:
		TotalTitleDrawn = false;
		break;
	case SETUP_MESSAGE_DEACTIVATE:
		ClearDetails();
		ShowCurrentGame = false;
		break;
	case SETUP_MESSAGE_ACTIVATE:
		InitControls();
		break;
	case SETUP_MESSAGE_CLICK:
		if (control != NULL)
		{
			switch (control->id)
			{
			case FRONT_END_TAB_FIRST_ID + STATS_BOX_TAB_GAME_OVER:
				Hide();
				break;
			case FRONT_END_TAB_FIRST_ID + STATS_BOX_TAB_SUMMARY:
			case FRONT_END_TAB_FIRST_ID + STATS_BOX_TAB_CREATURE:
			case FRONT_END_TAB_FIRST_ID + STATS_BOX_TAB_PEOPLE:
			case FRONT_END_TAB_FIRST_ID + STATS_BOX_TAB_MIRACLES:
			case FRONT_END_TAB_FIRST_ID + STATS_BOX_TAB_GENERAL:
				SetTab(control->id - FRONT_END_TAB_FIRST_ID);
				break;
			}
		}
		if (control == BackButton)
			Hide();
		if (control == CheckBoxes[0])
			CheckBoxes[1]->style = BBSTYLE_CHECK_BOX_OFF;
		else if (control == CheckBoxes[1])
			CheckBoxes[0]->style = BBSTYLE_CHECK_BOX_OFF;
		else if (control == DetailsList && DetailsList->GetSelected() >= 0 &&
		         DetailsList->GetSelected() != SelectedDetail)
			CopyDetailsToDynamic(DetailsList->GetSelected(), NULL);
		break;
	case SETUP_MESSAGE_PRE_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(TitleText->rect.start.x, TitleText->rect.start.y, TitleText->rect.end.x,
		                    TitleText->rect.end.y, 0x202020, 0x202020, 0x202020, 0x202020, 1, 1);
		SetupThing::DrawAlpha = alpha;
		break;
	}
	case SETUP_MESSAGE_POST_DRAW:
		if (CurrentTab == STATS_BOX_TAB_CREATURE)
		{
			LHPoint old_position = *LH3DTech::GetCameraPosition();
			LHPoint old_target = *LH3DTech::GetCameraTarget();
			float   angle = (GetTickCount() % STATS_BOX_CREATURE_TURN_TIME) * (TWO_PI / STATS_BOX_CREATURE_TURN_TIME);
			LHPoint target(0.0f, 20.0f, 0.0f);
			LHPoint position(cos(angle) * 70.0, 40.0f, sin(angle) * 70.0);
			LH3DTech::UpdateCamera(position, target);
			LH3DRender::D3DDevice->Clear(0, NULL, D3DCLEAR_ZBUFFER, 0, 1.0f, 0);

			int alpha = SetupThing::DrawAlpha;
			SetupThing::DrawAlpha = alpha / 2;
			int num_players = Package->NumPlayers;
			int box_x = 40;
			int y_min = BarGraphs[2]->rect.start.y;
			int y_max = BarGraphs[2]->rect.end.y;
			int width = (50 - num_players) * 10 / num_players;
			int row_height = 0;
			int second_row_x = 0;
			if (num_players >= 3)
			{
				width = 240;
				row_height = (y_max - y_min) / 2 + 5;
				y_max = row_height + y_min - 10;
				if (num_players == 3)
					second_row_x = 120;
			}
			for (int i = 0; i < num_players; i++)
			{
				if (i == 2)
				{
					y_min += row_height;
					y_max += row_height;
					box_x = second_row_x + 40;
				}
				unsigned long colour = Package->PerPlayer[i].Colour.GetColor();
				SetupThing::DrawBox(box_x, y_min, box_x + width, y_max, colour, colour, colour, colour, 1, 1);
				int screen_x = box_x + width / 2;
				int screen_y = (int)((y_max - y_min) * 0.9f + y_min);
				SetupThing::adjust(screen_x, screen_y);
				int size = min(SetupThing::adjusty(width) - SetupThing::adjusty(0),
				               SetupThing::adjusty(y_max) - SetupThing::adjusty(y_min));
				size = max(10, size);
				if (GGame::g_game->Initialised && GGame::g_game->GetPlayer(i) != NULL)
				{
					Creature* player_creature = GGame::g_game->GetPlayer(i)->GetCreature();
					if (player_creature != NULL)
					{
						LH3DCreature* creature = player_creature->GetCreature3D();
						if (creature != NULL)
						{
							creature->DynamicShadow->SetNeedClipping(true);
							LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
							LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
							float distance = creature->Size1 * 15.0f;
							if (distance > 0.1f)
								distance = size / distance;
							if (distance > 1.0f)
								distance = 900.0f / distance;
							float ratio = (float)(SetupThing::adjusty(600) - SetupThing::adjusty(0)) /
							              LHSys::TheSystem.screen.Height();
							if (ratio != 0.0f)
								distance /= ratio;
							LHPoint point;
							LH3DTech::Get3DPointFromScreen(LHCoord(screen_x, screen_y), point, distance);
							LHPoint   centre(0.0f, 0.0f, 0.0f);
							LHMatrix* matrices = creature->TransformedMatrices;
							int       num_matrices = creature->NumBoneMatrices;
							for (int b = 0; b < num_matrices; b++)
							{
								centre.x += matrices[b].GetPos().x;
								centre.y += matrices[b].GetPos().y;
								centre.z += matrices[b].GetPos().z;
							}
							if (num_matrices != 0)
							{
								centre.x *= 1.0f / num_matrices;
								centre.z *= 1.0f / num_matrices;
							}
							centre.y = creature->position.y;
							point -= centre;
							for (int c = 0; c < num_matrices; c++)
							{
								matrices[c].GetPos().x += point.x;
								matrices[c].GetPos().y += point.y;
								matrices[c].GetPos().z += point.z;
							}
							creature->DynamicShadow->matrix.GetPos().x += point.x;
							creature->DynamicShadow->matrix.GetPos().y += point.y;
							creature->DynamicShadow->matrix.GetPos().z += point.z;
							creature->DrawNow();
							for (int d = 0; d < num_matrices; d++)
							{
								matrices[d].GetPos().x -= point.x;
								matrices[d].GetPos().y -= point.y;
								matrices[d].GetPos().z -= point.z;
							}
							creature->DynamicShadow->matrix.GetPos().x -= point.x;
							creature->DynamicShadow->matrix.GetPos().y -= point.y;
							creature->DynamicShadow->matrix.GetPos().z -= point.z;
						}
					}
				}
				box_x += width + 10;
			}
			SetupThing::DrawAlpha = alpha;
			LH3DTech::UpdateCamera(old_position, old_target);
		}
		break;
	}
}

// BW1W120 0056e6a0
static void WatchButtonCallback(SetupBox* box, SetupControl* control);
// BW1W120 0056e6b0
static void LeaveGameButtonCallback(SetupBox* box, SetupControl* control);
// BW1W120 0056e720
static void ContinueButtonCallback(SetupBox* box, SetupControl* control);

void EndGameBox::SetTab(int tab)
{
	for (int i = 0; i < END_GAME_BOX_NUM_TABS; i++)
		Tabs[i]->selected = i == tab;
	CurrentTab = tab;
}

void EndGameBox::Init(uint32_t width, uint32_t height,
                      void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);

	float tab_width = width * (1.0f / END_GAME_BOX_NUM_TABS);
	float x = (uint32_t)(400 - width / 2);
	Instance = this;
	CurrentTab = END_GAME_BOX_TAB_GAME_OVER;
	for (int i = 0; i < END_GAME_BOX_NUM_TABS; i++)
	{
		wchar_t* label;
		switch (i)
		{
		case END_GAME_BOX_TAB_GAME_OVER:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_GAME_OVER);
			break;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		case END_GAME_BOX_TAB_CONDITIONS:
			label = HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_MAIN_TAB);
			break;
		case END_GAME_BOX_TAB_STATS:
#else
		case END_GAME_BOX_TAB_STATS:
#endif
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_151);
			break;
		default:
			label = L"";
			break;
		}
		Tabs[i] =
			NEW(562) SetupTabButton(FRONT_END_TAB_FIRST_ID + i, (int)x, 260 - height / 2, (int)(x + tab_width) - (int)x,
		                            40, label, i == CurrentTab, i == 0, i == END_GAME_BOX_NUM_TABS - 1);
		x += tab_width;
	}
	setup_box->DefaultTextSize = GetBigTextSize();

	ResultText = NEW(566) SetupStaticText(1, 40, 80, 720, 228, L"", TEXTJUSTIFY_CENTRE_BREAK);
	TeamText = NEW(567) SetupStaticText(1, 40, 200, 720, 50, L"", TEXTJUSTIFY_CENTRE_BREAK);
	WaitText = NEW(568) SetupStaticText(
		1, 300, 530, 200, 40, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOADCOMPLETE_02),
		TEXTJUSTIFY_CENTRE);
	WaitText->text_size = GetSmallTextSize();
	ScoreText = NEW(570) SetupStaticText(1, 40, 250, 720, 49, L"", TEXTJUSTIFY_CENTRE_BREAK);
	ScoreText->Style = 1;
	ResultText->Style = 1;
	TeamText->Style = 1;
	GraphTitleText = NEW(576) SetupStaticText(
		1, 40, 330, 720, 40, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_107),
		TEXTJUSTIFY_CENTRE_BREAK);
	ScoreGraph = NEW(579) SetupVBarGraph(0, 280, 375, 240, 175, L"");
	ScoreText->text_size = 49;
	ResultText->text_size = 49;

	ContinueButton = NEW(587) SetupBigButton(
		SETUP_CONTROL_ID_NONE, 20, 530, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_22),
		40, SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	WatchButton = NEW(588) SetupBigButton(SETUP_CONTROL_ID_NONE, 20, 530,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_147),
	                                      40, SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	LeaveGameButton = NEW(589) SetupBigButton(
		SETUP_CONTROL_ID_NONE, 740, 530, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LEAVE_GAME),
		40, SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	ContinueButton->ContinueButtonCallback = ContinueButtonCallback;
	WatchButton->ContinueButtonCallback = WatchButtonCallback;
	LeaveGameButton->ContinueButtonCallback = LeaveGameButtonCallback;
}

static void WatchButtonCallback(SetupBox* box, SetupControl* control)
{
	DialogBoxBase::Hide();
}

static void LeaveGameButtonCallback(SetupBox* box, SetupControl* control)
{
	DialogBoxBase::Hide();
	if (GGame::g_game->SkirmishGame)
	{
		GGame::g_game->GameMode = GAME_MODE_SKIRMISH;
		return;
	}
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
	if (GGame::g_game->GetMyLHPlayer() == GGame::g_game->GetTeamLeaderLHPlayer() &&
	    GGame::g_game->MyInterface()->player->ClanID != 0)
		FrontEnd::EndGameDialog->Result = END_GAME_RESULT_NONE;
#endif
	GGame::g_game->QuitGameAndGoIntoNetworkLobby();
}

static void ContinueButtonCallback(SetupBox* box, SetupControl* control)
{
	DialogBoxBase::Hide();
}

void EndGameBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void EndGameBox::InitControls()
{
	CurrentTab = END_GAME_BOX_TAB_GAME_OVER;
	SetTab(END_GAME_BOX_TAB_GAME_OVER);

	uint32_t text = HELP_TEXT_DIALOG_ADDITION_152;
	switch (Result)
	{
	case END_GAME_RESULT_NONE:
		text = TeamGame || !InternetLobby ? HELP_TEXT_DIALOG_AREYOUSUREQUIT : HELP_TEXT_DIALOG_ADDITION_70;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		if (GGame::g_game->MyPlayer()->GetPlayerNumber() >= MAX_MULTIPLAYER_PLAYERS)
			text = HELP_TEXT_DIALOG_AREYOUSUREQUIT;
#endif
		break;
	case END_GAME_RESULT_WON:
		if (GGame::g_game->MyPlayer()->player_number < MAX_MULTIPLAYER_PLAYERS)
			text = HELP_TEXT_WIN_GAME_04;
		else
			text = HELP_TEXT_GAME_OVER;
		break;
	case END_GAME_RESULT_ELIMINATED:
	case END_GAME_RESULT_LOST:
		text = HELP_TEXT_DIALOG_ADDITION_152;
		break;
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (text == HELP_TEXT_GAME_OVER)
	{
		GPlayer* winner = GGame::g_game->GetWinningPlayer();
		swprintf(ResultText->label, L"%s - %s Won", HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_GAME_OVER),
		         winner->name);
	}
	else
#endif
		wcscpy(ResultText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(text));
	if (TeamGame)
		wcscpy(TeamText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_155));
	else
		wcscpy(TeamText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_150));

	if (Result == END_GAME_RESULT_ELIMINATED)
	{
		GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
		status->guidance->HelpSpritesSayOneOffGuidanceIfNecessary(GGuidance::ONE_OFF_GUIDANCE_TYPE_ELIMINATED);
	}

	LeaveGameButton->Hide(true);
	WatchButton->Hide(true);
	ContinueButton->Hide(true);
	ScoreText->Hide(true);
	TeamText->Hide(true);
	GraphTitleText->Hide(true);
	ScoreGraph->Hide(true);
	WaitText->Hide(false);
	SetDisplayableStats();
	if (GGame::g_game->Lobby != GAME_LOBBY_INTERNET || Result == END_GAME_RESULT_NONE)
		SetDisplayableButtons();
	if (!GameContinues && Result != END_GAME_RESULT_NONE)
		GGame::g_game->network.session->StopSession();

#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
	int   team = GGame::g_game->GetMyLHPlayer()->TeamMemberNumber - 1;
	float score = FrontEnd::EndGameDialog->TeamGame ? FrontEnd::EndGameDialog->PlayerTotals[PlayerIndex]
	                                                : FrontEnd::EndGameDialog->PlayerScores[PlayerIndex][team];
	wcscpy(ScoreText->label,
	       LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_04), score));
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (GGame::g_game->MyPlayer()->GetPlayerNumber() >= MAX_MULTIPLAYER_PLAYERS)
	{
		ScoreText->Hide(true);
		TeamText->Hide(true);
	}
#endif

	ScoreGraph->Reset();
	for (int i = 0; i < Package->NumPlayers; i++)
		ScoreGraph->AddBar(VBarData(Package->PerPlayer[i].Colour, FrontEnd::EndGameDialog->PlayerTotals[i]));
	ScoreGraph->SetScale(0.0f);
#else
	wcscpy(ScoreText->label,
	       LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_04),
	                  Package->PerPlayer[PlayerIndex].Scores[GGame::g_game->GetMyLHPlayer()->TeamMemberNumber - 1]));

	ScoreGraph->Reset();
	for (int i = 0; i < Package->NumPlayers; i++)
		ScoreGraph->AddBar(VBarData(Package->PerPlayer[i].Colour, Package->PerPlayer[i].TotalScore));
	ScoreGraph->SetScale(0.0f);
#endif
}

void EndGameBox::SetDisplayableButtons()
{
	LeaveGameButton->Hide(false);
	WatchButton->Hide(Result != END_GAME_RESULT_ELIMINATED);
	ContinueButton->Hide(Result != END_GAME_RESULT_NONE);
	if (!GameContinues)
		WatchButton->Hide(true);
	WaitText->Hide(true);
	SetDisplayableStats();
}

void EndGameBox::SetDisplayableStats()
{
	bool hide = (Result == END_GAME_RESULT_WON || Result == END_GAME_RESULT_LOST) && InternetLobby ? false : true;
	GraphTitleText->Hide(hide);
	ScoreGraph->Hide(hide);
	ScoreText->Hide(hide);
	TeamText->Hide(hide);
	if (hide)
	{
		ResultText->rect.start.y = 250;
		ResultText->rect.end.y = 100;
	}
	else
	{
		ResultText->rect.start.y = 80;
		ResultText->rect.end.y = 80;
	}
	ResultText->rect.end.y += ResultText->rect.start.y;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (GGame::g_game->MyPlayer()->GetPlayerNumber() >= MAX_MULTIPLAYER_PLAYERS)
	{
		ScoreText->Hide(true);
		TeamText->Hide(true);
	}
#endif
}

void EndGameBox::DatabaseUploadError(SetupBox* box)
{
	if (!UploadErrorShown)
	{
		UploadErrorShown = true;
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_COULD_NOT_CONNECT),
		                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
	}
}

void __stdcall EndGameBox::Callback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	switch (message)
	{
	case SETUP_MESSAGE_UPDATE:
		if (GGame::g_game->Lobby == GAME_LOBBY_INTERNET && Result != END_GAME_RESULT_NONE)
		{
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
			if (!CreatureUploadStarted && GPlayer::CreatureMindData != NULL)
#else
			if (!CreatureUploadStarted && GGame::g_game->MyPlayer()->creature.Get() != NULL)
#endif
			{
				CreatureUploadStarted = true;
				if (GGame::g_game->creature_database.Send() == MULTIPLAYER_DATABASE_RESULT_ERROR)
					FrontEnd::EndGameDialog->DatabaseUploadError(box);
				if (GGame::g_game->GetMyLHPlayer() == GGame::g_game->GetTeamLeaderLHPlayer() &&
				    GGame::g_game->MyPlayer()->creature.Get() != NULL)
				{
					GGame::g_game->SetPacket(PACKET_TYPE_SET_CREATURE, (short)0, (short)0, (long)-1);
					GGame::g_game->FlushPacketBuffer();
				}
			}
			else if (GGame::g_game->creature_database.Status == DBSTATUS_PENDING)
			{
				if (GGame::g_game->creature_database.Refresh() == MULTIPLAYER_DATABASE_RESULT_ERROR)
					FrontEnd::EndGameDialog->DatabaseUploadError(box);
			}
			if (!StatsUploadStarted)
			{
				StatsUploadStarted = true;
				if (GGame::g_game->stats_database.Send() == MULTIPLAYER_DATABASE_RESULT_ERROR)
					FrontEnd::EndGameDialog->DatabaseUploadError(box);
			}
			else if (GGame::g_game->stats_database.Status == DBSTATUS_PENDING)
			{
				if (GGame::g_game->stats_database.Refresh() == MULTIPLAYER_DATABASE_RESULT_ERROR)
					FrontEnd::EndGameDialog->DatabaseUploadError(box);
			}
			if (GGame::g_game->creature_database.Status != DBSTATUS_PENDING &&
			    GGame::g_game->stats_database.Status != DBSTATUS_PENDING)
				SetDisplayableButtons();
		}
		break;
	case SETUP_MESSAGE_DEACTIVATE:
		FrontEnd::EndGameDialog->Showing = false;
		break;
	case SETUP_MESSAGE_ACTIVATE:
		InitControls();
		break;
	case SETUP_MESSAGE_CLICK:
		if (control == NULL)
			break;
		if (control->ContinueButtonCallback != NULL)
		{
			control->ContinueButtonCallback(box, control);
			break;
		}
		switch (control->id)
		{
		case FRONT_END_TAB_FIRST_ID + END_GAME_BOX_TAB_GAME_OVER:
			SetTab(END_GAME_BOX_TAB_GAME_OVER);
			break;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		case FRONT_END_TAB_FIRST_ID + END_GAME_BOX_TAB_CONDITIONS:
			SetTab(END_GAME_BOX_TAB_CONDITIONS);
			HideAll();
			Show();
			FrontEnd::StatsDialog->ShowCurrentGame = true;
			MultiplayerConditionBox::Instance->Show();
			break;
		case FRONT_END_TAB_FIRST_ID + END_GAME_BOX_TAB_STATS:
			SetTab(END_GAME_BOX_TAB_STATS);
#else
		case FRONT_END_TAB_FIRST_ID + END_GAME_BOX_TAB_STATS:
			SetTab(END_GAME_BOX_TAB_STATS);
#endif
			HideAll();
			Show();
			FrontEnd::StatsDialog->ShowCurrentGame = true;
			FrontEnd::StatsDialog->Show();
			break;
		}
		break;
	case SETUP_MESSAGE_PRE_DRAW: {
		SetupStaticText* text = ScoreText;
		if (text->hidden)
			text = ResultText;
		unsigned long colour = Package->PerPlayer[PlayerIndex].Colour.GetColor();
		int           alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(text->rect.start.x, text->rect.start.y, text->rect.end.x, text->rect.end.y, colour, colour,
		                    colour, colour, 1, 1);
		SetupThing::DrawAlpha = alpha;
		break;
	}
	}
}

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
void MultiplayerConditionBox::Init(uint32_t width, uint32_t height,
                                   void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);

	float tab_width = (float)width / MULTIPLAYER_CONDITION_BOX_NUM_TABS;
	float x = (uint32_t)(400 - width / 2);
	Instance = this;
	CurrentTab = MULTIPLAYER_CONDITION_BOX_TAB_CONDITIONS;
	for (int i = 0; i < MULTIPLAYER_CONDITION_BOX_NUM_TABS; i++)
	{
		wchar_t* label;
		switch (i)
		{
		case MULTIPLAYER_CONDITION_BOX_TAB_GAME_OVER:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_88);
			break;
		case MULTIPLAYER_CONDITION_BOX_TAB_CONDITIONS:
			label = HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_MAIN_TAB);
			break;
		default:
			label = L"";
			break;
		}
		Tabs[i] = NEW(889) SetupTabButton(i == 0 ? MULTIPLAYER_CONDITION_BOX_CONTROL_ID_GAME_OVER_TAB
		                                         : MULTIPLAYER_CONDITION_BOX_CONTROL_ID_TAB,
		                                  (int)x, 260 - height / 2, (int)(x + tab_width) - (int)x, 40, label,
		                                  i == CurrentTab, i == 0, i == MULTIPLAYER_CONDITION_BOX_NUM_TABS - 1);
		Tabs[i]->text_size = GetSmallTextSize();
		x += tab_width;
	}
	setup_box->DefaultTextSize = GetMidTextSize();
	SetupBox::CanEscape = true;

	BackButton = NEW(896) SetupBigButton(MULTIPLAYER_CONDITION_BOX_CONTROL_ID_BACK, 20, 530,
	                                     HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOOBACK), 40,
	                                     SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	ScoreGraph = NEW(897) SetupHLineGraph(0, 40, 100, width - 65, 180, L"", false);
	ConditionList = NEW(898) SetupList(MULTIPLAYER_CONDITION_BOX_CONTROL_ID_LIST, 40, 345, width - 65, 180);
	TitleText = NEW(899) SetupStaticText(
		1, 40, 60, 720, 28, HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_STATS_CAPTION),
		TEXTJUSTIFY_CENTRE);

	x = 100.0f;
	for (int j = 0; j < MAX_MULTIPLAYER_PLAYERS; j++)
	{
		CheckBoxes[j] = NEW(904) SetupCheckBox(MULTIPLAYER_CONDITION_BOX_CONTROL_ID_CHECK_BOX_FIRST + j, (int)x, 295,
		                                       false, BBSTYLE_CHECK_BOX_ON, LHSPrintfW(L"Player %d", j + 1), 25);
		CheckBoxes[j]->style = BBSTYLE_CHECK_BOX_ON;
		x += 100.0f;
	}
}

void MultiplayerConditionBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

uint32_t __stdcall MultiplayerConditionBox::ConditionDraw(SetupList* list, int index, int x_min, int y_min, int x_max,
                                                          int y_max, int clip_min, int clip_max)
{
	GPlayer* players[MAX_MULTIPLAYER_PLAYERS];
	uint32_t num_players = 0;
	if (clip_min >= y_min && clip_max <= y_max)
	{
		int type = list->GetItemData(index);
		players[0] = NULL;
		players[1] = NULL;
		players[2] = NULL;
		players[3] = NULL;
		for (GPlayer* player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
		     player = GGame::g_game->GetNextActivePlayer(player))
		{
			if (player->player_number < MAX_MULTIPLAYER_PLAYERS &&
			    Instance->CheckBoxes[player->GetPlayerNumber()]->GetCheck())
				players[num_players++] = player;
		}
		if (num_players != 0)
		{
			int x = x_min + (x_max - x_min) / 3 * 2;
			int column_width = (x_max - x_min) / 3 / num_players;
			for (uint32_t i = 0; i < num_players; i++)
			{
				GPlayer*                              player = players[i];
				std::map<int, WinCondition>::iterator it = player->Conditions.find(type);
				uint32_t                              value = it->second.Current;
				if (value > (uint32_t)it->second.Target)
					value = it->second.Target;
				SetupThing::DrawText(x, clip_max, column_width, TEXTJUSTIFY_CENTRE,
				                     !it->second.Completed ? (wchar_t*)LHSPrintfW(L"%u", value)
				                                           : HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(
																 HELP_TEXT_MULTIPLAYER_CONDITION_DONE),
				                     26, &player->GetPlayer3DColor(), 0);
				x += column_width;
			}
		}
	}
	return true;
}

void MultiplayerConditionBox::InitControls()
{
	CurrentTab = MULTIPLAYER_CONDITION_BOX_TAB_CONDITIONS;
	uint32_t player_mask = 0;
	for (int i = 0; i < MAX_MULTIPLAYER_PLAYERS; i++)
	{
		CheckBoxes[i]->style = BBSTYLE_CHECK_BOX_ON;
		CheckBoxes[i]->Hide(true);
	}
	for (GPlayer* player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
	     player = GGame::g_game->GetNextActivePlayer(player))
	{
		player_mask |= 1 << player->GetPlayerNumber();
		CheckBoxes[player->GetPlayerNumber()]->Hide(false);
	}
	if (FrontEnd::StatsDialog->ShowCurrentGame)
	{
		wcscpy(Tabs[0]->label, HelpTextData::GetTextL(HELP_TEXT_GAME_OVER));
		FrontEnd::StatsDialog->ShowCurrentGame = false;
	}
	else
		wcscpy(Tabs[0]->label, HelpTextData::GetTextL(HELP_TEXT_DIALOG_ADDITION_88));
	UpdateGraph(player_mask);

	ConditionList->DeleteAll();
	std::map<int, WinCondition>::iterator it;
	for (it = GGame::g_game->MyPlayer()->Conditions.begin(); it != GGame::g_game->MyPlayer()->Conditions.end(); ++it)
	{
		WinCondition& condition = it->second;
		ConditionList->AddString(LHSPrintfW(L"%s (%u)",
		                                    HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(condition.Type + 1),
		                                    it->second.Target),
		                         0, 0, 0);
		ConditionList->SetItemData(ConditionList->NumItems - 1, condition.Type);
		ConditionList->SetListBoxDraw(ConditionList->NumItems - 1, ConditionDraw);
	}
}

void MultiplayerConditionBox::UpdateGraph(uint32_t player_mask)
{
	HLineData line;
	ScoreGraph->Reset();
	for (int i = 0; i < MAX_MULTIPLAYER_PLAYERS; player_mask >>= 1, i++)
	{
		if ((player_mask & 1) && CheckBoxes[i]->GetCheck())
		{
			line.SetNum(GGame::g_game->GetPlayer(i)->ScoreHistoryIndex);
			line.SetColor(GGame::g_game->GetPlayer(i)->GetPlayer3DColor());
			for (int j = 0; j < line.PointCount; j++)
				line.SetPoint(j, GGame::g_game->GetPlayer(i)->ScoreHistory[j]);
			ScoreGraph->AddLine(line);
		}
	}
	ScoreGraph->SetScale(1.0f, 0.0f, true);
}

void __stdcall MultiplayerConditionBox::Callback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	switch (message)
	{
	case SETUP_MESSAGE_PRE_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(TitleText->rect.start.x, TitleText->rect.start.y, TitleText->rect.end.x,
		                    TitleText->rect.end.y, 0x202020, 0x202020, 0x202020, 0x202020, 1, 1);
		SetupThing::DrawAlpha = alpha;
		break;
	}
	case SETUP_MESSAGE_ACTIVATE:
		InitControls();
		break;
	case SETUP_MESSAGE_CLICK:
		if (control->id == MULTIPLAYER_CONDITION_BOX_CONTROL_ID_BACK ||
		    control->id == MULTIPLAYER_CONDITION_BOX_CONTROL_ID_GAME_OVER_TAB)
			Hide();
		if (control->id >= MULTIPLAYER_CONDITION_BOX_CONTROL_ID_CHECK_BOX_FIRST &&
		    control->id <= MULTIPLAYER_CONDITION_BOX_CONTROL_ID_CHECK_BOX_LAST)
		{
			uint32_t player_mask = 0;
			for (GPlayer* player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
			     player = GGame::g_game->GetNextActivePlayer(player))
			{
				if (CheckBoxes[player->GetPlayerNumber()]->GetCheck())
					player_mask |= 1 << player->GetPlayerNumber();
			}
			UpdateGraph(player_mask);
		}
		break;
	}
}

#endif /* defined(VERSION_BW1W120) || defined(VERSION_BW1W130) */
