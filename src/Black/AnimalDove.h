#ifndef BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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

	// BW1W120 0041dda0 BW1M100 10171a70 Dove::_dt(void)
	virtual ~Dove();
	// BW1W120 0041dd90 BW1M100 10172860 Dove::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0041f130 BW1M100 10173580 Dove::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0041f110 BW1M100 101735e0 Dove::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0041dd80 BW1M100 10172830 Dove::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0041f190 BW1M100 10173450 Dove::CanBePickedUpByCreature(Creature *)
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0041f150 BW1M100 101734d0 Dove::CanBeStompedOnByCreature(Creature *)
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 0041dd70 BW1M100 10171570 Dove::CanBePoodOn(Creature *)
	virtual uint32_t CanBePoodOn(Creature* param_1);
	// BW1W120 004d1b10 BW1M100 10243110 Dove::GetHowMuchCreatureWantsToLookAtMe(void)
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0041eaa0 BW1M100 10173fb0 Dove::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 0041f680 BW1M100 10037cf0 Dove::Draw(void)
	virtual void Draw();
	// BW1W120 0041f240 BW1M100 101732a0 Dove::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 0041bd80 BW1M100 10170ba0 Dove::StandAnimation(void)
	virtual uint32_t StandAnimation();
};

class SpellDove : public Dove
{
public:
	// Override methods

	// BW1W120 0041eb60 BW1M100 10173770 SpellDove::_dt(void)
	virtual ~SpellDove();
	// BW1W120 0041eb50 BW1M100 10175210 SpellDove::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0041fad0 BW1M100 10172970 SpellDove::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0041fb40 BW1M100 10172890 SpellDove::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0041eb40 BW1M100 101751d0 SpellDove::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0041f5c0 BW1M100 10172e20 SpellDove::SetDying(void)
	virtual bool SetDying();
	// BW1W120 0041bde0 BW1M100 10170a20 SpellDove::StandAnimation(void)
	virtual uint32_t StandAnimation();
	// BW1W120 0041f620 BW1M100 10172de0 SpellDove::GetNumTurnsToDieOver(void)
	virtual uint32_t GetNumTurnsToDieOver();
};

#endif /* BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H */
