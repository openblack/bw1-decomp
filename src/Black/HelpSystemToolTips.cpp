#include "ToolTips.h"
#include "ToolTipsInfo.h"

#include <stdio.h>   /* For swprintf */
#include <wchar.h>   /* For wcscmp, wcsncpy */
#include <windows.h> /* For HINSTANCE, max, min */

#include <Lionhead/LHLib/ver5.0/LHSystem.h>  /* For LHSys */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h> /* For UNICODE_sprintf */

#include "AbodeInfo.h"
#include "BuildingSite.h"
#include "Camera.h"
#include "CameraMode.h"
#include "Game.h"
#include "HelpProfile.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "Interface.h"
#include "MultiMapFixed.h"
#include "PileResource.h"
#include "SaveGameRoom.h"
#include "Scaffold.h"
#include "ShowNeedsVisuals.h"
#include "SpellIcon.h"
#include "StoragePit.h"
#include "Town.h"
#include "TownDesireFlags.h"
#include "Workshop.h"
#include "WorshipSite.h"
#include "WorshipSpellIcon.h"
#include "WorshipTotem.h"
#include "camerahelp.h"

#define TOOLTIP_TICKS_PER_SECOND  10.0f
#define TOOLTIP_MAX_TIMES_SHOWN   80
#define TOOLTIP_ICON_SIZE_DIVISOR 25
#define TOOLTIP_ICON_ALPHA        0x80
#define TOOLTIP_PERCENT           100
#define TOOLTIP_BELIEF_SCALE      1000.0f
#define TOOLTIP_MAX_DESIRE        1.0f

const float ToolTipSpeed = 0.4f;

#include "GameTimeConstants.h"

const float ToolTipImportantPriority = 0.9f;

GToolTipsInfo GToolTipsInfo::Infos[TOOLTIPS_TYPE_LAST];

int              ToolTips::field_0xd17bb0 = 0;
int              ToolTips::field_0xd17bb4 = 0;
int              ToolTips::field_0xbf19c0 = -1;
int              ToolTips::PauseTime = 0;
float            ToolTips::Number = 0.0f;
int              ToolTips::field_0xd17bc0 = 0;
bool32_t         ToolTips::Forced = false;
int              ToolTips::MinTimeLeft = 0;
int              ToolTips::TimeLeft = 0;
TOOLTIPS_TYPE    ToolTips::CurrentToolTip = TOOLTIPS_TYPE_NONE;
BINDABLE_ACTIONS ToolTips::Action = BINDABLE_ACTION_NONE;
KEYALIGN         ToolTips::Align = KEYALIGN_0x0;
CH_ANIMTYPE      ToolTips::AnimType = CH_ANIMTYPE_NONE;
int              ToolTips::Key = 0;
int              ToolTips::MouseType = CAMERA_HELP_MOUSE_TYPE_NONE;
bool32_t         ToolTips::CurrentToolTipSubmitted = false;

static float    TimesBlocked[TOOLTIPS_TYPE_LAST];
static uint32_t TimesShown[TOOLTIPS_TYPE_LAST];

// BW1W120 005c9a60 BW1M119 inlined
uint32_t GetToolTipStartTime();

uint32_t GetToolTipStartTime()
{
	return 0;
}

