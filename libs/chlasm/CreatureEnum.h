#pragma once
#ifndef __CREATURE_ENUM_H__
#define __CREATURE_ENUM_H__

// Last Saved,#2001-09-13 14:44:43#,"Richard Evans"

//*****************************************************************************
// ENUM Values: CREATURE_TYPE
//*****************************************************************************
enum     CREATURE_TYPE
{
    CREATURE_TYPE_APE                               =  0 ,
    CREATURE_TYPE_COW                               =  1 ,
    CREATURE_TYPE_TIGER                             =  2 ,
    CREATURE_TYPE_LEOPARD                           =  3 ,
    CREATURE_TYPE_WOLF                              =  4 ,
    CREATURE_TYPE_LION                              =  5 ,
    CREATURE_TYPE_HORSE                             =  6 ,
    CREATURE_TYPE_TORTOISE                          =  7 ,
    CREATURE_TYPE_ZEBRA                             =  8 ,
    CREATURE_TYPE_BEAR                              =  9 ,
    CREATURE_TYPE_POLAR_BEAR                        =  10 ,
    CREATURE_TYPE_SHEEP                             =  11 ,
    CREATURE_TYPE_CHIMP                             =  12 ,
    CREATURE_TYPE_OGRE                              =  13 ,
    CREATURE_TYPE_MANDRILL                          =  14 ,
    CREATURE_TYPE_RHINO                             =  15 ,
    CREATURE_TYPE_GORILLA                           =  16 ,
    CREATURE_TYPE_CHICKEN                           =  17 ,
    CREATURE_TYPE_CROCODILE                         =  18 ,
    CREATURE_TYPE_LAST                              =  19 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_DESIRE_SOURCE
//*****************************************************************************
enum     CREATURE_DESIRE_SOURCE
{
    IMPRESS_FROM_WATCHING_PLAYER                    =  0 ,
    IMPRESS_FROM_SEEING_OBJECTS_WHICH_DESERVE_IT    =  1 ,
    COMPASSION_FROM_WATCHING_PLAYER                 =  2 ,
    COMPASSION_FROM_SEEING_OBJECTS_WHICH_DESERVE_IT =  3 ,
    COMPASSION_FROM_BEING_CONTENT                   =  4 ,
    COMPASSION_INNATE_NICENESS                      =  5 ,
    ANGER_FROM_WATCHING_PLAYER                      =  6 ,
    ANGER_FROM_SEEING_OBJECTS_WHICH_DESERVE_IT      =  7 ,
    ANGER_FROM_BEING_DISSATISFIED                   =  8 ,
    ANGER_FROM_BEING_DAMAGED                        =  9 ,
    ANGER_FROM_SADNESS                              =  10 ,
    ANGER_INNATE_AGGRESSION                         =  11 ,
    TO_PLAY_FROM_WATCHING_PLAYER                    =  12 ,
    TO_PLAY_FROM_WATCHING_VILLAGERS                 =  13 ,
    HUNGER_FROM_ENERGY                              =  14 ,
    HUNGER_FROM_WATCHING_VILLAGERS                  =  15 ,
    HUNGER_FROM_SADNESS                             =  16 ,
    FEAR_FROM_DARKNESS                              =  17 ,
    FEAR_FROM_BEING_DAMAGED                         =  18 ,
    FEAR_FROM_SEEING_SCAREY_MAGIC                   =  19 ,
    CURIOSITY                                       =  20 ,
    TO_POO_FROM_PHYSICAL_POO                        =  21 ,
    TIREDNESS_FROM_EXHAUSTION                       =  22 ,
    TIREDNESS_FROM_LAZINESS                         =  23 ,
    TIREDNESS_FROM_NIGHT_TIME                       =  24 ,
    TIREDNESS_FROM_SADNESS                          =  25 ,
    TIREDNESS_INNATE_LETHARGY                       =  26 ,
    TO_IDLE_AROUND_WITH_PLAYER                      =  27 ,
    WANDERLUST                                      =  28 ,
    TO_PUKE                                         =  29 ,
    TO_BUILD_HOME                                   =  30 ,
    TO_BRING_STUFF_HOME                             =  31 ,
    FOR_WATER_FROM_DEHYDRATION                      =  32 ,
    TO_RESTORE_HEALTH_FROM_LIFE                     =  33 ,
    TO_BE_FRIENDS                                   =  34 ,
    TO_BE_FRIENDS_INNATE_FRIENDLINESS               =  35 ,
    TO_ATTRACT_PLAYERS_ATTENTION_FROM_LONELINESS    =  36 ,
    TO_ATTRACT_PLAYERS_ATTENTION_FROM_LACK_OF_INTERACTION
                                                    =  37 ,
    TO_MANIFEST_STATE                               =  38 ,
    TO_MANIFEST_STATE_INNATE_COMMUNICATIVENESS      =  39 ,
    TO_GET_WARMER                                   =  40 ,
    TO_GET_COLDER                                   =  41 ,
    TO_SCRATCH                                      =  42 ,
    TO_RUN_AWAY_FROM_PLAYER                         =  43 ,
    TO_REST                                         =  44 ,
    TO_OBEY_PLAYER                                  =  45 ,
    ILLNESS                                         =  46 ,
    TO_OBEY_CREATURE                                =  47 ,
    SADNESS                                         =  48 ,
    TO_GO_HOME                                      =  49 ,
    TO_TELL_PLAYER_WHAT_YOU_THINK_OF_HIM            =  50 ,
    TO_PLAY_WITH_PLAYER                             =  51 ,
    TO_TELL_CREATURE_WHAT_YOU_THINK_OF_HIM          =  52 ,
    TO_EDUCATE_FRIEND                               =  53 ,
    TO_FOLLOW_PLAYER_DESIRE                         =  54 ,
    TO_GET_HIGH                                     =  55 ,
    TO_HANG_AROUND_AT_HOME                          =  56 ,
    SOURCE_FOR_MENTAL_ILLNESS                       =  57 ,
    TO_MISS_FRIEND                                  =  58 ,
    TO_LOOK_AROUND                                  =  59 ,
    TO_STEAL                                        =  60 ,
    NUM_CREATURE_DESIRE_SOURCES                     =  61 ,
    INVALID_CREATURE_DESIRE_SOURCE                  =  61 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_DESIRE_ACTION_SIZE
//*****************************************************************************
enum     CREATURE_DESIRE_ACTION_SIZE
{
    MAX_NUM_SOURCES_FOR_EACH_DESIRE                 =  8 ,
    MAX_NUM_ACTIONS_FOR_EACH_DESIRE                 =  30 ,
    MAX_NUM_SOURCES_FOR_EACH_ACTION                 =  5 ,
    MAX_NUM_MIMICKING_ACTIONS                       =  6 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_ACTION
//*****************************************************************************
enum     CREATURE_ACTION
{
    CREATURE_ERROR                                  =  0 ,
    FIRST_CREATURE_ACTION                           =  0 ,
    NO_ACTION_SPECIFIED                             =  0 ,
    CREATURE_MOVE_TO_POS                            =  1 ,
    CREATURE_FLEE_FROM_OBJECT                       =  2 ,
    CREATURE_LOOK_AT_OBJECT                         =  3 ,
    CREATURE_FOLLOW_OBJECT                          =  4 ,
    CREATURE_INSPECT_OBJECT                         =  5 ,
    CREATURE_FLYING                                 =  6 ,
    CREATURE_LANDED                                 =  7 ,
    CREATURE_LOOK_AT_HAND                           =  8 ,
    CREATURE_DEAD                                   =  9 ,
    CREATURE_EXAMINE_BY_PICKING_UP                  =  10 ,
    CREATURE_EAT_ALIVE                              =  11 ,
    CREATURE_EAT_AFTER_EXAMINING                    =  12 ,
    CREATURE_STOMP_AND_EAT                          =  13 ,
    CREATURE_STONE_AND_EAT                          =  14 ,
    CREATURE_HURL                                   =  15 ,
    CREATURE_RUN_AWAY_FROM_OBJECT                   =  16 ,
    CREATURE_SLEEP                                  =  17 ,
    CREATURE_STOMP                                  =  18 ,
    CREATURE_POO                                    =  19 ,
    CREATURE_EXAMINE_BY_LOOKING                     =  20 ,
    CREATURE_FIGHT                                  =  21 ,
    CREATURE_FOLLOW_PLAYER                          =  22 ,
    CREATURE_COMMUNICATE_STATE                      =  23 ,
    CREATURE_SHOW_PLAYER_AN_OBJECT                  =  24 ,
    CREATURE_GO_TO_TOP_OF_HILL_AND_LOOK             =  25 ,
    CREATURE_GO_TO_HILL_AND_SIT                     =  26 ,
    CREATURE_GO_TO_HILL_AND_WALK_ALONG_RIDGE        =  27 ,
    CREATURE_GIVE_FOOD_FROM_FIELD_TO_STORAGE_PIT    =  28 ,
    CREATURE_GIVE_FISH_TO_STORAGE_PIT               =  29 ,
    CREATURE_GIVE_FRUIT_FROM_TREE_TO_STORAGE_PIT    =  30 ,
    CREATURE_GIVE_MAGIC_FOOD_TO_STORAGE_PIT         =  31 ,
    CREATURE_GIVE_WOOD_FROM_TREE_TO_STORAGE_PIT     =  32 ,
    CREATURE_GIVE_MAGIC_WOOD_TO_STORAGE_PIT         =  33 ,
    CREATURE_HELP_BUILD_HOUSE                       =  34 ,
    CREATURE_HELP_REPAIR_HOUSE                      =  35 ,
    CREATURE_BRING_OBJECT_TO_TOWN                   =  36 ,
    CREATURE_PUT_OUT_FIRE                           =  37 ,
    CREATURE_STROKE                                 =  38 ,
    CREATURE_SHOW_IMPRESSIVE_ANIMATION              =  39 ,
    CREATURE_CAST_IMPRESSIVE_SPELL                  =  40 ,
    CREATURE_DANCE_WITH_VILLAGERS                   =  41 ,
    CREATURE_THROW_IN_THE_SEA                       =  42 ,
    CREATURE_PULL_SILLY_FACES                       =  43 ,
    CREATURE_LOOK_AT_REFLECTION                     =  44 ,
    CREATURE_CAST_LIGHTNING_BOLT                    =  45 ,
    CREATURE_CAST_FIREBALL                          =  46 ,
    CREATURE_CAST_EXPLOSION                         =  47 ,
    CREATURE_CAST_MAGIC_FOOD                        =  48 ,
    CREATURE_CAST_MAGIC_FOREST                      =  49 ,
    CREATURE_PUKE                                   =  50 ,
    CREATURE_THROW_STONES_IN_SEA_WITH_FRIEND        =  51 ,
    CREATURE_PRACTICE_THROW                         =  52 ,
    CREATURE_DESTROY_AGGRESSOR                      =  53 ,
    CREATURE_CAST_SHIELD                            =  54 ,
    CREATURE_DRINK_FROM_THE_SEA                     =  55 ,
    CREATURE_RAISE_TOTEM_POLE                       =  56 ,
    CREATURE_LOWER_TOTEM_POLE                       =  57 ,
    CREATURE_HEAL_HIMSELF                           =  58 ,
    CREATURE_REST_TO_GET_BETTER                     =  59 ,
    CREATURE_SMILE_AT_FRIEND                        =  60 ,
    CREATURE_FOLLOW_FRIEND_AROUND                   =  61 ,
    CREATURE_DANCE_WITH_FRIEND                      =  62 ,
    CREATURE_INSPECT_CREATURE                       =  63 ,
    CREATURE_HOLD_OBJECT                            =  64 ,
    CREATURE_EAT_FROM_STORAGE_PIT                   =  65 ,
    CREATURE_EAT_FROM_FIELD                         =  66 ,
    CREATURE_PUT_DOWN                               =  67 ,
    CREATURE_GIVE_TO_CREATURE                       =  68 ,
    CREATURE_THROW_AT_CAMERA                        =  69 ,
    CREATURE_RUN_AWAY_FROM_PLAYER                   =  70 ,
    CREATURE_SNEEZE                                 =  71 ,
    CREATURE_SHIVER                                 =  72 ,
    CREATURE_START_FIRE                             =  73 ,
    CREATURE_SHOW_HOTNESS                           =  74 ,
    CREATURE_SCRATCH                                =  75 ,
    CREATURE_EXPLORE_COAST                          =  76 ,
    CREATURE_EXPLORE_TOWNS                          =  77 ,
    CREATURE_SLEEP_BY_OBJECT                        =  78 ,
    CREATURE_EXAMINE_BY_FOLLOWING                   =  79 ,
    CREATURE_LOOK_AT_FLYING_OBJECT                  =  80 ,
    CREATURE_SIT                                    =  81 ,
    CREATURE_LOOK_AT_CAMERA                         =  82 ,
    CREATURE_BUILD_HOME                             =  83 ,
    CREATURE_BRING_HOME                             =  84 ,
    CREATURE_SLEEP_AT_POS                           =  85 ,
    CREATURE_SHOW_LEARNT_LESSON                     =  86 ,
    CREATURE_PRACTICE_DANCE                         =  87 ,
    CREATURE_GO_TO_MIDDLE_OF_SCREEN                 =  88 ,
    CREATURE_GO_TO_HAND                             =  89 ,
    CREATURE_WAVE_AT_PLAYER                         =  90 ,
    CREATURE_WAVE_AT_OBJECT                         =  91 ,
    CREATURE_LOOK_CONFUSED                          =  92 ,
    CREATURE_PLAY_GAME_WITH_CREATURE_MAIN_PART      =  93 ,
    CREATURE_EAT_FROM_TREE                          =  94 ,
    CREATURE_CAST_LIGHTNING_STORM                   =  95 ,
    CREATURE_CAST_FIREBALL_PU1                      =  96 ,
    CREATURE_CAST_FIREBALL_PU2                      =  97 ,
    CREATURE_CAST_MAGIC_FOOD_PU1                    =  98 ,
    CREATURE_CAST_LIGHTNING_BOLT_PU1                =  99 ,
    CREATURE_CAST_LIGHTNING_BOLT_PU2                =  100 ,
    CREATURE_CAST_HEAL_SPELL                        =  101 ,
    CREATURE_CAST_HEAL_SPELL_PU1                    =  102 ,
    CREATURE_CAST_TORNADO                           =  103 ,
    CREATURE_CAST_MAGIC_WOOD                        =  104 ,
    CREATURE_CAST_FREEZE_ON_CREATURE                =  105 ,
    CREATURE_CAST_SMALL_ON_CREATURE                 =  106 ,
    CREATURE_CAST_BIG_ON_CREATURE                   =  107 ,
    CREATURE_CAST_WEAK_ON_CREATURE                  =  108 ,
    CREATURE_CAST_STRONG_ON_CREATURE                =  109 ,
    CREATURE_CAST_FAT_ON_CREATURE                   =  110 ,
    CREATURE_CAST_THIN_ON_CREATURE                  =  111 ,
    CREATURE_CAST_INVSIBLE_ON_CREATURE              =  112 ,
    CREATURE_CAST_COMPASSION_ON_CREATURE            =  113 ,
    CREATURE_CAST_ANGRY_ON_CREATURE                 =  114 ,
    CREATURE_CAST_HUNGRY_ON_CREATURE                =  115 ,
    CREATURE_CAST_FRIGHTENED_ON_CREATURE            =  116 ,
    CREATURE_CAST_TIRED_ON_CREATURE                 =  117 ,
    CREATURE_CAST_ILL_ON_CREATURE                   =  118 ,
    CREATURE_CAST_THIRSTY_ON_CREATURE               =  119 ,
    CREATURE_CAST_ITCHY_ON_CREATURE                 =  120 ,
    CREATURE_CREATE_HOME                            =  121 ,
    CREATURE_RUN_TO_OBJECT                          =  122 ,
    CREATURE_RUN_AROUND_RACE_TRACK                  =  123 ,
    CREATURE_OBEY_CREATURE                          =  124 ,
    CREATURE_SHOW_FRIEND_SPELL_FIREBALL             =  125 ,
    CREATURE_SHOW_FRIEND_SPELL_LIGHTNING_BOLT       =  126 ,
    CREATURE_SHOW_FRIEND_SPELL_LIGHTNING_STORM      =  127 ,
    CREATURE_SHOW_FRIEND_SPELL_MAGIC_FOOD           =  128 ,
    CREATURE_SHOW_FRIEND_SPELL_MAGIC_WOOD           =  129 ,
    CREATURE_SHOW_FRIEND_OBJECT                     =  130 ,
    CREATURE_SHOW_FRIEND_HOME                       =  131 ,
    CREATURE_SHOW_FRIEND_CITADEL                    =  132 ,
    CREATURE_KISS_FRIEND                            =  133 ,
    CREATURE_GO_TO_TELEPORT                         =  134 ,
    CREATURE_GIVE_FOOD_TO_CREATURE                  =  135 ,
    CREATURE_CAST_WARMING_SPELL_ON_CREATURE         =  136 ,
    CREATURE_CAST_COOLING_SPELL_ON_CREATURE         =  137 ,
    CREATURE_CURE_ILLNESS_ON_CREATURE               =  138 ,
    CREATURE_RUN_RACE_WITH_FRIEND                   =  139 ,
    CREATURE_PLAY_GAME_OF_THROWING_STONES_AT_CAN_WITH_FRIEND
                                                    =  140 ,
    CREATURE_SIT_ON_TOP_OF_HILL_WITH_FRIEND         =  141 ,
    CREATURE_TAKE_OBJECT_FROM_HAND                  =  142 ,
    CREATURE_GESTURE_TYPE_FULL_CIRCLE               =  143 ,
    CREATURE_GESTURE_TYPE_STAR                      =  144 ,
    CREATURE_GESTURE_TYPE_SPIRAL                    =  145 ,
    CREATURE_GESTURE_TYPE_SQUARE_WAVE               =  146 ,
    CREATURE_GESTURE_TYPE_KISS                      =  147 ,
    CREATURE_GESTURE_TYPE_SQUARE                    =  148 ,
    CREATURE_GESTURE_TYPE_TRIANGLE                  =  149 ,
    CREATURE_GESTURE_TYPE_S_SHAPE                   =  150 ,
    CREATURE_GESTURE_TYPE_V_BALL                    =  151 ,
    CREATURE_GESTURE_TYPE_MOON                      =  152 ,
    CREATURE_GESTURE_TYPE_HEART                     =  153 ,
    CREATURE_GESTURE_TYPE_BOW_TIE                   =  154 ,
    CREATURE_FISH_AND_EAT                           =  155 ,
    CREATURE_RUN_AWAY_FROM_POS                      =  156 ,
    CREATURE_EXAMINE_POS                            =  157 ,
    CREATURE_EAT_FROM_MAGIC_FOOD_PILE               =  158 ,
    CREATURE_SMASH_STONES_IN_HALF                   =  159 ,
    CREATURE_BE_SAD                                 =  160 ,
    CREATURE_IDLE                                   =  161 ,
    CREATURE_GO_HOME                                =  162 ,
    CREATURE_POINT_AT_OBJECT                        =  163 ,
    CREATURE_BRING_FOOD_HOME                        =  164 ,
    CREATURE_HANG_AROUND_AT_HOME                    =  165 ,
    CREATURE_GO_OUT_AND_LOOK_FOR_FOOD               =  166 ,
    CREATURE_SHOW_PLAYER_HOW_NICE_YOU_THINK_HE_IS   =  167 ,
    CREATURE_POINT_AT_CAMERA                        =  168 ,
    CREATURE_POINT_AT_HAND                          =  169 ,
    CREATURE_RUN_HOME                               =  170 ,
    CREATURE_PLAY_THROWING_GAME_WITH_PLAYER         =  171 ,
    CREATURE_BE_SILLY_WITH_PLAYER                   =  172 ,
    CREATURE_SHOW_HOW_NICE_YOU_THINK_CREATURE_IS    =  173 ,
    CREATURE_BE_FRIGHTENED_ON_THE_SPOT              =  174 ,
    CREATURE_POO_DISCRETELY                         =  175 ,
    CREATURE_WATCH_TELLY                            =  176 ,
    CREATURE_FART                                   =  177 ,
    CREATURE_REST_ON_THE_SPOT                       =  178 ,
    CREATURE_GO_HOME_TO_RECOVER                     =  179 ,
    CREATURE_FOLLOW_PLAYER_DESIRE                   =  180 ,
    CREATURE_GET_HIGH                               =  181 ,
    CREATURE_CAST_TELEPORT                          =  182 ,
    CREATURE_CAST_SHIELD_PU1                        =  183 ,
    CREATURE_CAST_PHYSICAL_SHIELD                   =  184 ,
    CREATURE_CAST_EXPLOSION_PU1                     =  185 ,
    CREATURE_CAST_EXPLOSION_PU2                     =  186 ,
    CREATURE_SWAP_MIND_WITH_OTHER_CREATURE          =  187 ,
    CREATURE_LOOK_BUT_DONT_APPROACH                 =  188 ,
    CREATURE_LOOK_FOREVER                           =  189 ,
    CREATURE_LOOK_AT_CITADEL                        =  190 ,
    CREATURE_LOOK_AT_MOUNTAINS                      =  191 ,
    CREATURE_LOOK_OUT_TO_SEA                        =  192 ,
    CREATURE_LOOK_AT_SUN                            =  193 ,
    CREATURE_LOOK_AT_MOON                           =  194 ,
    CREATURE_LOOK_DOWN_CLIFF                        =  195 ,
    CREATURE_EXPLORE_AND_CAST_TELEPORT              =  196 ,
    CREATURE_HURL_OBJECT_IN_HAND                    =  197 ,
    CREATURE_EAT_WITH_FRIEND                        =  198 ,
    CREATURE_DRINK_WITH_FRIEND                      =  199 ,
    CREATURE_POO_WITH_FRIEND                        =  200 ,
    CREATURE_SIT_WITH_FRIEND                        =  201 ,
    CREATURE_HAPPY_WITH_FRIEND                      =  202 ,
    CREATURE_SLEEP_WITH_FRIEND                      =  203 ,
    CREATURE_GO_TO_BEACH_WITH_FRIEND                =  204 ,
    CREATURE_ENTER_CITADEL                          =  205 ,
    CREATURE_BE_PATHETIC_TO_PLAYER                  =  206 ,
    CREATURE_CROSS_WITH_PLAYER                      =  207 ,
    CREATURE_KISS_FRIENDS_ARSE                      =  208 ,
    CREATURE_ARGUE_WITH_FRIEND                      =  209 ,
    CREATURE_MOPE_ABOUT_WITH_FRIEND                 =  210 ,
    CREATURE_CONFUSE_FRIEND                         =  211 ,
    CREATURE_SHOW_OFF_TO_FRIEND                     =  212 ,
    CREATURE_BEHAVE_STRANGELY                       =  213 ,
    CREATURE_PINE_FOR_FRIEND                        =  214 ,
    CREATURE_LOOK_FOR_FRIEND                        =  215 ,
    CREATURE_CAST_TELEPORT_AND_USE_IT_TO_MOVE_TO_OBJECT
                                                    =  216 ,
    CREATURE_DIE_PERMANENTLY                        =  217 ,
    CREATURE_SIT_DOWN_ON_BEACH                      =  218 ,
    CREATURE_SHOW_CREATURE_YOU_HATE_HIM             =  219 ,
    CREATURE_FOOTBALL_ATTACKER_THROW_BALL_AT_GOAL   =  220 ,
    CREATURE_FOOTBALL_ATTACKER_KICK_BALL_AT_GOAL    =  221 ,
    CREATURE_FOOTBALL_DEFENDER_STOMP_ON_BALL        =  222 ,
    CREATURE_FOOTBALL_DEFENDER_CLEAR_BALL           =  223 ,
    CREATURE_FOOTBALL_GOALIE_CATCH_BALL             =  224 ,
    CREATURE_FOOTBALL_GOALIE_FOUL                   =  225 ,
    CREATURE_FOOTBALL_CELEBRATE                     =  226 ,
    CREATURE_FOOTBALL_COMMISERATE                   =  227 ,
    CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_AGGRESSIVE  =  228 ,
    CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_COMPASSIONATE
                                                    =  229 ,
    CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_PLAYFUL     =  230 ,
    CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_TO_RESTORE_HEALTH
                                                    =  231 ,
    CREATURE_PICK_UP_AND_CAST_ONE_OFF_SPELL_AGGRESSIVE
                                                    =  232 ,
    CREATURE_PICK_UP_AND_CAST_ONE_OFF_SPELL_COMPASSIONATE
                                                    =  233 ,
    CREATURE_PICK_UP_AND_CAST_ONE_OFF_SPELL_PLAYFUL =  234 ,
    CREATURE_PICK_UP_AND_CAST_ONE_OFF_SPELL_TO_RESTORE_HEALTH
                                                    =  235 ,
    CREATURE_KICK                                   =  236 ,
    CREATURE_CATCH                                  =  237 ,
    CREATURE_PUT_OUT_FIRE_WITH_MAGIC_WATER          =  238 ,
    CREATURE_SPRINKLE_MAGIC_WATER_ON_CROPS          =  239 ,
    CREATURE_PUT_OUT_FIRE_ON_MYSELF                 =  240 ,
    CREATURE_PLAY_THROWING_GAME_WITH_FRIEND         =  241 ,
    CREATURE_NOTICE_HELPFUL_ACTION                  =  242 ,
    CREATURE_NOTICE_AGGRESSIVE_ACTION               =  243 ,
    CREATURE_NOTICE_ACTION                          =  244 ,
    CREATURE_PUT_FOOD_FROM_FIELD_BY_WORSHIP_SITE    =  245 ,
    CREATURE_CAST_MAGIC_FOOD_BY_WORSHIP_SITE        =  246 ,
    CREATURE_GIVE_WOOD_FROM_TREE_TO_BUILDING_SITE   =  247 ,
    CREATURE_CAST_MAGIC_WOOD_BY_BUILDING_SITE       =  248 ,
    CREATURE_PLANT_TREE                             =  249 ,
    CREATURE_DANCE_OUTSIDE_WORSHIP_SITE             =  250 ,
    CREATURE_DANCE_AROUND_ARTEFACT                  =  251 ,
    CREATURE_THROW_TO_IMPRESS                       =  252 ,
    CREATURE_STEAL_SPELL                            =  253 ,
    CREATURE_STEAL_SCAFFOLDING                      =  254 ,
    CREATURE_CATCH_FIREBALL_AND_THROW_BACK          =  255 ,
    CREATURE_TELL_CREATURE_TO_SOD_OFF               =  256 ,
    CREATURE_ORDER_FRIEND_AROUND                    =  257 ,
    CREATURE_TAKE_FOOD_FROM_FIELD_TO_HOME           =  258 ,
    CREATURE_TAKE_FISH_FROM_SEA_TO_HOME             =  259 ,
    CREATURE_WAVE_AT_FRIEND                         =  260 ,
    CREATURE_DEAD_FOREVER                           =  261 ,
    CREATURE_GIVE_WOOD_FROM_TREE_TO_WORKSHOP        =  262 ,
    CREATURE_THROW_AROUND                           =  263 ,
    CREATURE_STEAL_OBJECT_AND_PUT_IN_TOWN           =  264 ,
    CREATURE_STEAL_OBJECT_AND_PUT_BY_CITADEL        =  265 ,
    CREATURE_BREAK_ROCK                             =  266 ,
    CREATURE_NOTICE_STEALING_ACTION                 =  267 ,
    CREATURE_NOTICE_PLAYFUL_ACTION                  =  268 ,
    CREATURE_EAT_FROM_FIELD_WITH_FRIEND             =  269 ,
    CREATURE_GET_FRIEND_TO_GIVE_ME_FOOD_FROM_FIELD  =  270 ,
    CREATURE_EAT_FISH_WITH_FRIEND                   =  271 ,
    CREATURE_GET_FRIEND_TO_GIVE_ME_FISH             =  272 ,
    CREATURE_ATTACK_WITH_FRIEND                     =  273 ,
    CREATURE_HELP_TOWN_WITH_FRIEND                  =  274 ,
    CREATURE_EXAMINE_OBJECT_IN_HAND                 =  275 ,
    CREATURE_EAT_OBJECT_IN_HAND                     =  276 ,
    CREATURE_STROKE_OBJECT_IN_HAND                  =  277 ,
    CREATURE_THROW_OBJECT_IN_HAND                   =  278 ,
    CREATURE_GET_ATTENTION_FROM_FRIEND              =  279 ,
    CREATURE_EXAMINE_OTHER_CREATURE_WITH_FRIEND     =  280 ,
    CREATURE_GIVE_FRIEND_TOY                        =  281 ,
    CREATURE_SACRIFICE                              =  282 ,
    CREATURE_SET_FIRE_TO_OBJECT                     =  283 ,
    CREATURE_WATCH_PLAYER_WHILE_HE_HAS_YOUR_ATTENTION
                                                    =  284 ,
    CREATURE_DROP_COW_IN_STORAGE_PIT                =  285 ,
    CREATURE_CAST_SHIELD_AROUND_TOWN                =  286 ,
    CREATURE_MAKE_BREEDER_DISCIPLE                  =  287 ,
    CREATURE_PLAY_GAME_WITH_VILLAGERS               =  288 ,
    CREATURE_TAKE_VILLAGER_HOME_TO_SLEEP            =  289 ,
    CREATURE_KICK_BALL_AROUND                       =  290 ,
    CREATURE_THROW_BALL_AT_OBJECT                   =  291 ,
    CREATURE_DANCE_ON_YOUR_OWN_BY_THE_SEA           =  292 ,
    CREATURE_DANCE_PLAYFULLY_WITH_VILLAGERS_WATCHING=  293 ,
    CREATURE_DANCE_PLAYFULLY_WITH_VILLAGERS_PARTICIPATING
                                                    =  294 ,
    CREATURE_TELL_VILLAGERS_A_STORY                 =  295 ,
    CREATURE_PLAYFULLY_FRIGHTEN_VILLAGERS           =  296 ,
    CREATURE_CAST_AMUSING_SPELL_ON_CREATURE         =  297 ,
    CREATURE_KICK_TREE                              =  298 ,
    CREATURE_PLAYFULLY_INTERACT_WITH_VILLAGER       =  299 ,
    CREATURE_PUT_FISH_BY_WORSHIP_SITE               =  300 ,
    CREATURE_PLAYFULLY_KISS_VILLAGER                =  301 ,
    CREATURE_CAST_MAGIC_WOOD_BY_WORKSHOP            =  302 ,
    CREATURE_BRING_VILLAGERS_TO_WORSHIP_SITE        =  303 ,
    CREATURE_WATER_TREE                             =  304 ,
    CREATURE_WATER_FIELD                            =  305 ,
    CREATURE_STEAL_FOOD_FROM_FARM                   =  306 ,
    CREATURE_STEAL_FOOD_FROM_STORAGE_PIT            =  307 ,
    CREATURE_STEAL_WOOD_FROM_STORAGE_PIT            =  308 ,
    CREATURE_DANCE_AMOROUSLY_WITH_VILLAGERS         =  309 ,
    CREATURE_STEAL_SPELL_SEED                       =  310 ,
    CREATURE_STEAL_ANIMAL                           =  311 ,
    CREATURE_STEAL_VILLAGER                         =  312 ,
    CREATURE_SLEEP_ON_THE_SPOT                      =  313 ,
    CREATURE_LOOK_AT_CAMERA_IN_WIDE_SCREEN          =  314 ,
    CREATURE_HOWL_AT_FRIEND                         =  315 ,
    CREATURE_HOWL_AT_PLAYER                         =  316 ,
    CREATURE_TELL_FRIEND_A_JOKE                     =  317 ,
    CREATURE_PRAY_TO_PLAYER                         =  318 ,
    CREATURE_PRAY_AT_CITADEL                        =  319 ,
    CREATURE_TALK_TO_FRIEND                         =  320 ,
    CREATURE_POINT_OUT_HIGHLIGHT                    =  321 ,
    CREATURE_TAKE_TOY_HOME                          =  322 ,
    CREATURE_STROKE_TOY                             =  323 ,
    CREATURE_THROW_DIE                              =  324 ,
    CREATURE_SPRINKLE_MAGIC_WATER_PU1_ON_CROPS      =  325 ,
    CREATURE_WATER_TREE_FOR_TOWN                    =  326 ,
    CREATURE_WATER_TREE_PU1_FOR_TOWN                =  327 ,
    NUM_CREATURE_ACTIONS                            =  328 ,
    // CREATURE_CREATE_PLANNED_ABODE                   =  328 ,
    // CREATURE_CREATE_PLANNED_CIVIC_BUILDING          =  329 ,
    // CREATURE_PLAY_SINGLE_PLAYER_DICE_GAME           =  330 ,
    // CREATURE_PLAY_TWO_PLAYER_DICE_GAME              =  331 ,
    // CREATURE_CAST_ANTI_SPELL                        =  332 ,
    // CREATURE_CAST_FAST_SPELL                        =  333 ,
    // CREATURE_KICK_AT_POS                            =  334 ,
    // CREATURE_BOWL                                   =  335 ,
    // CREATURE_TELL_CREATURE_TO_GO_AWAY               =  336 ,
    // NUM_CREATURE_ACTIONS                            =  337 ,
};

//*****************************************************************************
// ENUM Values: ATTRIBUTE_TYPE
//*****************************************************************************
enum     ATTRIBUTE_TYPE
{
    ATTRIBUTE_TYPE_FIRST                            =  0 ,
    ATTRIBUTE_TYPE_ALLEGIANCE                       =  0 ,
    ATTRIBUTE_TYPE_ORIGIN                           =  1 ,
    ATTRIBUTE_TYPE_ANIMATE                          =  2 ,
    ATTRIBUTE_TYPE_PLAYER_NUMBER                    =  3 ,
    ATTRIBUTE_TYPE_HARDER_THAN_ME                   =  4 ,
    ATTRIBUTE_TYPE_CREATURE_TYPE                    =  5 ,
    ATTRIBUTE_TYPE_TYPE                             =  6 ,
    ATTRIBUTE_TYPE_LIFE                             =  7 ,
    ATTRIBUTE_TYPE_TRIBE                            =  8 ,
    ATTRIBUTE_TYPE_RELIGIOUS_BELIEF_IN_YOU          =  9 ,
    ATTRIBUTE_TYPE_TOWN_NEEDS_MOST                  =  10 ,
    ATTRIBUTE_TYPE_TOWN_SIZE                        =  11 ,
    ATTRIBUTE_TYPE_CREATURE_DOMINANT_DESIRE         =  12 ,
    ATTRIBUTE_TYPE_CREATURE_HEIGHT                  =  13 ,
    ATTRIBUTE_TYPE_CREATURE_SPELL_KNOWLEDGE         =  14 ,
    ATTRIBUTE_TYPE_CREATURE_CARRYING                =  15 ,
    ATTRIBUTE_TYPE_FOREST_SIZE                      =  16 ,
    ATTRIBUTE_TYPE_VILLAGER_JOB                     =  17 ,
    ATTRIBUTE_TYPE_SEX                              =  18 ,
    ATTRIBUTE_TYPE_MOBILE_OBJECT_TYPE               =  19 ,
    ATTRIBUTE_TYPE_ABODE_TYPE                       =  20 ,
    ATTRIBUTE_TYPE_ABODE_BEING_BUILT                =  21 ,
    ATTRIBUTE_TYPE_ABODE_ON_FIRE                    =  22 ,
    ATTRIBUTE_TYPE_LAST                             =  23 ,
    ATTRIBUTE_TYPE_ERROR                            =  23 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_DESIRE_ATTRIBUTE_SIZE
//*****************************************************************************
enum     CREATURE_DESIRE_ATTRIBUTE_SIZE
{
    MAX_NUM_ATTRIBUTES_TO_CONSIDER                  =  10 ,
};

//*****************************************************************************
// ENUM Values: DEVELOPMENT_PHASE
//*****************************************************************************
enum     DEVELOPMENT_PHASE
{
    DEVELOPMENT_PHASE_INITIAL                       =  0 ,
    DEVELOPMENT_PHASE_FIRST                         =  0 ,
    DEVELOPMENT_PHASE_LEARN_TO_TAKE_FROM_PLAYER_AND_EAT
                                                    =  1 ,
    DEVELOPMENT_PHASE_PUNISHMENT                    =  2 ,
    DEVELOPMENT_PHASE_LEASH_PULL_AND_PICKUP         =  3 ,
    DEVELOPMENT_PHASE_LEASH_ATTACH_TO_HOUSE         =  4 ,
    DEVELOPMENT_PHASE_MEET_GUIDE                    =  5 ,
    DEVELOPMENT_PHASE_FRIENDS_WITH_GUIDE            =  6 ,
    DEVELOPMENT_PHASE_GUIDE_EXPLAINS_HISTORY        =  7 ,
    DEVELOPMENT_PHASE_GUIDE_TEACHES_SPELLS          =  8 ,
    DEVELOPMENT_PHASE_IMPRESS_TOWN                  =  9 ,
    DEVELOPMENT_PHASE_LEARN_TO_FIGHT                =  10 ,
    DEVELOPMENT_PHASE_HELP_TOWN                     =  11 ,
    DEVELOPMENT_PHASE_LEASH_GOOD_AND_EVIL           =  12 ,
    DEVELOPMENT_PHASE_FULLY_MATURE                  =  13 ,
    DEVELOPMENT_PHASE_LAST                          =  14 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_NUM_DESIRES_IN_DEVELOPMENT_PHASE
//*****************************************************************************
enum     CREATURE_NUM_DESIRES_IN_DEVELOPMENT_PHASE
{
    MAX_NUM_DESIRES_TO_ADD                          =  10 ,
    MAX_NUM_DESIRES_TO_REMOVE                       =  4 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_TUTORIAL
//*****************************************************************************
enum     CREATURE_TUTORIAL
{
    CREATURE_TUTORIAL_SELECT                        =  0 ,
    CREATURE_TUTORIAL_RUN                           =  1 ,
    CREATURE_TUTORIAL_HAND_OVER                     =  2 ,
    CREATURE_TUTORIAL_DESELECT                      =  3 ,
    CREATURE_TUTORIAL_MORE_ROCKS_NEEDED_FOR_HOME    =  4 ,
    CREATURE_TUTORIAL_PICK_UP                       =  5 ,
    CREATURE_TUTORIAL_HELP_BUILD                    =  6 ,
    CREATURE_TUTORIAL_DROP                          =  7 ,
    CREATURE_TUTORIAL_EAT                           =  8 ,
    CREATURE_TUTORIAL_REWARD_PUNISH                 =  9 ,
    CREATURE_TUTORIAL_DRINK                         =  10 ,
    CREATURE_TUTORIAL_POO                           =  11 ,
    CREATURE_TUTORIAL_LAST                          =  12 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_HELP_TYPE
//*****************************************************************************
enum     CREATURE_HELP_TYPE
{
    CREATURE_HELP_TYPE_SHOW_LESSON_INCREASE_SOURCE  =  0 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_DECREASE_SOURCE  =  1 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_INCREASE_DESIRE  =  2 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_DECREASE_DESIRE  =  3 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_INCREASE_OPINION =  4 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_DECREASE_OPINION =  5 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_LEARN_NORMAL_ACTION
                                                    =  6 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_LEARN_MAGIC_ACTION
                                                    =  7 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_NEARLY_LEARNT_NORMAL_ACTION
                                                    =  8 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_NEARLY_LEARNT_MAGIC_ACTION
                                                    =  9 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_CANT_LEARN_NORMAL_ACTION_YET
                                                    =  10 ,
    CREATURE_HELP_TYPE_SHOW_LESSON_CANT_LEARN_MAGIC_ACTION_YET
                                                    =  11 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_INITIAL    =  12 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_LEARN_TO_TAKE_FROM_PLAYER_AND_EAT
                                                    =  13 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_PUNISHMENT =  14 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_LEASH_PULL_AND_PICKUP
                                                    =  15 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_LEASH_ATTACH_TO_HOUSE
                                                    =  16 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_MEET_GUIDE =  17 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_FRIENDS_WITH_GUIDE
                                                    =  18 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_GUIDE_EXPLAINS_HISTORY
                                                    =  19 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_GUIDE_TEACHES_SPELLS
                                                    =  20 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_IMPRESS_TOWN
                                                    =  21 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_LEARN_TO_FIGHT
                                                    =  22 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_HELP_TOWN  =  23 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_LEASH_GOOD_AND_EVIL
                                                    =  24 ,
    CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_FULLY_MATURE
                                                    =  25 ,
    CREATURE_HELP_TYPE_RECEIVED_SPELL               =  26 ,
    CREATURE_HELP_TYPE_FINISHED_RECEIVING_SPELL     =  27 ,
    CREATURE_HELP_TYPE_TUTORIAL                     =  28 ,
    CREATURE_HELP_TYPE_SHOW_CURRENT_SOURCE          =  29 ,
    CREATURE_HELP_TYPE_SHOW_PHYSICAL_PROBLEM        =  30 ,
    CREATURE_HELP_TYPE_SHOW_MENTAL_PROBLEM          =  31 ,
    CREATURE_HELP_TYPE_PROMPT_HASNT_LEARNT_NORMAL_ACTION
                                                    =  32 ,
    CREATURE_HELP_TYPE_SHOW_TOWN_ATTITUDE_TO_CREATURE
                                                    =  33 ,
    CREATURE_HELP_TYPE_CANNOT_LEARN_ACTION_IN_THIS_DEVELOPMENT_PHASE
                                                    =  34 ,
    CREATURE_HELP_TYPE_SHOW_DEVELOPMENT_CRITERIA    =  35 ,
    CREATURE_HELP_TYPE_SOMETHING_INTERESTING_OFF_SCREEN
                                                    =  36 ,
    CREATURE_HELP_TYPE_MISCELLANEOUS_STACKED        =  37 ,
    CREATURE_HELP_TYPE_MISCELLANEOUS_UNSTACKED      =  38 ,
    CREATURE_HELP_TYPE_ACTION_MESSED_UP             =  39 ,
    CREATURE_HELP_TYPE_FAILURE_EXPLANATION          =  40 ,
    CREATURE_HELP_TYPE_CURRENT_DESIRE               =  41 ,
    CREATURE_HELP_TYPE_LAST                         =  42 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_MISCELLANEOUS_HELP_STACKED
//*****************************************************************************
enum     CREATURE_MISCELLANEOUS_HELP_STACKED
{
    CREATURE_MISCELLANEOUS_HELP_STACKED_NICE_MUSIC  =  0 ,
    CREATURE_MISCELLANEOUS_HELP_STACKED_NASTY_MUSIC =  1 ,
    CREATURE_MISCELLANEOUS_HELP_STACKED_FRIGHTENING_MUSIC
                                                    =  2 ,
    CREATURE_MISCELLANEOUS_HELP_STACKED_CREATURE_HAS_FAINTED
                                                    =  3 ,
    CREATURE_MISCELLANEOUS_HELP_STACKED_PLAYER_STROKE_BUT_NOT_LEARNING
                                                    =  4 ,
    CREATURE_MISCELLANEOUS_HELP_STACKED_PLAYER_SLAP_BUT_NOT_LEARNING
                                                    =  5 ,
    CREATURE_MISCELLANEOUS_HELP_STACKED_CREATURE_TRANSPORTED_HOME
                                                    =  6 ,
    CREATURE_MISCELLANEOUS_HELP_STACKED_CREATURE_CANNOT_PICK_UP
                                                    =  7 ,
    CREATURE_MISCELLANEOUS_HELP_STACKED_TYKE_CANNOT_MIMIC
                                                    =  8 ,
    CREATURE_MISCELLANEOUS_HELP_STACKED_LAST        =  9 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_MISCELLANEOUS_HELP_UNSTACKED
//*****************************************************************************
enum     CREATURE_MISCELLANEOUS_HELP_UNSTACKED
{
    CREATURE_MISCELLANEOUS_HELP_UNSTACKED_OFF_SCREEN_INTERESTINGNESS
                                                    =  0 ,
    CREATURE_MISCELLANEOUS_HELP_UNSTACKED_LAST      =  1 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_MESSED_UP
//*****************************************************************************
enum     CREATURE_MESSED_UP
{
    CREATURE_MESSED_UP_ACTION_THROW                 =  0 ,
    CREATURE_MESSED_UP_ACTION_SPELL                 =  1 ,
    CREATURE_MESSED_UP_ACTION_FISH                  =  2 ,
    CREATURE_MESSED_UP_ACTION_DANCE_WITH_VILLAGERS  =  3 ,
    CREATURE_MESSED_UP_ACTION_MAKE_FIRE             =  4 ,
    CREATURE_MESSED_UP_ACTION_IMPRESS_VILLAGERS     =  5 ,
    CREATURE_MESSED_UP_ACTION_RAISE_TOTEM           =  6 ,
    CREATURE_MESSED_UP_ACTION_LAST                  =  7 ,
};

//*****************************************************************************
// ENUM Values: SCRIPT_PERFORMED_ACTION
//*****************************************************************************
enum     SCRIPT_PERFORMED_ACTION
{
    SCRIPT_PERFORMED_ACTION_EAT                     =  0 ,
    SCRIPT_PERFORMED_ACTION_DESTROY                 =  1 ,
    SCRIPT_PERFORMED_ACTION_SAVE                    =  2 ,
    SCRIPT_PERFORMED_ACTION_LAST                    =  3 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_FAILURE_EXPLANATION
//*****************************************************************************
enum     CREATURE_FAILURE_EXPLANATION
{
    CREATURE_FAILURE_EXPLANATION_DOESNT_WANT_TO_FIGHT_BECAUSE_DAMAGED
                                                    =  0 ,
    CREATURE_FAILURE_EXPLANATION_CANT_FIND_ROUTE    =  1 ,
    CREATURE_FAILURE_EXPLANATION_ROUTE_BLOCKED      =  2 ,
    CREATURE_FAILURE_EXPLANATION_ROUTE_INACCESSIBLE =  3 ,
    CREATURE_FAILURE_EXPLANATION_OPPONENT_REFUSED_TO_FIGHT
                                                    =  4 ,
    CREATURE_FAILURE_EXPLANATION_OPPONENT_REFUSED_TO_PLAY
                                                    =  5 ,
    CREATURE_FAILURE_EXPLANATION_OPPONENT_REFUSED_TO_BE_FRIENDS
                                                    =  6 ,
    CREATURE_FAILURE_EXPLANATION_LEASH_STOPPED_CREATURE
                                                    =  7 ,
    CREATURE_FAILURE_EXPLANATION_CREATURE_LOST_OBJECT_HE_WAS_TRACKING
                                                    =  8 ,
    CREATURE_FAILURE_EXPLANATION_LAST               =  9 ,
};

//*****************************************************************************
// ENUM Values: THING_TO_LOOK_AT_TYPE
//*****************************************************************************
enum     THING_TO_LOOK_AT_TYPE
{
    THING_TO_LOOK_AT_TYPE_OBJECT                    =  0 ,
    THING_TO_LOOK_AT_TYPE_MOUNTAIN                  =  1 ,
    THING_TO_LOOK_AT_TYPE_SEA                       =  2 ,
    THING_TO_LOOK_AT_TYPE_LAST                      =  3 ,
};

//*****************************************************************************
// ENUM Values: MIMIC_STAGE
//*****************************************************************************
enum     MIMIC_STAGE
{
    MIMIC_STAGE_NOTICE                              =  0 ,
    MIMIC_STAGE_COPY_ACTION                         =  1 ,
    MIMIC_STAGE_COPY_DESIRE                         =  2 ,
    MIMIC_STAGE_LAST                                =  3 ,
};

//*****************************************************************************
// ENUM Values: DETECTED_PLAYER_ACTION
//*****************************************************************************
enum     DETECTED_PLAYER_ACTION
{
    DETECTED_PLAYER_ACTION_PUT_FOOD_IN_WORSHIP_SITE =  0 ,
    DETECTED_PLAYER_ACTION_CAST_MAGIC_FOOD_IN_WORSHIP_SITE
                                                    =  1 ,
    DETECTED_PLAYER_ACTION_PUT_FOOD_IN_STORAGE_PIT  =  2 ,
    DETECTED_PLAYER_ACTION_CAST_MAGIC_FOOD_IN_STORAGE_PIT
                                                    =  3 ,
    DETECTED_PLAYER_ACTION_PUT_WOOD_IN_STORAGE_PIT  =  4 ,
    DETECTED_PLAYER_ACTION_CAST_MAGIC_WOOD_IN_STORAGE_PIT
                                                    =  5 ,
    DETECTED_PLAYER_ACTION_BUILD_HOUSE              =  6 ,
    DETECTED_PLAYER_ACTION_PUT_WOOD_IN_BUILDING_SITE=  7 ,
    DETECTED_PLAYER_ACTION_CAST_MAGIC_WOOD_BY_BUILDING_SITE
                                                    =  8 ,
    DETECTED_PLAYER_ACTION_PUT_WOOD_IN_WORKSHOP     =  9 ,
    DETECTED_PLAYER_ACTION_CAST_MAGIC_WOOD_BY_WORKSHOP
                                                    =  10 ,
    DETECTED_PLAYER_ACTION_PLANT_TREE               =  11 ,
    DETECTED_PLAYER_ACTION_GIVE_TOWN_PROTECTION_WITH_SHIELD
                                                    =  12 ,
    DETECTED_PLAYER_ACTION_BRING_PEOPLE_TO_WORSHIP  =  13 ,
    DETECTED_PLAYER_ACTION_MAKE_ARTEFACT            =  14 ,
    DETECTED_PLAYER_ACTION_DAMAGE_BY_THROWING       =  15 ,
    DETECTED_PLAYER_ACTION_DAMAGE_BY_THROWING_AT    =  16 ,
    DETECTED_PLAYER_ACTION_DAMAGE_WITH_FIRE         =  17 ,
    DETECTED_PLAYER_ACTION_DAMAGE_WITH_MAGIC        =  18 ,
    DETECTED_PLAYER_ACTION_IMPRESS_BY_THROWING      =  19 ,
    DETECTED_PLAYER_ACTION_IMPRESS_WITH_MAGIC       =  20 ,
    DETECTED_PLAYER_ACTION_THROW_IN_THE_SEA         =  21 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_FARMER     =  22 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_FORESTER   =  23 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_FISHERMAN  =  24 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_BUILDER    =  25 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_BREEDER    =  26 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_PROTECTION =  27 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_MISSIONARY =  28 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_CRAFTSMAN  =  29 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_CHANGE_HOUSE
                                                    =  30 ,
    DETECTED_PLAYER_ACTION_MAKE_DISCIPLE_WORSHIP    =  31 ,
    DETECTED_PLAYER_ACTION_TAKE_OBJECT_HOME         =  32 ,
    DETECTED_PLAYER_ACTION_CAST_WATER_ON_CROPS      =  33 ,
    DETECTED_PLAYER_ACTION_CAST_WATER_TO_PUT_OUT_FIRE
                                                    =  34 ,
    DETECTED_PLAYER_ACTION_STEAL_OBJECT_AND_PUT_IN_TOWN
                                                    =  35 ,
    DETECTED_PLAYER_ACTION_STEAL_OBJECT_AND_PUT_BY_CITADEL
                                                    =  36 ,
    DETECTED_PLAYER_ACTION_BREAK_ROCKS              =  37 ,
    DETECTED_PLAYER_ACTION_THROW_FOOTBALL_IN_GOAL   =  38 ,
    DETECTED_PLAYER_ACTION_CATCH_FOOTBALL           =  39 ,
    DETECTED_PLAYER_ACTION_SACRIFICE                =  40 ,
    DETECTED_PLAYER_ACTION_PLAY_WITH_TOY            =  41 ,
    DETECTED_PLAYER_ACTION_HEAL                     =  42 ,
    DETECTED_PLAYER_ACTION_STEAL_FOOD_FROM_FARM     =  43 ,
    DETECTED_PLAYER_ACTION_STEAL_FOOD_FROM_STORAGE_PIT
                                                    =  44 ,
    DETECTED_PLAYER_ACTION_STEAL_WOOD_FROM_STORAGE_PIT
                                                    =  45 ,
    DETECTED_PLAYER_ACTION_LAST                     =  46 ,
};

#endif
