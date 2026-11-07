#include "WhiteColour.h"
#include "GameTimeConstants.h"
#include "MapCoordsMeters.h"
#include "CreatureAttitudeConstants.h"
#include "Script.h"

#ifdef VERSION_BW1WCI
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#endif
#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For DEGREES_TO_RADIANS, TWO_PI */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>       /* For LHSPrintf */

#include "Alignment.h"
#ifdef VERSION_BW1WCI
#include "Abode.h"
#include "AnimatedStatic.h"
#endif
#include "Creature.h"
#include "Creature3D.h"
#include "CreaturePhysical.h"
#ifdef VERSION_BW1WCI
#include "CreatureReceiveSpell.h"
#endif
#include "Flock.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameThingWithPos.h"
#include "Landscape.h"
#include "Living.h"
#include "Morphable.h"
#include "MultiMapFixed.h"
#include "Object.h"
#include "OneOffSpellSeed.h"
#include "ParticleContainer.h"
#include "PhysicsObject.h"
#include "Player.h"
#include "PuzzleGame.h"
#include "Reward.h"
#include "Scaffold.h"
#include "ScriptDLL.h"
#include "ScriptHighlight.h"
#include "Spell.h"
#include "SpellSeed.h"
#include "TotemStatue.h"
#include "Town.h"
#include "WeatherThing.h"