void ToolTips::SubmitToolTips(unsigned long help_text, BINDABLE_ACTIONS action, KEYALIGN align, bool32_t force,
                              HELP_EVENT_TYPE* event)
{
	if (help_text == HELP_TEXT_NONE)
	{
		return;
	}
	help_text -= HELP_TEXT_TOOLTIP_01;
	if (help_text >= TOOLTIPS_TYPE_LAST)
	{
		return;
	}
	if (GGame::g_game->help_system->TooltipLevel == TOOLTIP_LEVEL_MINIMUM &&
	    GToolTipsInfo::GetInfo()[help_text].Priority < ToolTipImportantPriority)
	{
		return;
	}
	if (help_text == CurrentToolTip)
	{
		CurrentToolTipSubmitted = true;
	}
	if (!force && MinTimeLeft > 0)
	{
		return;
	}
	if (CurrentToolTip != TOOLTIPS_TYPE_NONE)
	{
		if (GToolTipsInfo::GetInfo()[CurrentToolTip].Priority > GToolTipsInfo::GetInfo()[help_text].Priority ||
		    (help_text == CurrentToolTip && !force))
		{
			TimesBlocked[CurrentToolTip] += 1.0f;
			return;
		}
	}
	if (!force)
	{
		Forced = false;
	}
	else
	{
		Forced = true;
	}
	CurrentToolTip = (TOOLTIPS_TYPE)help_text;
	MinTimeLeft =
		(int)(1.0f / ToolTipSpeed * GToolTipsInfo::GetInfo()[CurrentToolTip].MinDisplayTime * TOOLTIP_TICKS_PER_SECOND);
	TimeLeft =
		(int)(1.0f / ToolTipSpeed * GToolTipsInfo::GetInfo()[CurrentToolTip].DisplayTime * TOOLTIP_TICKS_PER_SECOND);
	Align = align;
	Action = action;
	if (!HelpSystem::ConvertActionToKMIcon(action, &AnimType, &Key, &MouseType))
	{
		Key = 0;
		MouseType = HelpProfile::GetMouseType();
		AnimType = CH_ANIMTYPE_NONE;
	}
	CurrentToolTipSubmitted = true;
	TimesBlocked[CurrentToolTip] = (float)GetToolTipStartTime();
	if (GToolTipsInfo::GetInfo()[CurrentToolTip].Priority < ToolTipImportantPriority)
	{
		TimesShown[CurrentToolTip]++;
		if (TimesShown[CurrentToolTip] > TOOLTIP_MAX_TIMES_SHOWN)
		{
			TimesShown[CurrentToolTip] = TOOLTIP_MAX_TIMES_SHOWN;
		}
	}
}

void ToolTips::ForceToolTips(unsigned long help_text, float number)
{
	SubmitToolTips(help_text, BINDABLE_ACTION_NONE, KEYALIGN_0x0, true, NULL);
	Number = number;
}

bool32_t ToolTips::SmartIcon(HELP_EVENT_TYPE* event, KMIcon* icon)
{
	if ((icon == NULL || icon->Alpha == icon->EndAlpha) && MinTimeLeft <= 0 &&
	    GToolTipsInfo::GetInfo()[CurrentToolTip].Priority < ToolTipImportantPriority)
	{
		if (icon == NULL)
		{
			return false;
		}
		if (icon->Alpha >= 1.0f)
		{
			icon->StartAlpha = icon->Alpha;
			icon->FadeTime = 1.0f;
			icon->EndAlpha = 0.0f;
			icon->Time = 0.0f;
		}
	}
	return true;
}

