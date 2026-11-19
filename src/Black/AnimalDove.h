#ifndef BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Animal.h" /* For struct Animal */
#include "Flock.h"  /* For class Flock */

// Forward Declares

#define SPELL_DOVE_NUM_TURNS_TO_DIE_OVER 20
#define DOVE_LAND_SEARCH_COUNT           50
#define DOVE_LEADER_LAND_SEARCH_COUNT    100
#define DOVE_LAND_RANDOM_RADIUS          10.0f
#define DOVE_PATH_STEP                   16
#define SPELL_DOVE_OPAQUE_ALPHA          0xff
#define DOVE_SLEEP_TURNS                 200

enum FLOCK_FORMATION
{
	FLOCK_FORMATION_CHAIN = 2,
	FLOCK_FORMATION_TRIANGLE = 3,
	FLOCK_FORMATION_LANDING = 7,
};

class Base;
class Creature;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;
class Object;

class Dove : public Animal
{
public:
	// Override methods

	// BW1W120 0041e7e0 BW1M119 010891b0
	virtual void SetAnim(int anim);
	// BW1W120 0041f1b0 BW1M119 0117c6d0
	virtual bool32_t Dying();
	// BW1W120 0041de40 BW1M119 0106a810
	virtual bool32_t DecideWhatToDo();
	// BW1W120 0041ea40 BW1M119 01025ca0
	virtual int SetCurrentAndDestinationState(uint8_t current, uint8_t destination);
	// BW1W120 0041f840 BW1M119 01033990
	virtual uint32_t IsPosValidForMapCellExistance(const MapCoords& param_1);
	// BW1W120 0041eab0 BW1M119 0117d300
	virtual bool32_t CanBeHealedByHealSpell();
	// BW1W120 0041df50 BW1M119 01025a60
	virtual bool32_t StartWander();
	// BW1W120 0041e4d0 BW1M119 0117d980
	virtual bool32_t Sleeps();
	// BW1W120 0041e160 BW1M119 01052f50
	virtual bool32_t SpecialMoveToPos();
	// BW1W120 0041e0b0 BW1M119 0104eca0
	virtual bool32_t FollowFlock();
	// BW1W120 0041e250 BW1M119 0117dad0
	virtual bool32_t LandAtPos();
	// BW1W120 0041e600 BW1M119 01057870
	virtual ANIMAL_BEHAVIOUR_RESULT ReactToAnimalNeeds();
	// BW1W120 0041e6c0 BW1M119 0117d840
	virtual bool32_t LookForFoodPos(MapCoords* pos);
	// BW1W120 0041e720 BW1M119 0117d750
	virtual uint32_t LookForSleepPos(MapCoords* pos);
	// BW1W120 0041f260 BW1M119 010527f0
	virtual float GetTimeToBank();
	// BW1W120 0041f270 BW1M119 010363f0
	virtual float GetBankAngle(float param_1, float param_2);
	// BW1W120 0041bd30 BW1M119 01036520
	virtual uint32_t MoveAnimation();
	// BW1W120 0041bd50 BW1M119 01179c00
	virtual uint32_t DeadAnimation();
	// BW1W120 0041bd60 BW1M119 01179bd0
	virtual uint32_t EatAnimation();
	// BW1W120 0041bd70 BW1M119 01179b90
	virtual uint32_t SleepAnimation();
	// BW1W120 0041bd90 BW1M119 01179b10
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041bd20 BW1M119 01080000
	virtual uint32_t DecideAnimation();
	// BW1W120 0041dd40 BW1M119 0117a4f0
	virtual bool IsSelfColored() { return false; }
	// BW1W120 0041dd50 BW1M119 0117a530
	virtual void SetColor() {}
	// BW1W120 0041dd60 BW1M119 0117a560
	virtual bool32_t IAmABird() { return true; }
	// BW1W120 0041dd70 BW1M119 0117a590
	virtual bool32_t CanBePoodOn(Creature* creature) { return false; }
	// BW1W120 0041dd80 BW1M119 0117b780
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_DOVE; }
	// BW1W120 0041dd90 BW1M119 0117b7b0
	virtual char* GetDebugText() { return "Animal: Dove"; }
	// BW1W120 0041f130 BW1M119 0117c910
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0041f110 BW1M119 0117c970
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0041f190 BW1M119 0117c7e0
	virtual bool32_t CanBePickedUpByCreature(Creature* creature);
	// BW1W120 0041f150 BW1M119 0117c860
	virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
	// BW1W120 004d1b10 BW1M119 01247a00
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0041eaa0 BW1M119 0117d340
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0041f680 BW1M119 0103a660
	virtual void Draw();
	// BW1W120 0041f240 BW1M119 0117c630
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0041bd80 BW1M119 01179b50
	virtual uint32_t StandAnimation();

	// BW1W120 0055e790 BW1M119 0130df90
	Dove() {}
	// BW1W120 inlined BW1M119 inlined
	virtual ~Dove() {}
	// BW1W120 0041dcf0 BW1M119 0117e170
	Dove(const MapCoords& coords, const GAnimalInfo* info, unsigned long age);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	uint32_t GetFlockFormationState() { return flock->FormationState; }
	// BW1W120 inlined BW1M119 inlined
	uint32_t GetFlockDestinationState() { return flock->DestinationState; }
	// BW1W120 inlined BW1M119 inlined
	long GetFlockIndex()
	{
		long             index = 0;
		SLLNode<Living>* node;
		for (node = flock->Members.First; node != NULL; node = node->Next)
		{
			if (node->Data == this)
			{
				break;
			}
			index++;
		}
		return node != NULL ? index : -1;
	}
	// BW1W120 0041df20 BW1M119 01014420
	float GetAltitudeNormal();
	// BW1W120 0041e130 BW1M119 inlined
	bool32_t UpdateFlockAnimation(bool32_t force);
	// BW1W120 0041e210 BW1M119 inlined
	bool32_t IsWithinStep(const MapCoords& coords);
	// BW1W120 0041e790 BW1M119 0117d690
	bool32_t SetLandingPos(const MapCoords& coords);
	// BW1W120 0041e7f0 BW1M119 0117d420
	bool32_t ChainMovement();
	// BW1W120 0041e890 BW1M119 0104f350
	bool32_t TriangleMovement();

	// Static methods

	// BW1W120 0041ddd0 BW1M119 0117e060
	static Dove* Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age);
};

