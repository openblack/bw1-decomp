#ifndef BW1_DECOMP_CREATURE_INCLUDED_H
#define BW1_DECOMP_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/AllMeshes.h>     /* For enum ANIM_LIST */
#include <chlasm/ScriptEnums.h>   /* For enum SCRIPT_OBJECT_TYPE */
#include <chlasm/CreatureEnum.h>  /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h>          /* For enum CREATURE_DESIRES, enum EFFECT_TYPE, enum IMPRESSIVE_TYPE, enum REACTION */
#include <chlasm/GStates.h>       /* For enum VILLAGER_STATES */
#include <chlasm/HitRegions.h>    /* For enum FIGHT_CONTROL_AI */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LHFile/ver3.0/LHFile.h>        /* For enum LH_FILE_RESULT */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>   /* For struct LHLinkedList */
#include <re_common.h>                            /* For bool32_t */

#include "ClearAreaState.h"    /* For struct ClearAreaState */
#include "CreatureHelp.h"      /* For struct CreatureHelpStack, struct CreatureHelpState */
#include "CreaturePlan.h"      /* For CreatureActionsTried */
#include "CreatureSubAction.h" /* For struct CreatureSubActionAgenda */
#include "HandGlowType.h"      /* For enum HAND_GLOW_TYPE */
#include "TattooInfo.h"        /* For struct TattooInfo */
#include "Living.h"            /* For struct Living */
#include "MapCoords.h"         /* For struct MapCoords */
#include "MobileObject.h"      /* For struct MobileObject */

// Forward Declares

#define CREATURE_DEVELOPMENT_CONFINEMENT_RADIUS           12.0f
#define CREATURE_MIN_IMPRESSIVE_SIZE                      1.0f
#define CREATURE_MAX_IMPRESSIVE_SIZE                      4.0f
#define CREATURE_MAX_FLYING_OBJECT_DAMAGE                 100.0f
#define CREATURE_BIG_SIZE_SCALE                           1.8f
#define CREATURE_MAX_AUTO_SCALE_HEIGHT                    2.0f
#define CREATURE_EVIL_VICTORY_ALIGNMENT                   -0.5f
#define CREATURE_LIGHTBULB_REPEAT_TURNS                   100
#define CREATURE_MIN_WATER_SPELL_PROGRESS                 0.6f
#define CREATURE_RESURRECT_LIFE                           0.4f
#define CREATURE_ARENA_APPROACH_SCALE                     15.0f
#define CREATURE_LOW_LIFE                                 0.4f
#define CREATURE_LOW_LIFE_DESIRE_SECONDS                  10.0f
#define CREATURE_TOWN_ON_FIRE_RANGE                       150.0f
#define CREATURE_MUSIC_MOOD_ARGUMENT_SCALE                5.0f
#define CREATURE_LIGHTBULB_SIZE_DIVISOR                   10.0f
#define CREATURE_LIGHTBULB_HEIGHT_ABOVE_HEAD              1.0f
#define CREATURE_STUCK_SECONDS                            15.0f
#define CREATURE_STUCK_SUPPRESS_SECONDS                   60.0f
#define CREATURE_FIGHT_IMPACT_EFFECT_SCALE                0.05f
#define CREATURE_DOMINANCE_AGE_DIFFERENCE                 10
#define CREATURE_MILLISECONDS_PER_SECOND                  1000
#define CREATURE_NEW_AREA_SECONDS                         60.0f
#define CREATURE_FAR_FROM_HOME_DISTANCE                   20.0f
#define CREATURE_HOME_FINISHED_SIZE                       6
#define CREATURE_SPEECH_FLAG_NO_NAME                      0x4
#define CREATURE_SPEECH_DISPLAY_TIME                      3.0f
#define CREATURE_HOME_SIZE_SCALE                          1.2f
#define CREATURE_TELEPORT_DESTINATION_RADIUS              5.0f
#define CREATURE_GESTURE_SIZE_SCALE                       1.3f
#define CREATURE_DRINK_SUPPRESS_SECONDS                   20.0f
#define CREATURE_EAT_SUPPRESS_SECONDS                     20.0f
#define CREATURE_PUT_OUT_FIRE_EFFECT_SCALE                5.0f
#define CREATURE_FOLLOW_HAND_SECONDS                      30.0f
#define CREATURE_FOLLOW_HAND_DISTANCE                     4.0f
#define CREATURE_GO_NEAR_OBJECT_RANGE_SCALE               1.1f
#define CREATURE_GO_NEAR_OBJECT_MIN_MOVEMENT              0.01f
#define CREATURE_GO_NEAR_OBJECT_SUPPRESS_SECONDS          10.0f
#define CREATURE_FOLLOW_INTERESTING_OBJECT_MAX_SECONDS    60.0f
#define CREATURE_FOLLOW_INTERESTING_OBJECT_DISTANCE       15.0f
#define CREATURE_FOLLOW_INTERESTING_OBJECT_MIN_SECONDS    1.0f
#define CREATURE_FOLLOW_INTERESTING_OBJECT_RANDOM_SECONDS 3.0f
#define CREATURE_LOOK_AT_FLYING_OBJECT_MIN_SECONDS        2.0f
#define CREATURE_HEAL_HIMSELF_TIME_WARP                   0x2580
#define CREATURE_INSPECT_MIN_SECONDS                      5.0f
#define CREATURE_INSPECT_RANDOM_SECONDS                   10.0f
#define CREATURE_DEFENCE_MIN_SIZE                         0.001f
#define CREATURE_DEFENCE_MAX_SIZE                         2.0f
#define CREATURE_DEFENCE_SIZE_SCALE                       1.5f
#define CREATURE_PHYSICS_MASS                             1000.0f
#define CREATURE_MIN_PHYSICS_IMPACT_DAMAGE                0.005f
#define CREATURE_CUT_AREA_SCALE                           15.0f
#define CREATURE_CUT_MIN_DISTANCE_SQUARED                 0.01f
#define CREATURE_MAX_CUTS                                 7
#define CREATURE_NICENESS_UPDATE_TURNS                    600
#define CREATURE_TIME_WARP_HEAL_SCALE                     9600.0f
#define CREATURE_VALUE_SPINNER_MAX_HEIGHT                 30.0f
#define CREATURE_VALUE_SPINNER_RISE_SPEED                 5.0f
#define CREATURE_SIGHT_DISTANCE                           10.0f
#define CREATURE_MOVEMENT_DIRECTION_DISTANCE              10.0f
#define CREATURE_FOOD_VALUE_PER_ENERGY_UNIT               1000.0f
#define CREATURE_FACING_DIRECTION_OFFSET                  2.5f
#define CREATURE_SCARY_ALIGNMENT                          -0.25f
#define CREATURE_SIZE_TO_HEIGHT                           15.0f
#define CREATURE_TYKE_MIMIC_DISTANCE                      100.0f
#define CREATURE_TYKE_DESIRE_SECONDS                      30.0f
#define CREATURE_MAX_EYE_LID_LEVEL                        0.73f
#define CREATURE_LONG_SUPPRESS_SECONDS                    120.0f
#define CREATURE_SHORT_SUPPRESS_SECONDS                   60.0f
#define CREATURE_RESTORE_HEALTH_AMOUNT                    0.5f
#define CREATURE_TIREDNESS_DIVISOR                        1.3f
#define CREATURE_ERROR_ANGLE_SCALE                        (-56.0f)

enum CREATURE_HEIGHT
{
	CREATURE_HEIGHT_VERY_SMALL,
	CREATURE_HEIGHT_SMALL,
	CREATURE_HEIGHT_MEDIUM,
	CREATURE_HEIGHT_BIG,
	CREATURE_HEIGHT_LAST
};

enum CREATURE_PHYSICAL_PROBLEM
{
	CREATURE_PHYSICAL_PROBLEM_NO_ENERGY = 1,
	CREATURE_PHYSICAL_PROBLEM_NO_LIFE = 3,
	CREATURE_PHYSICAL_PROBLEM_EXHAUSTED = 5,
};

enum CREATURE_HAND_INTERACT_STATE
{
	CREATURE_HAND_INTERACT_STATE_NORMAL,
	CREATURE_HAND_INTERACT_STATE_TURN_TO_FACE_CAMERA,
	CREATURE_HAND_INTERACT_STATE_PLAY_LAST_DESIRE_ANIM
};

enum LEASH_CONTROL
{
	LEASH_CONTROL_NONE,
	LEASH_CONTROL_PULL,
	LEASH_CONTROL_DIRECT
};

class Base;
struct BookmarkGraphic;
struct Bubble;
class Archive;
class CreatureInfo;
class LHPlayer;
class Citadel;
struct ControlHandUpdateInfo;
class CreatureBelief;
class CreatureBeliefAboutCreature;
class CreatureMental;
class CreaturePhysical;
class CreaturePlan;
struct CreatureReceiveSpell;
class CreatureSpeechItem;
class Dance;
struct EffectNumbers;
class EffectValues;
class GAlignment;
class GArena;
struct GatheringText;
class GInterfaceStatus;
class GParticleContainer;
class GPlayer;
class HandGlow;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LH3DCreature;
struct LH3DJustFootPrint;
struct LH3DMesh;
struct MPFEStartGameData;
class Villager;
class LH3DObject;
struct LH3DColor;
struct LH3DSmoke;
class LHOSFile;
class LandscapeVortex;
class MobileWallHug;
class Object;
class Pot;
struct MusicMoodPacket;
struct PSysProcessInfo;
struct PhysOb;
class PhysicsObject;
struct RPHolder;
class Reaction;
struct SnapshotData
{
	float           Priority;
	uint32_t        Age;
	CREATURE_ACTION Action;

	// BW1W120 inlined BW1M119 inlined
	SnapshotData(float priority, uint32_t age, CREATURE_ACTION action) : Priority(priority), Age(age), Action(action) {}
};
class Spell;
class Town;
class Tree;

struct CreatureRecentTrees
{
	Tree*    Trees[10];
	uint32_t Index;
	uint32_t Count;

	// BW1W120 inlined BW1M119 inlined
	CreatureRecentTrees() { Clear(); }

	void Add(Tree* tree);
	void Clear()
	{
		Index = 0;
		Count = 0;
	}
};

struct CreatureEmotionsForMusic
{
	float Mood;
	float Fear;

	// BW1W120 inlined BW1M119 inlined
	CreatureEmotionsForMusic() { Clear(); }
	// BW1W120 inlined BW1M119 011dbe00
	void Clear()
	{
		Fear = 0.0f;
		Mood = 0.0f;
	}
};

#ifdef VERSION_BW1WCI
#define CREATURE_TATTOO_FLAG_FIGHTER        0x1
#define CREATURE_TATTOO_FLAG_GODS           0x2
#define CREATURE_TATTOO_FLAG_FIGHTER_ALWAYS 0x4
#endif

class Creature : public Living
{
public:
	// BW1W120 004cefb0 BW1M119 01015ef0
	static void DrawLeashInfo();
	// BW1W120 004e70c0 BW1M119 0126e740
	void Save3D(char* path);
	// BW1W120 004e72d0 BW1M119 0126e6b0
	static bool CanLoad3D(char* name);
	// BW1W120 004e7310 BW1M119 0126e300
	static LH3DCreature* Load3D(char* name);
	// BW1W120 004e7ff0 BW1M119 0126d680
	static void Load(char* name, const MapCoords& coords, GPlayer* player, MPFEStartGameData* data);
	// BW1W120 004e8040 BW1M119 0126d200
	static void LoadFullyQualified(char* path, const MapCoords& coords, GPlayer* player, MPFEStartGameData* data);
	// BW1W120 004e8330 BW1M119 0126d080
	bool32_t CheckValidation(Archive& archive);
	// BW1W120 0047d830 BW1M119 011d6c10
	static void OnClearMap();
	// BW1W120 00c5fcf8 BW1M119 01a7e57c
	static LHLinkedList<Creature*> CreatureList;
#if !defined(VERSION_BW1W120) && !defined(VERSION_BW1W130)
	// BW1W120 null BW1M119 01756bac
	static uint32_t ImpressiveSpellDoneWhen[5];
	// BW1W120 null BW1M119 01756cf0
	static char FileName[0x88];
	// BW1W120 null BW1M119 01a7e554
	static uint32_t CheckSum3D;
	// BW1W120 null BW1M119 01a7e558
	static uint32_t DestPosCheckSum;
	// BW1W120 null BW1M119 01a7e55c
	static uint32_t PosCheckSum;
	// BW1W120 null BW1M119 01a7e560
	static uint32_t MentalMiscCheckSum;
	// BW1W120 null BW1M119 01a7e564
	static uint32_t MentalValueSystemCheckSum;
	// BW1W120 null BW1M119 01a7e568
	static uint32_t MentalDesiresCheckSum;
	// BW1W120 null BW1M119 01a7e56c
	static uint32_t MentalBeliefsCheckSum;
	// BW1W120 null BW1M119 01a7e570
	static uint32_t MentalAgendaCheckSum;
	// BW1W120 null BW1M119 01a7e574
	static bool32_t LeashOverridesScript;
	// BW1W120 null BW1M119 01a7e578
	static bool32_t CheatAgreeToAllRequests;
	// BW1W120 null BW1M119 01a7e590
	static Creature* CreatureBeingLogged;
	// BW1W120 null BW1M119 01aa0944
	static uint32_t CreatureActionIndex[0x40];
#endif