void GScript::GetProperty()
{
	uint32_t                    id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos*           thing = GetScriptGameThing(id);
	SCRIPT_OBJECT_PROPERTY_TYPE property = (SCRIPT_OBJECT_PROPERTY_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		if (thing->IsScriptContainer() && property != SCRIPT_OBJECT_PROPERTY_TYPE_PLAYER)
		{
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
		}
		Creature* creature = dynamic_cast<Creature*>(thing);
		switch (property)
		{
		case SCRIPT_OBJECT_PROPERTY_TYPE_HEALTH: {
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
#ifdef VERSION_BW1WCI
				if (object->IsAbode() && ((Abode*)object)->IsBuilt() != true)
				{
					g_scriptDLL->FLOAT_PUSH(((Abode*)object)->GetPercentBuilt());
					return;
				}
#endif
				g_scriptDLL->FLOAT_PUSH(object->GetLife());
				return;
			}
			SCRIPT_ASSERT(object != NULL, "Object not an object");
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_XANGLE: {
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
#ifdef VERSION_BW1WCI
				float angle;
				if (object->IsBalista())
				{
					angle = ((AnimatedStatic*)object)->BalistaXAngle;
				}
				else
				{
					angle = object->GetXAngle();
				}
#else
				float angle = object->GetXAngle();
#endif
				g_scriptDLL->FLOAT_PUSH((angle / TWO_PI) * SCRIPT_DEGREES_IN_CIRCLE);
				return;
			}
			SCRIPT_ASSERT(object != NULL, "Object not an object");
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_ZANGLE: {
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
				float angle = object->GetZAngle();
				g_scriptDLL->FLOAT_PUSH((angle / TWO_PI) * SCRIPT_DEGREES_IN_CIRCLE);
				return;
			}
			SCRIPT_ASSERT(object != NULL, "Object not an object");
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_ANGLE: {
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
				float angle;
				if (object->IsScaffold())
				{
					angle = ((Scaffold*)object)->HandAngleSet ? ((Scaffold*)object)->HandAngle : 0.0f;
				}
#ifdef VERSION_BW1WCI
				else if (object->IsBalista())
				{
					angle = ((AnimatedStatic*)object)->BalistaYAngle;
					angle = TWO_PI - angle;
				}
#endif
				else
				{
					angle = object->GetYAngle();
				}
				g_scriptDLL->FLOAT_PUSH((angle / TWO_PI) * SCRIPT_DEGREES_IN_CIRCLE);
				return;
			}
			SCRIPT_ASSERT(object != NULL, "Object not an object");
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_FLYING:
			g_scriptDLL->PUSH((void*)thing->IsFlying(), VMType_BOOLEAN);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_DROWNING: {
			bool32_t drowning = thing->IsDrowning();
			g_scriptDLL->PUSH((void*)drowning, VMType_BOOLEAN);
			return;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_MOVING: {
			bool32_t moving = thing->IsMoving();
			g_scriptDLL->PUSH((void*)moving, VMType_BOOLEAN);
			return;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_SCALE: {
#ifdef VERSION_BW1WCI
			Creature* scaled = thing->CastCreature();
			if (scaled != NULL && scaled->ScriptScale > 0.0f)
			{
				g_scriptDLL->FLOAT_PUSH(scaled->ScriptScale);
				return;
			}
#endif
			g_scriptDLL->FLOAT_PUSH(thing->GetScale());
			return;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_MIN_SIZE:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->GetSmallSize());
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_MAX_SIZE:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->GetBigSize());
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_CAN_GO_THROUGH_VORTEX:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->GetCanGoThroughVortex() ? 1.0f : 0.0f);
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_IN_HAND:
			g_scriptDLL->FLOAT_PUSH((float)thing->IsInMagicHand());
			return;
#ifdef VERSION_BW1WCI
		case SCRIPT_OBJECT_PROPERTY_TYPE_IN_HAND_ANY:
			g_scriptDLL->FLOAT_PUSH((float)(thing->IsInMagicHand() || thing->IsInCreatureHand()));
			return;
#endif
		case SCRIPT_OBJECT_PROPERTY_TYPE_IN_HAND_GRAB:
			g_scriptDLL->FLOAT_PUSH((float)thing->IsInHandInteract());
			return;
#ifdef VERSION_BW1WCI
		case SCRIPT_OBJECT_PROPERTY_TYPE_RADIUS:
			g_scriptDLL->FLOAT_PUSH(thing->Get2DRadius());
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_DENSITY:
			g_scriptDLL->FLOAT_PUSH(thing->GetDensity());
			return;
#endif
		case SCRIPT_OBJECT_PROPERTY_TYPE_SPEED:
			if (thing->IsFlying())
			{
				Object* object = dynamic_cast<Object*>(thing);
				SCRIPT_ASSERT(object != NULL, "Non object flying");
				if (object != NULL)
				{
					PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(object);
					if (physics != NULL)
					{
						g_scriptDLL->FLOAT_PUSH(physics->Physics.Velocity.GetNorme());
						return;
					}
				}
			}
			else if (thing->IsWeather())
			{
				g_scriptDLL->FLOAT_PUSH(((WeatherThing*)thing)->GetSpeed());
				return;
			}
			else if (thing->IsLiving() && ((Living*)thing)->IsDead())
			{
				g_scriptDLL->FLOAT_PUSH(0.0f);
				return;
			}
			g_scriptDLL->FLOAT_PUSH(thing->GetSpeedInMetres());
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_RUNNING_SPEED:
			g_scriptDLL->FLOAT_PUSH(thing->GetRunningSpeedInMetres());
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_DEFAULT_SPEED:
			g_scriptDLL->FLOAT_PUSH(thing->GetDefaultSpeedInMetres());
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_DEATH:
			g_scriptDLL->FLOAT_PUSH((float)thing->GetDeathReason());
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_AGE: {
			Living* living = dynamic_cast<Living*>(thing);
			if (living != NULL)
			{
				float age = (float)living->GetAge();
				g_scriptDLL->FLOAT_PUSH(age);
				return;
			}
			ScriptErrorMessage("Not used on non living objects");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_STRENGTH: {
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->physical->GetStrength());
				return;
			}
			OneOffSpellSeed* oneOffSeed = thing->CastOneOffSpellSeed();
			if (oneOffSeed != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(oneOffSeed->GetDurationMultiplier());
				return;
			}
			SpellSeed* seed = thing->IsSpellSeed();
			if (seed != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(seed->GetDurationMultiplier());
				return;
			}
			if (thing->IsParticleContainer())
			{
				g_scriptDLL->FLOAT_PUSH(((GParticleContainer*)thing)->GetParticleStrength());
				return;
			}
			if (thing->IsSpell())
			{
				g_scriptDLL->FLOAT_PUSH(((Spell*)thing)->GetStrengthMult());
				return;
			}
			ScriptErrorMessage("Script-Did you want the strength of this?");
			g_scriptDLL->FLOAT_PUSH(thing->GetLife());
			return;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_BUILT_PERCENTAGE: {
			MultiMapFixed* fixed = dynamic_cast<MultiMapFixed*>(thing);
			if (fixed != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(fixed->GetPercentBuilt());
				return;
			}
			g_scriptDLL->FLOAT_PUSH(1.0f);
			return;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_WARMTH:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->physical->GetWarmth());
				return;
			}
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_FATNESS:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->physical->GetFatness());
				return;
			}
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_ENERGY:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->physical->GetEnergy());
				return;
			}
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_ITCHINESS:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->physical->GetItchiness());
				return;
			}
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_AMOUNT_OF_POO:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->physical->GetAmountOfPoo());
				return;
			}
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_EXHAUSTION:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->physical->GetExhaustion());
				return;
			}
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_DEHYDRATION:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->physical->GetDehydration());
				return;
			}
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_FIGHT_HEALTH:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->GetCreature3D()->FightHealth);
				return;
			}
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
#ifdef VERSION_BW1WCI
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_FIGHT_POWER:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->GetCreature3D()->FightStamina);
				return;
			}
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
#endif
		case SCRIPT_OBJECT_PROPERTY_TYPE_ALIGNMENT:
			if (creature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(creature->alignment->GetValue());
				return;
			}
			if (thing->GetPlayer() != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(thing->GetPlayer()->GetAlignmentValue());
				return;
			}
			g_scriptDLL->FLOAT_PUSH(0.0f);
			return;
