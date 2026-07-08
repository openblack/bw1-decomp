#ifndef BW1_DECOMP_POO_INCLUDED_H
#define BW1_DECOMP_POO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class GameThing;
class GameThingWithPos;
class Object;

class Poo : public MobileObject
{
public:
	// Override methods

	// BW1W120 0055d0c0 BW1M100 103be130 Poo::_dt(void)
	virtual ~Poo();
	// BW1W120 0055d0b0 BW1M100 103be1e0 Poo::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0055d0a0 BW1M100 103be1b0 Poo::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 006083c0 BW1M100 103bad80 Poo::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 006079d0 BW1M100 103bc130 Poo::InsertMapObject(void)
	virtual void InsertMapObject();
	// BW1W120 006083d0 BW1M100 103bad50 Poo::GetHoldType(void)
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 006079c0 BW1M100 103bc180 Poo::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
};

#endif /* BW1_DECOMP_POO_INCLUDED_H */
