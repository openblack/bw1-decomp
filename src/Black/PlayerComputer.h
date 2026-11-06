#ifndef BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H
#define BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_TYPE */
#include <chlasm/Enum.h>         /* For enum MAGIC_TYPE */
#include <assert.h>              /* For static_assert */
#include <stddef.h>              /* For NULL */
#include <stdint.h>              /* For int8_t, uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>   /* For class LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHListHead.h>     /* For struct LHListHead */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>     /* For struct LHListNode */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "GameThing.h"        /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class Creature;
class Object;
class WorshipSpellIcon;
class CPDesireNodeInfo;
class CPDesireNode;
class CPDecisionPlayer;
class GameThingWithPos;
class GComputerLookAndLearn;
class GComputerPlayerQueue;
class GComputerSeen;
class GComputerSpellCast;
class GPlayer;
class PlayerActionState;
class PlayerSubAction;
class PlayerSubActionArgument;
class GameOSFile;

#define COMPUTER_PLAYER_SCRIPT_PAUSE_TIME 60.0f

class GComputerAttitudeToPlayer : public GameThing
{
public:
	float Attitude;

	// Override methods

	// BW1W120 0055e300 BW1M119 014ac400
	virtual char* GetDebugText() { return "ComputerAttitudeToPlayer:"; }
	// BW1W120 006587d0 BW1M119 014acfa0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00658830 BW1M119 014aceb0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055e2f0 BW1M119 014ac3b0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_ATTITUDE_TO_PLAYER; }

	// BW1W120 0055e2d0 BW1M119 inlined
	GComputerAttitudeToPlayer() { Attitude = 1.0f; }
};

class GComputerPlayer;

typedef float (GComputerPlayer::*BestSpellToCastFunction)(MAGIC_TYPE type, const MapCoords& pos);

class CPDesireNodeInfo
{
public:
	uint32_t field_0x4;
	char*    Name; /* 0x8 */
	uint32_t field_0xc;
	uint32_t field_0x10;
	uint32_t field_0x14;
	float (GComputerPlayer::*FindFunction)(CPDesireNode& node);       /* 0x18 */
	float (GComputerPlayer::*CheatFunction)(CPDesireNode& node);      /* 0x28 */
	bool32_t (GComputerPlayer::*PerformFunction)(CPDesireNode& node); /* 0x38 */
	float    field_0x48;
	float    field_0x4c;
	float    field_0x50;
	uint32_t field_0x54;
	long     field_0x58[8];

	// Override methods

	// BW1W120 00655b70 BW1M119 014b2f20
	virtual int GetNumChildren();
};

class GComputerPlayer : public GameThingWithPos
{
public:
	GPlayer*                          Player;
	CPDecisionPlayer*                 DecisionPlayer;
	uint32_t                          field_0x30;
	PlayerActionState*                ActionState;
	LHLinkedList<GComputerSpellCast*> SpellCasts;
	LHLinkedList<GComputerSeen*>      Seen;
	LHListHead<GComputerLookAndLearn> LookAndLearn;
	LHListHead<GComputerPlayerQueue>  Queue;
	float                             HandSpeed; /* 0x58 */
	uint8_t                           field_0x5c[0xb8];
	uint32_t                          ImpressiveMagicNeed;    /* 0x114 */
	uint32_t                          CompassionateMagicNeed; /* 0x118 */
	uint32_t                          AggressiveMagicNeed;    /* 0x11c */
	uint8_t                           field_0x120[0x98];
	bool32_t                          Active;
#ifdef VERSION_BW1WCI
	uint8_t field_0x1bc[0x1c];
#else
	uint8_t field_0x1bc[0x14];
#endif
	int8_t  CreatureSizeMode;
	uint8_t field_0x1d1[0x2b];

	// BW1W120 00656d40 BW1M119 014b0ad0
	GComputerPlayer(GPlayer* player, float param_2, float param_3, unsigned long param_4);
	// BW1W120 006573c0 BW1M119 01091300
	void Draw();
	// BW1W120 00657420 BW1M119 01057350
	void NewProcess();
	// BW1W120 006588d0 BW1M119 014ace40
	void OnEndOfClearMap();