void HelpSystem::ProcessToolTips()
{
#ifdef VERSION_BW1WCI
	if (TooltipLevel != TOOLTIP_LEVEL_NONE && GGame::g_game->GetCamera() != NULL &&
	    !GGame::g_game->GetCamera()->GetCurrentMode()->IsScriptedMode())
#else
	if (TooltipLevel != TOOLTIP_LEVEL_NONE && !GGame::g_game->help_system->IsInScriptWideScreen())
#endif
	{
		if (ToolTips::PauseTime > 0 || !GGame::g_game->Paused || GGame::g_game->IsInCitadel())
		{
			wchar_t         text[0x100];
			KEYALIGN        align = KEYALIGN_0x0;
			int             key = 0;
			int             mouseType = 0;
			CH_ANIMTYPE     animType;
			HELP_EVENT_TYPE event = HELP_EVENT_TYPE_0;
			int             size = LHSys::GetScreen().Height() / TOOLTIP_ICON_SIZE_DIVISOR;
			if (GetToolTipTextAndAnim(text, ARRAY_SIZE(ToolTipIcon->Text), &animType, &key, &mouseType, &align, &event))
			{
				if (TooltipLevel == TOOLTIP_LEVEL_MINIMUM &&
				    GToolTipsInfo::GetInfo()[ToolTips::CurrentToolTip].Priority < ToolTipImportantPriority)
				{
					if (ToolTipIcon != NULL)
					{
						delete ToolTipIcon;
						ToolTipIcon = NULL;
					}
				}
				else if (ToolTips::PauseTime <= 0 && TooltipLevel == TOOLTIP_LEVEL_INTELLIGENT &&
				         !ToolTips::SmartIcon(&event, ToolTipIcon))
				{
					if (ToolTipIcon != NULL)
					{
						delete ToolTipIcon;
						ToolTipIcon = NULL;
					}
				}
				else
				{
					if (ToolTips::MinTimeLeft > 0 && (CameraHelp::EnabledFeatures & CAMERA_FEATURE_ROTATE))
					{
						ToolTips::MinTimeLeft--;
					}
					align = (KEYALIGN)(ToolTips::Align | KEYALIGN_AT_HAND);
					if (ToolTipIcon != NULL)
					{
						if (ToolTipIcon->Key != key || ToolTipIcon->MouseType != mouseType ||
						    ToolTipIcon->AnimType != animType || ToolTipIcon->Align != align ||
						    wcscmp(text, ToolTipIcon->Text) != 0)
						{
							if (ToolTipIcon != NULL)
							{
								delete ToolTipIcon;
							}
							ToolTipIcon = NULL;
						}
					}
					if (ToolTipIcon == NULL)
					{
						if (ToolTips::Forced || TooltipLevel == TOOLTIP_LEVEL_ALL)
						{
#ifdef VERSION_BW1W130
							if (!GGame::g_game->MyInterface()->IsPlayBack(0))
#endif
							{
								LH3DColor white(255, 255, 255, 255);
								LH3DColor yellow(255, 255, 0, 255);
								ToolTipIcon = CameraHelp::CreateKeyOrMouseIcon(0.0f, 1.0f, 0.0f, animType, key,
								                                               mouseType, text, 0, 0, size, align,
								                                               &yellow, &white, TOOLTIP_ICON_ALPHA);
							}
						}
						else
						{
							LH3DColor white(255, 255, 255, 255);
							LH3DColor yellow(255, 255, 0, 255);
							ToolTipIcon = CameraHelp::CreateKeyOrMouseIcon(
								0.0f, 1.0f, (float)TimesShown[ToolTips::CurrentToolTip], animType, key, mouseType, text,
								0, 0, size, align, &yellow, &white, TOOLTIP_ICON_ALPHA);
						}
					}
				}
			}
			else if (ToolTipIcon != NULL)
			{
				delete ToolTipIcon;
				ToolTipIcon = NULL;
			}
		}
		else if (ToolTipIcon != NULL)
		{
			delete ToolTipIcon;
			ToolTipIcon = NULL;
		}
	}
	else if (ToolTipIcon != NULL)
	{
		delete ToolTipIcon;
		ToolTipIcon = NULL;
	}
}