class SpellDove : public Dove
{
public:
	Zoomer ScaleZoomer; /* 0x148 */

	// Override methods

	// BW1W120 0041e6b0 BW1M119 0117d8f0
	virtual ANIMAL_BEHAVIOUR_RESULT ReactToAnimalNeeds();
	// BW1W120 0041f2f0 BW1M119 0117c240
	virtual void StartFadeOut(float time);
	// BW1W120 0041f4c0 BW1M119 0117c0e0
	virtual uint32_t ProcessFadeOut();
	// BW1W120 0041f2d0 BW1M119 0117c2f0
	virtual float GetTimeToBank();
	// BW1W120 0041f2e0 BW1M119 0117c2b0
	virtual float GetBankAngle(float param_1, float param_2);
	// BW1W120 0041bda0 BW1M119 01179ad0
	virtual uint32_t MoveAnimation();
	// BW1W120 0041bdb0 BW1M119 01179a90
	virtual uint32_t DeadAnimation();
	// BW1W120 0041bdc0 BW1M119 01179a50
	virtual uint32_t EatAnimation();
	// BW1W120 0041bdd0 BW1M119 01179a10
	virtual uint32_t SleepAnimation();
	// BW1W120 0041bdf0 BW1M119 01179990
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041fad0 BW1M119 0117b8c0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0041fb40 BW1M119 0117b7e0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0041f5c0 BW1M119 0117bff0
	virtual bool32_t SetDying();
	// BW1W120 0041bde0 BW1M119 011799d0
	virtual uint32_t StandAnimation();
	// BW1W120 0041eb30 BW1M119 0117abe0
	virtual bool IsSelfColored() { return true; }
	// BW1W120 0041eb40 BW1M119 0117e220
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_SPELL_DOVE; }
	// BW1W120 0041eb50 BW1M119 0117e260
	virtual char* GetDebugText() { return "Animal: SpellDove"; }
	// BW1W120 0041f630 BW1M119 0117bf10
	virtual void SetColor();
	// BW1W120 0041f620 BW1M119 0117bfb0
	virtual uint32_t GetNumTurnsToDieOver();

	// BW1W120 inlined BW1M119 0130df10
	SpellDove() { SetToZero(); }
	// BW1W120 inlined BW1M119 inlined
	SpellDove(const MapCoords& coords, const GAnimalInfo* info, unsigned long age) : Dove(coords, info, age)
	{
		SetToZero();
	}

	// BW1W120 0041f280 BW1M119 0117c330
	void SetToZero();

	// Static methods

	// BW1W120 0041eac0 BW1M119 0117d1d0
	static SpellDove* Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age);
};

#endif /* BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H */