	// Override methods

	// BW1W120 00656f20 BW1M119 014b06a0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055e3b0 BW1M119 0149d0b0
	virtual GPlayer* GetPlayer() { return Player; }
	// BW1W120 0055e380 BW1M119 014b3440
	virtual char* GetDebugText() { return "GComputerPlayer:"; }
	// BW1W120 006579a0 BW1M119 014ae9d0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00657640 BW1M119 014af650
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055e370 BW1M119 014b3400
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_PLAYER; }
	// BW1W120 00657cd0 BW1M119 014ae8f0
	virtual void SaveExtraData(GameOSFile& file);
	// BW1W120 0055e390 BW1M119 014b3480
	virtual void SetSpeedInMetres(float speed_in_metres, bool32_t scale_speed) { SetSpeed(speed_in_metres); }
	// BW1W120 0055e3a0 BW1M119 014b34e0
	virtual const char* GetText() { return GetDebugText(); }
	// BW1W120 0055e3c0 BW1M119 014b3540
	virtual bool32_t IsComputerPlayer() { return true; }
	// BW1W120 006587b0 BW1M119 014ad090
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();

	// BW1W120 inlined BW1M119 inlined
	GComputerPlayer()
	{
		Player = NULL;
		DecisionPlayer = NULL;
		ActionState = NULL;
		CreatureSizeMode = -1;
	}

	// Non-virtual methods

	// BW1W120 00657fe0 BW1M119 010572a0
	MapCoords GetHandPos();
	// BW1W120 00658510 BW1M119 014ad590
	void ForceComputerPlayerToMoveToPointAndPause(LHPoint& point, float pause_time);
	// BW1W120 006583f0 BW1M119 inlined
	void SetSpeed(float speed);

	// BW1W120 0065ba40 BW1M119 014b5d40
	void CreateCreatureFromFile(CREATURE_TYPE type, const MapCoords& coords, char* file_name);
	// BW1W120 00658230 BW1M119 014adbd0
	bool32_t ValidateObject(bool32_t valid, char* failure_text);
	// BW1W120 00658bc0 BW1M119 014ac450
	float GetDesireToUseCreature();
	// BW1W120 00666850 BW1M119 014c7700
	float FindSpellIconAndReturnDesireToCast(BestSpellToCastFunction best_spell, const MapCoords& pos,
	                                         WorshipSpellIcon** icon);
	// BW1W120 00666820 BW1M119 014c7870
	float FindSpellIconAndReturnDesireToCast(CPDesireNode& node, MAGIC_TYPE type, const MapCoords& pos);

	// BW1W120 00658ff0 BW1M119 null
	Creature* GetMyCreature(CPDesireNode& node);
	// BW1W120 00659000 BW1M119 014bae40
	float FindMyCreatureAndReturnHowSensibleToInteractWith(CPDesireNode& node);
	// BW1W120 00659040 BW1M119 014bad90
	float FindMyCreatureAndReturnHowHungryIsCreature(CPDesireNode& node);
	// BW1W120 00659070 BW1M119 014bace0
	float FindMyCreatureAndReturnHowThirstyIsCreature(CPDesireNode& node);
	// BW1W120 006590a0 BW1M119 014bac30
	float FindMyCreatureAndReturnHowTiredIsCreature(CPDesireNode& node);
	// BW1W120 006590d0 BW1M119 014bab70
	float FindMyCreatureAndReturnHowMuchCreatureNeedsToGoHome(CPDesireNode& node);
	// BW1W120 00659100 BW1M119 014baab0
	float FindMyCreatureAndReturnHowColdIsCreature(CPDesireNode& node);
	// BW1W120 00659140 BW1M119 014ba9f0
	float FindMyCreatureAndReturnHowHotIsCreature(CPDesireNode& node);
	// BW1W120 00659180 BW1M119 014ba910
	float FindMyCreatureAndReturnHowImportantToTeachNormalAction(CPDesireNode& node);
	// BW1W120 006591c0 BW1M119 014ba7f0
	float FindMyCreatureAndReturnHowImportantToTeachAggressiveMagic(CPDesireNode& node);
	// BW1W120 00659250 BW1M119 014ba6d0
	float FindMyCreatureAndReturnHowImportantToTeachCompassionateMagic(CPDesireNode& node);
	// BW1W120 006592e0 BW1M119 014ba5b0
	float FindMyCreatureAndReturnHowImportantToTeachImpressiveMagic(CPDesireNode& node);
	// BW1W120 00659370 BW1M119 014ba4d0
	float FindMyCreatureAndReturnHowSensibleToPlayfullyThrowFoodAtCreature(CPDesireNode& node);
	// BW1W120 006593b0 BW1M119 014ba400
	float FindMyCreatureAndReturnHowSensibleToPlayfullySlapCreature(CPDesireNode& node);
	// BW1W120 006593f0 BW1M119 014ba330
	float FindMyCreatureAndReturnHowSensibleToPlayfullyStrokeCreature(CPDesireNode& node);
	// BW1W120 00659430 BW1M119 014ba250
	float FindMyCreatureAndReturnHowSensibleToPlayfullyLeashCreature(CPDesireNode& node);
	// BW1W120 00659480 BW1M119 014ba170
	float FindMyCreatureAndReturnHowSensibleToPlayfullyCastSpellAtCreature(CPDesireNode& node);
	// BW1W120 006594c0 BW1M119 014ba060
	float FindMyCreatureAndReturnHowStarvingIsCreature(CPDesireNode& node);
	// BW1W120 00659540 BW1M119 014b9f60
	float FindMyCreatureAndReturnHowDamagedIsCreature(CPDesireNode& node);
	// BW1W120 00659590 BW1M119 014b9e90
	float FindMyCreatureAndReturnHowIllIsCreature(CPDesireNode& node);
	// BW1W120 006595d0 BW1M119 014b9e00
	float FindObjectLeashIsAttachedToAndReturnHowSensibleToLeashCreatureTo(CPDesireNode& node);
	// BW1W120 006595e0 BW1M119 014b9d70
	float FindMyCreatureAndReturnHowSensibleToUseCreatureToHelpTown(CPDesireNode& node);
	// BW1W120 006595f0 BW1M119 014b9c10
	float FindMyCreatureAndReturnHowSensibleToUseCreatureToImpressTown(CPDesireNode& node);
	// BW1W120 00659680 BW1M119 014b9b70
	float FindMyCreatureAndReturnHowSensibleToUseCreatureToDestroyTown(CPDesireNode& node);
	// BW1W120 00659690 BW1M119 014b9a50
	float FindMyCreatureAndReturnHowSensibleToUseCreatureToAttackCreature(CPDesireNode& node);
	// BW1W120 00659700 BW1M119 014b98d0
	float FindSpellIconAndReturnHowMuchMannaForAggressiveCreatureSpell(CPDesireNode& node);
	// BW1W120 00659800 BW1M119 014b9810
	float BestAggressiveCreatureSpellToCast(MAGIC_TYPE type, const MapCoords& pos);
	// BW1W120 00659830 BW1M119 014b9670
	float FindSpellIconAndReturnHowMuchMannaForImpressiveSpell(CPDesireNode& node);
	// BW1W120 00659940 BW1M119 014b95e0
	float BestImpressiveSpellToCast(MAGIC_TYPE type, const MapCoords& pos);
	// BW1W120 00659960 BW1M119 014b9500
	float FindSpellIconAndReturnHowMuchMannaForCompassionateSpell(CPDesireNode& node);
	// BW1W120 006599b0 BW1M119 014b9440
	float BestCompassionateSpellToCast(MAGIC_TYPE type, const MapCoords& pos);
	// BW1W120 006599e0 BW1M119 014b9380
	float FindSpellIconAndReturnHowMuchMannaForHealSpell(CPDesireNode& node);

	// BW1W120 006581c0 BW1M119 014adee0
	void AddLookAndLearn(CPDesireNode* node, GameThing* object, float& value, int count, unsigned long time);
	// BW1W120 00658aa0 BW1M119 014ac990
	bool ActionPickupObject(GameThingWithPos* object);
	// BW1W120 00659a00 BW1M119 014b91f0
	bool32_t GiveObjectToCreature(CPDesireNode& node);
	// BW1W120 00659ad0 BW1M119 014b8f00
	bool32_t CastFoodForMyCreature(CPDesireNode& node);
	// BW1W120 00659c90 BW1M119 014b8c10
	bool32_t MakeCreatureDrink(CPDesireNode& node);
	// BW1W120 00659e60 BW1M119 014b8910
	bool32_t RestoreMyCreatureHealth(CPDesireNode& node);
	// BW1W120 0065a020 BW1M119 014b8650
	bool32_t MakeCreatureSleep(CPDesireNode& node);
	// BW1W120 0065a1c0 BW1M119 014b8390
	bool32_t SendCreatureHome(CPDesireNode& node);
	// BW1W120 0065a370 BW1M119 014b81a0
	bool32_t MoveCreatureToWarmerArea(CPDesireNode& node);
	// BW1W120 0065a470 BW1M119 014b7fb0
	bool32_t MoveCreatureToCoolerArea(CPDesireNode& node);
	// BW1W120 0065a570 BW1M119 014b7ca0
	bool32_t TeachCreatureNormalAction(CPDesireNode& node);
	// BW1W120 0065a6d0 BW1M119 014b7a10
	bool32_t TeachCreatureAggressiveMagic(CPDesireNode& node);
	// BW1W120 0065a7f0 BW1M119 014b7780
	bool32_t TeachCreatureCompassionateMagic(CPDesireNode& node);
	// BW1W120 0065a900 BW1M119 014b74f0
	bool32_t TeachCreatureImpressiveMagic(CPDesireNode& node);
	// BW1W120 0065aa20 BW1M119 014b70e0
	bool32_t ThrowFoodAtCreature(CPDesireNode& node);
	// BW1W120 0065ad40 BW1M119 014b6f50
	bool32_t SlapCreature(CPDesireNode& node);
	// BW1W120 0065ae00 BW1M119 014b6db0
	bool32_t StrokeCreature(CPDesireNode& node);
	// BW1W120 0065aec0 BW1M119 014b6ae0
	bool32_t AttachLeashFromCreatureToObject(CPDesireNode& node);
	// BW1W120 0065b070 BW1M119 014b6760
	bool32_t CastSpellOnMyCreatureForALaugh(CPDesireNode& node);
	// BW1W120 0065b2a0 BW1M119 014b6700
	bool32_t RestoreMyCreatureFromIllness(CPDesireNode& node);
	// BW1W120 0065b2b0 BW1M119 inlined
	bool32_t AddSubActionsToTeachCreature(Creature* creature, GameThingWithPos* object,
	                                      CREATURE_ACTION_LEARNING_TYPE type, unsigned long action);
	// BW1W120 0065b380 BW1M119 014b6560
	bool32_t AddSubActionsToTeachCreatureNormalAction(Creature* creature, GameThingWithPos* object,
	                                                  unsigned long action);
	// BW1W120 0065b4b0 BW1M119 014b61a0
	bool32_t AddSubActionsToTeachCreatureMagicAction(Creature* creature, GameThingWithPos* object,
	                                                 unsigned long action);
	// BW1W120 0065b6c0 BW1M119 null
	bool32_t UnreferencedEmptyTeachFunction1(Creature* creature);
	// BW1W120 0065b6d0 BW1M119 null
	bool32_t AddSubActionsToThrowTreeNearCreature(Creature* creature);
	// BW1W120 0065b7d0 BW1M119 null
	bool32_t AddSubActionsToThrowTreeAtCreature(Creature* creature);
	// BW1W120 0065b880 BW1M119 null
	bool32_t UnreferencedEmptyTeachFunction2(Creature* creature);
	// BW1W120 0065b890 BW1M119 null
	bool32_t UnreferencedEmptyTeachFunction3(Creature* creature);
	// BW1W120 0065b8a0 BW1M119 null
	bool32_t UnreferencedEmptyTeachFunction4(Creature* creature);
	// BW1W120 0065b8b0 BW1M119 null
	bool32_t UnreferencedEmptyTeachFunction5(Creature* creature);
	// BW1W120 0065b8c0 BW1M119 null
	bool32_t UnreferencedEmptyTeachFunction6(Creature* creature);
	// BW1W120 0065b8d0 BW1M119 014b5f60
	bool32_t AddSubActionsToTeachCreatureToUseTotem(Creature* creature);
	// BW1W120 0065ba10 BW1M119 null
	bool32_t UnreferencedEmptyTeachFunction7(Creature* creature);
	// BW1W120 0065ba20 BW1M119 null
	bool32_t UnreferencedEmptyTeachFunction8(Creature* creature);
	// BW1W120 0065ba30 BW1M119 null
	bool32_t UnreferencedEmptyTeachFunction9(Creature* creature);

	// BW1W120 0065bcb0 BW1M119 014b5c90
	Creature* GetCreature();

	// BW1W120 0065bdf0 BW1M119 014b5970
	float FindMyCreatureAndReturnNearnessAndAvailabilityOfCreature(CPDesireNode& node);
	// BW1W120 0065be90 BW1M119 014b5610
	bool32_t ForceCreatureToHelpTown(CPDesireNode& node);
	// BW1W120 0065c0c0 BW1M119 014b51c0
	bool32_t ForceCreatureToHelpTownBuild(CPDesireNode& node);
	// BW1W120 0065c370 BW1M119 014b4dc0
	bool32_t ForceCreatureToImpressTown(CPDesireNode& node);
	// BW1W120 0065c5e0 BW1M119 014b4ab0
	bool32_t ForceCreatureToAttackTown(CPDesireNode& node);
	// BW1W120 0065c7b0 BW1M119 014b49d0
	bool32_t IsCreatureAttachedToObject(GameThingWithPos* object);
	// BW1W120 0065c800 BW1M119 014b4760
	bool32_t ForceCreatureToAttackCreature(CPDesireNode& node);
	// BW1W120 0065c960 BW1M119 014b4630
	bool32_t ForceCreatureToDefendTown(CPDesireNode& node);
	// BW1W120 0065ca10 BW1M119 014b42e0
	bool32_t AttackCreatureWithSpells(CPDesireNode& node);
	// BW1W120 0065cc50 BW1M119 014b40e0
	bool32_t ThrowDestructiveObjectAtTown(CPDesireNode& node);
	// BW1W120 0065cd60 BW1M119 014b3d90
	bool32_t ImpressTownWithSpells(CPDesireNode& node);
	// BW1W120 0065cf50 BW1M119 014b3b50
	bool32_t ThrowObjectToImpressTown(CPDesireNode& node);
	// BW1W120 0065d0d0 BW1M119 014b39c0
	float FindOtherCreatureAndReturnHowSensibleToAttack(CPDesireNode& node);
	// BW1W120 0065d1c0 BW1M119 014b3940
	float GetHeightOfCreatureIgnoringShrinkingNearCitadel(Creature& creature);
	// BW1W120 0065d1e0 BW1M119 014b37b0
	float GetMyCreaturesDesireGotoObject(Object* object, bool same_town_counts);
	// BW1W120 0065d2c0 BW1M119 014b3720
	float MaxDistanceToAttackOtherCreature();
	// BW1W120 0065d2e0 BW1M119 014b3690
	GameThingWithPos* GetObjectCreatureLeashedTo();
	// BW1W120 006642b0 BW1M119 014c5ba0
	void LoadPersonalltyTree(char* file_name);
	// BW1W120 00664000 BW1M119 014c6210
	void SetPersonality(char* name, float value);
};

