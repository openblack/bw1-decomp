#ifndef BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class DefensiveSphere;
class GameOSFile;
class GameThing;
class PSysManager;
struct LHPoint;

class DefensiveShield : public PSysBase
{
public:
	DefensiveShield* Previous;
	DefensiveShield* Next;
	PSysManager*     Manager;

	// BW1W120 006d0a60 BW1M119 0148e570
	DefensiveShield(PSysManager* manager);

	// Override methods

	// BW1W120 006d0ad0 BW1M119 01426c60
	virtual ~DefensiveShield();
	// BW1W120 006d0ac0 BW1M119 01426c20
	virtual char* GetDebugText();
	// BW1W120 00699ca0 BW1M119 01420a90
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006d0680 BW1M119 01487ae0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006d0ab0 BW1M119 01426be0
	virtual uint32_t GetSaveType();

	// BW1W120 purecall BW1M119 purecall
	virtual void FindIntersect(const LHPoint& from, const LHPoint& to, float radius, LHPoint* intersect) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void DeflectOffShield(const LHPoint& pos, LHPoint* velocity) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool HasCrossedIntoShield(const LHPoint& from, const LHPoint& to, float radius) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool IsPointInShield(const LHPoint& pos, float radius) = 0;

	// BW1W120 006d0af0 BW1M119 0148e500
	void SetHitPoint(const LHPoint& pos);
	// BW1W120 006d0b10 BW1M119 0148e4b0
	GameThing* GetOwnerSpell();
};
static_assert(sizeof(DefensiveShield) == 0x20, "Data type is of wrong size");

class TDefensiveShields
{
public:
	// BW1W120 006d0b20 BW1M119 0148e3a0
	static DefensiveSphere* AddDefensiveSphere(PSysManager* manager, const LHPoint& pos, float radius);
	// BW1W120 006d0b70 BW1M119 0148e330
	static void Delete(DefensiveShield* shield);
	// BW1W120 006d0bc0 BW1M119 0148e250
	static DefensiveShield* IsPointInAMagicalShield(const LHPoint& pos, float radius);
	// BW1W120 006d0c20 BW1M119 0148e160
	static DefensiveShield* HasCrossedIntoMagicalShield(const LHPoint& from, const LHPoint& to, float radius);
};

#endif /* BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H */
