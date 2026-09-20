#include "Script.h"

// BW1W120 00c0c740 BW1M100 1099bea4
// Indexed by SCRIPT_OBJECT_TYPE - 1.
ScriptObjectDispatch GScript::g_scriptObjectDispatch[SCRIPT_OBJECT_TYPE_LAST - 1] = {
	{NULL, NULL, NULL, NULL, NULL, NULL},                                                      /* MARKER */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* ABODE */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* FEATURE */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* VILLAGER */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* VILLAGER_CHILD */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* ANIMAL */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* REWARD */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* MOBILE_STATIC */
	{FindTownAtPos, FindTownNearPos, FindInTown, FindInTownNear, FindInTownNotNear, TownLoop}, /* TOWN */
	{NULL, NULL, FindInDance, FindInDanceNear, FindInDanceNotNear, DanceLoop},                 /* DANCE */
	{NULL, NULL, FindInFlock, FindInFlockNear, FindInFlockNotNear, FlockLoop},                 /* FLOCK */
	{FindCreatureAtPos, FindCreatureNearPos, NULL, NULL, NULL, NULL},                          /* CREATURE */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* DEAD_TREE */
	{NULL, NULL, NULL, NULL, NULL, NULL},                                                      /* INFLUENCE_RING */
	{NULL, NULL, NULL, NULL, NULL, NULL},                                                      /* WEATHER_THING */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* STORE */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* TIMER */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* CITADEL */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* WORSHIP_SITE */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* MOBILE_OBJECT */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* BIRD */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* TREE */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* VORTEX */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* SPELL_SEED */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* POO */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* WHALE */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* ARK */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* BALL */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* MIST */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                                          /* ONE_SHOT_SPELL */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* ONE_SHOT_SPELL_IN_HAND */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* PUZZLE_GAME */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* ROCK */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* TOTEM */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* FIELD */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* SPELL_DISPENSER */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* HIGHLIGHT */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* COMPUTER_PLAYER */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* SCAFFOLD */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* TOTEM_STATUE */
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, /* ANIMATED_STATIC */
};