class GComputerPlayerQueue : public GameThing
{
public:
	uint8_t                          field_0x14[0x110];
	LHListNode<GComputerPlayerQueue> next;

	// Override methods

	// BW1W120 00664380 BW1M119 014c5a10
	virtual ~GComputerPlayerQueue();
	// BW1W120 00561c20 BW1M119 014c4d80
	virtual char* GetDebugText() { return "GComputerPlayerQueue:"; }
	// BW1W120 00664660 BW1M119 014c4fb0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00664530 BW1M119 014c52c0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00561c10 BW1M119 014c4d40
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_PLAYER_QUEUE; }

	// BW1W120 00561bf0 BW1M119 inlined
	GComputerPlayerQueue() {}
};

class GComputerSeen : public GameThing
{
public:
	GameThing* field_0x14;
	uint32_t   field_0x18;

	// Override methods

	// BW1W120 0055e340 BW1M119 014b3650
	virtual char* GetDebugText() { return "ComputerSeen:"; }
	// BW1W120 00656bf0 BW1M119 014b0e50
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00656b80 BW1M119 014b0f40
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055e330 BW1M119 014b3610
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_SEEN; }

	// BW1W120 inlined BW1M119 inlined
	GComputerSeen() {}
};

class GComputerSpellCast : public GameThing
{
public:
	uint8_t field_0x14[0x8];