	char16_t              name[0x40];
	CreaturePhysical*     physical;
	CreatureMental*       mind;
	GAlignment*           alignment;
	uint32_t              NumPeopleKilled;
	uint32_t              NumAnimalsKilled;
	uint32_t              NumCreaturesKilled;
	uint32_t              NumBattlesFought;
	uint32_t              NumBattlesWon;
	uint32_t              NumPoos;
	uint32_t              NumMushroomsEaten;
	CreatureHelpState     HelpState;
	CreatureHelpStack     HelpStack;
	CreatureReceiveSpell* ReceiveSpell;
#ifdef VERSION_BW1WCI
	uint32_t ci_field_0x374;
	uint32_t ci_field_0x378;
#endif
	float                        MaxBigSize;
	float                        MaxSmallSize;
	bool                         CanGoThroughVortex;
	uint8_t                      field_0x37d;
	uint8_t                      field_0x37e;
	uint8_t                      field_0x37f;
	LEASH_CONTROL                LeashControl;
	bool32_t                     Fainted;
	CreatureEmotionsForMusic     EmotionsForMusic;
	bool32_t                     DevelopmentPhaseActionDone[DEVELOPMENT_PHASE_LAST];
	uint32_t                     field_0x3c8;
	CREATURE_HAND_INTERACT_STATE BeforeHandInteractState;
	LHLinkedList<Creature*>      Friends;
	ClearAreaState               ClearArea;
	uint8_t                      field_0x404;
	uint8_t                      field_0x405;
	uint8_t                      field_0x406;
	uint8_t                      field_0x407;
	CreatureSubActionAgenda      SubActionAgenda;
	bool32_t                     RemoteCreature;
#ifdef VERSION_BW1WCI
	bool32_t CanDrop;
	uint32_t ci_field_0x1068;
	uint32_t GameTurnLastHealedConfinedCreature;
	uint32_t GameTurnLastFedConfinedCreature;
	uint32_t GameTurnLastSleptWithConfinedCreature;
	bool32_t RightHandOnly;
	uint32_t GameTurnLastCastFastSpell;
	float    ScriptScale;
	uint8_t  BodyFlags;
	uint8_t  ci_field_0x1085[0x3];
#endif
	uint32_t                ActionForced;
	bool32_t                ReactionsEnabled;
	bool32_t                LearningEnabled;
	uint32_t                field_0x1068;
	bool32_t                Invisible;
	GPlayer*                owner;
	Dance*                  dance;
	GameThing*              field_0x1078;
	GParticleContainer*     ParticleContainer0x107c;
	GParticleContainer*     ParticleContainer0x1080;
	GameThing*              SpotVisual;
	GParticleContainer*     SwapMindEffect;
	uint32_t                field_0x108c;
	LHLinkedList<Villager*> ControlledVillagers;
	int                     ActionPriorityUpdateIndex;
	LH3DSmoke*              smoke;
	GArena*                 arena;
	uint32_t                GameTurnOfLastSnapshot;
	uint32_t                field_0x10a8;
	bool32_t                FightStarted;
	bool32_t                FightEnded;
	bool32_t                TouchedByLeash;
	bool32_t                DirectedByLeash;
	bool32_t                SpellReversion;
	bool32_t                IsShowingDevelopmentHelpScript;
	uint8_t                 SavedCreatureIndex;
	uint8_t                 SavedPlayerNumber;
	uint8_t                 field_0x10c6[0x6];
	Creature*               InCreatureHand;
	uint32_t                field_0x10d0;
	GameThingWithPos*       InteractingObject;
	int                     StolenPowerUps[POWER_UP_TYPE_LAST + 1];
	uint32_t                TurnsBeforeConsideringDecision;
	uint32_t                field_0x10ec;
	uint32_t                field_0x10f0;
	bool32_t                RespondingToEmergency;
	Town*                   LastTownImpressed;
	uint32_t                LastImpressiveDanceTurn;
	DANCE_INFO              LastImpressiveDanceType;
	bool32_t                SubActionAgendaSaved;
	bool32_t                LeashEnabled[LEASH_TYPE_LAST + 1];
	bool32_t                Moving;
	uint32_t                NumTurnsStuck;
	CREATURE_ACTION         LastSuccessfulAction;
	int                     GameTurn;
	CreatureRecentTrees     RecentTrees;
	bool32_t                CanDie;
	bool32_t                AutoScaleEnabled;
	float                   AutoScaleValue;
	MapCoords               GoNearStartPos;
#ifdef VERSION_BW1WCI
	uint32_t ci_field_0x119c;
	bool32_t Navigation;
	bool32_t HasYoung;
#endif
	TattooInfo                        Tattoos[0x8];
	uint32_t*                         TattooData;
	CREATURE_DESIRES                  SavedPlanDesire;
	CREATURE_ACTION                   SavedPlanAction;
	GameThingWithPos*                 SavedActivityObject;
	GameThingWithPos*                 SavedObjectToActOn;
	GameThingWithPos*                 SavedObjectToUse;
	MapCoords                         ConfinementCentre;
	float                             ConfinementRadius;
	bool32_t                          GoingBackToConfinedArea;
	float                             NumTimesPerformedAction[SCRIPT_PERFORMED_ACTION_LAST];
	Object*                           LastDroppedObject;
	MapCoords                         DestPosBeforeTeleport;
	LHPoint                           field_0x11d8;
	GParticleContainer*               ParticleContainer0x11e4;
	GameThing*                        field_0x11e8;
	BookmarkGraphic*                  bookmark_graphic;
	uint8_t                           field_0x11f0;
	uint8_t                           field_0x11f1;
	uint8_t                           field_0x11f2;
	uint8_t                           field_0x11f3;
	LH3DObject*                       HomeObject;
	LH3DMesh*                         field_0x11f8;
	LH3DJustFootPrint*                HomeFootPrint;
	MapCoords                         HomePos;
	LHLinkedList<GameThingWithPos*>   HomeBuildingObjects;
	MapCoords                         DestPos;
	LHLinkedList<LHPoint*>            DebugPath;
	char                              MindFileName[0x40];
	DEVELOPMENT_PHASE                 DevelopmentPhase;
	int                               GameTurnsInDevelopmentPhase;
	float                             HandOverCreatureLevel;
	LHLinkedList<CreatureSpeechItem*> SpeechItems;
	Bubble*                           bubble;
	LHLinkedList<SnapshotData*>       Snapshots;
	uint32_t                          MaxSnapshots;
	uint32_t                          ScriptAnim;
	uint32_t                          ScriptAnimRepeats;
#ifndef VERSION_BW1W100
	bool32_t                ConfinedToObject;
	GameThingWithPos*       ConfinementObject;
	int                     ConfinementPlayerNumber;
	LHLinkedList<Creature*> ConfinedCreatures;
#endif
#ifdef VERSION_BW1WCI
	bool32_t FollowMaster;
	float    DistanceFromHome;
#endif
	bool32_t Trapped;
	bool     FizzLocked;
	uint8_t  field_0x12ad;
	uint8_t  field_0x12ae;
	uint8_t  field_0x12af;
	float    FizzCurr;
	float    FizzDest;
	float    FizzSpeed;
	float    FrozAmount;
	bool32_t IgnoredByVillagers;
#ifndef VERSION_BW1W100
	uint32_t field_0x12c4;
#endif

	// Override methods

