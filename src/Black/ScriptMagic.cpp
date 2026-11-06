#include "WhiteColour.h"
#include "MaxFloat.h"
#include "GameTimeConstants.h"
#include "Script.h"

#include <Lionhead/LH3DLib/development/LH3DStorm.h> /* For class LH3DStorm */

#include "AbodeInfo.h"
#include "Game.h"
#include "GameInfo.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "MagicEffectInfo.h"
#include "MagicInfo.h"
#include "ParticleContainer.h"
#include "Player.h"
#include "PSysProcessInfo.h"
#include "Spell.h"
#include "SpellDispenser.h"
#include "SpellShield.h"
#ifdef VERSION_BW1WCI
#include "SpotVisualAlex.h"
#endif
#include "Utils.h"
#include "WorshipSpellIcon.h"

const float SpellCurlScale = 1.0f;

Spell* GScript::CastSpellOnObject(Object* object, MAGIC_TYPE type, const MapCoords& source, GameThing* creator,
                                  bool32_t check_can_cast, float radius, float duration, float curl,
#ifdef VERSION_BW1WCI
                                  bool32_t creates_reaction,
#endif
                                  const LHPoint& velocity)
{
	if (creator == NULL)
	{
		creator = GGame::g_game->GetNeutralPlayer();
	}
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(creator);
	if (icon != NULL && icon->GetChantNeededForSpellSeed() > 0.0f)
	{
		return NULL;
	}
	GUtils::Get3DAngleFromXZ(source, object->Pos);
	GMagicInfo*   info = GMagicInfo::Infos[type];
	float         life = info->GetMagicEffectInfo()->Life;
	SpellCastData data;
	data.Radius = radius;
	data.Life = life;
	data.Duration = duration;
	data.Target = SPELL_CAST_NO_TARGET;
#ifdef VERSION_BW1WCI
	data.CreatesReaction = creates_reaction;
#endif
	Spell* spell = NULL;
	if (!check_can_cast || info->CanCast(object, creator))
	{
		PSysProcessInfo processInfo;
		processInfo.GesturePosition = source.GetLHPoint();
		processInfo.CameraForwardUnitVector = object->Pos.GetLHPoint() - processInfo.GesturePosition;
		processInfo.HandVelocity = velocity;
		processInfo.GestureAngularVelocity = SpellCurlScale * curl;
		info->Cast(object, creator, &data, &spell, processInfo);
		if (spell != NULL && icon != NULL)
		{
			icon->RemoveFromChantStore(icon->GetChantRequiredForSpellSeed());
		}
	}
	return spell;
}

Spell* GScript::CastSpellAtPos(const MapCoords& position, MAGIC_TYPE type, const MapCoords& source, GameThing* creator,
                               bool32_t check_can_cast, float radius, float duration, float curl,
#ifdef VERSION_BW1WCI
                               bool32_t creates_reaction,
#endif
                               const LHPoint& velocity)
{
	if (creator == NULL)
	{
		creator = GGame::g_game->GetNeutralPlayer();
	}
	WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(creator);
	if (icon != NULL && icon->GetChantNeededForSpellSeed() > 0.0f)
	{
		return NULL;
	}
	GUtils::Get3DAngleFromXZ(source, position);
	GMagicInfo*   info = GMagicInfo::Infos[type];
	float         life = info->GetMagicEffectInfo()->Life;
	SpellCastData data;
	data.Radius = radius;
	data.Life = life;
	data.Duration = duration;
	data.Target = SPELL_CAST_NO_TARGET;
#ifdef VERSION_BW1WCI
	data.CreatesReaction = creates_reaction;
#endif
	Spell* spell = NULL;
	if (!check_can_cast || info->CanCast(position, creator))
	{
		PSysProcessInfo processInfo;
		processInfo.GesturePosition = source.GetLHPoint();
		processInfo.CameraForwardUnitVector = position.GetLHPoint() - processInfo.GesturePosition;
		processInfo.HandVelocity = velocity;
		processInfo.GestureAngularVelocity = SpellCurlScale * curl;
		info->Cast(position, creator, &data, &spell, processInfo);
		if (spell != NULL && icon != NULL)
		{
			icon->RemoveFromChantStore(icon->GetChantRequiredForSpellSeed());
		}
	}
	return spell;
}