	// Override methods

	// BW1W120 005614a0 BW1M119 014c7340
	virtual char* GetDebugText() { return "ComputerSpellCast:"; }
	// BW1W120 00665c00 BW1M119 014c8cf0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00665b90 BW1M119 014c8de0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00561490 BW1M119 014c7300
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCOMPUTER_SPELL_CAST; }

	// BW1W120 inlined BW1M119 inlined
	GComputerSpellCast() {}
};

enum PLAYER_SUB_ACTION
{
	PLAYER_SUB_ACTION_PICK_UP_OBJECT,
	PLAYER_SUB_ACTION_MOVE_HAND_TO_POS,
	PLAYER_SUB_ACTION_MOVE_HAND_TO_OBJECT,
	PLAYER_SUB_ACTION_MOVE_HAND_TO_CREATURE_HEAD,
	PLAYER_SUB_ACTION_MOVE_HAND_NEAR_POS,
	PLAYER_SUB_ACTION_MOVE_HAND_NEAR_OBJECT,
	PLAYER_SUB_ACTION_MOVE_HAND_TO_POS_STOP_WHEN_OUT_OF_INFLUENCE,
	PLAYER_SUB_ACTION_THROW_OBJECT_IN_HAND_AT_POS,
	PLAYER_SUB_ACTION_DROP_OBJECT_IN_HAND_AT_POS,
	PLAYER_SUB_ACTION_SAY_TEXT,
	PLAYER_SUB_ACTION_GIVE_OBJECT_IN_HAND_TO_CREATURE,
	PLAYER_SUB_ACTION_SET_LEASH,
	PLAYER_SUB_ACTION_ATTACH_LEASH_TO_OBJECT,
	PLAYER_SUB_ACTION_SLAP_CREATURE,
	PLAYER_SUB_ACTION_STROKE_CREATURE,
	PLAYER_SUB_ACTION_CAST_SPELL_AT_OBJECT,
	PLAYER_SUB_ACTION_CAST_SPELL_AT_POS,
	PLAYER_SUB_ACTION_CAST_SPELL_TOWARD_POS,
	PLAYER_SUB_ACTION_CAST_SHIELD_AT_POS,
	PLAYER_SUB_ACTION_CLOSE_DOWN_CURRENT_SPELL,
	PLAYER_SUB_ACTION_RAISE_TOTEM,
	PLAYER_SUB_ACTION_LOWER_TOTEM,
	PLAYER_SUB_ACTION_MAKE_GESTURE,
	PLAYER_SUB_ACTION_WAIT,
	PLAYER_SUB_ACTION_DROP_OBJECT_IN_HAND_ON_OBJECT,
	PLAYER_SUB_ACTION_FORCE_CREATURE_TO_PERFORM_ACTION,
	PLAYER_SUB_ACTION_FORCE_CREATURE_DOMINANT_DESIRE,
	PLAYER_SUB_ACTION_WAIT_FOR_OBJECT_TO_BE_NEAR_POS,
	PLAYER_SUB_ACTION_WAIT_FOR_SPELL_TO_WEAR_OFF,
	PLAYER_SUB_ACTION_CREATE_FOOD_FROM_CONTAINER,
	PLAYER_SUB_ACTION_CREATE_WOOD_FROM_CONTAINER,
	PLAYER_SUB_ACTION_SET_CREATURE_SPEED_FOR_JOURNEY,
	PLAYER_SUB_ACTION_MAKE_WORSHIPPERS_CHANT_FOR_SPELL,
	PLAYER_SUB_ACTION_MAKE_WORSHIPPERS_CHANT_FOR_SPELL_NO_WAIT,
	PLAYER_SUB_ACTION_SET_HAND_TO_POS,
	PLAYER_SUB_ACTION_MOVE_HAND_TO_POS_DIRECT_Y_INTERPOLATION,
	PLAYER_SUB_ACTION_SET_HAND_TO_POS_DIRECT_Y,
	PLAYER_SUB_ACTION_LAST,
};

