#include "HelpSystem.h"

#include <Lionhead/LH3DLib/development/LHPoint.h>

#include "Camera.h"
#include "Game.h"
#include "HelpSpirit.h"
#include "HelpSystemInfo.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "Object.h"
#include "ToolTips.h"

const float InHandMessageDelay = 15.0f;
const float FOVMinCosAngle = 0.77f;

#include "GameTimeConstants.h"

void HelpSystem::Process()
{
	GGame::g_game->MyInterface()->CalculateHandState();
	FOVLocked = false;
	Validate();
	ProcessSpirits();
	ProcessToolTips();
	ToolTips::CurrentToolTipSubmitted = false;
	ProcessBubble();
	if (IsHelpEnabled())
	{
		ProcessConditions();
		ProcessBanter();
	}
}

void HelpSystem::ProcessSpirits()
{
	if (SpiritType2 != NULL)
	{
		SpiritType2->Process();
	}
	if (SpiritType1 != NULL)
	{
		SpiritType1->Process();
	}
}

void HelpSystem::SendFOVObject(Object* object, float distance)
{
	static float minCosAngle = FOVMinCosAngle;

	if (FOVLocked)
	{
		return;
	}
	if (distance >= HelpSystemInfo::Info.MaxFOVDistance)
	{
		return;
	}
	if (FOVObject != NULL && distance >= FOVDistance)
	{
		return;
	}
	if (!object->GetFOVHelpMessageSet())
	{
		return;
	}
	if (!ConditionSuccess(object, (HELP_SYSTEM_MESSAGE_SET)object->GetFOVHelpMessageSet(),
	                      (HELP_SYSTEM_CONDITION)object->GetFOVHelpCondition()))
	{
		return;
	}
	LHPoint toObject;
	LHPoint cameraPos;
	LHPoint view;
	GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, toObject);
	GGame::g_game->GetCamera()->GetPosition(cameraPos);
	GGame::g_game->GetCamera()->GetFocus(view);
	view -= cameraPos;
	toObject -= cameraPos;
	view.FastNormalizeInline();
	toObject.FastNormalizeInline();
	if (view * toObject > minCosAngle)
	{
		FOVObject = object;
		FOVDistance = distance;
	}
}

bool32_t HelpSystem::IsFOVPaused()
{
	return false;
}

void HelpSystem::ResetFOV()
{
	FOVActive = false;
	if (!IsDialogueControlled() && GGame::g_game->help_system != NULL)
	{
		if (IsSpiritEjected(HELP_SPIRIT_TYPE_GOOD))
		{
			SpiritHome(HELP_SPIRIT_TYPE_GOOD, false);
		}
		if (IsSpiritEjected(HELP_SPIRIT_TYPE_EVIL))
		{
			SpiritHome(HELP_SPIRIT_TYPE_EVIL, false);
		}
	}
}

bool32_t HelpSystem::ProcessObjectInHand()
{
	Object* object = GGame::g_game->MyInterface()->GetStatus()->GetFirstObjectInCurrentHand();
	if (object != NULL && !(object->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
	{
		if (HasTimeElapsedSinceCategoryTriggered(HELP_SET_CATEGORY_7, InHandMessageDelay) &&
		    object != LastObjectInHand && object->GetHandHelpMessageSet() &&
		    ConditionSuccess(object, (HELP_SYSTEM_MESSAGE_SET)object->GetHandHelpMessageSet(),
		                     (HELP_SYSTEM_CONDITION)object->GetHandHelpCondition()) &&
		    RunMessageSet((HELP_SYSTEM_MESSAGE_SET)object->GetHandHelpMessageSet(), object))
		{
			LastObjectInHand = object;
			return true;
		}
	}
	else
	{
		LastObjectInHand = NULL;
	}
	return false;
}
