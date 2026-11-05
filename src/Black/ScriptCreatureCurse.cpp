#include "ScriptCreatureCurse.h"

#include "GameTimeConstants.h" /* For SecondsPerYear */
#include "ColourConstants.h"   /* For White */

#include "Alignment.h"
#include "Creature.h"
#include "CreaturePhysical.h"
#include "Game.h"
#include "Script.h"

void ScriptCreatureCurse::Init(Creature* creature)
{
	if (creature != NULL)
	{
		Height = creature->GetHeight();
		Strength = creature->physical->GetStrength();
		Alignment = creature->alignment->GetValue();
	}
	else
	{
		Alignment = 0.0f;
		Strength = 0.0f;
		Height = 0.0f;
	}
}

void ScriptCreatureCurse::ResolveLoad(Creature* creature)
{
	if (creature != NULL && GGame::g_game->script->IsScriptRunning("CreatureCurse"))
	{
		if (Height > 0.0f)
		{
			creature->SetHeight(Height);
			creature->physical->SetStrength(Strength);
			creature->alignment->CrudeSet(Alignment);
		}
	}
}