bool32_t HelpSystem::GetToolTipTextAndAnim(wchar_t* text, unsigned long size, CH_ANIMTYPE* anim_type, int* key,
                                           int* mouse_type, KEYALIGN* align, HELP_EVENT_TYPE* event)
{
	unsigned long    textId = 0;
	BINDABLE_ACTIONS action = BINDABLE_ACTION_NONE;
	GInterface::CalculateToolTip(&action, &textId, align, event);
	if (ToolTips::TimeLeft > 0 && !ToolTips::CurrentToolTipSubmitted)
	{
		ToolTips::CurrentToolTipSubmitted = true;
		ToolTips::TimeLeft--;
	}
	if (ToolTips::CurrentToolTipSubmitted == true)
	{
		*anim_type = ToolTips::AnimType;
		*key = ToolTips::Key;
		*mouse_type = ToolTips::MouseType;
		*align = ToolTips::Align;
		textId = ToolTips::CurrentToolTip + HELP_TEXT_TOOLTIP_01;
		action = ToolTips::Action;
	}
	else
	{
		ToolTips::MinTimeLeft = 0;
		ToolTips::CurrentToolTip = TOOLTIPS_TYPE_NONE;
		return false;
	}
	if (action == BINDABLE_ACTION_NONE)
	{
		*anim_type = CH_ANIMTYPE_NONE;
		*mouse_type = CAMERA_HELP_MOUSE_TYPE_NONE;
	}
	if (!ConvertActionToKMIcon(action, anim_type, key, mouse_type))
	{
		*key = 0;
		*mouse_type = CAMERA_HELP_MOUSE_TYPE_NONE;
		*anim_type = CH_ANIMTYPE_NONE;
	}
	if (textId == HELP_TEXT_TOOLTIP_116)
	{
		swprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_TOOLTIP_116),
		         SaveGameRoom::ToolTipSlotName);
		return true;
	}
	if (textId == HELP_TEXT_TOOLTIP_111 || textId == HELP_TEXT_TOOLTIP_48 || textId == HELP_TEXT_TOOLTIP_120 ||
	    textId == HELP_TEXT_TOOLTIP_121)
	{
		UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), ToolTips::Number);
		return true;
	}
	Object* object = GGame::g_game->MyInterface()->Collide.object;
	if (object != NULL)
	{
		if (textId == HELP_TEXT_TOOLTIP_130)
		{
			MultiMapFixed* fixed = dynamic_cast<MultiMapFixed*>(object);
			if (fixed != NULL)
			{
				float percent = !fixed->IsBuilt() ? fixed->GetPercentBuilt() : fixed->GetPercentRepaired();
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId),
				                percent * TOOLTIP_PERCENT);
				return true;
			}
		}
		if (textId == HELP_TEXT_TOOLTIP_137)
		{
			ShowNeedsVisuals* visuals = dynamic_cast<ShowNeedsVisuals*>(object);
			if (visuals != NULL)
			{
				Workshop* workshop = dynamic_cast<Workshop*>(visuals->game_thing.Get());
				float     wood = (float)workshop->GetWoodNeedToProduce();
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), wood);
				ToolTips::Forced = true;
				return true;
			}
			MultiMapFixed* fixed = dynamic_cast<MultiMapFixed*>(object);
			if (fixed != NULL && fixed->building_site != NULL)
			{
				float wood = max(fixed->building_site->GetWoodNeededToBuild(), 0.0f);
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), wood);
				return true;
			}
			textId = HELP_TEXT_TOOLTIP_130;
			if (fixed != NULL)
			{
				float percent = !fixed->IsBuilt() ? fixed->GetPercentBuilt() : fixed->GetPercentRepaired();
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId),
				                percent * TOOLTIP_PERCENT);
				return true;
			}
		}
		Workshop* workshop = dynamic_cast<Workshop*>(object);
#ifdef VERSION_BW1WCI
		if (workshop != NULL)
		{
			if (workshop->IsBuilt() && workshop->IsRepaired())
			{
				float percent =
					(float)((int)(TOOLTIP_PERCENT - (float)(workshop->ProductionTimeLeft * TOOLTIP_PERCENT) /
				                                        workshop->GetInfo()->TimeEachMobileObjectTakesToProduce) %
				            TOOLTIP_PERCENT);
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), percent);
				ToolTips::Forced = true;
				return true;
			}
			UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(object->GetOverwriteTapToolTip()));
			ToolTips::Forced = true;
			return true;
		}
#else
		if (workshop != NULL && workshop->IsBuilt() && workshop->IsRepaired())
		{
			float percent =
				(float)((int)(TOOLTIP_PERCENT - (float)(workshop->ProductionTimeLeft * TOOLTIP_PERCENT) /
			                                        workshop->GetInfo()->TimeEachMobileObjectTakesToProduce) %
			            TOOLTIP_PERCENT);
			UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), percent);
			ToolTips::Forced = true;
			return true;
		}
