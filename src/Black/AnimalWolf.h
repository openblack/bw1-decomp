#ifndef BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H
#define BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPlane.h> /* For struct LHPlane */
#include <Lionhead/LH3DLib/development/Zoomer.h>  /* For struct Zoomer */

#include "AnimalLion.h" /* For struct Lion */
#include "MapCoords.h"  /* For struct MapCoords */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
class Living;
struct MapCoords;
class MobileWallHug;
class Object;

class SpellWolf : public Lion
{
public:
	MapCoords FinalDestPos;
	LHPlane   FinalDestPlane;
	float     field_0x164;
	Zoomer    FadeAlpha;
	GPlayer*  field_0x198;

	// Override methods

	// BW1W120 00420a00 BW1M119 01180bb0
	virtual bool32_t DecideWhatToDo();
	// BW1W120 00421300 BW1M119 0117fb70
	virtual bool32_t MoveToPos();
	// BW1W120 00420a10 BW1M119 01180b60
	virtual bool32_t Wander();
	// BW1W120 004210a0 BW1M119 0117ffc0
	virtual bool32_t MoveToPosAndLookAround();
	// BW1W120 004209a0 BW1M119 01180d20
	virtual uint32_t FinishPouncing();
	// BW1W120 00420d60 BW1M119 011806d0
	virtual uint32_t IsHuntingTargetValid();
	// BW1W120 00420f30 BW1M119 01180350
	virtual uint32_t HuntingMoveToPosAbaondon();
	// BW1W120 00420a20 BW1M119 01180af0
	virtual void StartFadeOut(float time);
	// BW1W120 00420bf0 BW1M119 01180990
	virtual uint32_t ProcessFadeOut();
	// BW1W120 00420ef0 BW1M119 01180440
	virtual uint32_t GetTimeToBank();
	// BW1W120 00420f00 BW1M119 011803e0
	virtual uint32_t GetBankAngle(float param_1, float param_2);
	// BW1W120 0041c600 BW1M119 01177f90
	virtual uint32_t MoveAnimation();
	// BW1W120 0041c620 BW1M119 01177f10
	virtual uint32_t DyingAnimation();
	// BW1W120 0041c630 BW1M119 01177ed0
	virtual uint32_t DeadAnimation();
	// BW1W120 0041c640 BW1M119 01177e90
	virtual uint32_t EatAnimation();
	// BW1W120 0041c650 BW1M119 01177e50
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041c660 BW1M119 01177e10
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041c670 BW1M119 01177dd0
	virtual uint32_t SleepAnimation();
	// BW1W120 0041c680 BW1M119 01177d90
	virtual uint32_t PounceAnimation();
	// BW1W120 0041c690 BW1M119 01177d50
	virtual uint32_t HideAnimation();
	// BW1W120 0041c700 BW1M119 01177cd0
	virtual uint32_t InHandAnimation();
	// BW1W120 0041c610 BW1M119 01177f50
	virtual uint32_t LandedAnimation();
	// BW1W120 0041c710 BW1M119 01177c90
	virtual uint32_t ThrownAnimation();
	// BW1W120 004208a0 BW1M119 0117fa70
	virtual GPlayer* GetPlayer();
	// BW1W120 004208b0 BW1M119 0117fab0
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 004208d0 BW1M119 0117fb30
	virtual char* GetDebugText();
	// BW1W120 004210b0 BW1M119 0117fe00
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004211d0 BW1M119 0117fc30
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 004208c0 BW1M119 0117faf0
	virtual uint32_t GetSaveType();
	// BW1W120 0051c560 BW1M119 010c7d90
	virtual void Draw();
	// BW1W120 00420910 BW1M119 01180e50
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00420cf0 BW1M119 011808a0
	virtual bool32_t SetDying();
	// BW1W120 0041c6a0 BW1M119 01177d10
	virtual uint32_t StandAnimation();
	// BW1W120 004209b0 BW1M119 01180cf0
	virtual void SetSpeed(int param_1);
	// BW1W120 00420d50 BW1M119 01180860
	virtual uint32_t GetNumTurnsToDieOver();

	// BW1W120 inlined BW1M119 inlined
	SpellWolf() { SetToZero(); }

	// BW1W120 00420930 BW1M119 01180d80
	void SetToZero();
};

class Wolf : public Lion
{
public:
	// Override methods

	// BW1W120 004216b0 BW1M119 01181f30
	virtual bool32_t DecideWhatToDo();
	// BW1W120 00421c50 BW1M119 011816b0
	virtual bool32_t MoveToPos();
	// BW1W120 00421ce0 BW1M119 01181660
	virtual bool32_t Wander();
	// BW1W120 004219e0 BW1M119 01181700
	virtual bool32_t HideInLair();
	// BW1W120 00421950 BW1M119 01181b20
	virtual uint32_t ReactToAnimalNeeds();
	// BW1W120 00421730 BW1M119 01181c60
	virtual uint32_t CalculeLairPos();
	// BW1W120 0041c4b0 BW1M119 011782c0
	virtual uint32_t MoveAnimation();
	// BW1W120 0041c500 BW1M119 01178240
	virtual uint32_t DyingAnimation();
	// BW1W120 0041c510 BW1M119 01178200
	virtual uint32_t DeadAnimation();
	// BW1W120 0041c520 BW1M119 011781d0
	virtual uint32_t EatAnimation();
	// BW1W120 0041c530 BW1M119 01178190
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041c540 BW1M119 01178150
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041c550 BW1M119 01178110
	virtual uint32_t SleepAnimation();
	// BW1W120 0041c560 BW1M119 011780d0
	virtual uint32_t PounceAnimation();
	// BW1W120 0041c570 BW1M119 01178090
	virtual uint32_t HideAnimation();
	// BW1W120 0041c5e0 BW1M119 01178010
	virtual uint32_t InHandAnimation();
	// BW1W120 0041c4f0 BW1M119 01178280
	virtual uint32_t LandedAnimation();
	// BW1W120 0041c5f0 BW1M119 01177fd0
	virtual uint32_t ThrownAnimation();
	// BW1W120 00421670 BW1M119 011821b0
	virtual char* GetDebugText();
	// BW1W120 00421660 BW1M119 01182180
	virtual uint32_t GetSaveType();
	// BW1W120 0041c580 BW1M119 01178050
	virtual uint32_t StandAnimation();

	// BW1W120 0055e590 BW1M119 0130e210
	Wolf() {}
};

#endif /* BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H */