class PlayerActionState : public GameThingWithPos
{
public:
	LHLinkedList<PlayerSubAction*> SubActions;           /* 0x28 */
	bool32_t                       NeedPreSubAction;     /* 0x30 */
	bool32_t                       PreSubActionInserted; /* 0x34 */
	uint32_t                       SubActionPart;        /* 0x38 */
	uint32_t                       StartTurn;            /* 0x3c */
	float                          EstimatedTime;        /* 0x40 */
	uint32_t                       Timer;                /* 0x44 */
	bool32_t                       field_0x48;
	uint32_t                       PlayerNumber;   /* 0x4c */
	LHPoint                        HandPoint;      /* 0x50 */
	LHPoint                        TargetPoint;    /* 0x5c */
	float                          HandSpeed;      /* 0x68 */
	GComputerPlayer*               ComputerPlayer; /* 0x6c */
	uint32_t                       field_0x70;
	GameThingWithPos*              SpellTarget;            /* 0x74 */
	float                          GestureProgress;        /* 0x78 */
	LHPoint                        HandPointBeforeGesture; /* 0x7c */
	bool32_t                       field_0x88;
	char                           FailureText[0x100]; /* 0x8c */
	char                           field_0x18c[0x100];

	// Override methods

	// BW1W120 00650100 BW1M119 014a3620
	virtual void ToBeDeleted(int param_1);
	// BW1W120 006508e0 BW1M119 014a26e0
	virtual GPlayer* GetPlayer();
	// BW1W120 00651a20 BW1M119 014a03d0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00651740 BW1M119 014a0c20
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055e290 BW1M119 014a4e30
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PLAYER_ACTION_STATE; }
	// BW1W120 00651d20 BW1M119 014a02f0
	virtual void SaveExtraData(GameOSFile& param_1);
	// BW1W120 0055e280 BW1M119 014a4df0
	virtual const char* GetText() { return "Player Action"; }

	// BW1W120 0055e230 BW1M119 inlined
	PlayerActionState() { SetToZero(); }

	// BW1W120 006500c0 BW1M119 014a36f0
	void SetToZero();
	// BW1W120 00650280 BW1M119 014a3160
	void AddSubAction(PLAYER_SUB_ACTION type, LHLinkedList<PlayerSubActionArgument*>* arguments);
	// BW1W120 00650b20 BW1M119 014a2430
	bool32_t ValidateSetup(bool32_t valid, char* failure_text);
};

