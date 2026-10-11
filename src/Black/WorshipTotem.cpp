#include "GameTimeConstants.h"
#include "WorshipTotem.h"

#include "ColourConstants.h" /* For White */
#include "WorshipSite.h"

uint32_t WorshipTotem::GetSaveType()
{
	return GAME_THING_TYPE_WORSHIP_TOTEM;
}

void WorshipTotem::SetSpecularColor(unsigned long color)
{
	SpecularColor = color;
}

float WorshipTotem::CalculateDesireForFood()
{
	return site->CalculateDesireForFood();
}

float WorshipTotem::CalculatePeopleHidingIndicator()
{
	return site->CalculatePeopleHidingIndicator();
}

bool32_t WorshipTotem::IsEffectReceiver(EffectValues* param_1)
{
	return false;
}

bool32_t WorshipTotem::IsSacrificeAltar()
{
	return true;
}
