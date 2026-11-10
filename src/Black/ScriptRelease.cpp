#include "WhiteColour.h"
#include "GameTimeConstants.h"
#include "Script.h"

#include "Animal.h"
#include "Audio.h"
#include "Creature.h"
#include "Football.h"
#include "Global.h"
#include "Villager.h"

void GScript::ReleaseScriptThingIntoTheGame(GameThingWithPos* thing, unsigned long slot, bool32_t force)
{
	thing->SetControlledByScript(false);
	if (!force && (thing->IsDeletedWhenReleasedFromScript() || (thing->IsScriptHighlight() && IsCreatedByScript(slot))))
	{
		SCRIPT_ASSERT(IsCreatedByScript(slot), "Deleting thing not created by script");
		thing->ToBeDeleted(false);
		return;
	}
	GGlobal::Global.audio->RemoveThingMusic(thing);
	switch (thing->GetScriptObjectType())
	{
	case SCRIPT_OBJECT_TYPE_BALL:
		((Football*)thing)->AvailableToVillagers = true;
		break;
	case SCRIPT_OBJECT_TYPE_ANIMAL:
	case SCRIPT_OBJECT_TYPE_BIRD: {
		Animal* animal = (Animal*)thing;
		if (thing->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
		{
			SetScriptFlyingState(animal, ANIMAL_STATE_WANDER);
		}
		else
		{
			SetScriptState(animal, ANIMAL_STATE_WANDER);
		}
		animal->ReleaseFromScript();
		break;
	}
	case SCRIPT_OBJECT_TYPE_VILLAGER:
	case SCRIPT_OBJECT_TYPE_VILLAGER_CHILD: {
		SCRIPT_ASSERT(thing->IsObjectInMap() || thing->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS,
		              "Releasing object not in map");
		Villager* villager = (Villager*)thing;
		if (thing->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
		{
			SetScriptFlyingState(villager, VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		}
		else
		{
			SetScriptState(villager, VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		}
		villager->ReleaseFromScript();
		break;
	}
	case SCRIPT_OBJECT_TYPE_CREATURE:
#ifdef VERSION_BW1WCI
	case SCRIPT_OBJECT_TYPE_DUMB_CREATURE:
	case SCRIPT_OBJECT_TYPE_FEMALE_CREATURE:
#endif
		((Creature*)thing)->ScriptReleaseFromScript();
		break;
	case SCRIPT_OBJECT_TYPE_NONE:
	case SCRIPT_OBJECT_TYPE_MARKER:
	case SCRIPT_OBJECT_TYPE_ABODE:
	case SCRIPT_OBJECT_TYPE_FEATURE:
	case SCRIPT_OBJECT_TYPE_REWARD:
	case SCRIPT_OBJECT_TYPE_MOBILE_STATIC:
	case SCRIPT_OBJECT_TYPE_TOWN:
	case SCRIPT_OBJECT_TYPE_DANCE:
	case SCRIPT_OBJECT_TYPE_FLOCK:
	case SCRIPT_OBJECT_TYPE_DEAD_TREE:
	case SCRIPT_OBJECT_TYPE_INFLUENCE_RING:
	case SCRIPT_OBJECT_TYPE_WEATHER_THING:
	case SCRIPT_OBJECT_TYPE_STORE:
	case SCRIPT_OBJECT_TYPE_TIMER:
	case SCRIPT_OBJECT_TYPE_CITADEL:
	case SCRIPT_OBJECT_TYPE_WORSHIP_SITE:
	case SCRIPT_OBJECT_TYPE_MOBILE_OBJECT:
	case SCRIPT_OBJECT_TYPE_TREE:
	case SCRIPT_OBJECT_TYPE_VORTEX:
	case SCRIPT_OBJECT_TYPE_POO:
	case SCRIPT_OBJECT_TYPE_WHALE:
	case SCRIPT_OBJECT_TYPE_ARK:
	case SCRIPT_OBJECT_TYPE_MIST:
	case SCRIPT_OBJECT_TYPE_ONE_SHOT_SPELL:
	case SCRIPT_OBJECT_TYPE_PUZZLE_GAME:
	case SCRIPT_OBJECT_TYPE_ROCK:
	case SCRIPT_OBJECT_TYPE_FIELD:
	case SCRIPT_OBJECT_TYPE_SPELL_DISPENSER:
	case SCRIPT_OBJECT_TYPE_HIGHLIGHT:
	case SCRIPT_OBJECT_TYPE_COMPUTER_PLAYER:
	case SCRIPT_OBJECT_TYPE_SCAFFOLD:
	case SCRIPT_OBJECT_TYPE_TOTEM_STATUE:
	case SCRIPT_OBJECT_TYPE_ANIMATED_STATIC:
#ifdef VERSION_BW1WCI
	case SCRIPT_OBJECT_TYPE_SPECIAL_FIELD:
	case SCRIPT_OBJECT_TYPE_CREATURE_ISLE_BUILDING:
	case SCRIPT_OBJECT_TYPE_DOLPHIN:
	case SCRIPT_OBJECT_TYPE_CANNON:
	case SCRIPT_OBJECT_TYPE_FLOWERS:
#endif
		break;
	default:
		ScriptErrorMessage("Unknown thing-Tell Jonty");
		break;
	}
}