class PlayerSubAction : public GameThing
{
public:
	PLAYER_SUB_ACTION                      Type;      /* 0x14 */
	LHLinkedList<PlayerSubActionArgument*> Arguments; /* 0x18 */

	// Override methods

	// BW1W120 00650c40 BW1M119 014a20b0
	virtual ~PlayerSubAction();
	// BW1W120 00651e70 BW1M119 0149fc50
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00651d80 BW1M119 014a0130
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055e200 BW1M119 014a4d10
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PLAYER_SUB_ACTION; }

	// BW1W120 0055e1e0 BW1M119 inlined
	PlayerSubAction() {}
};

enum PLAYER_SUB_ACTION_ARGUMENT_TYPE
{
	PLAYER_SUB_ACTION_ARGUMENT_TYPE_THING = 0,
	PLAYER_SUB_ACTION_ARGUMENT_TYPE_POINT = 1,
	PLAYER_SUB_ACTION_ARGUMENT_TYPE_INT = 3,
	PLAYER_SUB_ACTION_ARGUMENT_TYPE_FLOAT = 5,
};

class PlayerSubActionArgument : public GameThing
{
public:
	PLAYER_SUB_ACTION_ARGUMENT_TYPE Type;
	GameThingWithPos*               Thing;
	char                            Text[0x40]; /* 0x1c */
	long                            IntValue;
	GameThing*                      field_0x60;
	float                           FloatValue;
	LHPoint                         PointValue;

