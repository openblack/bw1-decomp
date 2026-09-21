#ifndef BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Animal.h" /* For struct Animal */

// Forward Declares

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

	// BW1W120 0041dda0 BW1M119 0117aa90
	virtual ~Dove();
	// BW1W120 0041dd90 BW1M119 0117b7b0
	virtual char* GetDebugText();
	// BW1W120 0041f130 BW1M119 0117c910
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0041f110 BW1M119 0117c970
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0041dd80 BW1M119 0117b780
	virtual uint32_t GetSaveType();
	// BW1W120 0041f190 BW1M119 0117c7e0
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0041f150 BW1M119 0117c860
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 0041dd70 BW1M119 0117a590
	virtual uint32_t CanBePoodOn(Creature* param_1);
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
};

class SpellDove : public Dove
{
public:
	// Override methods

	// BW1W120 0041eb60 BW1M119 0117cb00
	virtual ~SpellDove();
	// BW1W120 0041eb50 BW1M119 0117e260
	virtual char* GetDebugText();
	// BW1W120 0041fad0 BW1M119 0117b8c0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0041fb40 BW1M119 0117b7e0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0041eb40 BW1M119 0117e220
	virtual uint32_t GetSaveType();
	// BW1W120 0041f5c0 BW1M119 0117bff0
	virtual bool32_t SetDying();
	// BW1W120 0041bde0 BW1M119 011799d0
	virtual uint32_t StandAnimation();
	// BW1W120 0041f620 BW1M119 0117bfb0
	virtual uint32_t GetNumTurnsToDieOver();
};

#endif /* BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H */