#endif
		SpellIcon* spellIcon = object->CastSpellIcon();
		if (spellIcon != NULL)
		{
			WorshipSpellIcon* worshipIcon = spellIcon->GetWorshipSpellIcon();
			if (worshipIcon != NULL)
			{
				float chant = worshipIcon->ChantStore;
				float percent = chant / worshipIcon->GetChantRequiredForSpellSeed() * TOOLTIP_PERCENT;
				if (percent != 0.0f)
				{
					swprintf(text, L"%s %3.0f%%", HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), percent);
				}
				else
				{
					UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId));
				}
				ToolTips::Forced = true;
				return true;
			}
		}
		if (textId == HELP_TEXT_TOOLTIP_118)
		{
			ToolTips::Forced = true;
			float life = object->GetLife() * TOOLTIP_PERCENT;
			UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), life);
			return true;
		}
		if (textId == HELP_TEXT_TOOLTIP_117)
		{
			int value = ((Scaffold*)object)->GetScaffoldValue();
			UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), value);
			return true;
		}
		if (textId == HELP_TEXT_TOOLTIP_119)
		{
			ToolTips::Forced = true;
			WorshipTotem* totem = dynamic_cast<WorshipTotem*>(object);
			if (totem != NULL && totem->Site.Get() != NULL)
			{
				float chant = totem->Site.Get()->ChantStore;
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), chant);
			}
			return true;
		}
		if (textId == HELP_TEXT_TOOLTIP_92 || textId == HELP_TEXT_TOOLTIP_141)
		{
			ToolTips::Forced = true;
			ShowNeedsVisuals* visuals = dynamic_cast<ShowNeedsVisuals*>(object);
			if (visuals != NULL)
			{
				float scale = visuals->ScaleZoomer.CurrentValue * TOOLTIP_PERCENT;
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), scale);
				return true;
			}
		}
		if (textId == HELP_TEXT_TOOLTIP_139 || textId == HELP_TEXT_TOOLTIP_140)
		{
			PileResource* pile = dynamic_cast<PileResource*>(object);
			if (pile != NULL)
			{
				if (textId == HELP_TEXT_TOOLTIP_139)
				{
					UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId),
					                (float)pile->GetResource(RESOURCE_TYPE_FOOD));
				}
				else
				{
					UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId),
					                (float)pile->GetResource(RESOURCE_TYPE_WOOD));
				}
			}
			return true;
		}
		if (textId == HELP_TEXT_TOOLTIP_22)
		{
			Town* town;
			if (object->IsTownDesireFlag() && (town = object->GetTown()) != NULL)
			{
				textId = ((TownDesireFlags*)object)->GetToolTipForFlagDesire();
				float desire =
					(min(town->GetRawDesire(((TownDesireFlags*)object)->GetDesireType()), TOOLTIP_MAX_DESIRE) *
				     TOOLTIP_PERCENT);
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), desire);
				ToolTips::Forced = true;
				return true;
			}
			return false;
		}
		if (textId == HELP_TEXT_TOOLTIP_90)
		{
			if (object->IsTownCentre() || object->IsTotemStatue())
			{
				Town* town = object->GetTown();
				float belief = town->GetBeliefNeededOrLeft(&GGame::g_game->players[GGame::g_game->PlayerIndex]) *
				               TOOLTIP_BELIEF_SCALE;
				if (belief < 0.0f)
				{
					belief *= -1.0f;
					textId = HELP_TEXT_TOOLTIP_110;
				}
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), belief);
				return true;
			}
		}
		if (textId == HELP_TEXT_TOOLTIP_138)
		{
			if (object->IsTownCentre() || object->IsTotemStatue())
			{
				Town* town = object->GetTown();
				float population = (float)(town->stats.NumAdults + town->stats.NumChildren);
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), population);
				swprintf(text, L"%s/%d", text, town->stats.MaxVillagersInAbodes + town->stats.MaxChildrenInAbodes);
				return true;
			}
		}
		if (textId == HELP_TEXT_TOOLTIP_135)
		{
			if (object->IsStoragePit(NULL))
			{
				StoragePit* pit = dynamic_cast<StoragePit*>(object);
				float       food = (float)pit->GetResource(RESOURCE_TYPE_FOOD);
				float       wood = (float)pit->GetResource(RESOURCE_TYPE_WOOD);
				UNICODE_sprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), food, wood);
				return true;
			}
		}
	}
	wcsncpy(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId), size);
	return action != BINDABLE_ACTION_NONE || textId != HELP_TEXT_NONE;
}