	// Override methods

	// BW1W120 00652140 BW1M119 0149f4d0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00651f80 BW1M119 0149f8b0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055e1b0 BW1M119 0149f280
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PLAYER_SUB_ACTION_ARGUMENT; }

	// BW1W120 0055e180 BW1M119 inlined
	PlayerSubActionArgument()
	{
		SetToZero();
		Type = PLAYER_SUB_ACTION_ARGUMENT_TYPE_FLOAT;
		FloatValue = 0.0f;
	}

	// BW1W120 006510f0 BW1M119 014a1540
	PlayerSubActionArgument(GameThingWithPos* thing);
	// BW1W120 00651120 BW1M119 014a1490
	PlayerSubActionArgument(const LHPoint& point);
	// BW1W120 006511b0 BW1M119 014a1400
	PlayerSubActionArgument(int value);
	// BW1W120 00651210 BW1M119 014a1370
	PlayerSubActionArgument(float value);

	// BW1W120 00651240 BW1M119 014a1320
	void SetToZero();

	// BW1W120 00650d70 BW1M119 014a1e60
	static LHLinkedList<PlayerSubActionArgument*>* CreateList(PlayerSubActionArgument* first);
	// BW1W120 00650df0 BW1M119 014a1cb0
	static LHLinkedList<PlayerSubActionArgument*>* CreateList(PlayerSubActionArgument* first,
	                                                          PlayerSubActionArgument* second);
	// BW1W120 00650ea0 BW1M119 014a1aa0
	static LHLinkedList<PlayerSubActionArgument*>* CreateList(PlayerSubActionArgument* first,
	                                                          PlayerSubActionArgument* second,
	                                                          PlayerSubActionArgument* third);
	// BW1W120 00650f90 BW1M119 014a16e0
	static LHLinkedList<PlayerSubActionArgument*>* CreateList(PlayerSubActionArgument* first,
	                                                          PlayerSubActionArgument* second,
	                                                          PlayerSubActionArgument* third,
	                                                          PlayerSubActionArgument* fourth);
};

class CPDesireNode
{
public:
	float                   field_0x0;
	float                   field_0x4;
	CPDesireNodeInfo*       Info;   /* 0x8 */
	CPDesireNode*           Parent; /* 0xc */
	uint8_t                 field_0x10[0xc];
	PlayerSubActionArgument Argument; /* 0x1c */
	float                   field_0x90;
	GameThing*              RelevantObject; /* 0x94 */
	uint8_t                 field_0x98[0x10];
	CPDesireNode*           RelevantChild; /* 0xa8 */

	// BW1W120 00655cb0 BW1M119 014b2bb0
	GameThing* GetRelevantObject();
	// BW1W120 00655cc0 BW1M119 014b2b30
	GameThing* GetParentObject();
	// BW1W120 00655cd0 BW1M119 014b2ad0
	CPDesireNode* GetRelevantChild();
	// BW1W120 00655cf0 BW1M119 014b2a30
	GameThing* GetChildObject();
};

#endif /* BW1_DECOMP_PLAYER_COMPUTER_INCLUDED_H */