#ifdef VERSION_BW1WCI
		case SCRIPT_OBJECT_PROPERTY_TYPE_ACTUAL_HEIGHT: {
			Creature* heightCreature = thing->CastCreature();
			if (heightCreature != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(heightCreature->ReceiveSpell->GetPhysicalHeightToMentalSave());
				return;
			}
		}
#endif
		case SCRIPT_OBJECT_PROPERTY_TYPE_HEIGHT: {
			PuzzleTotem* totem = dynamic_cast<PuzzleTotem*>(thing);
			if (totem != NULL)
			{
				g_scriptDLL->FLOAT_PUSH(totem->GetActualHeight());
				return;
			}
			if (thing->IsTotemStatue())
			{
				g_scriptDLL->FLOAT_PUSH(((TotemStatue*)thing)->GetWorshipSpeed());
				return;
			}
			g_scriptDLL->FLOAT_PUSH(thing->GetHeight());
			return;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_MAX_HEIGHT:
			g_scriptDLL->FLOAT_PUSH(thing->GetMaxHeight());
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_PLAYER: {
			GPlayer* player = thing->GetPlayer();
			if (thing->IsTown() && ((Town*)thing)->IsCompletelyDestroyed())
			{
				g_scriptDLL->FLOAT_PUSH(1.0f);
				return;
			}
			if (player == NULL || player == GGame::g_game->GetNeutralPlayer())
			{
				g_scriptDLL->FLOAT_PUSH(0.0f);
				return;
			}
			float number = (float)(player->GetPlayerNumber() + 1);
			g_scriptDLL->FLOAT_PUSH(number);
			return;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_XPOS:
			g_scriptDLL->FLOAT_PUSH(thing->Pos.WholeX() * MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_YPOS:
#ifdef VERSION_BW1WCI
			if (thing->IsObject() && thing->IsFlying())
			{
				PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject((Object*)thing);
				if (physics != NULL)
				{
					LH3DMapCoords coords(physics->Physics.Matrix.GetPos().x, physics->Physics.Matrix.GetPos().z);
					g_scriptDLL->FLOAT_PUSH(physics->Physics.Matrix.GetPos().y - LH3DIsland::GetAltitude(coords));
					return;
				}
			}
#endif
			g_scriptDLL->FLOAT_PUSH(thing->Pos.Altitude());
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_ZPOS:
			g_scriptDLL->FLOAT_PUSH(thing->Pos.WholeZ() * MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
			return;
		}
	}
	ScriptErrorMessage(LHSPrintf("Cannot Get Property %d", property));
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::SetProperty(GameThingWithPos* thing, SCRIPT_OBJECT_PROPERTY_TYPE property, float value)
{
	Creature* creature = thing->CastCreature();
	SCRIPT_ASSERT(thing != NULL, "Object no longer valid");
	if (thing != NULL)
	{
		switch (property)
		{
		case SCRIPT_OBJECT_PROPERTY_TYPE_HEALTH: {
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
#ifdef VERSION_BW1WCI
				if (object->IsAbode() && ((Abode*)object)->IsBuilt() != true)
				{
					((Abode*)object)->SetPercentBuilt(value);
					return;
				}
#endif
				object->SetLife(value);
				return;
			}
			SCRIPT_ASSERT(object != NULL, "Object not an object");
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_ANGLE: {
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
				float angle = value * DEGREES_TO_RADIANS;
				if (object->IsScaffold())
				{
					((Scaffold*)object)->HandAngleSet = true;
					((Scaffold*)object)->HandAngle = angle;
				}
#ifdef VERSION_BW1WCI
				else if (object->IsBalista())
				{
					((AnimatedStatic*)object)->BalistaYAngle = TWO_PI - angle;
				}
#endif
				else if (angle != object->GetYAngle())
				{
					object->SetYAngle(angle);
				}
				return;
			}
			SCRIPT_ASSERT(object != NULL, "Object not an object");
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_XANGLE: {
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
				float angle = value * DEGREES_TO_RADIANS;
#ifdef VERSION_BW1WCI
				if (object->IsBalista())
				{
					((AnimatedStatic*)object)->BalistaXAngle = angle;
					return;
				}
#endif
				object->SetXYZAngles(angle, object->GetYAngle(), object->GetZAngle());
				return;
			}
			SCRIPT_ASSERT(object != NULL, "Object not an object");
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_ZANGLE: {
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
				float angle = value * DEGREES_TO_RADIANS;
				object->SetXYZAngles(object->GetXAngle(), object->GetYAngle(), angle);
				return;
			}
			SCRIPT_ASSERT(object != NULL, "Object not an object");
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_SPEED:
			thing->SetSpeedInMetres(value, false);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_RUNNING_SPEED:
			if (thing->IsCreature())
			{
				ScriptErrorMessage("Richard TODO");
			}
			else
			{
				thing->SetSpeedInMetres(thing->GetRunningSpeedInMetres(), false);
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_DEFAULT_SPEED:
			if (thing->IsCreature())
			{
				ScriptErrorMessage("Richard TODO");
			}
			else
			{
				thing->SetSpeedInMetres(thing->GetDefaultSpeedInMetres(), false);
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_SCALE: {
#ifdef VERSION_BW1WCI
			Creature* scaled = thing->CastCreature();
			if (scaled != NULL)
			{
				scaled->ScriptScale = 0.0f;
				scaled->physical->Creature3d->SetSize(value);
				scaled->ScriptScale = value;
				scaled->SetHeight(value);
				return;
			}
#endif
			thing->SetScale(value);
			return;
		}
#ifdef VERSION_BW1WCI
		case SCRIPT_OBJECT_PROPERTY_TYPE_ACTUAL_HEIGHT: {
			Creature* heightCreature = thing->CastCreature();
			if (heightCreature != NULL)
			{
				heightCreature->ReceiveSpell->SetPhysicalHeightMentalLoaded(value);
				return;
			}
		}
#endif
		case SCRIPT_OBJECT_PROPERTY_TYPE_HEIGHT: {
			PuzzleTotem* totem = dynamic_cast<PuzzleTotem*>(thing);
			if (totem != NULL)
			{
				totem->SetActualHeight(value);
				return;
			}
			if (thing->IsTotemStatue())
			{
				TotemStatue* statue = (TotemStatue*)thing;
				Town*        town = statue->GetTown();
				if (town != NULL)
				{
					town->SetWorshipPercentage(value);
				}
				else
				{
					statue->SetWorshipPercentage(value);
				}
				statue->WorshipSpeed2 = statue->GetWorshipSpeed();
				return;
			}
			thing->SetHeight(value);
			return;
		}
#ifdef VERSION_BW1WCI
		case SCRIPT_OBJECT_PROPERTY_TYPE_RADIUS:
			thing->Set2DRadius(value);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_DENSITY:
			thing->SetDensity(value);
			return;
#endif
		case SCRIPT_OBJECT_PROPERTY_TYPE_MAX_HEIGHT:
			thing->SetMaxHeight(value);
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_AGE: {
			Living* living = dynamic_cast<Living*>(thing);
			if (living != NULL)
			{
				living->SetAge((uint32_t)value);
				return;
			}
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_STRENGTH: {
			if (creature != NULL)
			{
				creature->physical->SetStrength(value);
				return;
			}
			OneOffSpellSeed* oneOffSeed = thing->CastOneOffSpellSeed();
			if (oneOffSeed != NULL)
			{
				oneOffSeed->DurationMultiplier = value;
				return;
			}
			SpellSeed* seed = thing->IsSpellSeed();
			if (seed != NULL)
			{
				seed->DurationMultiplier = value;
				return;
			}
			if (thing->IsParticleContainer())
			{
				((GParticleContainer*)thing)->SetParticleStrength(value);
				return;
			}
			if (thing->IsSpell())
			{
				((Spell*)thing)->StrengthMult = value;
				return;
			}
			ScriptErrorMessage("Cannot set strength of this");
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_BUILT_PERCENTAGE: {
			MultiMapFixed* fixed = dynamic_cast<MultiMapFixed*>(thing);
			if (fixed != NULL)
			{
				fixed->SetPercentBuilt(value);
				Town* town = fixed->GetTown();
				if (town != NULL && town->IsInBuildingList(fixed) != true && value < 1.0f)
				{
					town->AddBuildingSite(fixed);
				}
				return;
			}
			break;
		}
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_MIN_SIZE:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->MaxSmallSize = value;
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_MAX_SIZE:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->MaxBigSize = value;
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_CAN_GO_THROUGH_VORTEX:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->CanGoThroughVortex = value != 0.0f;
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_WARMTH:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				CreaturePhysical* physical = creature->physical;
				physical->Warmth = value;
				CLAMP(physical->Warmth, -1.0f, 1.0f);
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_FATNESS:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->physical->Fatness = value;
			}
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_ENERGY:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->physical->SetEnergy(value);
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_ITCHINESS:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->physical->Itchiness = value;
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_AMOUNT_OF_POO:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->physical->AmountOfPoo = value;
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_EXHAUSTION:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->physical->Exhaustion = value;
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_DEHYDRATION:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->physical->Dehydration = value;
				return;
			}
			break;
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_FIGHT_HEALTH:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->GetCreature3D()->FightHealth = value;
				return;
			}
			break;
#ifdef VERSION_BW1WCI
		case SCRIPT_OBJECT_PROPERTY_TYPE_CREATURE_FIGHT_POWER:
			SCRIPT_ASSERT(creature != NULL, "Object not a creature");
			if (creature != NULL)
			{
				creature->GetCreature3D()->FightStamina = value;
				return;
			}
			break;
#endif
		case SCRIPT_OBJECT_PROPERTY_TYPE_ALIGNMENT:
			if (creature != NULL)
			{
				creature->alignment->Value = value;
				creature->Update3DCreatureFromAttributes();
				creature->physical->Creature3d->UpdateMorphing();
				return;
			}
			if (thing->IsReward())
			{
				((Reward*)thing)->Alignment = value;
				return;
			}
			ScriptErrorMessage("UNEXPECTED Alignment change");
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_XPOS:
			thing->Pos.SetWholeX((long)(value * MAP_COORDS_UNITS_PER_CELL / MAP_COORDS_METRES_PER_CELL));
			return;
		case SCRIPT_OBJECT_PROPERTY_TYPE_YPOS:
			if (thing->IsScriptHighlight())
			{
				((ScriptHighlight*)thing)->SetDrawHeight(value);
			}
#ifdef VERSION_BW1WCI
			if (thing->IsObject())
			{
				if (thing->IsFlying())
				{
					PhysicsObject::RemoveObject((Object*)thing, true, true);
				}
				thing->Pos.SetAltitude(value);
				if (((Object*)thing)->Game3dObject != NULL)
				{
					float            scale = thing->GetScale();
					float            yAngle = ((Object*)thing)->GetYAngle();
					const MapCoords& coords = thing->Pos;
					LH3DObject*      object = ((Object*)thing)->Game3dObject;
					LHPoint          pos;
					GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
					object->LH3DObject::SetPosition(pos, yAngle, scale);
				}
				return;
			}
			thing->Pos.SetAltitude(value);
#else
			thing->Pos.SetAltitude(value);
			if (thing->IsObject() && ((Object*)thing)->Game3dObject != NULL)
			{
				float            scale = thing->GetScale();
				float            yAngle = ((Object*)thing)->GetYAngle();
				const MapCoords& coords = thing->Pos;
				LH3DObject*      object = ((Object*)thing)->Game3dObject;
				LHPoint          pos;
				GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
				object->LH3DObject::SetPosition(pos, yAngle, scale);
			}
#endif
			return;
#ifdef VERSION_BW1WCI
		case SCRIPT_OBJECT_PROPERTY_TYPE_FLYING:
			if (thing->IsObject() && value == 0.0f)
			{
				if (thing->IsFlying())
				{
					PhysicsObject::RemoveObject((Object*)thing, true, true);
				}
				thing->Pos.SetAltitude(0.0f);
				if (((Object*)thing)->Game3dObject != NULL)
				{
					float            scale = thing->GetScale();
					float            yAngle = ((Object*)thing)->GetYAngle();
					const MapCoords& coords = thing->Pos;
					LH3DObject*      object = ((Object*)thing)->Game3dObject;
					LHPoint          pos;
					GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
					object->LH3DObject::SetPosition(pos, yAngle, scale);
				}
				return;
			}
			thing->Pos.SetAltitude(0.0f);
			return;
#endif
		case SCRIPT_OBJECT_PROPERTY_TYPE_ZPOS:
			thing->Pos.SetWholeZ((long)(value * MAP_COORDS_UNITS_PER_CELL / MAP_COORDS_METRES_PER_CELL));
			return;
		}
	}
	ScriptErrorMessage(LHSPrintf("Cannot Set Property %d", property));
}

bool32_t GScript::SetPropertyLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	SetProperty(thing, (SCRIPT_OBJECT_PROPERTY_TYPE)GGame::g_game->script->LoopValue,
	            GGame::g_game->script->FindRadius);
	return false;
}

void GScript::SetProperty()
{
	float                       value = g_scriptDLL->FLOAT_POP();
	GameThingWithPos*           thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_OBJECT_PROPERTY_TYPE property = (SCRIPT_OBJECT_PROPERTY_TYPE)g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		GGame::g_game->script->FindRadius = value;
		GGame::g_game->script->LoopValue = property;
		SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[objectType].Loop != NULL)
		{
			g_scriptObjectDispatch[objectType].Loop(thing, SetPropertyLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
		}
		else if (g_scriptObjectDispatch[property].Loop == NULL)
		{
			ScriptErrorMessage("No Loop funtion for type");
		}
		return;
	}
	SetProperty(thing, property, value);
}

void GScript::ChangeObjectProperties()
{
	bool32_t          calm = (bool32_t)g_scriptDLL->FLOAT_POP();
	float             outer = g_scriptDLL->FLOAT_POP();
	float             inner = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		if (thing->IsFlock())
		{
			Flock* flock = (Flock*)thing;
			if (outer != 0.0f)
			{
				flock->DomainRadius = (uint16_t)outer;
			}
			if (inner != 0.0f)
			{
				flock->FlockDistance = (uint16_t)inner;
			}
			flock->FeedingDisabled = calm;
			return;
		}
		if (thing->IsWeather())
		{
			((WeatherThing*)thing)->SetSize(inner, outer);
			return;
		}
	}
	ScriptErrorMessage("Invalid thing for Changing Variables");
}