void GScript::SpellOnThing()
{
#ifdef VERSION_BW1WCI
	bool32_t createsReaction = g_scriptDLL->ULONG_POP();
#endif
	float   curl = g_scriptDLL->FLOAT_POP();
	float   duration = g_scriptDLL->FLOAT_POP();
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint source;
	g_scriptDLL->POINT_POP(source);
	uint32_t          thingId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(thingId);
	MAGIC_TYPE        type = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "Thing not valid for cast");
	SCRIPT_ASSERT(type > MAGIC_TYPE_NONE && type < MAGIC_TYPE_LAST, "Invalid magic");
	if (type > MAGIC_TYPE_NONE && type < MAGIC_TYPE_LAST)
	{
		if (thing != NULL)
		{
			Spell*  spell;
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
				spell = CastSpellOnObject(object, type, MapCoords(source), NULL, false, radius, duration, curl,
#ifdef VERSION_BW1WCI
				                          createsReaction,
#endif
				                          LHPoint(0.0f, 0.0f, 0.0f));
			}
			else
			{
				spell = CastSpellAtPos(thing->Pos, type, MapCoords(source), NULL, false, radius, duration, curl,
#ifdef VERSION_BW1WCI
				                       createsReaction,
#endif
				                       LHPoint(0.0f, 0.0f, 0.0f));
			}
			if (spell != NULL)
			{
				uint32_t id = AddScriptGameThing(spell, true);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
		ScriptErrorMessage("Spell not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::SpellAtPos()
{
#ifdef VERSION_BW1WCI
	bool32_t createsReaction = g_scriptDLL->ULONG_POP();
#endif
	float   curl = g_scriptDLL->FLOAT_POP();
	float   duration = g_scriptDLL->FLOAT_POP();
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint source;
	g_scriptDLL->POINT_POP(source);
	LHPoint position;
	g_scriptDLL->POINT_POP(position);
	MAGIC_TYPE type = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type > MAGIC_TYPE_NONE && type < MAGIC_TYPE_LAST, "Invalid magic");
	if (type > MAGIC_TYPE_NONE && type < MAGIC_TYPE_LAST)
	{
		Spell* spell = CastSpellAtPos(MapCoords(position), type, MapCoords(source), NULL, false, radius, duration, curl,
#ifdef VERSION_BW1WCI
		                              createsReaction,
#endif
		                              LHPoint(0.0f, 0.0f, 0.0f));
		if (spell != NULL)
		{
			uint32_t id = AddScriptGameThing(spell, true);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
		ScriptErrorMessage("Spell not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::SpecialEffectOnPos()
{
	float   seconds = g_scriptDLL->FLOAT_POP();
	long    duration = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	SPOT_VISUAL_TYPE    type = (SPOT_VISUAL_TYPE)g_scriptDLL->ULONG_POP();
	GParticleContainer* visual =
		GParticleContainer::CreateSpotVisualWithSpecifiedDuration(MapCoords(pos), type, 1.0f, duration, NULL);
	if (visual != NULL)
	{
		visual->SetPlayer(GGame::g_game->MyPlayer());
		uint32_t id = AddScriptGameThing(visual, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	ScriptErrorMessage("Spell not created");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::SpecialEffectOnId()
{
	float             seconds = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SPOT_VISUAL_TYPE  type = (SPOT_VISUAL_TYPE)g_scriptDLL->ULONG_POP();
	long              duration = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
	SCRIPT_ASSERT(thing != NULL, "Thing invalid");
	if (thing != NULL)
	{
		GParticleContainer* visual =
			GParticleContainer::CreateSpotVisualWithSpecifiedDuration(thing->Pos, type, 1.0f, duration, thing);
		if (visual != NULL)
		{
			visual->SetPlayer(GGame::g_game->MyPlayer());
			uint32_t id = AddScriptGameThing(visual, true);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
	}
	ScriptErrorMessage("Spell not created");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetSpellAtPoint()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	MAGIC_TYPE type = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	Spell*     spell;
	switch (type)
	{
	case MAGIC_TYPE_PHYSICAL_SHIELD:
		spell = SpellShield::IsPointInAShield(MapCoords(pos), SHIELD_TYPE_PHYSICAL);
		break;
	case MAGIC_TYPE_SHIELD:
		spell = SpellShield::IsPointInAShield(MapCoords(pos), SHIELD_TYPE_MAGIC);
		break;
	default:
		spell = Spell::FindSpellWithinRadius(type, MapCoords(pos), radius);
		break;
	}
	if (spell != NULL)
	{
		uint32_t id = AddScriptGameThing(spell, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
	else
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::SetRadius()
{
	float             radius = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL && thing->IsSpell())
	{
		((Spell*)thing)->SetSpellMagnitude(radius);
	}
}

void GScript::SetPlayerMagic()
{
	float      scriptPlayer = g_scriptDLL->FLOAT_POP();
	MAGIC_TYPE type = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	bool32_t   enable = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type > MAGIC_TYPE_NONE && type < MAGIC_TYPE_LAST, "Invalid magic");
	if (type > MAGIC_TYPE_NONE && type < MAGIC_TYPE_LAST)
	{
		GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((unsigned long)scriptPlayer));
		if (player != NULL)
		{
			player->SetMagicTypeEnabled(type, enable);
		}
	}
}

void GScript::HasPlayerMagic()
{
	float      scriptPlayer = g_scriptDLL->FLOAT_POP();
	MAGIC_TYPE type = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	bool32_t   enabled = true;
	SCRIPT_ASSERT(type > MAGIC_TYPE_NONE && type < MAGIC_TYPE_LAST, "Invalid magic");
	bool32_t valid = type > MAGIC_TYPE_NONE && type < MAGIC_TYPE_LAST;
	if (!valid)
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((unsigned long)scriptPlayer));
	if (player != NULL)
	{
		enabled = player->HasMagicTypeEverBeenEnabled(type);
	}
	g_scriptDLL->PUSH((void*)enabled, VMType_BOOLEAN);
}

void GScript::ObjectCastByObject()
{
	GameThingWithPos* creator = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* spell = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (spell != NULL)
	{
		if (spell->IsSpell())
		{
			if (creator != NULL)
			{
				bool32_t cast = ((Spell*)spell)->GetCreator() == creator;
				g_scriptDLL->PUSH((void*)cast, VMType_BOOLEAN);
				return;
			}
			ScriptErrorMessage("Object should be a spell");
		}
		else
		{
			SCRIPT_ASSERT(spell->IsSpell(), "Object should be a spell");
		}
	}
	else
	{
		ScriptErrorMessage("Spell Object does not exist");
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::IsWindMagicAtPos()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	for (LH3DStorm* storm = LH3DStorm::first; storm != NULL; storm = storm->Next)
	{
		if (storm->Info.Clouds == 0 && GUtils::GetDistance(pos, storm->Info.Pos) < radius + storm->Info.OuterRadius)
		{
			g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
			return;
		}
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::GetSpellLastCastTime()
{
	float    scriptPlayer = g_scriptDLL->FLOAT_POP();
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((unsigned long)scriptPlayer));
	if (player != NULL)
	{
		int   turns = GGame::g_game->data.GameTurn - player->LastSpell.GameTurn;
		float seconds = (float)turns * GGameInfo::Info.MillisecondsPerGameTurn * SCRIPT_SECONDS_PER_MILLISECOND;
		g_scriptDLL->FLOAT_PUSH(seconds);
	}
	else
	{
		g_scriptDLL->FLOAT_PUSH(MaxFloat);
	}
}

void GScript::GetSpellLastCast()
{
	float    scriptPlayer = g_scriptDLL->FLOAT_POP();
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((unsigned long)scriptPlayer));
	if (player != NULL)
	{
		g_scriptDLL->PUSH((void*)player->LastSpell.Type, VMType_INT);
	}
	else
	{
		g_scriptDLL->PUSH((void*)MAGIC_TYPE_NONE, VMType_INT);
	}
}

void GScript::GetSpellLastCastPos()
{
	float    scriptPlayer = g_scriptDLL->FLOAT_POP();
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((unsigned long)scriptPlayer));
	LHPoint  pos;
	if (player != NULL)
	{
		GLandscape::ConvertMapCoordToLandscapePoint(player->LastSpell.Pos, pos);
	}
	else
	{
		pos.z = 0.0f;
		pos.y = 0.0f;
		pos.x = 0.0f;
	}
	g_scriptDLL->POINT_PUSH(pos);
}

void GScript::IsSpellCharging()
{
	float    scriptPlayer = g_scriptDLL->FLOAT_POP();
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((unsigned long)scriptPlayer));
	bool32_t charging = player->IsAtLeastOneSpellBeginToBeCharged();
	g_scriptDLL->PUSH((void*)charging, VMType_BOOLEAN);
}

void GScript::IsThatSpellCharging()
{
	MAGIC_TYPE type = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	float      scriptPlayer = g_scriptDLL->FLOAT_POP();
	GPlayer*   player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((unsigned long)scriptPlayer));
	bool32_t   charging = player->IsSpellBeginToBeCharged(type);
	g_scriptDLL->PUSH((void*)charging, VMType_BOOLEAN);
}

void GScript::SetMagicProperties()
{
	float             seconds = g_scriptDLL->FLOAT_POP();
	MAGIC_TYPE        type = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsSpellDispenser(), "Thing must be a dispenser");
		if (thing->IsSpellDispenser())
		{
			SpellDispenser* dispenser = (SpellDispenser*)thing;
			dispenser->DispensedMagicType = type;
			if (seconds > 0.0f)
			{
				dispenser->Charges = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
				if (dispenser->Charges == 0)
				{
					dispenser->SetActive(false);
				}
			}
			else
			{
				dispenser->Charges = (uint32_t)((GAbodeInfo*)dispenser->info)->TimeEachMobileObjectTakesToProduce;
				if (dispenser->Charges == 0)
				{
					dispenser->SetActive(false);
				}
			}
		}
	}
}

void GScript::GetManaForSpell()
{
	MAGIC_TYPE type = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	g_scriptDLL->FLOAT_PUSH(GMagicInfo::Infos[type]->GetCreateCost());
}

void GScript::ClearPlayerSpellCharging()
{
	GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
	GPlayer*          player =
		GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((unsigned long)g_scriptDLL->FLOAT_POP()));
	player->CancelAllSpellsCharging(status);
}

#ifdef VERSION_BW1WCI
void GScript::SpecialEffectFromFile()
{
	char       path[MAX_PATH];
	ScriptDLL* dll = g_scriptDLL;
	sprintf(path, ".\\Data\\Zones\\%s", dll->STRING(dll->ULONG_POP()));
	FenceVis* fence = new (FILEPATH, 521) FenceVis(path, LH3DColor(0xff, 0xff, 0xff, 0xff));
	if (fence != NULL)
	{
		uint32_t id = AddScriptGameThing(fence, true);
		g_scriptDLL->THING_PUSH(id);
		return;
	}
	ScriptErrorMessage("Effect not created");
	g_scriptDLL->THING_PUSH(0);
}

void GScript::SpecialEffectFromPos()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	if (g_scriptDLL->ULONG_POP() == SPOT_VISUAL_ALEX_TYPE_HULA_HOOP)
	{
		HulaHoopVis* hoop = new (FILEPATH, 548) HulaHoopVis(pos, HULA_HOOP_VIS_HEIGHT, HULA_HOOP_VIS_RADIUS,
		                                                    HULA_HOOP_VIS_DENSITY, LH3DColor(0xff, 0xff, 0xff, 0xff));
		if (hoop != NULL)
		{
			uint32_t id = AddScriptGameThing(hoop, true);
			g_scriptDLL->THING_PUSH(id);
			return;
		}
	}
	ScriptErrorMessage("Effect not created");
	g_scriptDLL->THING_PUSH(0);
}
#endif