	// BW1W120 00475170 BW1M119 011e5f30
	virtual ~Creature();
	// BW1W120 00474f00 BW1M119 011e6910
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00473f20 BW1M119 010a4810
	virtual GPlayer* GetPlayer();
	// BW1W120 00473f30 BW1M119 011ea2d0
	virtual void RemoveDance();
	// BW1W120 00474090 BW1M119 011ea8b0
	virtual bool32_t IsCreature(Creature* creature);
	// BW1W120 00474080 BW1M119 011ea8f0
	virtual bool32_t IsCreature();
	// BW1W120 004e4080 BW1M119 015edd20
	virtual bool32_t IsCreatureNotTooNear(Creature* creature);
	// BW1W120 0047b1f0 BW1M119 011dc080
	virtual float GetMaxAlignmentChangePerGameTurn();
	// BW1W120 004f8350 BW1M119 inlined
	virtual float MaintainSpell(uint32_t param_1, float param_2);
	// BW1W120 004f8750 BW1M119 0128ed90
	virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
	// BW1W120 004792c0 BW1M119 011dfcf0
	virtual float GetRadius();
	// BW1W120 00477f40 BW1M119 011e1780
	virtual float Get2DRadius();
	// BW1W120 00474010 BW1M119 011ea680
	virtual Creature* CastCreature();
	// BW1W120 004740d0 BW1M119 011eaa40
	virtual char* GetDebugText();
	// BW1W120 0071bd50 BW1M119 01517850
	virtual uint32_t GetSampleForAttack();
	// BW1W120 004e5ff0 BW1M119 0126ef60
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 004e4ea0 BW1M119 01270820
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 004740c0 BW1M119 011eaa00
	virtual uint32_t GetSaveType();
	// BW1W120 004e6ab0 BW1M119 0126e8e0
	virtual void ResolveLoad();
	// BW1W120 00473f70 BW1M119 011ea3e0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00477df0 BW1M119 011e1b40
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 004792d0 BW1M119 011dfc80
	virtual Citadel* GetCitadel();
	// BW1W120 0047b190 BW1M119 011dc210
	virtual float GetScale();
	// BW1W120 0047b160 BW1M119 011dc260
	virtual void SetScale(float scale);
	// BW1W120 0047d810 BW1M119 011d6c80
	virtual void SetSpeedInMetres(float speed_in_metres, bool32_t scale_speed);
	// BW1W120 0047c630 BW1M119 011da0a0
	virtual float GetRunningSpeedInMetres();
	// BW1W120 0047c640 BW1M119 011da050
	virtual float GetDefaultSpeedInMetres();
	// BW1W120 0047de80 BW1M119 011d6060
	virtual void SetHeight(float height);
	// BW1W120 004f8b30 BW1M119 0128e680
	virtual void GetPSysBeamTargetPos(LHPoint* param_1);
	// BW1W120 00477ac0 BW1M119 011e21c0
	virtual void GetMovementDirection(LHPoint* direction);
	// BW1W120 00479e40 BW1M119 011de230
	virtual bool32_t IsMoving() const;
	// BW1W120 00477e10 BW1M119 011e1a80
	virtual IMPRESSIVE_TYPE GetImpressiveType();
	// BW1W120 0047b150 BW1M119 011dc2e0
	virtual float GetImpressiveIntensity(IMPRESSIVE_TYPE type);
	// BW1W120 0047b200 BW1M119 011dbf10
	virtual float GetImpressiveValue(Living* living, Reaction* reaction);
	// BW1W120 004e4310 BW1M119 015ed580
	virtual bool32_t IsActivityObjectWhichAngerAppliesTo(Creature* creature);
	// BW1W120 00474020 BW1M119 011ea6b0
	virtual bool32_t IsActivityObjectWhichCompassionAppliesTo(Creature* creature);
	// BW1W120 00474030 BW1M119 011ea710
	virtual bool32_t IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature);
	// BW1W120 004c5e50 BW1M119 01236990
	virtual bool32_t FalseFunction();
	// BW1W120 00473fd0 BW1M119 011ea560
	virtual bool32_t IsSuitableForCreatureActivity();
	// BW1W120 00474050 BW1M119 011ea7c0
	virtual bool32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 004e4280 BW1M119 015ed600
	virtual bool32_t CanBeAttackedByCreature(Creature* param_1);
	// BW1W120 004740b0 BW1M119 011ea9b0
	virtual bool32_t CanBeFrighteningToCreature(Creature* creature);
	// BW1W120 00474070 BW1M119 011ea860
	virtual bool32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 00474060 BW1M119 011ea810
	virtual bool32_t CanBeBefriendedByCreature(Creature* param_1);
	// BW1W120 00474040 BW1M119 011ea770
	virtual bool32_t CanBeSleptNextToByCreature(Creature* param_1);
	// BW1W120 004e4cd0 BW1M119 015eb870
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 004e3f10 BW1M119 015ee280
	virtual bool32_t CanBeKissedByCreature(Creature* param_1);
	// BW1W120 004e3c70 BW1M119 015eea70
	virtual bool32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 00473ff0 BW1M119 011ea5f0
	virtual bool32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 004740a0 BW1M119 011ea930
	virtual bool32_t CanBeFoughtByCreature(Creature* param_1);
	// BW1W120 004792f0 BW1M119 011dfba0
	virtual bool32_t IsDominantCreature(Creature* other);
	// BW1W120 004e4430 BW1M119 015ed2b0
	virtual bool32_t IsCreatureAvailableForJointActivity(Creature* param_1);
	// BW1W120 004e4450 BW1M119 015ed230
	virtual bool32_t IsCreatureNotAvailableForJointActivity(Creature* param_1);
	// BW1W120 004e45e0 BW1M119 015ecd00
	virtual bool32_t IsCreatureWhoSeemsFriendly(Creature* param_1);
	// BW1W120 00473f80 BW1M119 011ea420
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1b30 BW1M119 01247960
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 00477e30 BW1M119 011e19e0
	virtual bool32_t IsObjectTurningTooFastForCameraToFollowSmoothly();
	// BW1W120 0063bad0 BW1M119 013e22b0
	virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
	// BW1W120 00477f50 BW1M119 011e1710
	virtual float GetHeight();
	// BW1W120 004794a0 BW1M119 011df790
	virtual bool32_t IsReadyForNewScriptAction();
	// BW1W120 0047d2c0 BW1M119 011d7890
	virtual void SetControlledByScript(bool32_t controlled);
	// BW1W120 0047d8f0 BW1M119 011d6a20
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 0047d940 BW1M119 011d69c0
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 0047c8b0 BW1M119 011d8b80
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00477ec0 BW1M119 011e1980
	virtual float GetFacingDirection();
	// BW1W120 004f6760 BW1M119 0128db10
	virtual void SetFocus(const LHPoint& focus);
	// BW1W120 00473f50 BW1M119 011ea350
	virtual bool32_t IsReachable();
	// BW1W120 00479e50 BW1M119 011de170
	virtual int MoveMapObject(const MapCoords& coords);
	// BW1W120 0047dd00 BW1M119 011d6190
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 0047de20 BW1M119 011d60d0
	virtual float IncreaseLife(float value);
	// BW1W120 00478c00 BW1M119 011e0610
	virtual void FillInEffectDefenceMultiplier(EffectNumbers& numbers);
	// BW1W120 00478c80 BW1M119 011e01a0
	virtual float ApplyEffect(EffectValues& values, int param_2);
	// BW1W120 00476f70 BW1M119 011e3680
	virtual uint32_t DestroyedByEffect(GPlayer* player, float amount);
	// BW1W120 00479020 BW1M119 011e0120
	virtual void ApplySingleEffect(EFFECT_TYPE type, float amount, GameThing* applied_by, const MapCoords& coords);
	// BW1W120 00517910 BW1M119 010cd640
	virtual void Draw();
	// BW1W120 00472dc0 BW1M119 011e8d00
	virtual uint32_t ProcessState();
	// BW1W120 00477ef0 BW1M119 011e18e0
	virtual float GetProjectileSpeed();
	// BW1W120 00473fe0 BW1M119 011ea5b0
	virtual bool32_t CanBePickedUp();
	// BW1W120 0047cd60 BW1M119 011d8180
	virtual float GetWeight();
	// BW1W120 004f8a10 BW1M119 0128e920
	virtual bool32_t CanBeSuckedIntoVortex(LandscapeVortex* param_1);
	// BW1W120 00476e10 BW1M119 011e3ad0
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* status);
	// BW1W120 00476e70 BW1M119 011e3a30
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* status);
	// BW1W120 00476eb0 BW1M119 011e3930
	virtual bool32_t IsReadyForNetworkUnfriendlyLockedSelect();
	// BW1W120 00476ec0 BW1M119 011e38d0
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* info);
	// BW1W120 00476ed0 BW1M119 011e3830
	virtual bool32_t GetReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 00476f00 BW1M119 011e3760
	virtual bool32_t IsReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 00476f60 BW1M119 011e3710
	virtual bool32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 00476e90 BW1M119 011e3990
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* status);
	// BW1W120 00473f60 BW1M119 011ea390
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 0047a330 BW1M119 011dda40
	virtual uint32_t InterfaceValidToGiveObject(GInterfaceStatus* status, Object* object);
	// BW1W120 0047a320 BW1M119 011ddbd0
	virtual GAME_RETURNS InterfaceGiveObject(GInterfaceStatus* status, Object* object);
	// BW1W120 00476dc0 BW1M119 011e3ce0
	virtual uint32_t ValidToSelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 00476dd0 BW1M119 011e3c50
	virtual uint32_t ValidToApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 004c6460 BW1M119 01238d50
	virtual uint32_t SelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 004c64d0 BW1M119 01238c80
	virtual uint32_t ApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 00476df0 BW1M119 011e3bc0
	virtual uint32_t ValidToFightThisToObject(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 004c5fe0 BW1M119 012393c0
	virtual uint32_t FightThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 0047b1e0 BW1M119 011dc0f0
	virtual bool32_t CanBeDestroyedBySpell(Spell* spell);
	// BW1W120 00479b80 BW1M119 011de770
	virtual PHYSICS_CONSTANTS_TYPE GetPhysicsConstantsType();
	// BW1W120 00479b90 BW1M119 011de590
	virtual void SetUpPhysOb(PhysOb* phys_ob);
	// BW1W120 00479970 BW1M119 011dea80
	virtual void GetBoundingSphere(LHPoint& centre, float& radius);
	// BW1W120 00479d20 BW1M119 011de500
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00479990 BW1M119 011de7b0
	virtual void ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage);
	// BW1W120 00479d10 BW1M119 011de550
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0047d4b0 BW1M119 011d73d0
	virtual bool32_t CreatureMustAvoid(Creature* creature);
	// BW1W120 0047d500 BW1M119 011d7290
	virtual void AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
	                            void(__cdecl* add_function)(int object_id, Point2D position, float radius, int update));
	// BW1W120 00477f00 BW1M119 011e1890
	virtual bool32_t IsScary();
	// BW1W120 00477ee0 BW1M119 011e1920
	virtual float GetFacingPitch();
	// BW1W120 004770d0 BW1M119 011e3390
	virtual void SetHeadPos(MapCoords* pos);
	// BW1W120 00477f70 BW1M119 011e1520
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* origin);
	// BW1W120 00477860 BW1M119 011e2650
	virtual LHPoint GetNearestEdgeOfObject(Object* object);
	// BW1W120 004753c0 BW1M119 011e5ef0
	virtual MapCoords* GetDestPos();
	// BW1W120 004753d0 BW1M119 011e5e70
	virtual void GetFinalDestPos(MapCoords* out);
	// BW1W120 004f0560 BW1M119 0127e040
	virtual bool32_t DecideWhatToDo();
	// BW1W120 0047b1a0 BW1M119 011dc1d0
	virtual uint32_t GetAge();
	// BW1W120 0047b1b0 BW1M119 011dc190
	virtual void SetAge(uint32_t age);
	// BW1W120 00473f00 BW1M119 011ea230
	virtual int CallIntoAnimationFunction(uint8_t state);
	// BW1W120 00473f10 BW1M119 011ea280
	virtual int CallOutofAnimationFunction(uint8_t state);
	// BW1W120 00473f40 BW1M119 011ea310
	virtual bool32_t IsFinalState(uint8_t state);
	// BW1W120 00474000 BW1M119 011ea640
	virtual DANCE_INFO DanceType();
	// BW1W120 00473f90 BW1M119 inlined
	virtual void SetAnim(int anim);
	// BW1W120 00473ef0 BW1M119 011ea1f0
	virtual ANIM_LIST GetAnimId();
	// BW1W120 00473fa0 BW1M119 inlined
	virtual uint32_t CallExitStateFunction(uint8_t state);
	// BW1W120 00473fc0 BW1M119 inlined
	virtual uint32_t CallEntryStateFunction(uint8_t current, uint8_t destination);
	// BW1W120 00473fb0 BW1M119 inlined
	virtual uint32_t CallEntryStateFunction(uint8_t state);
	// BW1W120 0047c670 BW1M119 011d9f60
	virtual bool32_t IsDancing();
	// BW1W120 004f2820 BW1M119 01281880
	virtual bool32_t IsAvailableForReaction(REACTION reaction);
	// BW1W120 004f2780 BW1M119 01281a20
	virtual void UpdateHowImpressed(Reaction* param_1, int param_2);
	// BW1W120 004f2680 BW1M119 01281c80
	virtual void AddReaction(Reaction* reaction, VILLAGER_STATES state);
	// BW1W120 004f26d0 BW1M119 01281b70
	virtual void StartReacting(REACTION type, GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00477f20 BW1M119 011e1850
	virtual uint8_t GetFinalState() const;
	// BW1W120 00477f30 BW1M119 011e17e0
	virtual void ResetStateAfterReacting();
	// BW1W120 004f2b00 BW1M119 01281200
	virtual void SetupFleeFromObject(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f2b40 BW1M119 01281130
	virtual void SetupLookAtNiceSpell(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f2ce0 BW1M119 01280c50
	virtual void SetupReactToCreature(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f2de0 BW1M119 01280a90
	virtual void SetupReactToFood(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f2e50 BW1M119 01280950
	virtual void SetupReactToMagicTree(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f35a0 BW1M119 0127f990
	virtual void SetupReactToFlyingObject(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f2f70 BW1M119 01280470
	virtual void SetupReactToFire(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f2ea0 BW1M119 012807b0
	virtual void SetupReactToBall(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f3090 BW1M119 012803f0
	virtual void SetupReactToMagicShield(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f36b0 BW1M119 0127f680
	virtual void SetupReactToHandPickUp(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f3820 BW1M119 0127f480
	virtual void SetupReactToHandUsingTotem(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f3930 BW1M119 0127f1a0
	virtual void SetupReactToObjectCrushed(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f3a00 BW1M119 0127f040
	virtual void SetupReactToFight(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f3a60 BW1M119 0127ede0
	virtual void SetupReactToTeleport(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f2b80 BW1M119 01281040
	virtual void SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f3b50 BW1M119 0127ec70
	virtual void SetupReactToDeath(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f3b90 BW1M119 0127eb90
	virtual void SetupReactToFainting(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f3bd0 BW1M119 0127eaa0
	virtual void SetupReactToConfused(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 004f2ab0 BW1M119 012812d0
	virtual uint8_t FleeFromSpellPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f2bf0 BW1M119 01280dc0
	virtual uint8_t ReactToCreaturePriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f2d90 BW1M119 01280b60
	virtual uint8_t ReactToFoodPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f2e20 BW1M119 012809d0
	virtual uint8_t ReactToMagicTreePriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f3480 BW1M119 0127fad0
	virtual uint8_t ReactToFlyingObjectPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f2e70 BW1M119 01280890
	virtual uint8_t ReactToBallPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f2ee0 BW1M119 01280680
	virtual uint8_t ReactToFirePriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f3620 BW1M119 0127f820
	virtual uint8_t ReactToHandPickUpPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f37d0 BW1M119 0127f590
	virtual uint8_t ReactToHandUsingTotemPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f3870 BW1M119 0127f2c0
	virtual uint8_t ReactToObjectCrushedPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f3990 BW1M119 0127f0a0
	virtual uint8_t ReactToFightPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f3a10 BW1M119 0127ef60
	virtual uint8_t ReactToTeleportPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f2bc0 BW1M119 01280f60
	virtual uint8_t ReactToHandPuttingStuffInStoragePitPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f3b20 BW1M119 0127ed40
	virtual uint8_t ReactToDeathPriority(Reaction* reaction, Reaction* current_reaction);
	// BW1W120 004f29c0 BW1M119 012815c0
	virtual uint32_t StandardNumGameTurnsToReactFunction(GameThingWithPos* thing, uint32_t reaction, float distance);
	// BW1W120 004f2a20 BW1M119 012814b0
	virtual uint32_t StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos* thing, uint32_t reaction,
	                                                                 float distance);
	// BW1W120 004f2a70 BW1M119 01281430
	virtual uint32_t NumGameTurnsToReactToCreatureFunction(GameThingWithPos* thing, uint32_t reaction, float distance);
	// BW1W120 004f2a90 BW1M119 012813a0
	virtual uint32_t NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos* thing, uint32_t reaction,
	                                                                   float distance);

	// Static methods

#ifdef VERSION_BW1WCI
	// BW1WCI 0047eda0 BW1MCI119 011feaf0
	static Creature* Create(const MapCoords& coords, const CreatureInfo* info, GPlayer* player, bool32_t dumb = false);
	// BW1WCI 0047ed60 BW1MCI119 011fecd0
	static Creature* CreateFemale(const MapCoords& coords, const CreatureInfo* info, GPlayer* player, bool32_t dumb);
#else
	// BW1W120 00474a20 BW1M119 011e7440
	static Creature* Create(const MapCoords& coords, const CreatureInfo* info, GPlayer* player);
#endif
	// BW1W120 00474b50 BW1M119 011e7370
	static Creature* CreateCreature(const MapCoords& coords, const CreatureInfo* info, GPlayer* player);
#ifndef VERSION_BW1WCI
	// BW1W120 00474ba0 BW1M119 011e7120
	static Creature* CreateTyke(Creature* master, const MapCoords& coords, const CreatureInfo* info);
#endif
	// BW1W120 0047cbd0 BW1M119 011d8360
	static void CheckAllCreaturesForCatching(Object* object, PhysicsObject* physics_object);
	// BW1W120 0047c6b0 BW1M119 011d8d80
	static void CopyDifferentCreatureInfoToCreatureInfo();
	// BW1W120 004c48b0 BW1M119 01235350
	static void ComputeActionIndices();
	// BW1W120 00479670 BW1M119 011df1c0
	static int __stdcall CreatureBubbleCallbackStub(int index, unsigned long user, LH3DColor* color, wchar_t** text,
	                                                float* scale, GatheringText** font);
	// BW1W120 inlined BW1M119 01281ec0
	GAlignment* GetAlignment() { return alignment; }

	// Constructors

	// BW1W120 00474690 BW1M119 011e7610
	Creature();
	// BW1W120 00473b90 BW1M119 011e8a20
	Creature(const MapCoords& coords, const CreatureInfo* info, GPlayer* player);

	// Non-virtual methods

	// BW1W120 00474130 BW1M119 011e87b0
	void SetToZero();
#ifndef VERSION_BW1WCI
	// BW1W120 00474c50 BW1M119 011e6de0
	void UpdateTykesFromAction();
#endif
	// BW1W120 004753f0 BW1M119 011e5db0
	void CantFindRoute();
	// BW1W120 004d0650 BW1M119 01249d60
	void UpdateLongRangeVision();
	// BW1W120 00475450 BW1M119 011e59d0
	void FinishActionSuccessfully();
	// BW1W120 00475730 BW1M119 011e57d0
	void FinishActionUnsuccessfully(char* reason, bool32_t stop_moving, bool32_t end_actions);
	// BW1W120 00475880 BW1M119 011e5730
	void FinishActionGeneric(bool32_t stop_moving, bool32_t end_actions);
	// BW1W120 004758d0 BW1M119 011e51b0
	void StopWhatIAmDoing(bool32_t stop_moving, bool32_t end_actions);
	// BW1W120 00475cc0 BW1M119 011e50f0
	void ClearEyeState();
	// BW1W120 00475d30 BW1M119 011e4e50
	void UpdateOnCompletion();
	// BW1W120 00475f60 BW1M119 011e4d50
	void DestroyObjectInHand(Object* object);
	// BW1W120 00475fc0 BW1M119 011e4c20
	LHPoint CalculateErrorDisplacement(const MapCoords& from, const MapCoords& to);
	// BW1W120 00476070 BW1M119 011e3d70
	void DisplayStatistics();
	// BW1W120 0047daa0 BW1M119 011d6590
	CREATURE_ACTION FindSuitableActionToRemoveObstacle(Object* object);
	// BW1W120 0047d9a0 BW1M119 011d6740
	void TrappedInEnclosedSpace(unsigned long num_objects, Object** objects);
	// BW1W120 00477850 BW1M119 011e26b0
	LH3DCreature* GetCreature3D();
	// BW1W120 0047d980 BW1M119 011d68c0
	void UpdateTattooDataFromLocalMachine();
	// BW1W120 00474350 BW1M119 011e8360
	void Initialise(const MapCoords& coords, const CreatureInfo* info, GPlayer* player);
	// BW1W120 004cb3c0 BW1M119 012431a0
	void GiveCreatureInitialLessons();
	// BW1W120 00477210 BW1M119 011e3040
	void Update3DCreatureFromAttributes();
	// BW1W120 0047d2f0 BW1M119 011d7820
	void SetAutoFightStatus(unsigned long status);
	// BW1W120 0047d310 BW1M119 011d77c0
	FIGHT_CONTROL_AI GetAutoFightStatus();
	// BW1W120 004f8a40 BW1M119 0128e7d0
	void SetCreedPower(HAND_GLOW_TYPE type, float scale, float power, float time);
	// BW1W120 004f8ae0 BW1M119 0128e710
	void GetCreedPower(HAND_GLOW_TYPE type, float* scale, float* power);
	// BW1W120 0047cce0 BW1M119 011d82c0
	bool32_t IsConfinedToArea();
	// BW1W120 0047cd20 BW1M119 011d81d0
	bool32_t IsPosOutsideConfinedArea(const MapCoords& pos);
	// BW1W120 0047c8c0 BW1M119 011d8ae0
	float GetCurrentNiceness();
	// BW1W120 0047c930 BW1M119 011d8a80
	float GetCurrentNastiness();
	// BW1W120 0047c940 BW1M119 011d8a20
	float HowUsefulForNiceActivity();
	// BW1W120 0047c950 BW1M119 011d89b0
	float HowUsefulForNastyActivity();
	// BW1W120 0047c960 BW1M119 011d88b0
	bool32_t IsAvailableToCatch(Object* object);
	// BW1W120 0047c9d0 BW1M119 011d8530
	bool32_t HasAChanceOfCatching(GameThingWithPos* object, PhysicsObject* physics_object);
	// BW1W120 0047cd70 BW1M119 011d8120
	virtual bool32_t IsDead();
	// BW1W120 0047ce80 BW1M119 011d7ef0
	void RespondToBeingStuck();
	// BW1W120 0047cf00 BW1M119 011d7d70
	void RespondToPhysicalProblems();
	// BW1W120 0047cfb0 BW1M119 011d78e0
	void RespondToEmergencies();
	// BW1W120 0047d590 BW1M119 011d7120
	float GetImpressiveSize();
	// BW1W120 0047d600 BW1M119 011d7080
	float GetDamageDonebyFlyingObject(float damage);
	// BW1W120 0047d950 BW1M119 011d6940
	void ReleaseTattooData();
	// BW1W120 0047db50 BW1M119 011d64d0
	float GetBigSize();
	// BW1W120 0047dbd0 BW1M119 011d6410
	float GetSmallSize();
	// BW1W120 inlined BW1M119 01509510
	bool GetCanGoThroughVortex() { return CanGoThroughVortex; }
	// BW1W120 0047dc50 BW1M119 011d6320
	void AutoScale();
	// BW1W120 0047deb0 BW1M119 011d5f30
	void BalanceKnowlegeForComputerPlayer();
	// BW1W120 0047df40 BW1M119 011d5ef0
	virtual bool32_t CanBeHealedByHealSpell();
	// BW1W120 0047df50 BW1M119 011d5d70
	void CheckThatMindAndBodyLoadedCorrectly();
	// BW1W120 0047e000 BW1M119 011d5ca0
	static void DeleteMyCreatureFiles();
	// BW1W120 004e3d30 BW1M119 015ee940
	float MaximumPickUpWeight();
	// BW1W120 004c3990 BW1M119 01235120
	float GetActionPriority(CREATURE_ACTION action, CreaturePlan& plan);
	// BW1W120 004f0d30 BW1M119 0127cff0
	void FillInActionPriorityAndNoveltyModification(CREATURE_ACTION action, CreaturePlan& plan, float* priority,
	                                                float* novelty_modification);
	// BW1W120 004c39f0 BW1M119 01235090
	void UpdateActionPriority();
	// BW1W120 004c3aa0 BW1M119 01235040
	void ConsiderSamplingWeighting(CREATURE_ACTION action, float weight);
	// BW1W120 004c3ab0 BW1M119 01234ff0
	float ConstantActionSource(CreaturePlan& plan);
	// BW1W120 004c3ac0 BW1M119 01234f00
	float HowMuchFasterIsObjectThanMe(CreaturePlan& plan);
	// BW1W120 004c3b30 BW1M119 01234e50
	float HowInterestingIsObject(CreaturePlan& plan);
	// BW1W120 004c3b90 BW1M119 01234df0
	float HowEdibleIsObjectAfterCrush(CreaturePlan& plan);
	// BW1W120 004c3ba0 BW1M119 01234d40
	float HowNearIsHome(CreaturePlan& plan);
	// BW1W120 004c3be0 BW1M119 01234cf0
	float HowDangerousIsObject(CreaturePlan& plan);
	// BW1W120 004c3bf0 BW1M119 01234bf0
	float HowMuchStrongerIsOpponentThanMe(CreaturePlan& plan);
	// BW1W120 004c3c70 BW1M119 01234ad0
	float HowMuchMoreLifeHasOpponentThanMe(CreaturePlan& plan);
	// BW1W120 004c3d00 BW1M119 012349b0
	float HowManyDangerousSpellsOpponentKnows(CreaturePlan& plan);
	// BW1W120 004c3d80 BW1M119 012348e0
	float HowNearIsPlayer(CreaturePlan& plan);
	// BW1W120 004c3de0 BW1M119 012347f0
	float HowNearIsSea(CreaturePlan& plan);
	// BW1W120 004c3e70 BW1M119 01234790
	float HowMuchEnergy(CreaturePlan& plan);
	// BW1W120 004c3e90 BW1M119 012346f0
	float HowDamagedIsObject(CreaturePlan& plan);
	// BW1W120 004c3ec0 BW1M119 012345f0
	float HowImpressedIsObject(CreaturePlan& plan);
	// BW1W120 004c3f30 BW1M119 012345a0
	float HowMuchDangerNearMe(CreaturePlan& plan);
	// BW1W120 004c3f40 BW1M119 01234540
	float HowAbusiveIsPlayer(CreaturePlan& plan);
	// BW1W120 004c3f60 BW1M119 01234440
	float HowNeglectfulIsPlayer(CreaturePlan& plan);
	// BW1W120 004c3ff0 BW1M119 012343e0
	float HowMuchDangerNearObject(CreaturePlan& plan);
	// BW1W120 004c4000 BW1M119 01234290
	float HowNearIsCamera(CreaturePlan& plan);
	// BW1W120 004c40a0 BW1M119 012341a0
	float HowMuchFriendNeedsToKnowFireball(CreaturePlan& plan);
	// BW1W120 004c4120 BW1M119 012340b0
	float HowMuchFriendNeedsToKnowLightning(CreaturePlan& plan);
	// BW1W120 004c41a0 BW1M119 01233fc0
	float HowMuchFriendNeedsToKnowMagicFood(CreaturePlan& plan);
	// BW1W120 004c4220 BW1M119 01233ed0
	float HowMuchFriendNeedsToKnowMagicWood(CreaturePlan& plan);
	// BW1W120 004c42a0 BW1M119 01233e00
	float HowHungryIsFriend(CreaturePlan& plan);
	// BW1W120 004c4310 BW1M119 01233da0
	float HowInterestingIsPlayer(CreaturePlan& plan);
	// BW1W120 004c43a0 BW1M119 01235aa0
	bool32_t ForceActivityAndDecideAction(CREATURE_DESIRES desire, CreatureBelief* activity_object);
	// BW1W120 004f0370 BW1M119 0127e390
	void ConsiderDecision();
	// BW1W120 004f0500 BW1M119 0127e250
	bool32_t ConsiderOverridingCurrentPlan();
	// BW1W120 004f05e0 BW1M119 0127dfd0
	void FindBestPlanForGoal();
	// BW1W120 004f0600 BW1M119 0127df60
	void FindBestPlanForCurrentGoal();
	// BW1W120 004f0620 BW1M119 0127dc40
	void FindBestPlanForParticularGoal(CREATURE_DESIRES desire);
	// BW1W120 004f08d0 BW1M119 0127d930
	void FindBestActivityObjectForPlan(CreaturePlan& plan);
	// BW1W120 004f0a70 BW1M119 0127d450
	void FindBestActionForPlan(CreaturePlan& plan);
	// BW1W120 004f0c10 BW1M119 0127d3b0
	bool32_t FindBestActionFromActivityObject(CreaturePlan& plan, CreatureActionsTried* actions_tried);
	// BW1W120 004f0c30 BW1M119 0127d330
	bool32_t FindBestActionFromObjectToActOn(CreaturePlan& plan);
	// BW1W120 004f0c50 BW1M119 0127d240
	bool32_t FindBestObjectToActOnFromActivityObjectAndAction(CreaturePlan& plan);
	// BW1W120 004f0ca0 BW1M119 0127d0d0
	float GetActionPriorityModificationFromWhenLastDone(CREATURE_ACTION action);
	// BW1W120 004f0d60 BW1M119 0127ccb0
	bool32_t FindBestActionFromGoal(CreaturePlan& plan, CreatureActionsTried* actions_tried);
	// BW1W120 004c4580 BW1M119 01235750
	void CommandActivityAndAction(CREATURE_DESIRES desire, CreatureBelief* activity_object, CREATURE_ACTION action,
	                              CreatureBelief* object_to_act_on, CreatureBelief* object_to_use);
	// BW1W120 004f1410 BW1M119 0127c1a0
	void FindNextPlannableGoal();
	// BW1W120 004f14e0 BW1M119 0127bfd0
	void ConsiderGivingHelpOnCurrentAction();
	// BW1W120 004f1530 BW1M119 0127bf50
	void ConstructCurrentPlanFromBestPlan(bool32_t forced_by_player);
	// BW1W120 004f1560 BW1M119 0127be20
	void ConstructCurrentPlanFromPlan(CreaturePlan& plan, bool32_t forced_by_player);
	// BW1W120 004f1600 BW1M119 0127bcc0
	void CopyPlanToPreviousContext(bool32_t forced_by_player);
	// BW1W120 004f16c0 BW1M119 0127bae0
	void SetBeliefsUsedInPlan(CreaturePlan& plan, bool32_t used);
	// BW1W120 004f1d50 BW1M119 0127aea0
	void CalculateOverallPriority(CreaturePlan& plan);
	// BW1W120 00490950 BW1M119 011ec1c0
	void SetInCreatureHand(Creature* creature);
	// BW1W120 00490910 BW1M119 011ec210
	bool32_t CanCurrentlyBePickedUp();
	// BW1W120 00478890 BW1M119 011e0720
	void BeCutAndScarredByEffect(EffectValues& values);
	// BW1W120 00479040 BW1M119 011e0070
	void ReceivedFightImpact(long impact, float strength, Creature* attacker);
	// BW1W120 00479090 BW1M119 011dff00
	void SetupCreatureForDanceEditing(const MapCoords& pos);
	// BW1W120 004791e0 BW1M119 011dfdb0
	void ReleaseDependents();
	// BW1W120 004792a0 BW1M119 011dfd50
	bool32_t IsActionInFinalStage();
	// BW1W120 00479340 BW1M119 011dfb50
	void ConsiderSendingCandidateSnapshot();
	// BW1W120 00479350 BW1M119 011df9e0
	bool32_t IsHandNear();
	// BW1W120 004793e0 BW1M119 011df930
	bool32_t IsAreaNew();
	// BW1W120 004794d0 BW1M119 011df6c0
	void UpdateStatsWhenObjectKilled(Object* object);
	// BW1W120 00479500 BW1M119 011df620
	void UpdateStatsWhenObjectEaten(Object* object);
	// BW1W120 004795d0 BW1M119 011df260
	bool32_t CreatureBubbleCallback(int index, LH3DColor* color, wchar_t** text, float* scale, GatheringText** font);
	// BW1W120 004798c0 BW1M119 011decc0
	void CheatLearnEverything();
	// BW1W120 004798f0 BW1M119 011dec20
	void CheatLearnNormalThings();
	// BW1W120 00479920 BW1M119 011deb60
	void CheatNextDevelopmentPhase();
	// BW1W120 00479960 BW1M119 011deaf0
	float GetHomeSize();
	// BW1W120 00479d30 BW1M119 011de440
	bool32_t IsPosInsideCreatureHome(const MapCoords& pos);
	// BW1W120 0047a1d0 BW1M119 011ddc30
	void TakeFromPlayersHand(GInterfaceStatus* status);
	// BW1W120 0047a3b0 BW1M119 011dd810
	void GetGesturePoint(GESTURE_TYPE type, float frac, LHPoint* point);
	// BW1W120 004f81f0 BW1M119 0128f7e0
	void DestroySpell();
	// BW1W120 004f4890 BW1M119 01285650
	void LastCreatureTargetPosClear();
	// BW1W120 004f7970 BW1M119 0128fd70
	bool32_t CastSpellOnObject(MAGIC_TYPE type, Object* object, float radius, int flags);
	// BW1W120 004f7e20 BW1M119 0128f980
	bool32_t CastSpellAtPos(MAGIC_TYPE type, const MapCoords& coords, float radius, int flags);
	// BW1W120 00476fa0 BW1M119 011e3550
	void Faint();
	// BW1W120 00477060 BW1M119 011e3500
	void ForceToFallOver();
	// BW1W120 00477070 BW1M119 011e3430
	void LookConfused(CreatureBelief* belief, long argument);
	// BW1W120 00477130 BW1M119 011e32b0
	void UpdateLocation();
	// BW1W120 004774d0 BW1M119 011e2d80
	bool32_t IsFacingObject(GameThingWithPos* object);
	// BW1W120 004774f0 BW1M119 011e2d10
	bool32_t IsHeadingTowardsPos(const MapCoords& pos, unsigned long degrees);
	// BW1W120 00477550 BW1M119 011e2b60
	bool32_t IsDirectionClose(const MapCoords& pos, unsigned long degrees, float direction);
	// BW1W120 004777a0 BW1M119 011e27c0
	bool32_t IsHandOverCreature();
	// BW1W120 00477800 BW1M119 011e26f0
	bool32_t CanCreatureSeePlayerHand();
	// BW1W120 00477880 BW1M119 011e2410
	LHPoint GetFurthestEdgeOfObject(Object* object);
	// BW1W120 00477a00 BW1M119 011e2320
	void UpdateAttitudeToPlayer();
	// BW1W120 00477a90 BW1M119 011e22b0
	float CalculateEnergyUnitsFromFoodValue(unsigned long food_value);
	// BW1W120 00477b20 BW1M119 011e2040
	void GoIntoStateOfFinishingAction();
	// BW1W120 00477c50 BW1M119 011e1e60
	long GetAnimOfBestContextToLearnFrom(CREATURE_DESIRES* desire);
	// BW1W120 00477d00 BW1M119 011e1d60
	bool32_t PerformFinishingAction();
	// BW1W120 00477d70 BW1M119 011e1d10
	bool32_t PerformAnimShowingLastDesire();
	// BW1W120 00477d80 BW1M119 011e1c60
	void UpdateDesiresAfterObservingPlayerAction(CREATURE_DESIRES desire);
	// BW1W120 00477da0 BW1M119 011e1b90
	void UpdateDesiresAfterObservingAction(CREATURE_DESIRES desire);
	// BW1W120 00477e00 BW1M119 011e1af0
	CREATURE_ACTION CalculatePerceivedCurrentAction() const;
	// BW1W120 00478080 BW1M119 011e1460
	void UpdateDesiresFromEffect(EFFECT_TYPE type);
	// BW1W120 004780d0 BW1M119 011e1390
	void AddToCheckSum();
	// BW1W120 00478120 BW1M119 011e1130
	void AddToMentalCheckSum();
	// BW1W120 00478310 BW1M119 011e1090
	void AddTo3DCheckSum();
	// BW1W120 00478350 BW1M119 011e0ad0
	void OutputCreatureInformation();
	// BW1W120 00479480 BW1M119 011df800
	bool32_t HasFinishedBuildingHome();
	// BW1W120 inlined BW1M119 inlined
	float GetSecondsInDevelopmentPhase();
#ifndef VERSION_BW1W100
	// BW1W120 004c58d0 BW1M119 01237a50
	void CheckForNewDevelopmentPhase();
	// BW1W120 004c58e0 BW1M119 012378c0
	bool32_t IsAvailableToMoveToNextDevelopmentPhase();
	// BW1W120 004c59a0 BW1M119 012375d0
	bool32_t CanBeMovedToNextDevelopmentPhase(DEVELOPMENT_PHASE phase);
#endif // VERSION_BW1W100
	// BW1W120 0065bce0 BW1M119 014b5ac0
	void SetupComputerControlledCreature();
	// BW1W120 004c59c0 BW1M119 01237430
	void MoveToDevelopmentPhase(DEVELOPMENT_PHASE phase, int unused);
	// BW1W120 004ca580 BW1M119 0123db20
	void ClearHelpStack(CREATURE_HELP_TYPE type);
	// BW1W120 00477520 BW1M119 011e2c70
	bool32_t IsLookingTowardsPos(const MapCoords& pos, unsigned long degrees);
	// BW1W120 004c5ab0 BW1M119 01237380
	bool32_t HasFinishedDevelopmentStageInitial();
	// BW1W120 004c5af0 BW1M119 01237270
	bool32_t HasFinishedDevelopmentStagePunishment();
	// BW1W120 004c5b50 BW1M119 01237150
	bool32_t HasFinishedDevelopmentStageLeashPullAndPickup();
	// BW1W120 004c5bb0 BW1M119 01237030
	bool32_t HasFinishedDevelopmentStageLeashAttachToHouse();
	// BW1W120 004c5c10 BW1M119 01236fd0
	bool32_t HasFinishedDevelopmentStageLeashGoodAndEvil();
	// BW1W120 004c5c20 BW1M119 01236f10
	bool32_t HasFinishedDevelopmentStageLearnToEat();
	// BW1W120 004c5c70 BW1M119 01236e50
	bool32_t HasFinishedDevelopmentStageGuideTeachesSpells();
	// BW1W120 004c5cb0 BW1M119 01236d90
	bool32_t HasFinishedDevelopmentStageGuideExplainsHistory();
	// BW1W120 004c5cf0 BW1M119 01236ce0
	bool32_t HasFinishedDevelopmentStageFriendsWithGuide();
	// BW1W120 004c5d30 BW1M119 01236c30
	bool32_t HasFinishedDevelopmentStageMeetGuide();
	// BW1W120 004c5d70 BW1M119 01236b70
	bool32_t HasFinishedDevelopmentStageLearnToImpressTown();
	// BW1W120 004c5db0 BW1M119 01236a80
	bool32_t HasFinishedDevelopmentStageLearnToFight();
	// BW1W120 004c5e10 BW1M119 012369d0
	bool32_t HasFinishedDevelopmentStageLearnToHelpTown();
#ifndef VERSION_BW1W100
	// BW1W120 004c5e60 BW1M119 012368c0
	void GiveMaximumSkillAtOneSpell();
	// BW1W120 004c5ee0 BW1M119 012367f0
	void GiveMaximumSkillAtOnePowerupSpell();
#endif // VERSION_BW1W100
	// BW1W120 004cf060 BW1M119 01243630
	GInterfaceStatus* GetInterfaceStatusLeashOn();
	// BW1W120 004ce320 BW1M119 012446b0
	void UpdateLeash();
	// BW1W120 004ce6e0 BW1M119 012445c0
	void ApplyLeashForce(float force);
	// BW1W120 004ce750 BW1M119 01244300
	void LocalUpdateCreatureLeash(float force);
	// BW1W120 004ce8e0 BW1M119 01243f60
	void LeashMakesCreatureMoveToHand(Object* object);
	// BW1W120 004cec00 BW1M119 01243db0
	void LeashMakesCreatureStop();
	// BW1W120 004cecf0 BW1M119 01243bb0
	void LeashForceCreatureToActOnHandObject(Object* object);
	// BW1W120 004cee70 BW1M119 01243b30
	void LeashForceCreatureToActOnAttachedObject(Object* object);
	// BW1W120 004cefc0 BW1M119 01243830
	void UpdateMoodsFromLeash(LEASH_TYPE type);
	// BW1W120 004cf020 BW1M119 012437d0
	bool32_t IsMatureEnoughForLeash();
	// BW1W120 004cf030 BW1M119 01243770
	bool32_t IsMatureEnoughForAdvancedLeash();
	// BW1W120 004cf040 BW1M119 012436f0
	int GetNumLeashesKnowsAbout();
	// BW1W120 004cf0a0 BW1M119 01243580
	GInterfaceStatus* IsLeashWorking();
	// BW1W120 004cf0e0 BW1M119 012434d0
	GInterfaceStatus* IsLeashAttachedToObject();
	// BW1W120 004cf120 BW1M119 01243410
	GameThingWithPos* GetObjectWhichLeashIsAttachedTo();
#ifdef VERSION_BW1WCI
	// BW1WCI 004d6940 BW1MCI119 01254520
	void ForceGoToMapCoords(const MapCoords& coords, float speed);
#else
	// BW1W120 004c7220 BW1M119 01237e00
	void ForceGoToMapCoords(const MapCoords& coords);
#endif // VERSION_BW1WCI
	// BW1W120 004c5ff0 BW1M119 01238e20
	void ForceActOnObject(Object* object);
	// BW1W120 004f0980 BW1M119 0127d7a0
	CREATURE_DESIRES FindBestDesireForActivityObject(CreatureBelief* belief);
	// BW1W120 0050a760 BW1M119 012a4d90
	void GiveFoodToWorshippers(CreatureBelief* belief, long argument);
	// BW1W120 0050a380 BW1M119 012a4ea0
	void ActOnObjectInHand(CreatureBelief* belief, long argument);
	// BW1W120 0050a7e0 BW1M119 012a4c00
	void GoToLastSpecifiedPos(CreatureBelief* belief, long argument);
	// BW1W120 0050a1f0 BW1M119 012a5390
	void RepeatLastAction(CreatureBelief* belief, long argument);
	// BW1W120 00509530 BW1M119 012a5a40
	void BecomeHigh(CreatureBelief* belief, long argument);
	// BW1W120 00509480 BW1M119 012a63f0
	void DanceToMusic(CreatureBelief* belief, long argument);
	// BW1W120 00509130 BW1M119 012a6530
	void BeSad(CreatureBelief* belief, long argument);
	// BW1W120 00509070 BW1M119 012a68d0
	void BeHappy(CreatureBelief* belief, long argument);
	// BW1W120 00509050 BW1M119 012a69f0
	void LookCurious(CreatureBelief* belief, long argument);
	// BW1W120 00509010 BW1M119 012a6a70
	void BeFrightened(CreatureBelief* belief, long argument);
	// BW1W120 004f82f0 BW1M119 0128f550
	bool32_t HasEnoughEnergyToCastSpell(MAGIC_TYPE magic_type);
	// BW1W120 004f8940 BW1M119 0128eaa0
	SPELL_SEED_TYPE ChooseSpellSeedTypeToSteal(GameThingWithPos* object);
	// BW1W120 004f89d0 BW1M119 0128e9d0
	Town* FindTownBelongingToMeWhichNeedsSpell(SPELL_SEED_TYPE type);
	// BW1W120 00477370 BW1M119 011e2f00
	bool32_t CanSeeAnObject(Object* object);
	// BW1W120 00479d80 BW1M119 011de2f0
	CreatureBelief* GetNearbyObject(bool32_t (GameThingWithPos::*is_suitable)(Creature*), CreatureBelief* exclude1,
	                                CreatureBelief* exclude2);
	// BW1W120 0047d860 BW1M119 011d6b10
	bool32_t FindNearbyWaterPoint(MapCoords* coords, float radius);
	// BW1W120 0047a500 BW1M119 011dd440
	void GetRunAwayPoint(const LHPoint& from, LHPoint* point);
	// BW1W120 004c9fe0 BW1M119 0123ea40
	void SendCandidateHelpScript(CREATURE_HELP_TYPE type, unsigned long help, GameThingWithPos* thing,
	                             const MapCoords* pos, int param_5);
	// BW1W120 0049a7a0
	bool32_t IsHomeUnderConstruction(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 0049a7c0
	bool32_t HasNoHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 0047c650 BW1M119 011d9fd0
	void SetAnimationTimeModify(bool value);
	// BW1W120 0047c690 BW1M119 011d9ef0
	bool32_t IsOnHomeTeam();
	// BW1W120 0047d580 BW1M119 011d71e0
	float GetSize();
	// BW1W120 0047d640 BW1M119 011d6ea0
	GInterfaceStatus* GetNearestCameraInterfaceStatus();
	// BW1W120 0047d740 BW1M119 011d6ce0
	GInterfaceStatus* GetNearestHandInterfaceStatus();
	// BW1W120 004775d0 BW1M119 011e28a0
	GInterfaceStatus* GetInterfaceStatusLookingAtCreature();
	// BW1W120 00479450 BW1M119 011df860
	bool32_t IsCreatureFarFromHome();
	// BW1W120 0047afb0 BW1M119 011dc580
	bool32_t HasPerformedActionInLastNSeconds(CREATURE_ACTION action, float seconds);
	// BW1W120 0047aee0 BW1M119 011dc640
	float GetScreenWidthInWorldMetres();
	// BW1W120 004dfbe0 BW1M119 01264bb0
	bool32_t FindClearArea(MapCoords* coords, float radius, bool32_t avoid_living);
	// BW1W120 004c4450 BW1M119 01235990
	void ForceActivityAndForceAction(CREATURE_DESIRES desire, CreatureBelief* activity_object, CREATURE_ACTION action,
	                                 CreatureBelief* object_to_act_on, CreatureBelief* object_to_use,
	                                 bool32_t forced_by_player, bool32_t stop_current_action);
	// BW1W120 004c44b0 BW1M119 01235820
	void ForceActivityAndForceAction(CreaturePlan& plan, bool32_t forced_by_player, bool32_t stop_current_action);
	// BW1W120 004c8230 BW1M119 01239d00
	float ComputeCurrentPlayerInterestingness();
	// BW1W120 004c81f0 BW1M119 01239f60
	void ProcessPlayerInterestingness();
	// BW1W120 004c84b0 BW1M119 0123b450
	void SetFaceForMoodFrightened();
	// BW1W120 004c8500 BW1M119 0123b3a0
	void SetFaceForMoodInPain();
	// BW1W120 004c8550 BW1M119 0123b330
	void SetFaceForMoodSad();
	// BW1W120 004c8570 BW1M119 0123b280
	void SetFaceForMoodIrritable();
	// BW1W120 004c85c0 BW1M119 0123b210
	void SetFaceForMoodLonely();
	// BW1W120 004c85e0 BW1M119 0123b1a0
	void SetFaceForMoodExhausted();
	// BW1W120 004c8600 BW1M119 0123b130
	void SetFaceForMoodHappy();
	// BW1W120 004c8620 BW1M119 0123b080
	void SetFaceForActionReflectAttitudeToPlayer();
	// BW1W120 004c8660 BW1M119 0123af90
	void SetFaceForActionCuriosity();
	// BW1W120 004c86d0 BW1M119 0123aee0
	void SetFaceForActionAnger();
	// BW1W120 004c8720 BW1M119 0123ae80
	void SetFaceForActionFear();
	// BW1W120 004c8730 BW1M119 0123add0
	void SetFaceForActionCompassion();
	// BW1W120 004c8780 BW1M119 0123ad20
	void SetFaceForActionPlayfulness();
	// BW1W120 004c87d0 BW1M119 0123acb0
	void SetFaceForActionSmile();
	// BW1W120 004c87f0 BW1M119 0123ac40
	void SetFaceForActionGrimace();
	// BW1W120 004c8810 BW1M119 0123abd0
	void SetFaceForActionGrowl();
	// BW1W120 004c8830 BW1M119 0123ab60
	void SetFaceForActionAmazed();
	// BW1W120 004c8850 BW1M119 0123aaf0
	void SetFaceForActionPuzzled();
	// BW1W120 004c8870 BW1M119 0123aa70
	void SetFaceForActionIdle();
	// BW1W120 004d0bd0 BW1M119 012494b0
	int LookWhileGoingTowardsObject(MapCoords* destination);
	// BW1W120 004d0c80 BW1M119 012493a0
	int LookWhileGoingTowardsPoint(MapCoords* destination);
	// BW1W120 004d10a0 BW1M119 01248dd0
	int LookDown(MapCoords* destination);
	// BW1W120 004d10d0 BW1M119 01248d50
	int LookStoned(MapCoords* destination);
	// BW1W120 004d1100 BW1M119 01248cb0
	int LookJustWokenUp(MapCoords* destination);
	// BW1W120 004d1140 BW1M119 01248be0
	int LookAtPartner(MapCoords* destination);
	// BW1W120 004d11a0 BW1M119 01248b00
	int LookAtDependents(MapCoords* destination);
	// BW1W120 004d1220 BW1M119 01248a60
	int LookAtObjectFlutteringEyelids(MapCoords* destination);
	// BW1W120 004d1250 BW1M119 012489d0
	int LookFrightened(MapCoords* destination);
	// BW1W120 004d1280 BW1M119 01248830
	int LookWhileRunningAwayFromObject(MapCoords* destination);
	// BW1W120 004d1350 BW1M119 012486a0
	int LookWhileRunningAwayFromHand(MapCoords* destination);
	// BW1W120 004d1420 BW1M119 01248620
	int LookAtPlayer(MapCoords* destination);
	// BW1W120 004d1460 BW1M119 01248530
	int LookAtPosition(MapCoords* destination);
	// BW1W120 004d1510 BW1M119 012482f0
	int LookAtObjectArgumentTop(MapCoords* destination);
	// BW1W120 004d1640 BW1M119 012481f0
	int LookAtObjectArgumentBottom(MapCoords* destination);
	// BW1W120 004d16d0 BW1M119 01248050
	int LookAtObjectArgument(MapCoords* destination);
	// BW1W120 004d17e0 BW1M119 01247f10
	int LookAtFlyingObject(MapCoords* destination);
	// BW1W120 004d1870 BW1M119 01247e70
	int LookAround(MapCoords* destination);
	// BW1W120 004d18c0 BW1M119 01247d40
	int LookAtHand(MapCoords* destination);
	// BW1W120 004d1980 BW1M119 01247c20
	int LookAtFeet(MapCoords* destination);
	// BW1W120 004d1a30 BW1M119 01247af0
	int LookAtCamera(MapCoords* destination);
	// BW1W120 004d2940 BW1M119 015eae60
	bool32_t CanCreatureCastSpell(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2a20 BW1M119 015eacd0
	bool32_t CanCreatureCastImpressiveSpell(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2af0 BW1M119 015eaae0
	bool32_t CanCreatureCastPowerUpSpell(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2b20 BW1M119 015ea8e0
	bool32_t CanCreatureCastTeleport(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2b80 BW1M119 015ea860
	bool32_t IsMatureEnoughToLeaveHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2ba0 BW1M119 015ea7c0
	bool32_t IsTimeRipeForEatingFromFields(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2bc0 BW1M119 015ea730
	bool32_t IsCreatureFarAwayFromCamera(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2bd0 BW1M119 015ea6a0
	bool32_t DoesCreatureHaveACitadel(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2bf0 BW1M119 015ea630
	bool32_t HasCreatureBeenAskedToPlayGame(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2c00 BW1M119 015ea590
	bool32_t IsActivityObjectATown(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2c30 BW1M119 015ea4a0
	bool32_t IsActivityObjectATownUnderAttack(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2c80 BW1M119 015ea400
	bool32_t IsCreatureHealthyEnoughToFight(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2cb0 BW1M119 015ea300
	bool32_t IsPlayerNearbyAndFrightening(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2d20 BW1M119 015ea240
	bool32_t IsHandMoving(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2d60 BW1M119 015ea160
	bool32_t NotTooFarFromHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2db0 BW1M119 015ea0c0
	bool32_t LastDanceWasntToDanceToImpress(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2de0 BW1M119 015ea020
	bool32_t LastDanceWasntDanceCreature(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2e10 BW1M119 015e9f80
	bool32_t LastDanceWasntDanceStory(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2e40 BW1M119 015e9e80
	bool32_t LeashedOrTooFarFromHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2ea0 BW1M119 015e9d70
	bool32_t FriendIsDoingSomethingWorthFollowing(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2f20 BW1M119 015e9cb0
	bool32_t IsCreatureAwayFromCentreOfScreen(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2f50 BW1M119 015e9ba0
	bool32_t IsCreatureAwayFromHand(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2ff0 BW1M119 015e9b20
	bool32_t IsCreatureNotNearHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3000 BW1M119 015e9aa0
	bool32_t IsCreatureNearHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3010 BW1M119 015e9a20
	bool32_t HasCreatureBuiltHisHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3020 BW1M119 015e9990
	bool32_t CreatureHasntRestedRecently(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3040 BW1M119 015e9900
	bool32_t CreatureHasntWavedRecently(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3060 BW1M119 015e9860
	bool32_t CreatureHasntScratchedRecently(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3080 BW1M119 015e97e0
	bool32_t IsSunVisible(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d30a0 BW1M119 015e9770
	bool32_t IsMoonVisible(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d30b0 BW1M119 015e9700
	bool32_t IsSlightlyHungry(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d30e0 BW1M119 015e9690
	bool32_t IsSlightlyThirsty(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3110 BW1M119 015e9610
	bool32_t IsSlightlyInNeedOfAPoo(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3140 BW1M119 015e9580
	bool32_t IsSlightlyContent(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3160 BW1M119 015e9510
	bool32_t IsSlightlySleepy(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3190 BW1M119 015e9470
	bool32_t IsNearWater(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d31d0 BW1M119 015e93f0
	bool32_t IsCrossWithPlayer(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3200 BW1M119 015e9330
	bool32_t IsHoldingOneOffSpellAggressive(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3230 BW1M119 015e9270
	bool32_t IsHoldingOneOffSpellCompassionate(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3260 BW1M119 015e91b0
	bool32_t IsHoldingOneOffSpellPlayful(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3290 BW1M119 015e90e0
	bool32_t IsHoldingOneOffSpellToRestoreHealth(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d32c0 BW1M119 015e8ef0
	bool32_t ShouldCreatureCastWaterOnHimself(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d32f0 BW1M119 015e8df0
	bool32_t ShouldNearestTownBeAttacked(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3360 BW1M119 015e8cf0
	bool32_t ShouldNearestTownBeHelped(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d33d0 BW1M119 015e8c50
	bool32_t HasntDoneImpressiveAnimRecently(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3410 BW1M119 015e8bc0
	bool32_t IsThereFishFarmNearby(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004e4490 BW1M119 015ed130
	bool32_t NothingScareyNearHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004e44a0 BW1M119 015ed0b0
	bool32_t NothingScareyNearMe(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004e4680 BW1M119 015ecc10
	bool32_t CanCastAmusingSpellOnCreature(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004f0810 BW1M119 0127da80
	void DecideOnNewPlan(CreaturePlan& param_1);
	// BW1W120 004e9f40 BW1M119 01273670
	void ProcessMimicState();
	// BW1W120 004ea0a0 BW1M119 01273550
	CREATURE_ACTION GetMimickingAction(DETECTED_PLAYER_ACTION action, unsigned long index, MAGIC_TYPE magic_type);
	// BW1W120 004ea0e0 BW1M119 01273430
	void MimicForceNoticingAction();
	// BW1W120 004ea130 BW1M119 01272f60
	void MimicForceCopyingAction();
	// BW1W120 004ea540 BW1M119 01272dc0
	void MimicForceDesire();
	// BW1W120 004ea670 BW1M119 012729e0
	void MimicPlayer(DETECTED_PLAYER_ACTION action, GameThingWithPos* object, MAGIC_TYPE magic_type);
	// BW1W120 004f0f70 BW1M119 0127cb00
	bool32_t FindBestObjectOfSameMimicTypeFromAction(CreaturePlan& plan);
	// BW1W120 004f10a0 BW1M119 0127c940
	bool32_t FindBestObjectToActOnFromAction(CreaturePlan& plan, CREATURE_BELIEF_TYPE belief_type);
	// BW1W120 004f11b0 BW1M119 0127c830
	bool32_t FindBestObjectToUseIfNecessary(CreaturePlan& plan);
	// BW1W120 004f1b60 BW1M119 0127b370
	bool32_t CanCreatureCurrentlyPerformAction(CREATURE_ACTION action, CreaturePlan& plan);
	// BW1W120 004f6a90 BW1M119 0128d560
	void PrepareCreatureForScriptedAction(int stop_moving);
	// BW1W120 004f8b80 BW1M119 0128e470
	void ProcessSpells();
	// BW1W120 004f48c0 BW1M119 01285280
	void ProcessSpellsReceived();
	// BW1W120 004efce0 BW1M119 01279890
	void ShrinkDownIfNearCitadel();
	// BW1W120 004d0700 BW1M119 01249c50
	void Look();
	// BW1W120 004d03b0 BW1M119 01249e90
	void LookAtMostInterestingObject();
	// BW1W120 004ca670 BW1M119 0123d7e0
	void ProcessHelpStack();
	// BW1W120 004c9c90 BW1M119 0123fac0
	void UpdateHelp();
	// BW1W120 004feda0 BW1M119 01290c00
	void ProcessSubAction();
	// BW1W120 004ff9c0 BW1M119 012a4820
	int SubStateInitiatePickUp();
	// BW1W120 004ff9f0 BW1M119 012a42a0
	uint32_t SubStateInitiatePickUpParameter(CreatureBelief* belief);
	// BW1W120 004ffda0 BW1M119 012a4230
	int SubStatePerformPickUp();
	// BW1W120 004ffdd0 BW1M119 012a40a0
	uint32_t SubStatePerformPickUpParameter(CreatureBelief* belief);
	// BW1W120 004ffed0 BW1M119 012a3ee0
	int SubStateInitiateCreatePickUpThenRemove();
	// BW1W120 00500020 BW1M119 012a3c70
	int SubStatePerformCreatePickUpThenRemove();
	// BW1W120 005001f0 BW1M119 012a3ba0
	int SubStateInitiateDiscard();
	// BW1W120 00500260 BW1M119 012a3b10
	int SubStatePerformDiscard();
	// BW1W120 00500290 BW1M119 012a3aa0
	int SubStateFinishDiscard();
	// BW1W120 005002b0 BW1M119 012a3850
	int SubStateInitiateEat();
	// BW1W120 005004b0 BW1M119 012a37c0
	int SubStatePerformEat();
	// BW1W120 005004e0 BW1M119 012a36f0
	int SubStateFinishEatCreatedObject();
	// BW1W120 00500540 BW1M119 012a3380
	int ActuallyEatObject(Object* object);
	// BW1W120 005007f0 BW1M119 012a32b0
	int SubStateFinishEat();
	// BW1W120 00500860 BW1M119 012a3200
	int SubStateInitiateHeldObjectAction();
	// BW1W120 005008b0 BW1M119 012a3180
	int SubStatePerformHeldObjectAction();
	// BW1W120 005008d0 BW1M119 012a3100
	int SubStateInitiateRestToGetBetter();
	// BW1W120 005008f0 BW1M119 012a2f80
	int SubStatePerformRestToGetBetter();
	// BW1W120 00500a10 BW1M119 012a2f00
	int SubStatePerformStopBeingOnFire();
	// BW1W120 00500a30 BW1M119 012a2e10
	int SubStateInitiateStaticAction();
	// BW1W120 00500ac0 BW1M119 012a2d00
	int SubStatePerformStaticAction();
	// BW1W120 00500b50 BW1M119 012a2c80
	int SubStateFinishStaticAction();
	// BW1W120 00500b70 BW1M119 012a2bd0
	int SubStateInitiateCastSpell();
	// BW1W120 00500bc0 BW1M119 012a2a50
	int SubStatePerformCastSpellAtObject();
	// BW1W120 00500cd0 BW1M119 012a28e0
	int SubStatePerformCastSpellAtPos();
	// BW1W120 00500e10 BW1M119 012a2830
	int SubStateFinishCastSpell();
	// BW1W120 00500e60 BW1M119 012a26b0
	int SubStateInitiateThrowAtPos();
	// BW1W120 00500f30 BW1M119 012a23d0
	int SubStateInitiateThrowInPile();
	// BW1W120 005010f0 BW1M119 012a2320
	int SubStateFinishThrowInPile();
	// BW1W120 00501130 BW1M119 012a20b0
	int SubStateInitiateThrow();
	// BW1W120 00501290 BW1M119 012a2040
	int SubStatePerformThrow();
	// BW1W120 005012b0 BW1M119 012a1fd0
	int SubStateFinishThrow();
	// BW1W120 005012d0 BW1M119 012a1de0
	int SubStateInitiateTurnToFaceObject();
	// BW1W120 005013b0 BW1M119 012a1b50
	int SubStatePerformTurnToFaceObject();
	// BW1W120 00501520 BW1M119 012a1900
	int SubStateFinishTurnToFaceObject();
	// BW1W120 00501660 BW1M119 012a17c0
	int SubStateInitiateTurnToFacePos();
	// BW1W120 00501730 BW1M119 012a1730
	int SubStatePerformTurnToFacePos();
	// BW1W120 00501760 BW1M119 012a1580
	int SubStateInitiateMoveToNearestWater();
	// BW1W120 005018a0 BW1M119 012a1470
	int SubStateInitiateMoveToPos();
	// BW1W120 00501950 BW1M119 012a1400
	int SubStateFinishMoveToPos();
	// BW1W120 00501970 BW1M119 012a12b0
	int SubStateInitiateRunAway();
	// BW1W120 00501a70 BW1M119 012a11e0
	int SubStatePerformRunAway();
	// BW1W120 00501af0 BW1M119 012a1070
	int SubStateInitiateRunAwayFromHand();
	// BW1W120 00501bc0 BW1M119 012a0f70
	int SubStatePerformRunAwayFromHand();
	// BW1W120 00501c90 BW1M119 012a0ee0
	int SubStateInitiateIndividualAction();
	// BW1W120 00501cd0 BW1M119 012a0e60
	int SubStatePerformIndividualAction();
	// BW1W120 00501cf0 BW1M119 012a0e00
	int SubStatePerformChooseObjectToHurl();
	// BW1W120 00501d10 BW1M119 012a0af0
	int SubStatePerformAddVillagersToDance();
	// BW1W120 00501f10 BW1M119 012a08d0
	int SubStatePerformTellVillagersToGoNearPos();
	// BW1W120 005020a0 BW1M119 012a0750
	int SubStatePerformTellVillagersToGoToDancePos();
	// BW1W120 00502190 BW1M119 012a0630
	int SubStatePerformTellVillagersToEnterState();
	// BW1W120 00502210 BW1M119 012a04f0
	int SubStatePerformTellVillagersToStartDancing();
	// BW1W120 00502290 BW1M119 012a0460
	int SubStatePerformFacialAnimation();
	// BW1W120 005022d0 BW1M119 012a03b0
	int SubStateInitiateFaint();
	// BW1W120 00502320 BW1M119 012a0340
	int SubStatePerformFaint();
	// BW1W120 00502340 BW1M119 012a0250
	int SubStateFinishPoo();
	// BW1W120 00502390 BW1M119 0129fd30
	int SubStateInitiateMoveToThrowPos();
	// BW1W120 00502660 BW1M119 0129fa10
	int SubStateInitiateMoveToThrowAtPos();
	// BW1W120 00502810 BW1M119 0129f990
	int SubStatePerformMoveToThrowPos();
	// BW1W120 00502830 BW1M119 0129f590
	int SubStateInitiateStomp();
	// BW1W120 00502b00 BW1M119 0129f380
	int SubStatePerformStomp();
	// BW1W120 00502c70 BW1M119 0129f210
	int SubStatePerformLookAtHand();
	// BW1W120 00502d70 BW1M119 0129f120
	int SubStatePerformLookAtCamera();
	// BW1W120 00502e00 BW1M119 0129f030
	int SubStatePerformLookAtCameraInWideScreen();
	// BW1W120 00502e70 BW1M119 0129ee10
	int LookAtPoint(LHPoint& pos, float max_distance, unsigned long max_seconds);
	// BW1W120 00502ff0 BW1M119 0129ed00
	int SubStateFinishRenderObjectImmobile();
	// BW1W120 00503060 BW1M119 0129ecb0
	int SubStatePerformMoveToDropPos();
	// BW1W120 00503070 BW1M119 0129ec60
	int SubStateFinishAddObjectToShape();
	// BW1W120 00503080 BW1M119 0129ea60
	int SubStateInitiateTurnToFaceAwayFromObject();
	// BW1W120 00503160 BW1M119 0129e9e0
	int SubStatePerformTurnToFaceAwayFromObject();
	// BW1W120 00503180 BW1M119 0129e5b0
	int SubStatePerformApproachObject();
	// BW1W120 005034e0 BW1M119 0129e540
	int SubStateFinishDance();
	// BW1W120 00503500 BW1M119 0129e470
	int SubStatePerformWait();
	// BW1W120 00503580 BW1M119 0129e360
	int SubStatePerformWaitForDancersToStopMoving();
	// BW1W120 005035e0 BW1M119 0129e2d0
	int SubStatePerformWaitForDancersToStartDancing();
	// BW1W120 00503600 BW1M119 0129e150
	int SubStatePerformHeal();
	// BW1W120 005036c0 BW1M119 0129df60
	int SubStateInitiateFight();
	// BW1W120 00503830 BW1M119 0129dbe0
	int SubStatePerformFight();
	// BW1W120 00503a50 BW1M119 0129db40
	int SubStateFinishFight();
	// BW1W120 00503a90 BW1M119 0129d950
	int SubStatePerformRequestPartner();
	// BW1W120 00503bd0 BW1M119 0129d8e0
	int SubStateInitiateStopMoving();
	// BW1W120 00503bf0 BW1M119 0129d850
	int SubStatePerformStopMoving();
	// BW1W120 00503c20 BW1M119 0129d7b0
	int SubStateInitiateFollowCamera();
	// BW1W120 00503c60 BW1M119 0129d5c0
	int SubStatePerformFollowCamera();
	// BW1W120 00503de0 BW1M119 0129d430
	int SubStateInitiateTurnToFaceCamera();
	// BW1W120 00503ec0 BW1M119 0129d270
	int SubStatePerformTurnToFaceCamera();
	// BW1W120 00503fc0 BW1M119 0129d100
	int SubStateInitiateTurnToFaceOtherPlayersCamera();
	// BW1W120 00504070 BW1M119 0129cf50
	int SubStatePerformTurnToFaceOtherPlayersCamera();
	// BW1W120 00504160 BW1M119 0129ccc0
	int SubStateInitiateFaceDownSlope();
	// BW1W120 00504300 BW1M119 0129cc40
	int SubStatePerformFaceDownSlope();
	// BW1W120 00504320 BW1M119 0129caa0
	int SubStateInitiateCommunicateToPlayer();
	// BW1W120 00504410 BW1M119 0129ca20
	int SubStatePerformCommunicateToPlayer();
	// BW1W120 00504430 BW1M119 0129c970
	int SubStateReduceDesire();
	// BW1W120 00504470 BW1M119 0129c920
	int SubStateLoop();
	// BW1W120 005044a0 BW1M119 0129c880
	int SubStatePerformCheckValue();
	// BW1W120 005044e0 BW1M119 0129c790
	int SubStateRepair();
	// BW1W120 00504560 BW1M119 0129c6f0
	int SubStateDestroyObject();
	// BW1W120 005045b0 BW1M119 0129c5d0
	int SubStatePerformPutOutFire();
	// BW1W120 00504660 BW1M119 0129c4b0
	int SubStateInitiateDanceDuringEditing();
	// BW1W120 00504700 BW1M119 0129bd80
	int SubStatePerformDance();
	// BW1W120 00504cd0 BW1M119 0129bc90
	int SubStateInitiatePracticeDance();
	// BW1W120 00504d50 BW1M119 0129bc30
	int SubStatePerformPracticeDance();
	// BW1W120 00504d70 BW1M119 0129bb90
	int SubStateInitiateCastSpotVisual();
	// BW1W120 00504da0 BW1M119 0129ba60
	int SubStatePerformCastSpotVisual();
	// BW1W120 00504e80 BW1M119 0129b9b0
	int SubStateFinishCastSpotVisual();
	// BW1W120 00504ec0 BW1M119 0129b8e0
	int SubStatePerformStartTheDance();
	// BW1W120 00504ef0 BW1M119 0129b880
	int SubStatePerformStartLooking();
	// BW1W120 00504f10 BW1M119 0129b820
	int SubStatePerformStopLooking();
	// BW1W120 00504f30 BW1M119 0129b780
	int SubStateInitiateDance();
	// BW1W120 00504f70 BW1M119 0129b6d0
	int SubStateInitiateInteractWithTotem();
	// BW1W120 00504fc0 BW1M119 0129b4c0
	int SubStatePerformRaiseTotem();
	// BW1W120 00505140 BW1M119 0129b2c0
	int SubStatePerformLowerTotem();
	// BW1W120 005052b0 BW1M119 0129b220
	int SubStatePerformDrink();
	// BW1W120 005052f0 BW1M119 0129b190
	int SubStatePerformHealHimself();
	// BW1W120 00505320 BW1M119 0129b0c0
	int SubStateInitialiseInspectCreature();
	// BW1W120 00505380 BW1M119 0129afb0
	int SubStatePerformInspectCreature();
	// BW1W120 00505400 BW1M119 0129ae30
	int SubStatePerformCreateHandObjectFromObject();
	// BW1W120 00505500 BW1M119 0129ada0
	int SubStateInitiatePickUpCreatedObject();
	// BW1W120 00505520 BW1M119 0129ad10
	int SubStatePerformPickUpCreatedObject();
	// BW1W120 00505540 BW1M119 0129abc0
	int SubStateInitiatePickUpCreatedByCreature();
	// BW1W120 005055d0 BW1M119 0129ab00
	int SubStatePerformAddReactionToObject();
	// BW1W120 00505620 BW1M119 0129aa10
	int SubStatePerformRequestDoSomethingWithObject();
	// BW1W120 00505690 BW1M119 0129a950
	int SubStatePerformSetOnFire();
	// BW1W120 005056f0 BW1M119 0129a830
	int SubStateInitiateGoNearObject();
	// BW1W120 005057b0 BW1M119 0129a300
	int SubStatePerformGoNearObject();
	// BW1W120 00505c30 BW1M119 0129a270
	int SubStatePerformObserveObject();
	// BW1W120 00505c60 BW1M119 01299ee0
	int SubStatePerformFollowInterestingObject();
	// BW1W120 00505e70 BW1M119 01299e70
	int SubStateFinishFollowInterestingObject();
	// BW1W120 00505e90 BW1M119 01299e30
	int SubStatePerformInScript();
	// BW1W120 00505ea0 BW1M119 01299d00
	int SubStatePerformLookAtFlyingObject();
	// BW1W120 00505f60 BW1M119 01299c60
	int SubStateInitiateFollowHand();
	// BW1W120 00505fa0 BW1M119 01299a70
	int SubStatePerformFollowHand();
	// BW1W120 005060d0 BW1M119 012997e0
	int SubStatePerformAddToHome();
	// BW1W120 00506150 BW1M119 01299740
	int SubStatePerformWaitForObject();
	// BW1W120 00506190 BW1M119 012996f0
	int SubStateInitiateSeeWhoWinsGame();
	// BW1W120 005061a0 BW1M119 012996a0
	int SubStatePerformSeeWhoWinsGame();
	// BW1W120 005061b0 BW1M119 01299590
	int SubStateInitiateRespondAfterFight();
	// BW1W120 00506240 BW1M119 01299470
	int SubStatePerformRespondAfterFight();
	// BW1W120 005062c0 BW1M119 012993e0
	int SubStatePerformCreateFootPrint();
	// BW1W120 005062f0 BW1M119 01298fa0
	int SubStatePerformOrderCreature();
	// BW1W120 00506580 BW1M119 01298ef0
	int SubStatePerformWaitForCreatureToPickUp();
	// BW1W120 005065d0 BW1M119 01298e40
	int SubStatePerformDemobiliseObject();
	// BW1W120 00506620 BW1M119 01298d90
	int SubStatePerformRemobiliseObject();
	// BW1W120 00506670 BW1M119 01298d40
	int SubStatePerformWaitForever();
	// BW1W120 00506680 BW1M119 01298cb0
	int SubStatePerformSingleKiss();
	// BW1W120 005066b0 BW1M119 01298be0
	int SubStatePerformKiss();
	// BW1W120 00506720 BW1M119 01298b70
	int SubStateFinishKiss();
	// BW1W120 00506740 BW1M119 01298a40
	int SubStateInitiatePointAtPoint();
	// BW1W120 00506820 BW1M119 01298960
	int SubStateInitiatePointAtArena();
	// BW1W120 00506890 BW1M119 012988d0
	int SubStatePerformPointAtPoint();
	// BW1W120 005068c0 BW1M119 012987b0
	int SubStateInitiatePointAtObject();
	// BW1W120 005069a0 BW1M119 012986e0
	int SubStatePerformPointAtObject();
	// BW1W120 00506a40 BW1M119 01298670
	int SubStateFinishPoint();
	// BW1W120 00506a60 BW1M119 01298590
	int SubStatePerformDoTeleport();
	// BW1W120 00506ac0 BW1M119 01298520
	int SubStatePerformStopReacting();
	// BW1W120 00506ad0 BW1M119 012984a0
	int SubStatePerformSetSpeed();
	// BW1W120 00506b10 BW1M119 01298320
	int SubStateInitiateTurnToFaceHand();
	// BW1W120 00506be0 BW1M119 01298150
	int SubStatePerformTurnToFaceHand();
	// BW1W120 00506cf0 BW1M119 01298080
	int SubStateInitiatePickUpFromHand();
	// BW1W120 00506d50 BW1M119 01298000
	int SubStatePerformPickUpFromHand();
	// BW1W120 00506d70 BW1M119 01297f10
	int SubStateInitiateGesture();
	// BW1W120 00506e10 BW1M119 01297d00
	int SubStatePerformGesture();
	// BW1W120 00507000 BW1M119 01297c70
	int SubStateFinishGesture();
	// BW1W120 00507030 BW1M119 01297c00
	int SubStateInitiateWaitForCreatureToBeFree();
	// BW1W120 00507060 BW1M119 01297b30
	int SubStatePerformWaitForCreatureToBeFree();
	// BW1W120 005070d0 BW1M119 01297a50
	int SubStatePerformActOnObjectInHand();
	// BW1W120 00507140 BW1M119 012979a0
	int SubStatePerformCreateFishFromSea();
	// BW1W120 00507190 BW1M119 012978c0
	int SubStatePerformCreateMagicFood();
	// BW1W120 00507210 BW1M119 01297810
	int SubStateInitiateTransportedByTeleport();
	// BW1W120 00507250 BW1M119 01297650
	int SubStatePerformTransportedByTeleport();
	// BW1W120 00507350 BW1M119 01297520
	int SubStateFinishTransportedByTeleport();
	// BW1W120 005073e0 BW1M119 01297420
	int SubStatePerformLoopAction();
	// BW1W120 00507470 BW1M119 012973b0
	int SubStatePerformConsiderActionCompleted();
	// BW1W120 00507480 BW1M119 01297220
	int SubStatePerformCreateArena();
	// BW1W120 005075a0 BW1M119 01297090
	int SubStateInitiateMoveToArena();
	// BW1W120 005076a0 BW1M119 01297000
	int SubStatePerformResurrect();
	// BW1W120 005076d0 BW1M119 01296ec0
	int SubStateInitiateSwapMindWithOtherCreature();
	// BW1W120 00507760 BW1M119 01296a50
	int SubStatePerformSwapMindWithOtherCreature();
	// BW1W120 00507a90 BW1M119 01296a00
	int SubStateFinishSwapMindWithOtherCreature();
	// BW1W120 00507aa0 BW1M119 012969c0
	int SubStatePerformFail();
	// BW1W120 00507ab0 BW1M119 012968f0
	int SubStatePerformWaitForObjectToBeInMap();
	// BW1W120 00507b10 BW1M119 01296850
	int SubStatePerformSetPos();
	// BW1W120 00507b90 BW1M119 01296780
	int SubStatePerformHideObjectInHand();
	// BW1W120 00507be0 BW1M119 012966e0
	int SubStatePerformDestroyObjectToUse();
	// BW1W120 00507c10 BW1M119 01296650
	int SubStatePerformClearObjectToActOn();
	// BW1W120 00507c40 BW1M119 012965d0
	int SubStatePerformClearObjectToUse();
	// BW1W120 00507c70 BW1M119 012964f0
	int SubStatePerformCatch();
	// BW1W120 00507ce0 BW1M119 012963e0
	int SubStatePerformKick();
	// BW1W120 00507d70 BW1M119 01296320
	int SubStateInitiateTransportHome();
	// BW1W120 00507dc0 BW1M119 012961c0
	int SubStatePerformTransportHome();
	// BW1W120 00507e80 BW1M119 012960e0
	int SubStateFinishTransportHome();
	// BW1W120 00507ee0 BW1M119 01295f70
	int SubStatePerformRemoveAndCreateSpellFromTotem();
	// BW1W120 00507fd0 BW1M119 01295e40
	int SubStatePerformAddAndDestroySpellFromTotem();
	// BW1W120 00508080 BW1M119 01295dd0
	int SubStatePerformLightbulb();
	// BW1W120 00508090 BW1M119 01295d00
	int SubStatePerformShatterRock();
	// BW1W120 005080f0 BW1M119 01295c60
	int SubStatePerformDestroyCreatedObject();
	// BW1W120 00508130 BW1M119 01295b10
	int SubStatePerformCreateHandObjectExNihilo();
	// BW1W120 005081f0 BW1M119 01295a80
	int SubStatePerformApplyDesireToObject();
	// BW1W120 00508230 BW1M119 01295a20
	int SubStatePerformStopControlledByTeleport();
	// BW1W120 00508250 BW1M119 01295740
	int SubStatePerformWatchPlayer();
	// BW1W120 005084d0 BW1M119 01295610
	int SubStatePerformMakeDisciple();
	// BW1W120 00508580 BW1M119 01295570
	int SubStateInitiateSetDance();
	// BW1W120 005085b0 BW1M119 01295400
	int SubStatePerformSetDance();
	// BW1W120 005086b0 BW1M119 01295380
	int SubStateInitiateSleep();
	// BW1W120 005086d0 BW1M119 01295190
	int SubStatePerformSleep();
	// BW1W120 00508830 BW1M119 01295110
	int SubStatePerformWaitUntilFree();
	// BW1W120 00508850 BW1M119 01294dc0
	int SubStateInitiateGetAwayFromObject();
	// BW1W120 00508b00 BW1M119 01294d40
	int SubStatePerformGetAwayFromObject();
	// BW1W120 00508b20 BW1M119 01294ce0
	int AbortFizz();
	// BW1W120 00508b30 BW1M119 01294c80
	int AbortStaticAction();
	// BW1W120 00508b40 BW1M119 01294b70
	int AbortEat();
#ifdef VERSION_BW1WCI
	// BW1WCI 005133c0 BW1MCI119 012c39b0
	int SubStateInitiateCastPlannedAbode();
	// BW1WCI 00513430 BW1MCI119 012c3870
	int SubStatePerformCastPlannedAbode();
	// BW1WCI 00513500 BW1MCI119 012c37e0
	int SubStateFinishCastPlannedAbode();
	// BW1WCI 005185f0 BW1MCI119 012bacd0
	int SubStateInitiateGoToOtherSideOfObject();
	// BW1WCI 00518690 BW1MCI119 012ba980
	int SubStatePerformGoToOtherSideOfObject();
	// BW1WCI 0051bba0 BW1MCI119 012b4b40
	int SubStatePerformCreatePlannedAbode();
	// BW1WCI 0051bc40 BW1MCI119 012b4a30
	int SubStatePerformCreatePlannedCivicBuilding();
	// BW1WCI 0051bce0 BW1MCI119 012b4910
	int SubStateInitiateGoNearPlannedObject();
	// BW1WCI 0051bd90 BW1MCI119 012b4730
	int SubStateInitiateTurnToFacePlannedObject();
	// BW1WCI 0051be50 BW1MCI119 012b4660
	int SubStatePerformAddPlannedObject();
	// BW1WCI 0051beb0 BW1MCI119 012b44a0
	int SubStateInitiateRespondToDice();
	// BW1WCI 0051c000 BW1MCI119 012b4450
	int SubStatePerformTurnOffNavigation();
	// BW1WCI 0051c010 BW1MCI119 012b4400
	int SubStatePerformTurnOnNavigation();
#endif
	// BW1W120 00508bd0 BW1M119 01294b10
	int SubStateInitiateTalk();
	// BW1W120 00508bf0 BW1M119 01294aa0
	int SubStatePerformTalk();
	// BW1W120 00508c10 BW1M119 012949d0
	int SubStatePerformWaitForSpellsToWearOff();
	// BW1W120 00508c60 BW1M119 01294870
	int SubStatePerformBuild();
	// BW1W120 00508d30 BW1M119 012946d0
	int SubStateEatNearestFoodPile();
	// BW1W120 00477440 BW1M119 011e2df0
	bool32_t CanSeePos(const MapCoords& pos);
	// BW1W120 004796a0 BW1M119 011ded90
	void AddSpeechItem(char16_t* text, LHPlayer* player, unsigned long flags);
	// BW1W120 004e7660 BW1M119 0126e110
	unsigned long SaveMindToMemory(char** buffer);
	// BW1W120 inlined BW1M119 011e3200
	const CreatureInfo* GetInfo() const { return (const CreatureInfo*)info; }
	// BW1W120 00479eb0 BW1M119 011de020
	void ForceMoveMapObjectWithoutWalking(const MapCoords& pos);
	// BW1W120 00479f70 BW1M119 011ddde0
	virtual int MoveByTeleport(const MapCoords& pos);
#ifdef VERSION_BW1WCI
	// BW1WCI 00488400 BW1MCI119 011ed990
	uint32_t CountNumberOfHitsInQueue();
#else
	// BW1W120 0047d470 BW1M119 011d7490
	uint32_t CountNumberOfHitsInQueue();
#endif
#ifdef VERSION_BW1WCI
	// BW1WCI 00484aa0 BW1MCI119 011f4c00
	void ForceMoveMapObjectWithoutWalkingOrChangingWhatDoing(const MapCoords& pos);
#endif
	// BW1W120 0047ab90 BW1M119 011dcbc0
	void SetFizz(float amount, float duration, bool lock);
	// BW1W120 0047b140 BW1M119 011dc350
	bool32_t IsAnimIndividual(unsigned long anim);
	// BW1W120 004f6850 BW1M119 0128d9d0
	void SetFocus(GameThingWithPos* thing);
	// BW1W120 004f7060 BW1M119 0128ce00
	void ScriptReleaseFromScript();
	// BW1W120 004f6b60 BW1M119 0128d220
	void ScriptMoveToPos(LHPoint* pos, float speed);
	// BW1W120 004f6e30 BW1M119 0128d0e0
	void ScriptPlayIndividualAnimation(unsigned long anim);
	// BW1W120 004f6f10 BW1M119 0128cfa0
	void ScriptPlayStaticAnimation(unsigned long anim, float duration);
	// BW1W120 0047b1c0 BW1M119 011dc140
	bool32_t IsFighting();
#ifdef VERSION_BW1WCI
	// BW1WCI 00487e00 BW1MCI119 null
	bool32_t NeedsHelp();
#endif // VERSION_BW1WCI
	// BW1W120 004d8bb0 BW1M119 01255f50
	CreatureBelief* AddBeliefAboutAssociatedObject(CreatureBelief* belief);
	// BW1W120 004f1c40 BW1M119 0127b060
	bool32_t FindBestActionFromObject(CreaturePlan& plan, CreatureActionsTried* actions_tried, CreatureBelief* belief,
	                                  bool32_t require_object_to_act_on);
	// BW1W120 004f8ca0 BW1M119 0128e390
	float NumTimesMagicActionMustBeSeenBeforeItIsLearnt(unsigned long magic_type);
	// BW1W120 0047cda0 BW1M119 011d7fe0
	void CreateLightbulb(float progress);
	// BW1W120 004e29d0 BW1M119 01269a50
	bool32_t PossibilityOfErrorFromLackOfSkill(CREATURE_ACTION action);
	// BW1W120 004e0de0 BW1M119 01267e80
	void LearnLessonFromLeashInstruction(Object* object);
	// BW1W120 004e1100 BW1M119 01267ac0
	void LearnFromPlayerWatchingAndNotPunishing();
	// BW1W120 004f8850 BW1M119 0128ecd0
	void ForceActionCastSpellOnObject(MAGIC_TYPE magic_type, Object* object);
	// BW1W120 004f2930 BW1M119 012817f0
	bool32_t LearnActionFromReaction(CREATURE_ACTION_LEARNING_TYPE type, unsigned long action);
	// BW1W120 004f30b0 BW1M119 01280120
	void SetupReactToNiceMagic(Reaction* reaction, MAGIC_TYPE magic_type, GameThingWithPos* thing);
	// BW1W120 004f3210 BW1M119 0127fd10
	void SetupReactToNastyMagic(Reaction* reaction, MAGIC_TYPE magic_type, GameThingWithPos* thing);
	// BW1W120 00479440 BW1M119 011df8e0
	bool32_t IsInGathering();
	// BW1W120 004dc9a0 BW1M119 0125dc30
	void MakeDesireFullyDominantAndChangeSource(unsigned long desire, const CreatureInfo* info);
	// BW1W120 004df090 BW1M119 015eb350
	bool32_t IsReadyToExplore();
	// BW1W120 004df0c0 BW1M119 015eb2a0
	bool32_t IsPlayerIgnoringMe();
	// BW1W120 004df110 BW1M119 015eb240
	bool32_t IsCreatureCold();
	// BW1W120 004df130 BW1M119 015eb1e0
	bool32_t IsCreatureWarm();
	// BW1W120 004df150 BW1M119 015eb180
	bool32_t HasPlayerBeenNasty();
	// BW1W120 004df180 BW1M119 015eb140
	bool32_t IsCreatureReadyForRest();
	// BW1W120 004df190 BW1M119 015eb0e0
	bool32_t HasNoticedActionWorthMimicking();
	// BW1W120 004df1b0 BW1M119 015eb0a0
	bool32_t CanCreatureBeFrightened();
	// BW1W120 004df1c0 BW1M119 015eb020
	bool32_t IsCreatureNearHome();
	// BW1W120 004de8e0 BW1M119 01264190
	float GetHungerSourceFromEnergy();
	// BW1W120 004de8f0 BW1M119 01264110
	void SetEnergyFromHungerSource(float value);
	// BW1W120 004de940 BW1M119 012640c0
	float GetPooSourceFromAmountOfPoo();
	// BW1W120 004de950 BW1M119 01264070
	void SetAmountOfPooFromPooSource(float value);
	// BW1W120 004de960 BW1M119 01264020
	float GetTirednessSourceFromExhaustion();
	// BW1W120 004de970 BW1M119 01263f90
	float GetTirednessSourceFromNightTime();
	// BW1W120 004de990 BW1M119 01263f40
	void SetExhaustionFromTirednessSource(float value);
	// BW1W120 004de9a0 BW1M119 01263ef0
	float GetThirstSourceFromDehydration();
	// BW1W120 004de9b0 BW1M119 01263ea0
	void SetDehydrationFromThirstSource(float value);
	// BW1W120 004de9c0 BW1M119 01263e20
	float GetRestoreHealthSourceFromLife();
	// BW1W120 004de9d0 BW1M119 01263dc0
	float GetSadnessSource();
	// BW1W120 004de9f0 BW1M119 01263d40
	void SetLifeFromRestoreHealthSource(float value);
	// BW1W120 004dea10 BW1M119 01263c80
	float GetAttractPlayerSourceFromLoneliness();
	// BW1W120 004dea80 BW1M119 01263bc0
	void SetLonelinessFromAttractPlayerSource(float value);
	// BW1W120 004dead0 BW1M119 01263b00
	float GetAttractPlayerSourceFromLackOfInteraction();
	// BW1W120 004deb40 BW1M119 01263a30
	void SetAmountOfInteractionFromAttractPlayerSource(float value);
	// BW1W120 004deb90 BW1M119 012639a0
	float GetManifestStateSourceFromUnsatisfiedDesires();
	// BW1W120 004debd0 BW1M119 01263920
	float GetWarmerSourceFromPhysicalWarmth();
	// BW1W120 004dec10 BW1M119 012638a0
	float GetColderSourceFromPhysicalWarmth();
	// BW1W120 004dec50 BW1M119 01263840
	float GetScratchSourceFromPhysicalItchiness();
	// BW1W120 004dec60 BW1M119 012637c0
	float GetRunAwayFromPlayerSource();
	// BW1W120 004deca0 BW1M119 01263700
	float GetGoHomeSource();
	// BW1W120 004ded00 BW1M119 01263650
	float GetHangAroundAtHomeSource();
	// BW1W120 004ded60 BW1M119 012635d0
	float GetUrgeToGetHigh();
	// BW1W120 004deda0 BW1M119 01263590
	void SetUrgeToGetHigh(float value);
	// BW1W120 004dedb0 BW1M119 01263520
	float GetSourceForCraziness();
	// BW1W120 004dede0 BW1M119 01263440
	float GetSourceForMissFriend();
	// BW1W120 004dee60 BW1M119 01263320
	float GetHowInterestingPlayerIsBeing();
	// BW1W120 004deef0 BW1M119 012632c0
	void SetHowInterestingPlayerIsBeing(float value);
	// BW1W120 004def10 BW1M119 01263270
	float GetInnateNicenessSource();
	// BW1W120 004def20 BW1M119 01263210
	float GetDesireToImpressFromVillagersWhoNeedIt();
	// BW1W120 004def30 BW1M119 012631c0
	float GetInnateAggressionSource();
	// BW1W120 004def40 BW1M119 01263170
	float GetInnateLethargySource();
	// BW1W120 004def50 BW1M119 01263120
	float GetInnateFriendlinessSource();
	// BW1W120 004def60 BW1M119 012630d0
	float GetInnateCommunicativenessSource();
	// BW1W120 004def70 BW1M119 01263080
	void SetInnateNicenessSource(float value);
	// BW1W120 004def90 BW1M119 01263030
	void SetInnateAggressionSource(float value);
	// BW1W120 004defb0 BW1M119 01262fe0
	void SetInnateLethargySource(float value);
	// BW1W120 004defd0 BW1M119 01262f90
	void SetInnateFriendlinessSource(float value);
	// BW1W120 004deff0 BW1M119 01262f40
	void SetInnateCommunicativenessSource(float value);
	// BW1W120 004f60b0 BW1M119 015df520
	int DecideToRespondToCreature(CreatureBeliefAboutCreature* belief);
	// BW1W120 004f62d0 BW1M119 015df120
	int RespondToRequestToFight(Creature* requester);
	// BW1W120 004f6340 BW1M119 015defd0
	int RespondToRequestToPlay(Creature* requester);
	// BW1W120 004f6410 BW1M119 015dee80
	int RespondToRequestToLearnFromFriend(Creature* requester);
	// BW1W120 004f64d0 BW1M119 015ded40
	int RespondToRequestToBeFriends(Creature* requester);
	// BW1W120 004f6930 BW1M119 0128d940
	void ScriptTurnOffAllDesires();
	// BW1W120 004f6950 BW1M119 0128d890
	void ScriptTurnOnDesireAndMakeItMaximum(CREATURE_DESIRES desire);
	// BW1W120 004f7000 BW1M119 0128ce80
	void ScriptDoAction(CREATURE_ACTION action, GameThingWithPos* object, GameThingWithPos* second_object);
	// BW1W120 004f7080 BW1M119 0128cda0
	void ScriptLearnEverything();
#ifdef VERSION_BW1WCI
	// BW1WCI 00508f10 BW1MCI119 012ac280
	void ScriptSetKnowsAction(CREATURE_ACTION_LEARNING_TYPE type, unsigned long action, bool32_t knows, float progress);
#else
	// BW1W120 004f7090 BW1M119 0128cca0
	void ScriptSetKnowsAction(CREATURE_ACTION_LEARNING_TYPE type, unsigned long action, bool32_t knows);
#endif
	// BW1W120 004f70f0 BW1M119 0128cc50
	void ScriptSetAgendaPriority(float priority);
	// BW1W120 004f6980 BW1M119 0128d6c0
	void ScriptLearnDistinctionAboutActivityObject(CREATURE_DESIRES desire, ATTRIBUTE_TYPE attribute,
	                                               unsigned long amount);
#ifdef VERSION_BW1WCI
	// BW1WCI 00508260 BW1MCI119 012ad470
	static Creature* ScriptCreateCreatureRelativeToCreature(Creature* creature, float scale, const MapCoords& coords,
	                                                        CREATURE_TYPE type, bool32_t dumb);
	// BW1WCI 00709b90 BW1MCI119 0151dd60
	static void ReleaseTykeFromMaster(Creature* tyke, Creature* master);
	// BW1WCI 0047ef30 BW1MCI119 011fe6b0
	void SetTyke(Creature* master);
	// BW1WCI 00488430 BW1MCI119 011ed930
	void ClearFightQueue();
	// BW1WCI 00508f90 BW1MCI119 012ac1a0
	void ClearCreatureForScriptActing();
#else
	// BW1W120 004f6610 BW1M119 0128dc50
	static Creature* ScriptCreateCreatureRelativeToCreature(Creature* creature, float scale, const MapCoords& coords,
	                                                        CREATURE_TYPE type);
#endif
	// BW1W120 0047bee0 BW1M119 011da220
	static void SwapMinds(Creature* new_creature, Creature* my_creature);
	// BW1W120 0047d320 BW1M119 011d7750
	void QueueAttackOrBlock(unsigned long move);
	// BW1W120 0047d340 BW1M119 011d76e0
	void QueueSpell(unsigned long spell);
	// BW1W120 0047d360 BW1M119 011d7670
	void QueueSideStep(unsigned long step);
	// BW1W120 0047d380 BW1M119 011d7530
	uint32_t GetCurrentFightAction();
	// BW1W120 004f78c0 BW1M119 0128e310
	static float SigmoidThreshold(float threshold, float value);
	// BW1W120 0047a7a0 BW1M119 011dd300
	int StartMovingToObject(CreatureBelief* belief, Object* object, float speed, float min_speed);
	// BW1W120 0047a880 BW1M119 011dd040
	int StartMovingToPoint(CreatureBelief* belief, const LHPoint& pos, float speed, float min_speed);
	// BW1W120 0047a980 BW1M119 011dcef0
	long GetPutDownAction();
	// BW1W120 0047aa50 BW1M119 011dcd20
	void ForceMeToActOnObject(GameThingWithPos* object);
	// BW1W120 0047acb0 BW1M119 011dcb80
	float GetFizzDest();
	// BW1W120 0047acc0 BW1M119 011dcb40
	float GetFizzCurr();
	// BW1W120 0047acd0 BW1M119 011dc9d0
	Pot* CreateHandObject(GameThingWithPos* source, const MapCoords& pos, POT_INFO type, unsigned long amount);
	// BW1W120 0047ad80 BW1M119 011dc830
	void CalculateCreationPos(const MapCoords& target, MapCoords* pos);
	// BW1W120 0047b010 BW1M119 011dc3a0
	void CheatMakeMeFight();
	// BW1W120 0047b3f0 BW1M119 011dbc30
	void UpdateMoodsBasedOnMusic(MusicMoodPacket& packet);
	// BW1W120 0047b420 BW1M119 011dbbb0
	void CalculateCurrentEmotionsForMusic(CreatureEmotionsForMusic& emotions);
	// BW1W120 0047b440 BW1M119 011db430
	void GenerateHTML();
	// BW1W120 0047ba70 BW1M119 011db250
	void ConsiderTakingSnapshot();
	// BW1W120 0047bbe0 BW1M119 011db100
	void TakeSnapshotIfPriorityIsSufficient(float priority, CREATURE_ACTION action);
	// BW1W120 0047bc50 BW1M119 011dae60
	void TakeSnapshot(float priority, CREATURE_ACTION action);
	// BW1W120 0047bd30 BW1M119 011dacd0
	void RemoveSnapshot(SnapshotData* snapshot);
	// BW1W120 0047bd90 BW1M119 011dabb0
	int GetWorstSnapshotIndex();
	// BW1W120 0047bdd0 BW1M119 011daae0
	char* ThingHeLikesMostText(CREATURE_DESIRES desire);
	// BW1W120 0047be30 BW1M119 011da9c0
	uint32_t ThingHeLikesMostMesh(CREATURE_DESIRES desire);
	// BW1W120 004d75c0 BW1M119 012504c0
	static uint32_t GetMeshForObjectType(OBJECT_TYPE type);
	// BW1W120 0047c5f0 BW1M119 011da190
	static CREATURE_ACTION GetCreatureActionFromMagicType(MAGIC_TYPE type);
	// BW1W120 0047c610 BW1M119 011da150
	long GetNumSpecialMoves();
	// BW1W120 0047c620 BW1M119 011da0f0
	uint32_t GetSpecialMoveGesture(long move);
	// BW1W120 0047c770 BW1M119 011d8d30
	void PlaySoundEffectToIndicateMood();
	// BW1W120 0047c780 BW1M119 011d8bc0
	void BodgeForceCatch(GameThingWithPos* object);
};

class Creed : public MobileObject
{
public:
	HandGlow* Glow;

	// Constructors

	// BW1W120 0050b310 BW1M119 010c3c20
	Creed();
	// BW1W120 inlined BW1M119 inlined
	Creed(const MapCoords& coords, const GMobileObjectInfo* info, Object* param_3, float param_4, float param_5)
		: MobileObject(coords, info, param_3, param_4, param_5)
	{
	}

	// Override methods

	// BW1W120 inlined BW1M119 010c36c0
	virtual ~Creed() {}
	// BW1W120 0050b3d0 BW1M119 010c3ae0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0050b360 BW1M119 010c3800
	virtual char* GetDebugText();
	// BW1W120 0050b4e0 BW1M119 010c3890
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0050b4c0 BW1M119 010c38f0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0050b350 BW1M119 010c37d0
	virtual uint32_t GetSaveType();
	// BW1W120 0050b4a0 BW1M119 010c3950
	virtual void SetScale(float param_1);
	// BW1W120 0050b500 BW1M119 010c3840
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0050b420 BW1M119 010c39b0
	virtual void Create3DObject();
	// BW1W120 005186a0 BW1M119 010cc440
	virtual void Draw();
	// BW1W120 005186d0 BW1M119 010cc390
	virtual void DrawOutOfMap(bool selectable);
	// BW1W120 0050b3a0 BW1M119 010c3b80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0050b330 BW1M119 010c3750
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0050b340 BW1M119 010c3790
	virtual bool32_t CanBecomeAPhysicsObject();
};

static_assert(offsetof(Creature, HelpState) == 0x188, "Creature help offset is incorrect");
static_assert(offsetof(Creature, HelpStack) == 0x220, "Creature help stack offset is incorrect");
static_assert(offsetof(Creature, ReceiveSpell) == 0x370, "Creature spell receiver offset is incorrect");
#ifdef VERSION_BW1WCI
static_assert(offsetof(Creature, LeashControl) == 0x388, "Creature leash offset is incorrect");
static_assert(offsetof(Creature, ActionForced) == 0x1088, "Creature action offset is incorrect");
static_assert(offsetof(Creature, LeashEnabled) == 0x1134, "Creature leash flags offset is incorrect");
static_assert(offsetof(Creature, ConfinementCentre) == 0x11e0, "Creature confinement offset is incorrect");
static_assert(offsetof(Creature, DevelopmentPhase) == 0x12a0, "Creature phase offset is incorrect");
static_assert(offsetof(Creature, Trapped) == 0x12e8, "Creature trapped offset is incorrect");
static_assert(sizeof(Creature) == 0x1308, "Creature size is incorrect");
#elif defined(VERSION_BW1W100)
static_assert(offsetof(Creature, LeashEnabled) == 0x1108, "Creature leash flags offset is incorrect");
static_assert(offsetof(Creature, Trapped) == 0x1294, "Creature trapped offset is incorrect");
static_assert(offsetof(Creature, IgnoredByVillagers) == 0x12ac, "Creature villager offset is incorrect");
static_assert(sizeof(Creature) == 0x12b0, "Creature size is incorrect");
#else
static_assert(offsetof(Creature, LeashEnabled) == 0x1108, "Creature leash flags offset is incorrect");
static_assert(offsetof(Creature, Trapped) == 0x12a8, "Creature trapped offset is incorrect");
static_assert(sizeof(Creature) == 0x12c8, "Creature size is incorrect");
#endif

#endif /* BW1_DECOMP_CREATURE_INCLUDED_H */
